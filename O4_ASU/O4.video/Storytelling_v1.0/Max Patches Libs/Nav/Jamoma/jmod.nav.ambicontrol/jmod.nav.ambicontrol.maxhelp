{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 377.0, 44.0, 665.0, 491.0 ],
		"bglocked" : 0,
		"defrect" : [ 377.0, 44.0, 665.0, 491.0 ],
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
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"args" : [ "ambicontrol.parallel" ],
					"id" : "obj-3",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.ambicontrol.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 313.0, 75.0, 300.0, 175.0 ],
					"presentation_rect" : [ 692.0, 86.0, 300.0, 175.0 ],
					"varname" : "jmod.nav.ambicontrol2"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "ambicontrol" ],
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.ambicontrol.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 12.0, 75.0, 300.0, 175.0 ],
					"presentation_rect" : [ 45.0, 45.0, 300.0, 175.0 ],
					"varname" : "jmod.nav.ambicontrol"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "ambicontrol.serial" ],
					"id" : "obj-11",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.ambicontrol.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 12.0, 302.0, 300.0, 175.0 ],
					"presentation_rect" : [ 50.0, 262.0, 300.0, 175.0 ],
					"varname" : "jmod.nav.ambicontrol3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 312.0, 329.0, 156.0, 20.0 ],
					"text" : "<-- activate points to control"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-10",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 310.0, 416.0, 176.0, 62.0 ],
					"text" : "set index to a number and control the center of all points with that point inside \"directIndexControl\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-9",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 309.0, 251.0, 332.0, 34.0 ],
					"text" : "connect them in serial or leave uncconected for parallel behaviour"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "ambimonitor",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 493.0, 275.0, 161.0, 161.0 ],
					"presentation_rect" : [ 15.0, 15.0, 20.0, 20.0 ],
					"varname" : "paul"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@name", "jmod.nav.ambicontrol", "@description", "ambicontrol", "for", "up", "to", 16, "points." ],
					"bgmode" : 1,
					"id" : "obj-4",
					"maxclass" : "bpatcher",
					"name" : "jcom.maxhelpui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 665.0, 70.0 ],
					"prototypename" : "bphelp",
					"varname" : "maxhelpui"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 1 ]
				}

			}
 ]
	}

}
