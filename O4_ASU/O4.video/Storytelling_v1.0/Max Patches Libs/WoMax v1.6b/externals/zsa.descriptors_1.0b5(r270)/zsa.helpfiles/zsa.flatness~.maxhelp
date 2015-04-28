{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 51.0, 182.0, 696.0, 470.0 ],
		"bgcolor" : [ 0.27451, 0.368627, 0.45098, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 51.0, 182.0, 696.0, 470.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "default",
					"patching_rect" : [ 398.0, 285.0, 44.0, 19.0 ],
					"fontsize" : 11.0,
					"id" : "obj-9",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "freq 125 250 500 1000 2000 4000 8000",
					"patching_rect" : [ 233.0, 312.0, 221.0, 18.0 ],
					"fontsize" : 12.0,
					"id" : "obj-6",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "recall a preset",
					"patching_rect" : [ 195.0, 79.0, 80.0, 19.0 ],
					"fontsize" : 11.0,
					"id" : "obj-11",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "preset",
					"stored1" : [ 0.27451, 0.368627, 0.45098, 1.0 ],
					"patching_rect" : [ 162.0, 80.0, 31.0, 17.0 ],
					"margin" : 4,
					"id" : "obj-10",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"bordercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"spacing" : 4,
					"numinlets" : 1,
					"numoutlets" : 4,
					"emptycolor" : [ 0.27451, 0.368627, 0.45098, 1.0 ],
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"active1" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-81", "filtergraph~", "nfilters", 1, 9, "obj-81", "filtergraph~", "setoptions", 0, 3, 0, 0, 0, 8, "obj-81", "filtergraph~", "params", 0, 586.046509, 1.0, 25.0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-81", "filtergraph~", "nfilters", 1, 9, "obj-81", "filtergraph~", "setoptions", 0, 3, 0, 0, 0, 8, "obj-81", "filtergraph~", "params", 0, 4029.069824, 1.0, 25.0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "saw~ 200",
					"patching_rect" : [ 96.0, 180.0, 62.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-2",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"patching_rect" : [ 65.0, 374.0, 184.0, 75.0 ],
					"id" : "obj-5",
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"numinlets" : 1,
					"setminmax" : [ 0.0, 1.0 ],
					"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"numoutlets" : 2,
					"size" : 4,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"fontlink" : 1,
					"textovercolor" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"patching_rect" : [ 483.0, 20.0, 195.402344, 21.798828 ],
					"fontface" : 3,
					"fontsize" : 12.0,
					"id" : "obj-55",
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"textcolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"textoveroncolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"numinlets" : 1,
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"text" : "open Zsa.Descriptors Overview",
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"numoutlets" : 3,
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"fontname" : "Arial",
					"presentation_rect" : [ 150.0, 150.0, 195.402344, 21.798828 ],
					"outlettype" : [ "", "", "int" ],
					"textoncolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load zsa.overview.maxpat",
					"patching_rect" : [ 482.0, 46.0, 145.0, 18.0 ],
					"hidden" : 1,
					"fontsize" : 11.595187,
					"id" : "obj-41",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 482.0, 65.0, 57.0, 20.0 ],
					"hidden" : 1,
					"fontsize" : 11.595187,
					"id" : "obj-42",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "zsa_seealso",
					"args" : [  ],
					"patching_rect" : [ 543.0, 398.0, 141.0, 51.0 ],
					"id" : "obj-14",
					"name" : "zsa.seealso.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"patching_rect" : [ 462.0, 362.0, 32.5, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-47",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 540.0, 124.0, 20.0, 20.0 ],
					"id" : "obj-44",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 517.0, 124.0, 20.0, 20.0 ],
					"id" : "obj-45",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "loop $1",
					"patching_rect" : [ 540.0, 149.0, 50.0, 18.0 ],
					"fontsize" : 12.0,
					"id" : "obj-48",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfplay~",
					"patching_rect" : [ 477.0, 175.0, 49.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-49",
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "signal", "bang" ],
					"save" : [ "#N", "sfplay~", "", 1, 120960, 0, "", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"patching_rect" : [ 477.0, 124.0, 37.0, 18.0 ],
					"fontsize" : 12.0,
					"id" : "obj-50",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"types" : [  ],
					"patching_rect" : [ 65.0, 142.0, 79.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-43",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "int", "", "" ],
					"items" : [ "(Source)", ",", "noise", ",", "sound", "file" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "biquad~",
					"patching_rect" : [ 96.0, 215.0, 86.5, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-68",
					"numinlets" : 6,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "selector~ 2 1",
					"patching_rect" : [ 65.0, 246.769226, 80.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-69",
					"numinlets" : 3,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "filtergraph~",
					"bwidthcolor" : [ 0.462745, 0.47451, 0.65098, 1.0 ],
					"domain" : [ 0.0, 22050.0 ],
					"logfreq" : 0,
					"patching_rect" : [ 162.0, 102.0, 301.0, 103.0 ],
					"hbwidthcolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"fontsize" : 10.0,
					"id" : "obj-81",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"autoout" : 1,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"numinlets" : 8,
					"markercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
					"numoutlets" : 7,
					"hcurvecolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"fontname" : "Arial",
					"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
					"fgcolor" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"nfilters" : 1,
					"setfilter" : [ 0, 3, 0, 0, 0, 4029.069824, 1.0, 25.0, 40.0, 22050.0, 1.0, 1.0, 0.5, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_dac_text",
					"text" : "start audio",
					"linecount" : 2,
					"patching_rect" : [ 420.0, 405.0, 38.0, 33.0 ],
					"fontsize" : 11.595187,
					"id" : "obj-12",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"varname" : "autohelp_dac",
					"patching_rect" : [ 462.0, 399.0, 45.0, 45.0 ],
					"id" : "obj-38",
					"local" : 1,
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "startwinwdow_panel",
					"patching_rect" : [ 414.0, 394.0, 100.0, 55.0 ],
					"id" : "obj-19",
					"bordercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"border" : 2,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zsa.easy_flatness~ 1024 4",
					"patching_rect" : [ 65.0, 346.0, 164.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-4",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_description",
					"text" : "Spectral flatness of key frequency bands.",
					"patching_rect" : [ 7.0, 39.0, 403.0, 21.0 ],
					"fontsize" : 12.754705,
					"id" : "obj-3",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_title",
					"text" : "zsa.flatness~",
					"patching_rect" : [ 7.0, 9.0, 455.0, 30.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338,
					"id" : "obj-7",
					"frgb" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"textcolor" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"patching_rect" : [ 7.0, 8.0, 473.0, 52.0 ],
					"id" : "obj-37",
					"grad1" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"mode" : 1,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"numinlets" : 1,
					"grad2" : [ 0.27451, 0.368627, 0.45098, 1.0 ],
					"numoutlets" : 0,
					"background" : 1,
					"angle" : -88.349983
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 475.5, 332.0, 50.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-51",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "freq 250. 500. 1000. 2000. 4000.",
					"patching_rect" : [ 210.0, 286.0, 185.0, 18.0 ],
					"fontsize" : 12.0,
					"id" : "obj-1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-68", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-69", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 549.5, 171.0, 486.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 526.5, 155.0, 486.5, 155.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-69", 2 ],
					"hidden" : 0,
					"midpoints" : [ 486.5, 242.0, 137.0, 242.0, 137.0, 242.0, 135.5, 242.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-38", 1 ],
					"hidden" : 0,
					"midpoints" : [ 471.5, 386.0, 497.5, 386.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 471.5, 383.0, 471.5, 383.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-47", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [ 74.5, 265.0, 74.5, 277.0, 471.5, 277.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
