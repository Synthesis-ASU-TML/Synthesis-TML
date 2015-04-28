{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 20.0, 44.0, 957.0, 540.0 ],
		"bglocked" : 0,
		"defrect" : [ 20.0, 44.0, 957.0, 540.0 ],
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
					"text" : "Input",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 14.0,
					"numinlets" : 1,
					"patching_rect" : [ 54.0, 216.0, 52.0, 23.0 ],
					"id" : "obj-25",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "↓",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 36.0,
					"numinlets" : 1,
					"patching_rect" : [ 32.0, 197.0, 38.0, 48.0 ],
					"id" : "obj-26",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p messages",
					"fontsize" : 11.0,
					"numinlets" : 0,
					"patching_rect" : [ 26.0, 171.0, 70.0, 19.0 ],
					"id" : "obj-24",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 843.0, 268.0, 585.0, 403.0 ],
						"bglocked" : 0,
						"defrect" : [ 843.0, 268.0, 585.0, 403.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 42.0, 317.0, 20.0, 20.0 ],
									"id" : "obj-16",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "toolbar visible $1",
									"fontsize" : 11.0,
									"numinlets" : 2,
									"patching_rect" : [ 42.0, 339.0, 93.0, 17.0 ],
									"id" : "obj-13",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Sending messages directly to imubu",
									"fontface" : 1,
									"fontsize" : 11.0,
									"numinlets" : 1,
									"patching_rect" : [ 43.0, 295.0, 202.0, 19.0 ],
									"id" : "obj-5",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Messages",
									"fontface" : 3,
									"fontsize" : 18.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 260.0, 5.0, 97.0, 27.0 ],
									"id" : "obj-48",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Likeliest",
									"fontface" : 1,
									"fontsize" : 11.0,
									"numinlets" : 1,
									"patching_rect" : [ 70.0, 156.0, 116.0, 19.0 ],
									"id" : "obj-46",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If this option is turned off, you can set which phrase to display using the 'bufferchooser' at the bottom",
									"linecount" : 2,
									"fontsize" : 11.0,
									"numinlets" : 1,
									"patching_rect" : [ 96.0, 193.0, 261.0, 32.0 ],
									"id" : "obj-45",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If this option is turned on, during the \"following\" gf.editor will display always the likeliest phrase",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"patching_rect" : [ 96.0, 176.0, 468.0, 19.0 ],
									"id" : "obj-34",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 75.0, 191.0, 20.0, 20.0 ],
									"id" : "obj-35",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "likeliest $1",
									"fontsize" : 11.0,
									"numinlets" : 2,
									"patching_rect" : [ 75.0, 231.0, 111.0, 17.0 ],
									"id" : "obj-36",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Horizontal and vertical dimensions",
									"fontface" : 1,
									"fontsize" : 11.0,
									"numinlets" : 1,
									"patching_rect" : [ 37.0, 37.0, 193.0, 19.0 ],
									"id" : "obj-37",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 200",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 175.0, 63.0, 81.0, 17.0 ],
									"id" : "obj-38",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 400",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 75.0, 63.0, 81.0, 17.0 ],
									"id" : "obj-39",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"patching_rect" : [ 175.0, 86.0, 50.0, 19.0 ],
									"id" : "obj-40",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"patching_rect" : [ 75.0, 86.0, 50.0, 19.0 ],
									"id" : "obj-41",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak dim 400 200",
									"fontsize" : 11.0,
									"numinlets" : 3,
									"patching_rect" : [ 38.0, 117.0, 92.0, 19.0 ],
									"id" : "obj-42",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s B.editor",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"patching_rect" : [ 43.0, 359.0, 57.0, 19.0 ],
									"id" : "obj-30",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 1",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 51.0, 174.0, 71.0, 17.0 ],
									"id" : "obj-23",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"border" : 6,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"background" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 13.0, 18.0, 563.0, 370.0 ],
									"id" : "obj-49",
									"numoutlets" : 0,
									"rounded" : 24,
									"bordercolor" : [ 0.756863, 0.756863, 0.756863, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 38.0, 266.0, 25.0, 25.0 ],
									"id" : "obj-17",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 84.5, 256.5, 47.5, 256.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-42", 2 ],
									"hidden" : 0,
									"midpoints" : [ 184.5, 110.5, 120.5, 110.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-42", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 11.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mi.gf",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontface" : 2,
					"fontsize" : 14.0,
					"bgcolor" : [ 1.0, 0.952941, 0.0, 0.466667 ],
					"numinlets" : 1,
					"patching_rect" : [ 636.0, 410.0, 41.0, 23.0 ],
					"id" : "obj-15",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mi.gf B",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"patching_rect" : [ 624.0, 430.0, 45.0, 19.0 ],
					"id" : "obj-11",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Input Example",
					"fontface" : 3,
					"fontsize" : 18.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 699.0, 62.0, 134.0, 27.0 ],
					"id" : "obj-50",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "help imubu",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 216.0, 101.0, 70.0, 18.0 ],
					"id" : "obj-19",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 286.0, 100.0, 54.0, 20.0 ],
					"id" : "obj-14",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Please see imubu help file for details:",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 9.0, 99.0, 210.0, 20.0 ],
					"id" : "obj-12",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "As GF uses MuBu, iMubu can be used for displaying and editing its gestures.",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 9.0, 81.0, 459.0, 20.0 ],
					"id" : "obj-9",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "iMubu is the graphical object for visualizing and editing the content of a MuBu",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 9.0, 63.0, 422.0, 20.0 ],
					"id" : "obj-6",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mi.editor",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontface" : 2,
					"fontsize" : 14.0,
					"bgcolor" : [ 1.0, 0.952941, 0.0, 0.466667 ],
					"numinlets" : 1,
					"patching_rect" : [ 176.0, 225.0, 64.0, 23.0 ],
					"id" : "obj-3",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess init",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"patching_rect" : [ 624.0, 108.0, 75.0, 19.0 ],
					"id" : "obj-2",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"args" : [ "B" ],
					"numinlets" : 1,
					"patching_rect" : [ 26.0, 250.0, 510.0, 287.0 ],
					"id" : "obj-1",
					"numoutlets" : 0,
					"name" : "mi.editor.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mi.remote",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontface" : 2,
					"fontsize" : 14.0,
					"bgcolor" : [ 1.0, 0.952941, 0.0, 0.466667 ],
					"numinlets" : 1,
					"patching_rect" : [ 705.0, 447.0, 73.0, 23.0 ],
					"id" : "obj-10",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mi.lcd",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontface" : 2,
					"fontsize" : 14.0,
					"bgcolor" : [ 1.0, 0.952941, 0.0, 0.466667 ],
					"numinlets" : 1,
					"patching_rect" : [ 728.0, 111.0, 47.0, 23.0 ],
					"id" : "obj-8",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"args" : [ "B" ],
					"numinlets" : 1,
					"patching_rect" : [ 624.0, 132.0, 256.0, 272.0 ],
					"id" : "obj-22",
					"numoutlets" : 1,
					"name" : "mi.lcd.maxpat",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"args" : [ "B" ],
					"numinlets" : 0,
					"patching_rect" : [ 593.0, 466.0, 324.0, 52.0 ],
					"id" : "obj-21",
					"numoutlets" : 0,
					"name" : "mi.remote.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "mi.editor",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338,
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 3.0, 99.0, 30.0 ],
					"id" : "obj-4",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_digest",
					"text" : "Graphical tool for displaying and editing gestures",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 12.754705,
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 31.0, 286.0, 21.0 ],
					"id" : "obj-90",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"border" : 3,
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 21.0, 246.0, 409.0, 228.0 ],
					"id" : "obj-7",
					"numoutlets" : 0,
					"bordercolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"mode" : 1,
					"grad1" : [ 0.407843, 0.658824, 0.909804, 1.0 ],
					"background" : 1,
					"numinlets" : 1,
					"grad2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 0.0, 0.0, 955.0, 57.0 ],
					"id" : "obj-117",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"border" : 6,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 579.0, 77.0, 349.0, 450.0 ],
					"id" : "obj-51",
					"numoutlets" : 0,
					"rounded" : 24,
					"bordercolor" : [ 0.756863, 0.756863, 0.756863, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
