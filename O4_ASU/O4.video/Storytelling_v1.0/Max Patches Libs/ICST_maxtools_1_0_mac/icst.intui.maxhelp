{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 5.0, 51.0, 800.0, 640.0 ],
		"bgcolor" : [ 0.980392, 0.980392, 0.980392, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 5.0, 51.0, 800.0, 640.0 ],
		"openrect" : [ 5.0, 51.0, 800.0, 640.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 6.0, 6.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 2000,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "window size 2 46 802 736, window exec",
					"id" : "obj-67",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 79.0, 630.0, 196.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"id" : "obj-80",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 79.0, 650.0, 61.0, 17.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"bgoncolor" : [ 0.54902, 0.54902, 0.54902, 0.0 ],
					"textoveroncolor" : [ 0.0, 0.298039, 1.0, 1.0 ],
					"rounded" : 0.0,
					"underline" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor" : [ 0.0, 0.145098, 0.717647, 1.0 ],
					"textoncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-65",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"textovercolor" : [ 0.85098, 0.0, 0.0, 1.0 ],
					"numoutlets" : 3,
					"bgovercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "", "", "int" ],
					"border" : 0,
					"bgoveroncolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"text" : "www.icst.net",
					"patching_rect" : [ 699.0, 61.0, 77.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launch_browser http://www.icst.net",
					"linecount" : 2,
					"gradient" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 4.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "" ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 689.0, 92.0, 91.0, 14.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Zurich University of the Arts",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"id" : "obj-84",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 635.0, 51.0, 138.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a GUI object for integers",
					"id" : "obj-85",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 41.0, 56.0, 123.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Copyright © 2008 by Jan Schacher",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"id" : "obj-86",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 604.0, 27.0, 169.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ICST Institute for Computer Music and Sound Technology",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"id" : "obj-87",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 504.0, 39.0, 269.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "icst.intui",
					"id" : "obj-88",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 18.0,
					"patching_rect" : [ 39.0, 31.0, 88.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"bordercolor" : [ 0.752941, 0.74902, 0.74902, 1.0 ],
					"id" : "obj-89",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 1,
					"patching_rect" : [ 13.0, 13.0, 773.0, 76.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p standard_types",
					"id" : "obj-82",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 77.0, 502.0, 98.0, 19.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 264.0, 339.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 264.0, 339.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 6.0, 6.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set",
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 48.0, 150.0, 33.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "list",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 48.0, 102.0, 33.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "int",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 48.0, 78.0, 33.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "float",
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 48.0, 54.0, 33.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bang",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 48.0, 30.0, 35.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set $1",
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 102.0, 174.0, 42.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1 2 3 4",
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 102.0, 126.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"id" : "obj-72",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 102.0, 102.0, 101.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-86",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 102.0, 30.0, 18.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-84",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 102.0, 150.0, 100.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-81",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 84.0, 246.0, 100.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"id" : "obj-80",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 102.0, 54.0, 101.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-70",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 102.0, 78.0, 100.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "icst.intui",
									"bordercode" : 3,
									"presentation" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 0.509804 ],
									"bordersize" : 5.0,
									"focusbordercolor" : [ 1.0, 0.54902, 0.0, 1.0 ],
									"id" : "obj-65",
									"numinlets" : 1,
									"numoutlets" : 3,
									"presentation_rect" : [ 105.0, 512.0, 73.0, 18.0 ],
									"scrollfgcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 84.0, 198.0, 100.0, 35.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [ 111.5, 51.0, 93.5, 51.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [ 111.5, 99.0, 93.0, 99.0, 93.0, 195.0, 93.5, 195.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [ 111.5, 192.0, 93.5, 192.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [ 111.5, 144.0, 93.5, 144.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [ 111.5, 75.0, 93.0, 75.0, 93.0, 195.0, 93.5, 195.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the tab key deselects the box, the select message is sent out second outlet, allowing to daisy chain boxes.",
					"linecount" : 3,
					"id" : "obj-34",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 516.0, 500.0, 200.0, 43.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tab key:",
					"id" : "obj-55",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 516.0, 482.0, 80.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "typing:",
					"id" : "obj-53",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 516.0, 140.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a new value can be typed into a high lighted box. the return, enter or tab key, or deselecting the box sets the value.",
					"linecount" : 4,
					"id" : "obj-54",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 516.0, 158.0, 200.0, 55.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "reset message sets default value.",
					"id" : "obj-52",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 72.0, 446.0, 180.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the border code determines which of the border elements are drawn.",
					"linecount" : 2,
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 294.0, 482.0, 200.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "border code:",
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 294.0, 464.0, 82.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "font size:",
					"id" : "obj-51",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 72.0, 242.0, 63.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "border element size = angle length",
					"id" : "obj-35",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 294.0, 434.0, 200.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "after reset and re-hilighting arrow place reverts to unit one.",
					"linecount" : 2,
					"id" : "obj-79",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 516.0, 440.0, 200.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "up / down arrow increment or decrement by one unit of selected place (one, ten, hundred ) limit is eleven places.",
					"linecount" : 4,
					"id" : "obj-76",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 516.0, 344.0, 200.0, 55.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "left / right arrow set place to be incremented or decremented (defaults to ones' place).",
					"linecount" : 3,
					"id" : "obj-74",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 516.0, 398.0, 200.0, 43.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "arrow keys: ",
					"id" : "obj-73",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 516.0, 296.0, 80.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 3,
					"presentation" : 1,
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.509804 ],
					"bordersize" : 5.0,
					"focusbordercolor" : [ 1.0, 0.54902, 0.0, 1.0 ],
					"id" : "obj-66",
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 195.0, 397.0, 73.0, 18.0 ],
					"focusfontstyle" : 1,
					"scrollfgcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 522.0, 320.0, 73.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p bordercode",
					"id" : "obj-36",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 297.0, 518.0, 79.0, 19.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 605.0, 111.0, 586.0, 465.0 ],
						"bglocked" : 0,
						"defrect" : [ 605.0, 111.0, 586.0, 465.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 6.0, 6.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "icst.intui",
									"bordercode" : 6,
									"bordercolor" : [ 0.498039, 0.74902, 1.0, 1.0 ],
									"bordersize" : 5.0,
									"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-67",
									"borderstyle" : 5,
									"numinlets" : 1,
									"numoutlets" : 3,
									"maximum" : 0,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 192.0, 359.0, 50.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "icst.intui",
									"bordercode" : 1,
									"bordercolor" : [ 0.498039, 0.74902, 1.0, 1.0 ],
									"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-70",
									"borderstyle" : 5,
									"numinlets" : 1,
									"numoutlets" : 3,
									"maximum" : 0,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 234.526306, 407.0, 42.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "icst.intui",
									"bordercode" : 1,
									"bordercolor" : [ 0.498039, 0.74902, 1.0, 1.0 ],
									"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-73",
									"borderstyle" : 5,
									"numinlets" : 1,
									"numoutlets" : 3,
									"maximum" : 0,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 191.763168, 407.0, 42.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "icst.intui",
									"bordercode" : 1,
									"bordercolor" : [ 0.498039, 0.74902, 1.0, 1.0 ],
									"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-74",
									"borderstyle" : 5,
									"numinlets" : 1,
									"numoutlets" : 3,
									"maximum" : 0,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 149.0, 407.0, 42.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "icst.intui",
									"bordercode" : 9,
									"bordercolor" : [ 0.498039, 0.74902, 1.0, 1.0 ],
									"bordersize" : 5.0,
									"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-66",
									"borderstyle" : 5,
									"numinlets" : 1,
									"numoutlets" : 3,
									"maximum" : 0,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 329.0, 359.0, 50.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "icst.intui",
									"bordercode" : 2,
									"bordercolor" : [ 0.498039, 0.74902, 1.0, 1.0 ],
									"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-55",
									"borderstyle" : 5,
									"numinlets" : 1,
									"numoutlets" : 3,
									"maximum" : 0,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 373.078949, 407.0, 42.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "icst.intui",
									"bordercode" : 2,
									"bordercolor" : [ 0.498039, 0.74902, 1.0, 1.0 ],
									"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-54",
									"borderstyle" : 5,
									"numinlets" : 1,
									"numoutlets" : 3,
									"maximum" : 0,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 328.605255, 407.0, 42.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "icst.intui",
									"bordercode" : 2,
									"bordercolor" : [ 0.498039, 0.74902, 1.0, 1.0 ],
									"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-53",
									"borderstyle" : 5,
									"numinlets" : 1,
									"numoutlets" : 3,
									"maximum" : 0,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 284.986847, 407.0, 42.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "icst.intui",
									"bordercode" : 2,
									"bordercolor" : [ 0.498039, 0.74902, 1.0, 1.0 ],
									"bordersize" : 3.0,
									"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-35",
									"borderstyle" : 4,
									"numinlets" : 1,
									"numoutlets" : 3,
									"maximum" : 0,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 262.0, 308.0, 50.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"angle" : -90.0,
									"id" : "obj-34",
									"numinlets" : 1,
									"numoutlets" : 0,
									"mode" : 1,
									"bgcolor" : [ 0.67451, 0.721569, 1.0, 1.0 ],
									"grad2" : [ 0.266667, 0.266667, 0.266667, 1.0 ],
									"patching_rect" : [ 138.0, 300.0, 282.0, 131.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the bordercode is a 4 bit binary value determing the drawing of two or four border elements",
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 36.0, 24.0, 478.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bracket h mode",
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 397.0, 75.0, 89.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "bordercode $1",
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 417.0, 171.0, 83.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 417.0, 149.0, 50.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "icst.intui",
									"bordercode" : 0,
									"bordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"bordersize" : 20.0,
									"focusbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"id" : "obj-28",
									"borderstyle" : 4,
									"numinlets" : 1,
									"numoutlets" : 3,
									"borderwidth" : 4.0,
									"maximum" : 0,
									"bgcolor" : [ 0.87451, 0.87451, 0.87451, 1.0 ],
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 417.0, 199.0, 106.0, 50.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bordercode",
									"id" : "obj-29",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 416.0, 102.0, 67.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"id" : "obj-30",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 10.0,
									"outlettype" : [ "int", "", "" ],
									"items" : [ "off", ",", "top", ",", "bottom", ",", "top-bottom" ],
									"types" : [  ],
									"patching_rect" : [ 417.0, 123.0, 51.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bracket v mode",
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 290.0, 75.0, 89.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "bordercode $1",
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 303.0, 170.0, 83.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 303.0, 148.0, 50.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "icst.intui",
									"bordercode" : 0,
									"bordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"bordersize" : 20.0,
									"focusbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"id" : "obj-23",
									"borderstyle" : 3,
									"numinlets" : 1,
									"numoutlets" : 3,
									"borderwidth" : 4.0,
									"maximum" : 0,
									"bgcolor" : [ 0.87451, 0.87451, 0.87451, 1.0 ],
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 303.0, 199.0, 106.0, 50.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bordercode",
									"id" : "obj-24",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 302.0, 101.0, 67.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 10.0,
									"outlettype" : [ "int", "", "" ],
									"items" : [ "off", ",", "L", ",", "R", ",", "L-R" ],
									"types" : [  ],
									"patching_rect" : [ 303.0, 122.0, 51.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "corner 3",
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 219.0, 236.0, 52.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "corner 2",
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 219.0, 198.0, 52.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "corner 4",
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 42.0, 236.0, 52.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "corner 1",
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 42.0, 198.0, 52.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "corner mode",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 42.0, 75.0, 74.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "bordercode $1",
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 96.0, 169.0, 83.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"minimum" : 0,
									"fontsize" : 10.0,
									"maximum" : 15,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 96.0, 147.0, 50.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "icst.intui",
									"bordercode" : 5,
									"bordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"bordersize" : 30.0,
									"focusbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"id" : "obj-5",
									"borderstyle" : 5,
									"numinlets" : 1,
									"numoutlets" : 3,
									"borderwidth" : 4.0,
									"maximum" : 0,
									"bgcolor" : [ 0.87451, 0.87451, 0.87451, 1.0 ],
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 96.0, 198.0, 120.0, 60.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bordercode",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 95.0, 100.0, 67.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 10.0,
									"outlettype" : [ "int", "", "" ],
									"items" : [ "off", ",", 1, ",", 2, ",", "1-2", ",", 3, ",", "1-3", ",", "2-3", ",", "1-2-3", ",", 4, ",", "1-4", ",", "2-4", ",", "1-2-4", ",", "3-4", ",", "1-3-4", ",", "2-3-4", ",", "1-2-3-4" ],
									"types" : [  ],
									"patching_rect" : [ 96.0, 121.0, 51.0, 19.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-73", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 4,
					"presentation" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.27451 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"focusborderwidth" : 6.0,
					"focusbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"id" : "obj-68",
					"borderstyle" : 5,
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 280.59787, 307.0, 48.0, 16.0 ],
					"maximum" : 0,
					"bgcolor" : [ 0.0, 0.062745, 0.12549, 1.0 ],
					"outlettype" : [ "", "", "" ],
					"focusbgcolor" : [ 1.0, 1.0, 1.0, 0.101961 ],
					"focusfgcolor" : [ 1.0, 0.894118, 0.894118, 1.0 ],
					"patching_rect" : [ 342.130585, 560.0, 40.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 8,
					"presentation" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.27451 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"focusborderwidth" : 6.0,
					"focusbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"id" : "obj-69",
					"borderstyle" : 5,
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 232.100525, 307.0, 48.0, 16.0 ],
					"maximum" : 0,
					"bgcolor" : [ 0.0, 0.062745, 0.12549, 1.0 ],
					"outlettype" : [ "", "", "" ],
					"focusbgcolor" : [ 1.0, 1.0, 1.0, 0.101961 ],
					"focusfgcolor" : [ 1.0, 0.894118, 0.894118, 1.0 ],
					"patching_rect" : [ 302.0, 560.0, 40.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 2,
					"presentation" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.27451 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"focusborderwidth" : 6.0,
					"focusbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"id" : "obj-75",
					"borderstyle" : 5,
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 183.497345, 307.0, 48.0, 16.0 ],
					"maximum" : 0,
					"bgcolor" : [ 0.0, 0.062745, 0.12549, 1.0 ],
					"outlettype" : [ "", "", "" ],
					"focusbgcolor" : [ 1.0, 1.0, 1.0, 0.101961 ],
					"focusfgcolor" : [ 1.0, 0.894118, 0.894118, 1.0 ],
					"patching_rect" : [ 342.130585, 544.0, 40.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 1,
					"presentation" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.27451 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"focusborderwidth" : 6.0,
					"focusbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"id" : "obj-77",
					"borderstyle" : 5,
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 134.0, 307.0, 48.0, 16.0 ],
					"maximum" : 0,
					"bgcolor" : [ 0.0, 0.062745, 0.12549, 1.0 ],
					"outlettype" : [ "", "", "" ],
					"focusbgcolor" : [ 1.0, 1.0, 1.0, 0.101961 ],
					"focusfgcolor" : [ 1.0, 0.894118, 0.894118, 1.0 ],
					"patching_rect" : [ 302.0, 544.0, 40.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 1,
					"presentation" : 1,
					"bordercolor" : [ 0.2, 0.2, 0.2, 0.223529 ],
					"focusborderwidth" : 6.0,
					"focusbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"id" : "obj-62",
					"borderstyle" : 5,
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 280.59787, 339.739197, 48.0, 16.0 ],
					"maximum" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
					"outlettype" : [ "", "", "" ],
					"focusbgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"patching_rect" : [ 430.387634, 558.675293, 40.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 4,
					"presentation" : 1,
					"bordercolor" : [ 0.2, 0.2, 0.2, 0.223529 ],
					"focusborderwidth" : 6.0,
					"focusbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"id" : "obj-63",
					"borderstyle" : 5,
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 134.0, 339.739197, 48.0, 16.0 ],
					"maximum" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
					"outlettype" : [ "", "", "" ],
					"focusbgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"patching_rect" : [ 390.341064, 542.739197, 40.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 2,
					"presentation" : 1,
					"bordercolor" : [ 0.2, 0.2, 0.2, 0.223529 ],
					"focusborderwidth" : 6.0,
					"focusbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"id" : "obj-50",
					"borderstyle" : 5,
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 232.100525, 339.739197, 48.0, 16.0 ],
					"maximum" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
					"outlettype" : [ "", "", "" ],
					"focusbgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"patching_rect" : [ 389.520935, 558.675293, 40.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 8,
					"presentation" : 1,
					"bordercolor" : [ 0.2, 0.2, 0.2, 0.223529 ],
					"focusborderwidth" : 6.0,
					"focusbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"id" : "obj-38",
					"borderstyle" : 5,
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 183.497345, 339.739197, 48.0, 16.0 ],
					"maximum" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
					"outlettype" : [ "", "", "" ],
					"focusbgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"patching_rect" : [ 430.207764, 542.739197, 40.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"focusborderwidth" : 6.0,
					"focusbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"id" : "obj-28",
					"borderstyle" : 5,
					"numinlets" : 1,
					"numoutlets" : 3,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.517647 ],
					"outlettype" : [ "", "", "" ],
					"focusbgcolor" : [ 0.0, 0.0, 0.0, 0.101961 ],
					"scrollbgcolor" : [ 0.0, 0.0, 0.0, 0.101961 ],
					"patching_rect" : [ 300.0, 416.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "corners:",
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 294.0, 398.0, 52.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "text alignment:",
					"id" : "obj-49",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 72.0, 140.0, 97.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "border element size = bracket length",
					"id" : "obj-48",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 294.0, 376.0, 200.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "border element size = corner radius",
					"id" : "obj-47",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 294.0, 242.0, 200.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 0,
					"focusborderwidth" : 1.5,
					"focusbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"id" : "obj-45",
					"numinlets" : 1,
					"numoutlets" : 3,
					"borderwidth" : 1.5,
					"maximum" : 0,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 300.0, 224.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "rounded rectangle:",
					"id" : "obj-46",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 294.0, 206.0, 107.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 0,
					"focusbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"id" : "obj-44",
					"numinlets" : 1,
					"numoutlets" : 3,
					"maximum" : 0,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 300.0, 182.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "rectangle:",
					"id" : "obj-43",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 294.0, 164.0, 62.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "brackets:",
					"id" : "obj-37",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 294.0, 266.0, 58.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "font size can be set independantly for patching and presentation mode.",
					"linecount" : 2,
					"presentation" : 1,
					"id" : "obj-42",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 39.0, 159.0, 369.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 72.0, 290.0, 202.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "presentation mode",
					"presentation" : 1,
					"id" : "obj-41",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 54.0, 282.0, 105.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 96.0, 326.0, 105.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation" : 1,
					"id" : "obj-39",
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 36.0, 284.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ],
					"patching_rect" : [ 78.0, 326.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "presentation $1",
					"id" : "obj-33",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 78.0, 614.0, 86.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 3,
					"presentation" : 1,
					"bordercolor" : [ 0.541176, 0.47451, 0.278431, 1.0 ],
					"textcolor" : [ 0.254902, 0.25098, 0.501961, 1.0 ],
					"bordersize" : 5.0,
					"focusbordercolor" : [ 1.0, 0.54902, 0.0, 1.0 ],
					"id" : "obj-30",
					"borderstyle" : 4,
					"typingfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 312.425232, 193.0, 87.0, 41.0 ],
					"focusfontstyle" : 1,
					"fontsize" : 11.0,
					"typingbgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"maximum" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"focusfgcolor" : [ 0.254902, 0.25098, 0.501961, 1.0 ],
					"patching_rect" : [ 398.0, 340.0, 60.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "horizontal",
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 390.0, 358.0, 60.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "vertical",
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 294.0, 358.0, 47.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "border styles:",
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 294.0, 140.0, 88.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "reset and default value:",
					"id" : "obj-40",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 72.0, 350.0, 144.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "centered",
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 132.0, 188.0, 54.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 0,
					"focusbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"id" : "obj-27",
					"numinlets" : 1,
					"numoutlets" : 3,
					"maximum" : 0,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 78.0, 212.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "left aligned",
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 132.0, 164.0, 66.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "right aligned",
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 132.0, 212.0, 74.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 0,
					"textalignment" : 1,
					"focusbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 3,
					"maximum" : 0,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 78.0, 188.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "scrolling:",
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 516.0, 224.0, 63.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "scrolling in the box increments or decrements the integer part and sets decimal part to zero.",
					"linecount" : 3,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 516.0, 242.0, 206.0, 43.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the reset message is echoed out through the right outlet.",
					"linecount" : 2,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 72.0, 464.0, 200.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "click on resetbox widget (if visible) sets default value.",
					"linecount" : 2,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 72.0, 386.0, 200.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "cmd-click sets default value.",
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 72.0, 368.0, 200.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"varname" : "float[1]",
					"bordercode" : 0,
					"presentation" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordersize" : 32.0,
					"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-60",
					"borderstyle" : 5,
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 186.545853, 371.0, 45.0, 15.0 ],
					"maximum" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "", "", "" ],
					"pviewfontsize" : 9.0,
					"patching_rect" : [ 128.353149, 422.0, 48.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"varname" : "float[2]",
					"bordercode" : 0,
					"presentation" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordersize" : 32.0,
					"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-59",
					"borderstyle" : 5,
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 232.296936, 371.0, 45.0, 15.0 ],
					"maximum" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "", "", "" ],
					"pviewfontsize" : 9.0,
					"patching_rect" : [ 178.25, 422.0, 48.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "u582000172",
					"text" : "autopattr",
					"id" : "obj-58",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 4,
					"hidden" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 139.0, 651.0, 56.0, 17.0 ],
					"restore" : 					{
						"float[0]" : [ 104 ],
						"float[1]" : [ 154 ],
						"float[2]" : [ 0 ],
						"float[3]" : [ 100 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"varname" : "float[3]",
					"bordercode" : 0,
					"presentation" : 1,
					"resetbgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordersize" : 32.0,
					"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"defaultvalue" : 100,
					"id" : "obj-29",
					"borderstyle" : 5,
					"numinlets" : 1,
					"resetfgcolor" : [ 0.0, 0.0, 0.0, 0.466667 ],
					"numoutlets" : 3,
					"presentation_rect" : [ 277.039307, 371.0, 45.0, 15.0 ],
					"maximum" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "", "", "" ],
					"pviewfontsize" : 9.0,
					"patching_rect" : [ 228.0, 422.0, 48.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 3,
					"presentation" : 1,
					"bordercolor" : [ 0.541176, 0.47451, 0.278431, 1.0 ],
					"textcolor" : [ 0.254902, 0.25098, 0.501961, 1.0 ],
					"bordersize" : 5.0,
					"focusbordercolor" : [ 1.0, 0.54902, 0.0, 1.0 ],
					"id" : "obj-13",
					"borderstyle" : 4,
					"typingfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 225.425232, 192.522385, 87.0, 41.0 ],
					"focusfontstyle" : 1,
					"fontsize" : 11.0,
					"typingbgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"maximum" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"focusfgcolor" : [ 0.254902, 0.25098, 0.501961, 1.0 ],
					"patching_rect" : [ 398.0, 322.0, 60.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 3,
					"presentation" : 1,
					"bordercolor" : [ 0.541176, 0.47451, 0.278431, 1.0 ],
					"textcolor" : [ 0.254902, 0.25098, 0.501961, 1.0 ],
					"bordersize" : 5.0,
					"focusbordercolor" : [ 1.0, 0.54902, 0.0, 1.0 ],
					"id" : "obj-12",
					"borderstyle" : 4,
					"typingfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 138.425232, 192.522385, 87.0, 41.0 ],
					"focusfontstyle" : 1,
					"fontsize" : 11.0,
					"typingbgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"maximum" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"focusfgcolor" : [ 0.254902, 0.25098, 0.501961, 1.0 ],
					"patching_rect" : [ 398.0, 304.0, 60.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 3,
					"presentation" : 1,
					"bordercolor" : [ 0.541176, 0.47451, 0.278431, 1.0 ],
					"textcolor" : [ 0.254902, 0.25098, 0.501961, 1.0 ],
					"bordersize" : 5.0,
					"focusbordercolor" : [ 1.0, 0.54902, 0.0, 1.0 ],
					"id" : "obj-11",
					"borderstyle" : 4,
					"typingfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 51.425232, 192.522385, 87.0, 41.0 ],
					"focusfontstyle" : 1,
					"fontsize" : 11.0,
					"typingbgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"maximum" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"focusfgcolor" : [ 0.254902, 0.25098, 0.501961, 1.0 ],
					"patching_rect" : [ 398.0, 286.0, 60.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 3,
					"presentation" : 1,
					"resetbgcolor" : [ 0.215686, 0.215686, 0.215686, 1.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.2 ],
					"textcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
					"bordersize" : 4.029999,
					"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-26",
					"borderstyle" : 3,
					"typingfgcolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 286.0, 240.0, 57.0, 20.0 ],
					"focusfontstyle" : 0,
					"resetwidth" : 2.27,
					"fontsize" : 11.0,
					"typingbgcolor" : [ 0.156863, 0.023529, 0.192157, 1.0 ],
					"maximum" : 0,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "", "", "" ],
					"focusbgcolor" : [ 0.968627, 0.968627, 0.968627, 0.458824 ],
					"focusfgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 302.0, 340.0, 60.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 3,
					"presentation" : 1,
					"resetbgcolor" : [ 0.215686, 0.215686, 0.215686, 1.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.2 ],
					"textcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
					"bordersize" : 4.029999,
					"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-25",
					"borderstyle" : 3,
					"typingfgcolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 227.0, 240.0, 57.0, 20.0 ],
					"focusfontstyle" : 0,
					"resetwidth" : 2.27,
					"fontsize" : 11.0,
					"typingbgcolor" : [ 0.156863, 0.023529, 0.192157, 1.0 ],
					"maximum" : 0,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "", "", "" ],
					"focusbgcolor" : [ 0.968627, 0.968627, 0.968627, 0.458824 ],
					"focusfgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 302.0, 322.0, 60.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 3,
					"presentation" : 1,
					"resetbgcolor" : [ 0.215686, 0.215686, 0.215686, 1.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.2 ],
					"textcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
					"bordersize" : 4.029999,
					"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-24",
					"borderstyle" : 3,
					"typingfgcolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 168.0, 240.0, 57.0, 20.0 ],
					"focusfontstyle" : 0,
					"resetwidth" : 2.27,
					"fontsize" : 11.0,
					"typingbgcolor" : [ 0.156863, 0.023529, 0.192157, 1.0 ],
					"maximum" : 0,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "", "", "" ],
					"focusbgcolor" : [ 0.968627, 0.968627, 0.968627, 0.458824 ],
					"focusfgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 302.0, 304.0, 60.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 3,
					"presentation" : 1,
					"resetbgcolor" : [ 0.215686, 0.215686, 0.215686, 1.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.2 ],
					"textcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
					"bordersize" : 4.029999,
					"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-23",
					"borderstyle" : 3,
					"typingfgcolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 109.0, 240.0, 57.0, 20.0 ],
					"focusfontstyle" : 0,
					"resetwidth" : 2.27,
					"fontsize" : 11.0,
					"typingbgcolor" : [ 0.156863, 0.023529, 0.192157, 1.0 ],
					"maximum" : 0,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "", "", "" ],
					"focusbgcolor" : [ 0.968627, 0.968627, 0.968627, 0.458824 ],
					"focusfgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 302.0, 286.0, 60.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 0,
					"textalignment" : 0,
					"focusbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"id" : "obj-109",
					"numinlets" : 1,
					"numoutlets" : 3,
					"maximum" : 0,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 78.0, 164.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"bordercode" : 0,
					"presentation" : 1,
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.501961 ],
					"focusborderwidth" : 20.0,
					"bordersize" : 10.0,
					"focusbordercolor" : [ 1.0, 0.501961, 0.0, 0.501961 ],
					"id" : "obj-22",
					"typingfgcolor" : [ 0.866667, 0.796078, 0.615686, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 12.0, 8.522385, 434.0, 148.0 ],
					"typingbgcolor" : [ 0.129412, 0.039216, 0.176471, 1.0 ],
					"bgcolor" : [ 0.376471, 0.376471, 0.376471, 0.25098 ],
					"outlettype" : [ "", "", "" ],
					"pviewfontsize" : 80.0,
					"patching_rect" : [ 78.0, 266.0, 52.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "icst.intui",
					"varname" : "float[0]",
					"bordercode" : 0,
					"presentation" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordersize" : 32.0,
					"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-61",
					"borderstyle" : 5,
					"numinlets" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 142.0, 371.0, 45.0, 15.0 ],
					"maximum" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "", "", "" ],
					"pviewfontsize" : 9.0,
					"patching_rect" : [ 77.603149, 422.0, 48.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"rounded" : 0,
					"id" : "obj-71",
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 141.0, 370.0, 182.0, 17.0 ],
					"patching_rect" : [ 76.603149, 421.0, 200.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"rounded" : 0,
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 106.0, 236.0, 241.0, 27.0 ],
					"bgcolor" : [ 0.090196, 0.090196, 0.090196, 1.0 ],
					"patching_rect" : [ 300.0, 284.0, 64.0, 74.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"rounded" : 0,
					"id" : "obj-32",
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 70.0, 200.0, 308.0, 26.0 ],
					"bgcolor" : [ 0.890196, 0.890196, 0.890196, 1.0 ],
					"patching_rect" : [ 395.574768, 284.0, 64.0, 74.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"rounded" : 0,
					"id" : "obj-78",
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 111.0, 302.0, 241.0, 27.0 ],
					"bgcolor" : [ 0.0, 0.058824, 0.121569, 1.0 ],
					"patching_rect" : [ 298.179871, 540.0, 88.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"rounded" : 0,
					"id" : "obj-57",
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 106.0, 218.0, 241.0, 27.0 ],
					"bgcolor" : [ 0.0, 0.14902, 0.309804, 1.0 ],
					"patching_rect" : [ 364.0, 284.0, 32.0, 74.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"rounded" : 0,
					"id" : "obj-64",
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 111.0, 334.0, 241.0, 27.0 ],
					"bgcolor" : [ 0.0, 0.058824, 0.121569, 1.0 ],
					"patching_rect" : [ 298.0, 540.0, 88.0, 40.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 1 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 1 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 1 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 1 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 1 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 1 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 1 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 1 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 450.387634, 579.0, 501.0, 579.0, 501.0, 278.0, 311.5, 278.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 1,
					"midpoints" : [ 428.0, 358.0, 499.0, 358.0, 499.0, 540.0, 311.5, 540.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 1 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 1 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 2 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 1 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 2 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 2 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [ 708.5, 82.0, 698.5, 82.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
