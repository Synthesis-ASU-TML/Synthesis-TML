

#include <XnCppWrapper.h>
extern "C" {
	#include "jit.common.h"
}

#include "tmlMatrix.h"

#define RC(r, what) {	XnStatus nRetVal = r;							\
	if (nRetVal != XN_STATUS_OK)									\
	{																\
		post((char*)"%s failed: %s\n", what, xnGetStatusString(nRetVal));\
		throw what;												\
	} }

static XnChar g_strPose[20] = "";

void XN_CALLBACK_TYPE User_NewUser(xn::UserGenerator& generator, XnUserID nId, void* pCookie) {
	post("New User %d\n", nId);
	generator.GetSkeletonCap().RequestCalibration(nId, TRUE);
}

// Callback: Detected a pose
void XN_CALLBACK_TYPE UserPose_PoseDetected(xn::PoseDetectionCapability& capability, const XnChar* strPose, XnUserID nId, void* pCookie) {
	post("Pose %s detected for user %d\n", strPose, nId);
	xn::UserGenerator *ug = (xn::UserGenerator*)pCookie;
	ug->GetPoseDetectionCap().StopPoseDetection(nId);
	ug->GetSkeletonCap().RequestCalibration(nId, TRUE);
}



// Callback: Started calibration
void XN_CALLBACK_TYPE UserCalibration_CalibrationStart(xn::SkeletonCapability& capability, XnUserID nId, void* pCookie) {
	post("Calibration started for user %d\n", nId);
}


void XN_CALLBACK_TYPE UserCalibration_CalibrationEnd(xn::SkeletonCapability& capability, XnUserID nId, XnBool bSuccess, void* pCookie)
{
	xn::UserGenerator *ug = (xn::UserGenerator*)pCookie;
	if (bSuccess)
	{
		// Calibration succeeded
		post("Calibration complete, start tracking user %d\n", nId);
		ug->GetSkeletonCap().StartTracking(nId);
	}
	else
	{
		// Calibration failed
		post("Calibration failed for user %d\n", nId);
		ug->GetSkeletonCap().RequestCalibration(nId, TRUE);
	}
}

class information
{
private:
	xn::Context				context;

	xn::DepthGenerator		depth;
	xn::ImageGenerator		image;
	xn::UserGenerator		user;
	
	XnCallbackHandle hUserCallbacks, hCalibrationCallbacks, hPoseCallbacks;

public:
	information()
	{
		RC(context.Init(),							"Context Intialized");
		
		XnMapOutputMode mode;
		mode.nXRes = XN_VGA_X_RES;
		mode.nYRes = XN_VGA_Y_RES;
		mode.nFPS  = 30;
		
		RC(image.Create(context),					"Create image buffer");
		RC(image.SetMapOutputMode(mode),			"Set image mode");
		
		RC(depth.Create(context),					"Create depth buffer");
		RC(depth.SetMapOutputMode(mode),			"Set depth mode");
		
		xn::Query q;
		RC(q.AddSupportedCapability(XN_CAPABILITY_SKELETON), "Request skeleton");

		try {
			RC(context.FindExistingNode(XN_NODE_TYPE_USER, user), "User generator");
		} catch (...) {
			RC(user.Create(context),					"Get skeleton!!!");
		}
//		RC(user.Create(context, &q),					"Get skeleton!!!");
//		
//		xn::NodeInfoList il;
//		RC(context.EnumerateProductionTrees(XN_NODE_TYPE_USER, &q, il, NULL),
//													"Enumerate nodes");
//		
//		xn::NodeInfo i = *il.Begin();
//		RC(context.CreateProductionTree(i),			"Create skeleton node");
//		RC(i.GetInstance(user),						"Get skeleton");
		
		user.RegisterUserCallbacks(User_NewUser, NULL, NULL, hUserCallbacks);
		user.GetSkeletonCap().RegisterCalibrationCallbacks(UserCalibration_CalibrationStart, UserCalibration_CalibrationEnd, &user, hCalibrationCallbacks);
		
		if (user.GetSkeletonCap().NeedPoseForCalibration())
		{
			if (!user.IsCapabilitySupported(XN_CAPABILITY_POSE_DETECTION))
			{
				post("Pose required, but not supported\n");
			}
			else
			{
				user.GetPoseDetectionCap().RegisterToPoseCallbacks(UserPose_PoseDetected, NULL, &user, hPoseCallbacks);
				user.GetSkeletonCap().GetCalibrationPose(g_strPose);
				user.GetSkeletonCap().SetSkeletonProfile(XN_SKEL_PROFILE_ALL);
			}
		}
		
		RC(context.StartGeneratingAll(),			"Start generating data");
		
		post("Kinect initialized!\n");
	}
	
