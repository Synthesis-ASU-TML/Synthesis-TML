{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 1169.0, 493.0, 1209.0, 509.0 ],
		"bglocked" : 0,
		"defrect" : [ 1169.0, 493.0, 1209.0, 509.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"args" : [ "/input" ],
					"id" : "obj-12",
					"maxclass" : "bpatcher",
					"name" : "jmod.input~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 908.0, 292.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 905.0, 292.0, 300.0, 140.0 ],
					"varname" : "/input~[7]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/input" ],
					"id" : "obj-11",
					"maxclass" : "bpatcher",
					"name" : "jmod.input~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 910.0, 148.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 905.0, 148.0, 300.0, 140.0 ],
					"varname" : "/input~[6]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/input" ],
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "jmod.input~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 905.0, 5.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 905.0, 5.0, 300.0, 140.0 ],
					"varname" : "/input~[5]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/input" ],
					"id" : "obj-10",
					"maxclass" : "bpatcher",
					"name" : "jmod.input~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 604.0, 369.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 604.0, 365.0, 300.0, 140.0 ],
					"varname" : "/input~[4]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/input" ],
					"id" : "obj-9",
					"maxclass" : "bpatcher",
					"name" : "jmod.input~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 303.0, 372.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 303.0, 365.0, 300.0, 140.0 ],
					"varname" : "/input~[3]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "input~" ],
					"id" : "obj-8",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.sur.input~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "audio.connect" ],
					"patching_rect" : [ 604.0, 292.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 604.0, 292.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/output~" ],
					"id" : "obj-6",
					"maxclass" : "bpatcher",
					"name" : "jmod.output~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 604.0, 155.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 604.0, 148.0, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/input" ],
					"id" : "obj-7",
					"maxclass" : "bpatcher",
					"name" : "jmod.input~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 604.0, 8.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 604.0, 3.0, 300.0, 140.0 ],
					"varname" : "/input~[2]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "input~" ],
					"id" : "obj-5",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.sur.input~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "audio.connect" ],
					"patching_rect" : [ 303.0, 292.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 303.0, 292.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/output~" ],
					"id" : "obj-42",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.sur.output~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4.0, 372.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 365.0, 300.0, 70.0 ],
					"varname" : "/output~"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "input~" ],
					"id" : "obj-52",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.sur.input~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "audio.connect" ],
					"patching_rect" : [ 4.0, 294.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 292.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/output~" ],
					"id" : "obj-2",
					"maxclass" : "bpatcher",
					"name" : "jmod.output~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 303.0, 149.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 303.0, 148.0, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/input" ],
					"id" : "obj-3",
					"maxclass" : "bpatcher",
					"name" : "jmod.input~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 303.0, 4.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 303.0, 3.0, 300.0, 140.0 ],
					"varname" : "/input~[1]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/output~" ],
					"id" : "obj-4",
					"maxclass" : "bpatcher",
					"name" : "jmod.output~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4.0, 148.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 148.0, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/input" ],
					"id" : "obj-32",
					"maxclass" : "bpatcher",
					"name" : "jmod.input~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 4.0, 3.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 3.0, 300.0, 140.0 ],
					"varname" : "/input~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-10", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-11", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-3", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-32", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-7", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-9", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-9", 1 ]
				}

			}
 ]
	}

}
