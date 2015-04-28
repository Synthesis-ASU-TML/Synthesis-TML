{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 164.0, 164.0, 899.0, 527.0 ],
		"bglocked" : 0,
		"defrect" : [ 164.0, 164.0, 899.0, 527.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 11.0,
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
					"maxclass" : "comment",
					"text" : "mi.editor",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 0.952941, 0.0, 0.466667 ],
					"fontname" : "Arial",
					"fontface" : 2,
					"patching_rect" : [ 178.0, 67.0, 64.0, 23.0 ],
					"fontsize" : 14.0,
					"numinlets" : 1,
					"id" : "obj-12",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mi.gf",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 0.952941, 0.0, 0.466667 ],
					"fontname" : "Arial",
					"fontface" : 2,
					"patching_rect" : [ 600.0, 405.0, 41.0, 23.0 ],
					"fontsize" : 14.0,
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mi.gf CC",
					"fontname" : "Arial",
					"patching_rect" : [ 588.0, 425.0, 53.0, 19.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Input Example",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"fontface" : 3,
					"patching_rect" : [ 663.0, 57.0, 134.0, 27.0 ],
					"fontsize" : 18.0,
					"numinlets" : 1,
					"id" : "obj-50",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess init",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 588.0, 103.0, 75.0, 19.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 8.0, 87.0, 403.0, 223.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"name" : "mi.editor.maxpat",
					"args" : [ "CC" ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mi.remote",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 0.952941, 0.0, 0.466667 ],
					"fontname" : "Arial",
					"fontface" : 2,
					"patching_rect" : [ 669.0, 442.0, 73.0, 23.0 ],
					"fontsize" : 14.0,
					"numinlets" : 1,
					"id" : "obj-10",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mi.lcd",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 0.952941, 0.0, 0.466667 ],
					"fontname" : "Arial",
					"fontface" : 2,
					"patching_rect" : [ 692.0, 109.0, 47.0, 23.0 ],
					"fontsize" : 14.0,
					"numinlets" : 1,
					"id" : "obj-8",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "" ],
					"patching_rect" : [ 588.0, 127.0, 256.0, 272.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"name" : "mi.lcd.maxpat",
					"args" : [ "CC" ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 557.0, 461.0, 324.0, 52.0 ],
					"numinlets" : 0,
					"id" : "obj-9",
					"name" : "mi.remote.maxpat",
					"args" : [ "CC" ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "mi.concat",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontname" : "Arial",
					"fontface" : 3,
					"patching_rect" : [ 8.0, 4.0, 108.0, 30.0 ],
					"fontsize" : 20.871338,
					"numinlets" : 1,
					"id" : "obj-4",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_digest",
					"text" : "Controlling mubu.concat~ using GF markers",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 8.0, 32.0, 343.0, 21.0 ],
					"fontsize" : 12.754705,
					"numinlets" : 1,
					"id" : "obj-90",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mi.concat CC",
					"outlettype" : [ "signal", "signal", "" ],
					"fontname" : "Arial",
					"color" : [ 1.0, 0.0, 0.0, 0.596078 ],
					"patching_rect" : [ 57.0, 405.0, 95.0, 23.0 ],
					"fontsize" : 14.0,
					"numinlets" : 1,
					"id" : "obj-6",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "append drumloop.aif",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 376.0, 454.0, 111.0, 17.0 ],
					"fontsize" : 11.0,
					"numinlets" : 2,
					"id" : "obj-22",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s CC.polybuffer",
					"fontname" : "Arial",
					"patching_rect" : [ 376.0, 476.0, 86.0, 19.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"id" : "obj-20",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "del 1000",
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 229.0, 429.0, 53.0, 19.0 ],
					"fontsize" : 11.0,
					"numinlets" : 2,
					"id" : "obj-14",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "read concat.txt, weights 1 1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 229.0, 454.0, 144.0, 17.0 ],
					"fontsize" : 11.0,
					"numinlets" : 2,
					"id" : "obj-21",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s CC.in",
					"fontname" : "Arial",
					"patching_rect" : [ 229.0, 476.0, 47.0, 19.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"id" : "obj-19",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 229.0, 404.0, 56.0, 19.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"id" : "obj-18",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 133.0, 437.0, 33.0, 33.0 ],
					"numinlets" : 1,
					"id" : "obj-15",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"patching_rect" : [ 57.0, 454.0, 45.0, 45.0 ],
					"numinlets" : 2,
					"id" : "obj-11",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"mode" : 1,
					"grad2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 3.0, 1.0, 896.0, 53.0 ],
					"numinlets" : 1,
					"id" : "obj-117",
					"numoutlets" : 0,
					"grad1" : [ 0.407843, 0.658824, 0.909804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 24,
					"border" : 6,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 543.0, 72.0, 349.0, 450.0 ],
					"numinlets" : 1,
					"id" : "obj-51",
					"bordercolor" : [ 0.756863, 0.756863, 0.756863, 1.0 ],
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [ 104.5, 440.5, 92.5, 440.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 238.5, 451.5, 385.5, 451.5 ]
				}

			}
 ]
	}

}
