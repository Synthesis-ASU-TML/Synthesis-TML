{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 706.0, 462.0, 521.0, 308.0 ],
		"bglocked" : 0,
		"defrect" : [ 706.0, 462.0, 521.0, 308.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Geneva",
		"gridonopen" : 0,
		"gridsize" : [ 10.0, 10.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 220.0, 140.0, 50.0, 20.0 ],
					"id" : "obj-20",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 130.0, 140.0, 77.230469, 18.0 ],
					"#triggerall" : 0,
					"id" : "obj-18",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"fontname" : "Geneva",
					"ftm_scope" : 1,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 130.0, 140.0, 77.230469, 18.0 ],
					"numinlets" : 2,
					"text" : [ "_insize ($1 / 2)" ],
					"#loadbang" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "postdoc",
					"patching_rect" : [ 50.0, 170.0, 50.0, 18.0 ],
					"id" : "obj-17",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route fftsize",
					"patching_rect" : [ 220.0, 110.0, 74.0, 20.0 ],
					"id" : "obj-15",
					"outlettype" : [ "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gbr.bands 512 20 @mode mel @scale 100",
					"patching_rect" : [ 100.0, 170.0, 216.0, 20.0 ],
					"id" : "obj-14",
					"outlettype" : [ "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"saved_object_attributes" : 					{
						"ftm_scope" : 0,
						"ftm_objref_conv" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 100.0, 260.0, 15.0, 15.0 ],
					"id" : "obj-13",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "sqrt(sum_i((xi - yi)^2))",
					"patching_rect" : [ 330.0, 200.0, 114.0, 19.0 ],
					"id" : "obj-12",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"patching_rect" : [ 100.0, 200.0, 193.0, 31.0 ],
					"#triggerall" : 0,
					"id" : "obj-10",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"fontname" : "Geneva",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 100.0, 200.0, 193.0, 31.0 ],
					"numinlets" : 2,
					"text" : [ "_(sqrt ((($last sub $1) sqrabs) mean)),", "_($last set $1);" ],
					"#loadbang" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "fmat 4096 1, rows 0",
					"patching_rect" : [ 320.0, 90.0, 139.860352, 19.0 ],
					"id" : "obj-8",
					"outlettype" : [ "", "" ],
					"name" : "last",
					"fontname" : "Geneva",
					"editor_interface" : "matrix",
					"ftm_scope" : 2,
					"description" : "fmat 4096 1, rows 0",
					"scope" : 0,
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 320.0, 90.0, 139.860352, 19.0 ],
					"numinlets" : 1,
					"persistence" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "fmat with fft",
					"patching_rect" : [ 120.0, 110.0, 66.0, 19.0 ],
					"id" : "obj-1",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 216.0, 43.0, 20.0, 20.0 ],
					"id" : "obj-11",
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "spectral flux",
					"patching_rect" : [ 120.0, 260.0, 64.0, 19.0 ],
					"id" : "obj-7",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "imtr.analysis.stub MelFlux @type symbol float @name mel-spectral-flux @group spectrum",
					"linecount" : 2,
					"patching_rect" : [ 20.0, 70.0, 228.0, 31.0 ],
					"id" : "obj-2",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 3,
					"fontsize" : 9.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 21.0, 181.0, 15.0, 15.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 21.0, 39.0, 15.0, 15.0 ],
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "fft in",
					"patching_rect" : [ 20.0, 10.0, 32.0, 19.0 ],
					"id" : "obj-5",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 251.607803, 319.615509, 251.607803, 319.615509, 60.0, 134.0, 60.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
