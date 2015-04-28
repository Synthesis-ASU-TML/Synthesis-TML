{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 61.0, 99.0, 1045.0, 544.0 ],
		"bglocked" : 0,
		"defrect" : [ 61.0, 99.0, 1045.0, 544.0 ],
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
					"text" : "mi.gf",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-2",
					"bgcolor" : [ 1.0, 0.952941, 0.0, 0.466667 ],
					"fontname" : "Arial",
					"patching_rect" : [ 702.0, 406.0, 41.0, 23.0 ],
					"numinlets" : 1,
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontface" : 2,
					"fontsize" : 14.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mi.gf C",
					"id" : "obj-3",
					"fontname" : "Arial",
					"patching_rect" : [ 690.0, 426.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Input Example",
					"id" : "obj-50",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 765.0, 58.0, 134.0, 27.0 ],
					"numinlets" : 1,
					"fontface" : 3,
					"fontsize" : 18.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess init",
					"id" : "obj-8",
					"fontname" : "Arial",
					"patching_rect" : [ 690.0, 104.0, 75.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mi.remote",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-10",
					"bgcolor" : [ 1.0, 0.952941, 0.0, 0.466667 ],
					"fontname" : "Arial",
					"patching_rect" : [ 771.0, 443.0, 73.0, 23.0 ],
					"numinlets" : 1,
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontface" : 2,
					"fontsize" : 14.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mi.lcd",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-14",
					"bgcolor" : [ 1.0, 0.952941, 0.0, 0.466667 ],
					"fontname" : "Arial",
					"patching_rect" : [ 794.0, 110.0, 47.0, 23.0 ],
					"numinlets" : 1,
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontface" : 2,
					"fontsize" : 14.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"id" : "obj-22",
					"patching_rect" : [ 690.0, 128.0, 256.0, 272.0 ],
					"numinlets" : 1,
					"name" : "mi.lcd.maxpat",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"args" : [ "C" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"id" : "obj-21",
					"patching_rect" : [ 659.0, 462.0, 324.0, 52.0 ],
					"numinlets" : 0,
					"name" : "mi.remote.maxpat",
					"numoutlets" : 0,
					"args" : [ "C" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-5",
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 3,
					"patching_rect" : [ 11.0, 215.0, 598.0, 95.0 ],
					"bordercolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Speed ",
					"id" : "obj-19",
					"fontname" : "Arial",
					"patching_rect" : [ 518.0, 161.0, 54.0, 21.0 ],
					"numinlets" : 1,
					"fontsize" : 13.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "TIme position",
					"id" : "obj-18",
					"fontname" : "Arial",
					"patching_rect" : [ 395.0, 158.0, 91.0, 21.0 ],
					"numinlets" : 1,
					"fontsize" : 13.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "↓",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-17",
					"fontname" : "Arial",
					"patching_rect" : [ 526.0, 174.0, 38.0, 48.0 ],
					"numinlets" : 1,
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 36.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "↓",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-15",
					"fontname" : "Arial",
					"patching_rect" : [ 421.0, 174.0, 38.0, 48.0 ],
					"numinlets" : 1,
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 36.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Likelihood normalized so that their sums is always 1",
					"linecount" : 2,
					"id" : "obj-12",
					"fontname" : "Arial",
					"patching_rect" : [ 220.0, 146.0, 161.0, 36.0 ],
					"numinlets" : 1,
					"fontsize" : 13.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "↓",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"patching_rect" : [ 268.0, 174.0, 38.0, 48.0 ],
					"numinlets" : 1,
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 36.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Likelihood absolute (in [-inf, 0])",
					"linecount" : 2,
					"id" : "obj-9",
					"fontname" : "Arial",
					"patching_rect" : [ 72.0, 147.0, 123.0, 36.0 ],
					"numinlets" : 1,
					"fontsize" : 13.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "↓",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"patching_rect" : [ 112.0, 174.0, 38.0, 48.0 ],
					"numinlets" : 1,
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 36.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Likeliest",
					"id" : "obj-7",
					"fontname" : "Arial",
					"patching_rect" : [ 10.0, 163.0, 59.0, 21.0 ],
					"numinlets" : 1,
					"fontsize" : 13.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "↓",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-65",
					"fontname" : "Arial",
					"patching_rect" : [ 19.0, 174.0, 38.0, 48.0 ],
					"numinlets" : 1,
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 36.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"id" : "obj-1",
					"border" : 1,
					"patching_rect" : [ 13.0, 219.0, 593.0, 88.0 ],
					"numinlets" : 0,
					"name" : "mi.view.maxpat",
					"numoutlets" : 0,
					"offset" : [ 2.0, 0.0 ],
					"args" : [ "B" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Use mi.lcd and mi.remote on the right to learn/follow some gesture.\nTurn on the different options in the mi.view below to see results during \"following\".\nPlease note that, as all other \"mi\" abstractions, mi.view must have the same name as mi.GF to work with it",
					"linecount" : 3,
					"id" : "obj-6",
					"fontname" : "Arial",
					"patching_rect" : [ 7.0, 74.0, 575.0, 48.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "mi.view",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 3.0, 93.0, 30.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_digest",
					"text" : "Visualizing following/recognition results",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"id" : "obj-90",
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 31.0, 231.0, 21.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 12.754705,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"grad2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-117",
					"mode" : 1,
					"patching_rect" : [ 0.0, 0.0, 999.0, 54.0 ],
					"numinlets" : 1,
					"background" : 1,
					"numoutlets" : 0,
					"grad1" : [ 0.407843, 0.658824, 0.909804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-51",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 6,
					"patching_rect" : [ 645.0, 73.0, 349.0, 450.0 ],
					"bordercolor" : [ 0.756863, 0.756863, 0.756863, 1.0 ],
					"numinlets" : 1,
					"rounded" : 24,
					"background" : 1,
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
