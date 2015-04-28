// aka.bookmotion.c
// Copyright ý 2007 by Masayuki Akamatsu

#include "ext.h"
#include "unimotion.h"

typedef struct akabookmotion
{
	t_object m_ob;
	void *m_xout;
	void *m_yout;
	void *m_zout;
	int	type;
} t_akabookmotion;

void akabookmotion_bang(t_akabookmotion *x);
void akabookmotion_assist(t_akabookmotion *x, void *b, long m, long a, char *s);
void akabookmotion_free(t_akabookmotion *x);
void *akabookmotion_new(t_symbol *s, short argc, t_atom *argv);

void *akabookmotion_class;

//----------------------------------------------------------------

void main()
{
	setup((t_messlist **)&akabookmotion_class, 
			(method)akabookmotion_new, 
			(method)akabookmotion_free, 
			(short)sizeof(t_akabookmotion), 
			0L, 
			A_GIMME, 0);
	
	addbang((method)akabookmotion_bang);
	addmess((method)akabookmotion_assist,"assist",A_CANT,0);
	
	post("aka.bookmotion 1.0-UB by Masayuki Akamatsu");
}

void akabookmotion_bang(t_akabookmotion *x)
{
	int sms_x, sms_y, sms_z;
	int result;
	
	if (x->type != unknown)
	{
		result = read_sms_raw(x->type, &sms_x, &sms_y, &sms_z);
		if (result)
		{
			outlet_int(x->m_zout, sms_z);
			outlet_int(x->m_yout, sms_y);
			outlet_int(x->m_xout, sms_x);
		}
	}
}

void akabookmotion_assist(t_akabookmotion *x, void *b, long m, long a, char *s)
{
	if (m==ASSIST_INLET)
	{
		switch (a)
		{
			case 0: sprintf(s,"bang"); break;
		}
	}
	else	// ASSIST_OUTLET
	{
		switch(a)
		{
			case 0: sprintf(s,"int(x)"); break;
			case 1: sprintf(s,"int(y)"); break;
			case 2: sprintf(s,"int(z)"); break;
		}
	}
}

void akabookmotion_free(t_akabookmotion *x)
{
//	freeobject(x->m_clock);
}

void *akabookmotion_new(t_symbol *s, short argc, t_atom *argv)
{
	t_akabookmotion *x = (t_akabookmotion *)newobject(akabookmotion_class);
	x->m_zout = intout(x);
	x->m_yout = intout(x);
	x->m_xout = intout(x);
	
	x->type = detect_sms();
	if (x->type == unknown)
		error("aka.bookmotion: Can't find/identify a Motion Sensor.");
		
	return x;
}
