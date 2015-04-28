{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 9,
			"architecture" : "x86"
		}
,
		"rect" : [ 1238.0, 508.0, 318.0, 422.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 0,
		"enablevscroll" : 0,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"args" : [ "vipr.tx%" ],
					"id" : "obj-34",
					"maxclass" : "bpatcher",
					"name" : "jmod.vipr.tx%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 8.0, 142.0, 150.0, 280.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 11.0, 135.0, 150.0, 280.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "syphonclient%" ],
					"id" : "obj-43",
					"maxclass" : "bpatcher",
					"name" : "jmod.syphonclient%.maxpat",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 8.0, 15.0, 300.0, 105.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 11.0, 7.0, 300.0, 105.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 217.0, 142.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -52.0, -24.0, 991.0, 919.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 1 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "jmod.syphonclient%.maxpat",
				"bootpath" : "/Users/synthesis/GitHub/Synthesis/O4_ASU/O4.video/Dependancies/jmod.syphonclient%",
				"patcherrelativepath" : "../../../GitHub/Synthesis/O4_ASU/O4.video/Dependancies/jmod.syphonclient%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.syphonclient%.maxpat",
				"bootpath" : "/Users/synthesis/GitHub/Synthesis/O4_ASU/O4.video/Dependancies/jmod.syphonclient%",
				"patcherrelativepath" : "../../../GitHub/Synthesis/O4_ASU/O4.video/Dependancies/jmod.syphonclient%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.vipr.tx%.maxpat",
				"bootpath" : "/Users/synthesis/GitHub/Synthesis/O4_ASU/O4.video/Dependancies/jmod.vipr.tx",
				"patcherrelativepath" : "../../../GitHub/Synthesis/O4_ASU/O4.video/Dependancies/jmod.vipr.tx",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.vipr.tx%.maxpat",
				"bootpath" : "/Users/synthesis/GitHub/Synthesis/O4_ASU/O4.video/Dependancies/jmod.vipr.tx",
				"patcherrelativepath" : "../../../GitHub/Synthesis/O4_ASU/O4.video/Dependancies/jmod.vipr.tx",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.parameter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.ui.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.oscroute.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jit.gl.syphonclient.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.return.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.init.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.hub.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.out.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.in.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "vipr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.pass.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
