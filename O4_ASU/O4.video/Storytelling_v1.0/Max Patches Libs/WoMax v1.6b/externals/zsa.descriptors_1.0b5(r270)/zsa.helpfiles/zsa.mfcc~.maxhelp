{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 137.0, 78.0, 723.0, 526.0 ],
		"bgcolor" : [ 0.27451, 0.368627, 0.45098, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 137.0, 78.0, 723.0, 526.0 ],
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
					"maxclass" : "newobj",
					"text" : "p \"Calibrate Display\"",
					"patching_rect" : [ 111.0, 365.0, 120.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"patching_rect" : [ 191.0, 45.0, 24.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-4",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 191.0, 15.0, 25.0, 25.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-3",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0 s",
									"patching_rect" : [ 50.0, 254.0, 33.0, 20.0 ],
									"outlettype" : [ "int", "" ],
									"id" : "obj-2",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"patching_rect" : [ 50.0, 76.0, 34.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl median",
									"patching_rect" : [ 145.0, 172.0, 62.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-20",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl group 50",
									"patching_rect" : [ 145.0, 144.0, 70.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-21",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl median",
									"patching_rect" : [ 50.0, 172.0, 62.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-17",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend setminmax",
									"patching_rect" : [ 50.0, 225.0, 116.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "maximum 0.",
									"patching_rect" : [ 145.0, 115.0, 76.0, 20.0 ],
									"outlettype" : [ "float", "int" ],
									"id" : "obj-15",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. 0.",
									"patching_rect" : [ 50.0, 200.0, 63.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl group 50",
									"patching_rect" : [ 50.0, 144.0, 70.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-11",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "minimum 0.",
									"patching_rect" : [ 50.0, 115.0, 73.0, 20.0 ],
									"outlettype" : [ "float", "int" ],
									"id" : "obj-6",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 65.0, 15.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 64.0, 294.0, 25.0, 25.0 ],
									"id" : "obj-22",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 278.0, 44.0, 278.0, 44.0, 66.0, 59.5, 66.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 99.5, 154.5, 99.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[2]",
					"patching_rect" : [ 41.0, 489.0, 497.0, 19.0 ],
					"id" : "obj-2",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 11.0,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set 24",
					"patching_rect" : [ 71.0, 296.0, 98.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-10",
					"fontsize" : 12.0,
					"hidden" : 1,
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[1]",
					"text" : "Number of Mel Band (s)",
					"patching_rect" : [ 223.0, 296.0, 127.0, 19.0 ],
					"id" : "obj-9",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 11.0,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"patching_rect" : [ 483.0, 20.0, 195.402344, 21.798828 ],
					"outlettype" : [ "", "", "int" ],
					"id" : "obj-55",
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"textcolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"fontface" : 3,
					"fontsize" : 12.0,
					"textoncolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"fontlink" : 1,
					"textovercolor" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 150.0, 150.0, 195.402344, 21.798828 ],
					"text" : "open Zsa.Descriptors Overview",
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"textoveroncolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"fontname" : "Arial",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load zsa.overview.maxpat",
					"patching_rect" : [ 482.0, 46.0, 145.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-41",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 482.0, 65.0, 57.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-42",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "zsa_seealso",
					"patching_rect" : [ 570.0, 458.0, 141.0, 51.0 ],
					"id" : "obj-14",
					"name" : "zsa.seealso.maxpat",
					"args" : [  ],
					"numinlets" : 0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"patching_rect" : [ 365.0, 382.0, 32.5, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-47",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 530.0, 132.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-44",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 507.0, 132.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-45",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "loop $1",
					"patching_rect" : [ 530.0, 157.0, 50.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-48",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfplay~",
					"patching_rect" : [ 467.0, 183.0, 49.0, 20.0 ],
					"outlettype" : [ "signal", "bang" ],
					"id" : "obj-49",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"save" : [ "#N", "sfplay~", "", 1, 120960, 0, "", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"patching_rect" : [ 467.0, 132.0, 37.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-50",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"types" : [  ],
					"patching_rect" : [ 55.0, 150.0, 79.0, 20.0 ],
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-43",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"items" : [ "(Source)", ",", "noise", ",", "sound", "file" ],
					"fontname" : "Arial",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "biquad~",
					"patching_rect" : [ 86.0, 225.0, 86.5, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-36",
					"fontsize" : 12.0,
					"numinlets" : 6,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noise~",
					"patching_rect" : [ 86.0, 189.0, 46.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-68",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "selector~ 2 1",
					"patching_rect" : [ 55.0, 254.769226, 80.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-69",
					"fontsize" : 12.0,
					"numinlets" : 3,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "filtergraph~",
					"autoout" : 1,
					"fgcolor" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"patching_rect" : [ 135.0, 109.0, 301.0, 103.0 ],
					"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
					"id" : "obj-81",
					"logfreq" : 0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 10.0,
					"domain" : [ 0.0, 22050.0 ],
					"markercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
					"hbwidthcolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"hcurvecolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"bwidthcolor" : [ 0.462745, 0.47451, 0.65098, 1.0 ],
					"numinlets" : 8,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"fontname" : "Arial",
					"numoutlets" : 7,
					"nfilters" : 1,
					"setfilter" : [ 0, 3, 0, 0, 0, 4322.093262, 1.0, 1.279461, 0.0001, 22050.0, 0.0001, 16.0, 0.5, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_dac_text",
					"text" : "start audio",
					"linecount" : 2,
					"patching_rect" : [ 324.0, 425.0, 38.0, 33.0 ],
					"id" : "obj-12",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 11.595187,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"varname" : "autohelp_dac",
					"patching_rect" : [ 365.0, 419.0, 45.0, 45.0 ],
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
					"patching_rect" : [ 317.0, 414.0, 100.0, 55.0 ],
					"id" : "obj-19",
					"bordercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"border" : 2,
					"numinlets" : 1,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"size" : 24,
					"patching_rect" : [ 55.0, 406.0, 184.0, 75.0 ],
					"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-5",
					"setminmax" : [ -11.652266, 0.828319 ],
					"numinlets" : 1,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zsa.easy_mfcc~ 1024 4",
					"patching_rect" : [ 55.0, 326.0, 135.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text",
					"patching_rect" : [ 7.0, 61.0, 251.0, 19.0 ],
					"id" : "obj-8",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 11.0,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_description",
					"text" : "Outputs Mel-frequency cepstral coefficients as a list.",
					"patching_rect" : [ 7.0, 39.0, 455.0, 21.0 ],
					"id" : "obj-3",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 12.754705,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_title",
					"text" : "zsa.mfcc~",
					"patching_rect" : [ 7.0, 9.0, 455.0, 30.0 ],
					"id" : "obj-7",
					"textcolor" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338,
					"frgb" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"grad2" : [ 0.27451, 0.368627, 0.45098, 1.0 ],
					"patching_rect" : [ 7.0, 8.0, 473.0, 52.0 ],
					"id" : "obj-37",
					"mode" : 1,
					"angle" : -88.349983,
					"numinlets" : 1,
					"grad1" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"numoutlets" : 0,
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 378.5, 352.0, 50.0, 20.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-51",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"maximum" : 100,
					"patching_rect" : [ 171.0, 296.0, 50.0, 20.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-1",
					"minimum" : 4,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 212.0, 340.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-24",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 539.5, 179.0, 476.5, 179.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 516.5, 163.0, 476.5, 163.0 ]
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
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-69", 2 ],
					"hidden" : 0,
					"midpoints" : [ 476.5, 250.0, 127.0, 250.0, 127.0, 250.0, 125.5, 250.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-5", 0 ],
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
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
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-69", 1 ],
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
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-38", 1 ],
					"hidden" : 0,
					"midpoints" : [ 374.5, 406.0, 400.5, 406.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 374.5, 403.0, 374.5, 403.0 ]
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
					"midpoints" : [ 64.5, 273.0, 64.5, 285.0, 374.5, 285.0 ]
				}

			}
 ]
	}

}
