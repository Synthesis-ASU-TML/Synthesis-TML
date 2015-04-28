{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 279.0, 181.0, 418.0, 683.0 ],
		"bglocked" : 0,
		"defrect" : [ 279.0, 181.0, 418.0, 683.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
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
					"maxclass" : "comment",
					"text" : "Mix",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 144.0, 74.0, 46.0, 20.0 ],
					"patching_rect" : [ 239.0, 395.0, 46.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-60",
					"numinlets" : 1,
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 276.0, 339.0, 25.0, 25.0 ],
					"id" : "obj-58",
					"numinlets" : 0,
					"comment" : "Mix"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 79",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 110.0, 76.0, 79.0, 20.0 ],
					"id" : "obj-55",
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 63",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 170.0, 341.0, 79.0, 20.0 ],
					"id" : "obj-54",
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Wet",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"presentation_rect" : [ 119.0, 92.0, 31.0, 19.0 ],
					"patching_rect" : [ 205.0, 375.0, 31.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-52",
					"numinlets" : 1,
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dry",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"presentation_rect" : [ 1.0, 92.0, 31.0, 19.0 ],
					"patching_rect" : [ 97.0, 375.0, 31.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-51",
					"numinlets" : 1,
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 3.0, 73.0, 140.0, 20.0 ],
					"patching_rect" : [ 96.0, 395.0, 140.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-44",
					"numinlets" : 1,
					"orientation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "!- 1.",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 54.0, 454.0, 32.5, 20.0 ],
					"id" : "obj-41",
					"numinlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zmap 0 127 0. 1.",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 96.0, 424.0, 100.0, 20.0 ],
					"id" : "obj-40",
					"numinlets" : 5,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontsize" : 12.0,
					"presentation_rect" : [ 88.0, 408.0, 0.0, 0.0 ],
					"patching_rect" : [ 82.0, 478.0, 32.5, 20.0 ],
					"id" : "obj-39",
					"numinlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 40.0, 478.0, 32.5, 20.0 ],
					"id" : "obj-38",
					"numinlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "LowPass",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 144.0, 4.0, 59.0, 18.0 ],
					"patching_rect" : [ 308.0, 109.0, 59.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-35",
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0,
					"presentation_rect" : [ 197.0, 3.0, 43.0, 20.0 ],
					"cantchange" : 1,
					"triangle" : 0,
					"patching_rect" : [ 187.0, 212.0, 50.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-29",
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Hz.",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"presentation_rect" : [ 241.0, 5.0, 28.0, 17.0 ],
					"patching_rect" : [ 242.0, 212.0, 28.0, 17.0 ],
					"presentation" : 1,
					"id" : "obj-30",
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 2. f",
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"fontsize" : 11.595187,
					"presentation_rect" : [ 304.0, 213.0, 0.0, 0.0 ],
					"patching_rect" : [ 165.0, 163.0, 63.0, 20.0 ],
					"id" : "obj-31",
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pow 2.",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontsize" : 11.595187,
					"presentation_rect" : [ 304.0, 237.0, 0.0, 0.0 ],
					"patching_rect" : [ 165.0, 187.0, 63.0, 20.0 ],
					"id" : "obj-32",
					"numinlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 3.0, 3.0, 140.0, 20.0 ],
					"patching_rect" : [ 165.0, 109.0, 140.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-28",
					"numinlets" : 1,
					"orientation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 0.104912",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontsize" : 11.595187,
					"patching_rect" : [ 165.0, 136.0, 67.0, 20.0 ],
					"id" : "obj-27",
					"numinlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "onepole~ 312. Hz",
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontsize" : 11.595187,
					"patching_rect" : [ 82.0, 212.0, 102.0, 20.0 ],
					"id" : "obj-59",
					"numinlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Gain",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 144.0, 27.0, 39.0, 20.0 ],
					"patching_rect" : [ 251.0, 265.0, 39.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-13",
					"numinlets" : 1,
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Time",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 144.0, 51.0, 46.0, 20.0 ],
					"patching_rect" : [ 280.0, 292.0, 46.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-14",
					"numinlets" : 1,
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 3.0, 26.0, 140.0, 20.0 ],
					"patching_rect" : [ 110.0, 264.0, 140.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-23",
					"numinlets" : 1,
					"orientation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 3.0, 50.0, 140.0, 20.0 ],
					"patching_rect" : [ 137.0, 291.0, 140.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-25",
					"numinlets" : 1,
					"orientation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 589.0, 25.0, 25.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"comment" : "signal: Output"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.0, 168.0, 25.0, 25.0 ],
					"id" : "obj-2",
					"numinlets" : 0,
					"comment" : "signal: Input"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rev4~.mono",
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 82.0, 328.0, 74.0, 20.0 ],
					"id" : "obj-1",
					"numinlets" : 3,
					"fontname" : "Arial"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-59", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-38", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-39", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-32", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