	void matrixCalc(void *outputs)
	{
		TML::Matrix out1(outputs, 0);
		TML::Matrix out2(outputs, 1);
		TML::Matrix out3(outputs, 2);
		TML::Matrix out4(outputs, 3);
		
		xn::DepthMetaData depthMD;
		xn::SceneMetaData sceneMD;
		xn::ImageMetaData imageMD;
		
		depth.GetMetaData(depthMD);
		user.GetUserPixels(0, sceneMD);
		image.GetMetaData(imageMD);
		
		context.WaitNoneUpdateAll();
		
		t_jit_matrix_info tmi;
		memset(&tmi, 0, sizeof(tmi));
		tmi.dimcount = 2;
		tmi.planecount = 1;
		tmi.dimstride[0] = 4;
		tmi.dimstride[1] = depthMD.XRes()*4;
		int width = tmi.dim[0] = depthMD.XRes();
		int height = tmi.dim[1] = depthMD.YRes();
		tmi.type = _jit_sym_float32;
		
		out1.resizeTo(&tmi);
		
		tmi.planecount = 1;
		tmi.dimstride[0] = 1;
		tmi.dimstride[1] = depthMD.XRes();
		tmi.type = _jit_sym_char;
		out2.resizeTo(&tmi);
		
		tmi.planecount = 4;
		tmi.dimstride[0] = 4;
		tmi.dimstride[1] = depthMD.XRes()*4;
		tmi.type = _jit_sym_char;
		out3.resizeTo(&tmi);
		
		const XnDepthPixel* pDepth = depthMD.Data();
		float *depthData = (float*)out1.data();
		
		//Copy depth data
		int x,y;
		for (y=0; y<height; y++)
		{
			for (x=0; x<width; x++)
			{
				depthData[0] = (float)pDepth[0]/powf(2, 15);
				
				depthData++;
				pDepth++;
			}
		}
		
		//Get the users
		unsigned char *userData = (unsigned char*)out2.data();
		const XnLabel* pLabels = sceneMD.Data();
		for (y=0; y<height; y++)
		{
			for (x=0; x<width; x++)
			{
				userData[0] = pLabels[0];
				
				userData++;
				pLabels++;
			}
		}
		
		//Get the colors
		const XnRGB24Pixel* pPixels = imageMD.RGB24Data();
		unsigned char *pixData = (unsigned char*)out3.data();
		for (y=0; y<height; y++)
		{
			for (x=0; x<width; x++)
			{
				pixData[0] = 0;
				pixData[1] = pPixels[0].nRed;
				pixData[2] = pPixels[0].nGreen;
				pixData[3] = pPixels[0].nBlue;
				
				pixData+=4;
				pPixels++;
			}
		}
		
		//For all the users -- output the joint info...
		XnUserID aUsers[15];
		XnUInt16 nUsers = 15;
		user.GetUsers(aUsers, nUsers);
		
		int rUsers = 0;
		
		xn::SkeletonCapability sc = user.GetSkeletonCap();
		
		int i;
		for (i=0; i<nUsers; i++)
		{
			if (user.GetSkeletonCap().IsTracking(aUsers[i]))
				rUsers++;
		}
		
		tmi.dimcount = 2;
		tmi.planecount = 3;
		tmi.dimstride[0] = 3*4;
		tmi.dimstride[1] = 24*3*4;
		tmi.dim[0] = 24;
		tmi.dim[1] = rUsers;
		tmi.type = _jit_sym_float32;
		out4.resizeTo(&tmi);
		
		
		float *sData = (float*)out4.data();
		
			
		if (rUsers == 0)
		{
			int n;
			for (n=0; n<24; n++)
			{					
				sData[0] = 0;
				sData[1] = 0;
				sData[2] = 0;
				
				sData+=3;
			}
		}
		else
		{
			for (i=0; i<nUsers; i++)
			{
				if (user.GetSkeletonCap().IsTracking(aUsers[i]))
				{
					int n;
					for (n=0; n<24; n++)
					{
						XnSkeletonJointPosition jp;
						user.GetSkeletonCap().GetSkeletonJointPosition(aUsers[i], (XnSkeletonJoint)(n+1), jp);
						
						sData[0] = (1280 - jp.position.X) / 2560;
						sData[1] = (1280 - jp.position.Y) / 2560;
						sData[2] = jp.position.Z * 7.8125 / 10000;
						
//						if (n == 0)
//						{
//							post("%f %f %f\n", sData[0], sData[1], sData[2]);
//						}
						
						sData+=3;
					}
				}
			}
		}
		//post("%i\n", rUsers);
	}
};


