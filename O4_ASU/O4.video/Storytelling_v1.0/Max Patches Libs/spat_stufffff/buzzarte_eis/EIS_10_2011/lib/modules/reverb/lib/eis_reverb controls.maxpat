{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
					"fontname" : "Copperplate Gothic Bold",
					"fontsize" : 14.0,
					"id" : "obj-70",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 189.0, 267.0, 80.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 11.0, 49.0, 80.0, 22.0 ],
					"text" : "drylevel"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Copperplate Gothic Bold",
					"fontsize" : 14.0,
					"id" : "obj-90",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 189.0, 256.0, 83.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 33.0, 83.0, 22.0 ],
					"text" : "wetlevel"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Copperplate Gothic Bold",
					"fontsize" : 14.0,
					"id" : "obj-91",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 189.0, 245.0, 80.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 16.0, 16.0, 80.0, 22.0 ],
					"text" : "damping"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Copperplate Gothic Bold",
					"fontsize" : 14.0,
					"id" : "obj-92",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 189.0, 234.0, 80.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, -1.0, 80.0, 22.0 ],
					"text" : "roomsize"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 210.0, 180.0, 113.0, 20.0 ],
					"text" : "s #1-reverbdrylevel"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 210.0, 135.0, 115.0, 20.0 ],
					"text" : "s #1-reverbwetlevel"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 210.0, 90.0, 117.0, 20.0 ],
					"text" : "s #1-reverbdamping"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 210.0, 45.0, 93.0, 20.0 ],
					"text" : "s #1-reverbsize"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1-reverbdrylevel", 0.0, 1.0 ],
					"id" : "obj-5",
					"maxclass" : "bpatcher",
					"name" : "eis_slider-horizontal.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 155.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.0, 50.0, 120.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1-reverbwetlevel", 0.0, 1.0 ],
					"id" : "obj-6",
					"maxclass" : "bpatcher",
					"name" : "eis_slider-horizontal.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 108.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.0, 33.0, 120.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1-reverbdamping", 0.0, 1.0 ],
					"id" : "obj-4",
					"maxclass" : "bpatcher",
					"name" : "eis_slider-horizontal.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 62.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.0, 17.0, 120.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1-reverbsize", 0.0, 1.0 ],
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "eis_slider-horizontal.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 15.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.0, 0.0, 120.0, 20.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-6", 0 ]
				}

			}
 ]
	}

}
