{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 42.0, 98.0, 1398.0, 764.0 ],
		"bglocked" : 0,
		"defrect" : [ 42.0, 98.0, 1398.0, 764.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"args" : [ "#1-clearloop", "clear" ],
					"id" : "obj-101",
					"maxclass" : "bpatcher",
					"name" : "eis_button.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 95.0, 185.0, 72.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 35.0, 83.0, 56.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 390.0, 271.0, 27.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 165.0, 12.0, 27.0, 20.0 ],
					"text" : "out"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 299.0, 270.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 12.0, 20.0, 20.0 ],
					"text" : "in"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 390.0, 120.0, 82.0, 20.0 ],
					"text" : "r~ #1-loopout"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 300.0, 120.0, 74.0, 20.0 ],
					"text" : "r~ #1-loopin"
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
					"patching_rect" : [ 390.0, 195.0, 17.0, 75.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 167.0, 30.0, 17.0, 75.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.847059, 1.0, 0.392157, 1.0 ],
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"id" : "obj-21",
					"interval" : 100,
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 300.0, 195.0, 17.0, 75.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 30.0, 17.0, 75.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1-loopervolume", 0.0, 1.0 ],
					"id" : "obj-18",
					"maxclass" : "bpatcher",
					"name" : "eis_slider-short.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 195.0, 120.0, 32.0, 65.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 128.0, 34.0, 32.0, 65.0 ],
					"prototypename" : "eis_slider horizontal"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1-looperrecord" ],
					"id" : "obj-22",
					"maxclass" : "bpatcher",
					"name" : "eis_toggle.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 120.0, 135.0, 34.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 45.0, 45.0, 34.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1-looperspeed", -8.0, 8.0 ],
					"id" : "obj-23",
					"maxclass" : "bpatcher",
					"name" : "eis_slider-short.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 165.0, 120.0, 31.0, 64.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 92.0, 34.0, 31.0, 64.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Futura Bold",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 105.0, 50.0, 21.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 94.0, 4.0, 32.0, 35.0 ],
					"text" : "speed"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Futura Bold",
					"fontsize" : 12.0,
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 120.0, 165.0, 51.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 38.0, 29.0, 53.0, 21.0 ],
					"text" : "record"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-26",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 166.0, 203.0, 29.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 93.0, 99.0, 29.0, 17.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 0,
					"patching_rect" : [ 150.0, 255.0, 97.0, 17.0 ],
					"text" : "eis_looper_engine #1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Futura Bold",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 195.0, 105.0, 63.0, 21.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 130.0, 4.0, 42.0, 35.0 ],
					"text" : "volume"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.576471 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"grad1" : [ 0.74902, 0.788235, 0.929412, 0.670588 ],
					"grad2" : [ 0.917647, 0.937255, 0.670588, 0.603922 ],
					"id" : "obj-3",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 285.0, 135.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 203.0, 132.0 ],
					"rounded" : 47
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 3 ],
					"hidden" : 0,
					"midpoints" : [ 104.5, 243.0, 237.5, 243.0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 2 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [ 129.5, 227.0, 159.5, 227.0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"hidden" : 1,
					"midpoints" : [ 175.5, 227.0, 185.5, 227.0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
 ]
	}

}