typedef struct _jit_tml_OpenNI 
{
	t_object				ob;
	
	information				*i;
} t_jit_tml_OpenNI ;



void *_jit_tml_OpenNI_class;

//Various methods
t_jit_tml_OpenNI *jit_tml_OpenNI_new(void);
void jit_tml_OpenNI_allocate(t_jit_tml_OpenNI *x, long width, long height);
void jit_tml_OpenNI_free(t_jit_tml_OpenNI *x);
t_jit_err jit_tml_OpenNI_matrix_calc(t_jit_tml_OpenNI *x, void *inputs, void *outputs);
t_jit_err jit_tml_OpenNI_init(void);



t_jit_err jit_tml_OpenNI_open(t_jit_tml_OpenNI *x)
{
	if (x->i == NULL)
	{
		try {
			x->i = new information;
		} catch (...) {
			return JIT_ERR_GENERIC;
		}
	}
	
	return JIT_ERR_NONE;
}


unsigned char clampChar(float inVal)
{
	if (inVal > 255) return 255;
	if (inVal < 0) return 0;
	return (unsigned char) inVal;
}

t_jit_err jit_tml_OpenNI_matrix_calc(t_jit_tml_OpenNI *x, void *inputs, void *outputs)
{
	t_jit_err err = JIT_ERR_NONE;
	
	try
	{
		
		information *i = x->i;
		
		if (i == NULL)	return err;
		
		i->matrixCalc(outputs);
		
	}
	catch (...)
	{
		return JIT_ERR_GENERIC;
	}
	
	
	return err;
}


t_jit_err jit_tml_OpenNI_init(void) 
{
	long attrflags=0;
	t_jit_object *attr;
	t_jit_object *mop, *o;
	
	//Create class with given constructors & destructors
	_jit_tml_OpenNI_class = jit_class_new("jit_tml_OpenNI",(method)jit_tml_OpenNI_new,(method)jit_tml_OpenNI_free,
		sizeof(t_jit_tml_OpenNI),A_CANT,0L); //A_CANT = untyped

	// 0 matrix input / 4 matrix output
	mop = (t_jit_object*)jit_object_new(_jit_sym_jit_mop,0,4);

	// need this for getting correct matrix_info from 2nd input matrix....  (see jit.concat.c...)
	//jit_mop_input_nolink(mop,2);
	// o= (t_jit_object*)jit_object_method(mop,_jit_sym_getinput,2);
	//jit_object_method(o,_jit_sym_ioproc,jit_mop_ioproc_copy_adapt); 
	
	jit_class_addadornment(_jit_tml_OpenNI_class,mop);
	
	// add methods
	jit_class_addmethod(_jit_tml_OpenNI_class, (method)jit_tml_OpenNI_matrix_calc, "matrix_calc", A_CANT, 0L);
	
	
	jit_class_addmethod(_jit_tml_OpenNI_class, (method)jit_tml_OpenNI_open, "open", A_DEFLONG, 0L);
	
	
	
	
	
	//Done!	
	jit_class_register(_jit_tml_OpenNI_class);

	return JIT_ERR_NONE;
}



t_jit_tml_OpenNI *jit_tml_OpenNI_new(void)
{
	t_jit_tml_OpenNI *x;
	
	try
	{
		if (x=(t_jit_tml_OpenNI *)jit_object_alloc(_jit_tml_OpenNI_class))
			x->i = NULL;
		else
			x = NULL;
	}
	catch(...)
	{
		x = NULL;
	}
	return x;
}

void jit_tml_OpenNI_free(t_jit_tml_OpenNI *x)
{
	if (x->i)	delete x->i;
}



