{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 8
		}
,
		"rect" : [ 62.0, 48.0, 333.0, 189.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
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
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 335.0, 134.0, 80.0, 60.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 297.0, 87.0, 55.0, 20.0 ],
					"text" : "jit.matrix"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "syphonserver%" ],
					"id" : "obj-43",
					"maxclass" : "bpatcher",
					"name" : "jmod.syphonserver%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 16.0, 129.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -26.0, 91.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "vipr.rx%" ],
					"id" : "obj-35",
					"maxclass" : "bpatcher",
					"name" : "jmod.vipr.rx%.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 16.0, 16.0, 150.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -26.0, 9.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 230.0, 40.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -34.0, -22.0, 926.0, 469.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 1 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "jmod.vipr.rx%.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/jmod.vipr.rx",
				"patcherrelativepath" : "../../../Applications/Max6/Cycling '74/jmod.vipr.rx",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.vipr.rx%.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/jmod.vipr.rx",
				"patcherrelativepath" : "../../../Applications/Max6/Cycling '74/jmod.vipr.rx",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.syphonserver%.maxpat",
				"bootpath" : "/Users/Nikos/Documents/Max Libraries/Synthesis-master/O4_ASU/O4.video/Dependancies/jmod.syphonserver%",
				"patcherrelativepath" : "../Documents/Max Libraries/Synthesis-master/O4_ASU/O4.video/Dependancies/jmod.syphonserver%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.syphonserver%.maxpat",
				"bootpath" : "/Users/Nikos/Documents/Max Libraries/Synthesis-master/O4_ASU/O4.video/Dependancies/jmod.syphonserver%",
				"patcherrelativepath" : "../Documents/Max Libraries/Synthesis-master/O4_ASU/O4.video/Dependancies/jmod.syphonserver%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.ui.mxo",
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
, 			{
				"name" : "jcom.hub.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.in.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.out.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.parameter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.oscroute.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jit.gl.syphonserver.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.init.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
