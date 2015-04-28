{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 10.0, 55.0, 1420.0, 806.0 ],
		"bglocked" : 0,
		"defrect" : [ 10.0, 55.0, 1420.0, 806.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Futura Medium",
		"gridonopen" : 0,
		"gridsize" : [ 18.0, 18.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 306.0, 522.0, 98.0, 20.0 ],
					"text" : "s~ #1-lexiconout"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 298.0, 171.0, 89.0, 20.0 ],
					"text" : "r~ #1-lexiconin"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.847059, 1.0, 0.392157, 1.0 ],
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"id" : "obj-31",
					"interval" : 100,
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 301.0, 225.0, 17.0, 75.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 11.0, 12.0, 17.0, 75.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.392157, 0.909804, 0.909804, 1.0 ],
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"id" : "obj-16",
					"interval" : 100,
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 754.0, 227.0, 17.0, 75.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 465.0, 12.0, 17.0, 75.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 702.0, 270.0, 37.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 411.0, 57.0, 37.0, 17.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1-lexiconrate", 0.0, 1.0 ],
					"id" : "obj-8",
					"maxclass" : "bpatcher",
					"name" : "eis_dial.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 636.0, 247.0, 44.0, 43.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 345.0, 34.0, 44.0, 43.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 649.0, 235.0, 29.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 358.0, 22.0, 29.0, 19.0 ],
					"text" : "Rate"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1-lexiconwaveform", 0.0, 1.0 ],
					"id" : "obj-10",
					"maxclass" : "bpatcher",
					"name" : "eis_dial.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 583.0, 247.0, 42.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 292.0, 34.0, 42.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 583.0, 235.0, 60.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 292.0, 22.0, 60.0, 19.0 ],
					"text" : "Waveform"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1-lexicondepth", 0.0, 1.0 ],
					"id" : "obj-12",
					"maxclass" : "bpatcher",
					"name" : "eis_dial.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 529.0, 247.0, 42.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 238.0, 34.0, 42.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-13",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 538.0, 235.0, 34.0, 31.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 247.0, 22.0, 34.0, 31.0 ],
					"text" : "Depth"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1-lexiconvolume", 0.0, 1.0 ],
					"id" : "obj-14",
					"maxclass" : "bpatcher",
					"name" : "eis_dial.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 336.0, 247.0, 42.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 45.0, 34.0, 42.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 342.0, 235.0, 41.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 51.0, 22.0, 41.0, 19.0 ],
					"text" : "Volume"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1-lexiconfeedback", 0.0, 1.0 ],
					"id" : "obj-17",
					"maxclass" : "bpatcher",
					"name" : "eis_dial.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 390.0, 247.0, 42.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 99.0, 34.0, 42.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 393.0, 235.0, 49.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 102.0, 22.0, 49.0, 19.0 ],
					"text" : "Feedback"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1-lexicondelaytime", 0.0, 1.0 ],
					"id" : "obj-19",
					"maxclass" : "bpatcher",
					"name" : "eis_dial.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 475.0, 247.0, 42.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 184.0, 34.0, 42.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 700.0, 236.0, 52.0, 32.0 ],
					"pic" : "lexiconlogo.png",
					"presentation" : 1,
					"presentation_rect" : [ 409.0, 23.0, 52.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 298.0, 418.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 306.0, 450.0, 109.0, 19.0 ],
					"text" : "jpsp42_20110415 #1",
					"varname" : "jpsp42"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 474.0, 235.0, 58.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 183.0, 22.0, 58.0, 19.0 ],
					"text" : "ManualVCO"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.258824, 0.733333, 0.878431, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-24",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 465.0, 225.0, 233.0, 77.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 174.0, 12.0, 233.0, 77.0 ],
					"rounded" : 30
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.258824, 0.733333, 0.878431, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-25",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 325.0, 225.0, 128.0, 76.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 34.0, 12.0, 128.0, 76.0 ],
					"rounded" : 30
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.066667, 0.066667, 0.066667, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-26",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 291.0, 213.0, 497.0, 98.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 497.0, 98.0 ],
					"rounded" : 30
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 5 ],
					"hidden" : 1,
					"midpoints" : [ 592.5, 367.0, 390.5, 367.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 4 ],
					"hidden" : 1,
					"midpoints" : [ 538.5, 367.0, 375.5, 367.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"hidden" : 1,
					"midpoints" : [ 345.5, 367.0, 330.5, 367.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 2 ],
					"hidden" : 1,
					"midpoints" : [ 399.5, 367.0, 345.5, 367.0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 3 ],
					"hidden" : 1,
					"midpoints" : [ 484.5, 367.0, 360.5, 367.0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 315.5, 482.0, 1011.0, 482.0, 1011.0, 204.0, 763.5, 204.0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [ 711.5, 318.0, 307.0, 318.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 6 ],
					"hidden" : 1,
					"midpoints" : [ 645.5, 367.0, 405.5, 367.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ]
	}

}
