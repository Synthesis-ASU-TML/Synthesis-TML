{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 500.0, 417.0, 585.0, 467.0 ],
		"bglocked" : 0,
		"defrect" : [ 500.0, 417.0, 585.0, 467.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 4.0, 4.0 ],
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
					"id" : "obj-19",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 192.0, 404.0, 176.0, 34.0 ],
					"presentation_rect" : [ 197.0, 315.0, 0.0, 0.0 ],
					"text" : "Outlet: parsed osc message's content"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "ezadc~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 548.0, 128.0, 31.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 304.0, 196.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 172.0, 196.0, 72.0, 20.0 ],
					"text" : "loadmess 6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 468.0, 440.0, 77.0, 20.0 ],
					"text" : "send bender"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 468.0, 416.0, 108.0, 20.0 ],
					"text" : "prepend /env/slow"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "myModule" ],
					"id" : "obj-12",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.env~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 428.0, 168.0, 150.0, 245.0 ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 245.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 12.0, 224.0, 50.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 188.0, 264.0, 176.0, 131.0 ],
					"presentation_rect" : [ 376.0, 163.0, 0.0, 0.0 ],
					"text" : "Inlets:\nLeft: OSC messages (or use a send object insted with the ID as argument to remotely send messages\n\nMiddle + Right:\nchoose which item to pick from the drop-down menue"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"linecount" : 10,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 260.0, 160.0, 144.0 ],
					"text" : "arguments:\n@ID : a name for remotely sending messages to the patcher\n\n@first populate the first osc router\n\n@second: optionally populate the second router"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@ID", "bender", "@first", "/camera1/raw", "/camera1/cooked", "/contact/raw", "/contact/cooked", "/env/fast", "/env/slow", "/contact2/raw", "/contact2/cooked", "/env2/fast", "/env2/slow", "@second", "/noteNumber", "/loudness", "/periodicity", "/flatness", "/centroid", "/highEnergy", "/midEnergy", "/hiFrqContent", "/ac1", "/energy", "/bonk", "/small", "/large", "/all", "/all-fixed", "/height", "/width", "/area", "/centerX", "/centerY", "/stillness", "/action" ],
					"id" : "obj-29",
					"maxclass" : "bpatcher",
					"name" : "nav.osc.switch.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8.0, 196.0, 157.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 35.0, 68.0, 157.0, 20.0 ]
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
					"patching_rect" : [ 8.0, 172.0, 156.0, 20.0 ],
					"presentation_rect" : [ 8.0, 172.0, 0.0, 0.0 ],
					"text" : "same object as a bPatcher:"
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
					"patching_rect" : [ 12.0, 68.0, 150.0, 20.0 ],
					"text" : "example:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8.0, 88.0, 520.0, 62.0 ],
					"text" : "nav.osc.switch @ID bender @first /camera1/raw /camera1/cooked /contact/raw /contact/cooked /env/fast /env/slow /contact2/raw /contact2/cooked /env2/fast /env2/slow @second /noteNumber /loudness /periodicity /flatness /centroid /highEnergy /midEnergy /hiFrqContent /ac1 /energy /bonk /small /large /all /all-fixed /height /width /area /centerX /centerY /stillness /action"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "nav.osc.switch", "easy dropDown Bpatcher menus for dynamic routing of osc messages", "April 20122" ],
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "nav.banner.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 442.0, 61.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-29", 0 ]
				}

			}
 ]
	}

}
