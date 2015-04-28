{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 7.0, 55.0, 1081.0, 361.0 ],
		"bglocked" : 0,
		"defrect" : [ 7.0, 55.0, 1081.0, 361.0 ],
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
					"maxclass" : "comment",
					"text" : "Bruno Zamborlin\nIMTR team\nIRCAM",
					"linecount" : 3,
					"presentation_linecount" : 3,
					"patching_rect" : [ 579.0, 58.0, 163.0, 48.0 ],
					"presentation" : 1,
					"id" : "obj-3",
					"fontname" : "Arial Italic",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 975.0, 5.0, 101.0, 48.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"outlettype" : [ "open" ],
					"patching_rect" : [ 60.0, 97.0, 44.0, 20.0 ],
					"id" : "obj-41",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"patching_rect" : [ 60.0, 119.0, 53.0, 20.0 ],
					"id" : "obj-16",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"patching_rect" : [ 60.0, 141.0, 18.0, 20.0 ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 497.0, 205.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 497.0, 205.0 ],
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
									"maxclass" : "comment",
									"text" : "and install them",
									"frgb" : [ 0.023529, 0.0, 0.431373, 1.0 ],
									"patching_rect" : [ 264.0, 18.0, 95.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-31",
									"fontname" : "Arial",
									"textcolor" : [ 0.023529, 0.0, 0.431373, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 499.0, 109.0, 95.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "here",
									"frgb" : [ 0.0, 0.019608, 0.407843, 1.0 ],
									"patching_rect" : [ 302.0, 37.0, 39.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-6",
									"fontname" : "Arial Bold Italic",
									"textcolor" : [ 0.0, 0.019608, 0.407843, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 541.0, 126.0, 39.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"outlettype" : [ "bang", "bang", "", "int" ],
									"patching_rect" : [ 235.0, 18.0, 32.0, 21.0 ],
									"presentation" : 1,
									"id" : "obj-30",
									"numinlets" : 1,
									"handoff" : "",
									"numoutlets" : 4,
									"presentation_rect" : [ 471.0, 107.0, 32.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1 - Download CNMAT externals from",
									"frgb" : [ 0.023529, 0.0, 0.431373, 1.0 ],
									"patching_rect" : [ 27.0, 18.0, 213.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-7",
									"fontname" : "Arial",
									"textcolor" : [ 0.023529, 0.0, 0.431373, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 265.0, 109.0, 213.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "here",
									"frgb" : [ 0.0, 0.019608, 0.407843, 1.0 ],
									"patching_rect" : [ 233.0, 18.0, 39.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-24",
									"fontname" : "Arial Bold Italic",
									"textcolor" : [ 0.0, 0.019608, 0.407843, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 470.0, 109.0, 39.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rmax launchbrowser http://cnmat.berkeley.edu/downloads",
									"linecount" : 3,
									"outlettype" : [ "" ],
									"patching_rect" : [ 358.0, 19.0, 75.0, 18.0 ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 4.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Be sure your bluetooth is on.\nPress the buttons '1' and '2' of your WiiMote in order to connect it to Osculator. \nIn order to use it with this tutorial, be sure it is mapped to the port number 1 \n(change it otherwise).\nTurn on the toggle: you should now receive WiiMote data through OSC",
									"linecount" : 5,
									"presentation_linecount" : 5,
									"frgb" : [ 0.023529, 0.0, 0.431373, 1.0 ],
									"patching_rect" : [ 45.0, 69.0, 432.0, 75.0 ],
									"presentation" : 1,
									"id" : "obj-32",
									"fontname" : "Arial",
									"textcolor" : [ 0.023529, 0.0, 0.431373, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 289.0, 156.0, 432.0, 75.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "and install it",
									"frgb" : [ 0.0, 0.019608, 0.407843, 1.0 ],
									"patching_rect" : [ 332.0, 36.0, 74.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-21",
									"fontname" : "Arial",
									"textcolor" : [ 0.0, 0.019608, 0.407843, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 570.0, 126.0, 74.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3 - Open the 'gf.wii.oscd' configuration file, that is located in the Tutorials directory. ",
									"frgb" : [ 0.023529, 0.0, 0.431373, 1.0 ],
									"patching_rect" : [ 27.0, 53.0, 457.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-18",
									"fontname" : "Arial",
									"textcolor" : [ 0.023529, 0.0, 0.431373, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 265.0, 143.0, 457.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2 - Download the Osculator demo application from",
									"frgb" : [ 0.023529, 0.0, 0.431373, 1.0 ],
									"patching_rect" : [ 27.0, 37.0, 284.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-16",
									"fontname" : "Arial",
									"textcolor" : [ 0.023529, 0.0, 0.431373, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 265.0, 126.0, 284.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"outlettype" : [ "bang", "bang", "", "int" ],
									"patching_rect" : [ 305.0, 35.0, 32.0, 21.0 ],
									"presentation" : 1,
									"id" : "obj-106",
									"numinlets" : 1,
									"handoff" : "",
									"numoutlets" : 4,
									"presentation_rect" : [ 544.0, 124.0, 32.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rmax launchbrowser http://www.osculator.net/wp/download/",
									"linecount" : 3,
									"outlettype" : [ "" ],
									"patching_rect" : [ 407.0, 36.0, 78.0, 18.0 ],
									"id" : "obj-108",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 4.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 20.0, 125.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"hidden" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-106", 1 ],
									"destination" : [ "obj-108", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 11.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "instructions",
					"outlettype" : [ "" ],
					"bgcolor2" : [ 0.831373, 0.831373, 0.831373, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 60.0, 76.0, 89.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-4",
					"fontname" : "Arial",
					"textcolor" : [ 0.0, 0.298039, 1.0, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"presentation_rect" : [ 67.0, 60.0, 71.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Do the same thing for the second gesture holding the button '2'.",
					"linecount" : 3,
					"presentation_linecount" : 3,
					"patching_rect" : [ 204.0, 226.0, 150.0, 48.0 ],
					"presentation" : 1,
					"id" : "obj-120",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontface" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 897.0, 160.0, 176.0, 48.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Follow",
					"patching_rect" : [ 925.0, 261.0, 48.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-119",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontface" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 827.0, 132.0, 48.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"outlettype" : [ "int" ],
					"oncolor" : [ 0.0, 1.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"offcolor" : [ 0.6, 0.0, 0.0, 0.0 ],
					"patching_rect" : [ 928.0, 250.0, 40.0, 40.0 ],
					"presentation" : 1,
					"id" : "obj-118",
					"numinlets" : 1,
					"ignoreclick" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 828.0, 117.0, 52.0, 52.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 929.0, 226.0, 24.0, 20.0 ],
					"id" : "obj-117",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 0",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 970.0, 226.0, 24.0, 20.0 ],
					"id" : "obj-116",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel follow",
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 929.0, 199.0, 60.0, 20.0 ],
					"id" : "obj-110",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Learn 2",
					"patching_rect" : [ 863.0, 261.0, 53.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-107",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontface" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 750.0, 132.0, 53.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "== 2",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 868.0, 226.0, 35.0, 20.0 ],
					"id" : "obj-104",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"outlettype" : [ "int" ],
					"bgcolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"offcolor" : [ 0.6, 0.0, 0.0, 0.0 ],
					"patching_rect" : [ 867.0, 250.0, 40.0, 40.0 ],
					"presentation" : 1,
					"id" : "obj-105",
					"numinlets" : 1,
					"ignoreclick" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 751.0, 117.0, 52.0, 52.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "== 1",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 812.0, 226.0, 35.0, 20.0 ],
					"id" : "obj-102",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route learn",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 812.0, 199.0, 68.0, 20.0 ],
					"id" : "obj-100",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r togf",
					"outlettype" : [ "" ],
					"patching_rect" : [ 812.0, 175.0, 38.0, 20.0 ],
					"id" : "obj-80",
					"fontname" : "Arial",
					"numinlets" : 0,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Learn 1",
					"patching_rect" : [ 805.0, 261.0, 53.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-79",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontface" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 683.0, 132.0, 53.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"outlettype" : [ "int" ],
					"bgcolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"offcolor" : [ 0.6, 0.0, 0.0, 0.0 ],
					"patching_rect" : [ 811.0, 250.0, 40.0, 40.0 ],
					"presentation" : 1,
					"id" : "obj-39",
					"numinlets" : 1,
					"ignoreclick" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 683.0, 117.0, 52.0, 52.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p wii",
					"outlettype" : [ "" ],
					"patching_rect" : [ 8.0, 123.0, 43.0, 20.0 ],
					"id" : "obj-137",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 640.0, 574.0, 676.0, 326.0 ],
						"bglocked" : 0,
						"defrect" : [ 640.0, 574.0, 676.0, 326.0 ],
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
									"maxclass" : "message",
									"text" : "stop",
									"outlettype" : [ "" ],
									"patching_rect" : [ 608.0, 228.0, 33.0, 18.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "follow",
									"outlettype" : [ "" ],
									"patching_rect" : [ 548.0, 228.0, 41.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 548.0, 201.0, 46.0, 17.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 548.0, 165.0, 20.0, 20.0 ],
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s togf",
									"patching_rect" : [ 332.0, 289.0, 33.0, 17.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 185.0, 227.0, 32.5, 17.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "framerate 20, tolerance 0.16",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"patching_rect" : [ 185.0, 247.0, 73.0, 27.0 ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "init",
									"patching_rect" : [ 220.0, 225.0, 22.0, 17.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "first arg:wii port",
									"patching_rect" : [ 121.0, 92.0, 72.0, 17.0 ],
									"id" : "obj-29",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 81.0, 211.0, 25.0, 25.0 ],
									"id" : "obj-46",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "learn 0",
									"outlettype" : [ "" ],
									"patching_rect" : [ 508.0, 229.0, 47.0, 18.0 ],
									"id" : "obj-43",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "learn 2",
									"outlettype" : [ "" ],
									"patching_rect" : [ 448.0, 229.0, 47.0, 18.0 ],
									"id" : "obj-44",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 448.0, 202.0, 46.0, 17.0 ],
									"id" : "obj-42",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 52.0, 282.0, 25.0, 25.0 ],
									"id" : "obj-41",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "learn 1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 393.0, 229.0, 47.0, 18.0 ],
									"id" : "obj-39",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 332.0, 196.0, 46.0, 17.0 ],
									"id" : "obj-37",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "learn 0",
									"outlettype" : [ "" ],
									"patching_rect" : [ 332.0, 229.0, 47.0, 18.0 ],
									"id" : "obj-36",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 448.0, 166.0, 20.0, 20.0 ],
									"id" : "obj-34",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 332.0, 166.0, 20.0, 20.0 ],
									"id" : "obj-30",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route /1 /2 /A",
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 332.0, 142.0, 299.0, 17.0 ],
									"id" : "obj-27",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p resamp",
									"outlettype" : [ "" ],
									"patching_rect" : [ 52.0, 245.0, 48.0, 17.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 519.0, 733.0, 119.0, 153.0 ],
										"bglocked" : 0,
										"defrect" : [ 519.0, 733.0, 119.0, 153.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 49.0, 8.0, 25.0, 25.0 ],
													"id" : "obj-4",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "metro 20",
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 49.0, 37.0, 58.0, 20.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 6.0, 96.0, 40.0, 20.0 ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 6.0, 126.0, 15.0, 15.0 ],
													"id" : "obj-5",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 27.0, 70.0, 15.0, 15.0 ],
													"id" : "obj-6",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [ 58.5, 62.5, 15.5, 62.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "xyz in [0, 1]",
									"patching_rect" : [ 65.0, 189.0, 58.0, 17.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "buttons",
									"patching_rect" : [ 139.0, 149.0, 43.0, 17.0 ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OpenSoundControl",
									"outlettype" : [ "", "", "OSCTimeTag" ],
									"patching_rect" : [ 16.0, 44.0, 90.0, 17.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpreceive 9000 CNMAT",
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 21.0, 122.0, 17.0 ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OSC-route /1",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 52.0, 92.0, 64.0, 17.0 ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OSC-route /wii",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 52.0, 68.0, 69.0, 17.0 ],
									"id" : "obj-24",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OSC-route /xyz",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 52.0, 149.0, 83.0, 17.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OSC-route /accel /button",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 52.0, 113.0, 579.0, 17.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 617.5, 267.0, 341.5, 267.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 557.5, 267.0, 341.5, 267.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 2 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 571.0, 222.0, 617.5, 222.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 517.5, 267.5, 341.5, 267.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 457.5, 267.5, 341.5, 267.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 402.5, 267.5, 341.5, 267.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 1 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [ 355.0, 220.0, 402.5, 220.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 1 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [ 471.0, 223.0, 517.5, 223.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 90.5, 242.0, 179.0, 242.0, 179.0, 222.0, 194.5, 222.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Wii",
					"patching_rect" : [ 5.0, 73.0, 33.0, 25.0 ],
					"presentation" : 1,
					"id" : "obj-25",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 16.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 30.0, 57.0, 33.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 8.0, 100.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-54",
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 8.0, 57.0, 23.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.0, 1.0 ],
					"bgcolor" : [ 0.270588, 0.34902, 0.470588, 1.0 ],
					"patching_rect" : [ 41.0, 194.0, 153.0, 80.0 ],
					"presentation" : 1,
					"id" : "obj-74",
					"candicane3" : [ 0.098039, 1.0, 0.0, 1.0 ],
					"size" : 3,
					"slidercolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"bordercolor" : [ 0.270588, 0.34902, 0.470588, 1.0 ],
					"numinlets" : 1,
					"candycane" : 3,
					"candicane2" : [ 0.0, 0.298039, 1.0, 1.0 ],
					"numoutlets" : 2,
					"setstyle" : 2,
					"presentation_rect" : [ 7.0, 81.0, 214.0, 115.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "...or turn on the button above to record audio in realtime during the learning phase",
					"linecount" : 4,
					"presentation_linecount" : 4,
					"patching_rect" : [ 1359.0, 295.0, 150.0, 62.0 ],
					"presentation" : 1,
					"id" : "obj-99",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontface" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 523.0, 186.0, 145.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Drag two sounds into the two boxes on the left...",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"patching_rect" : [ 1359.0, 260.0, 150.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-97",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontface" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 523.0, 151.0, 148.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0 - Load sounds",
					"patching_rect" : [ 1359.0, 243.0, 121.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-98",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontface" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 523.0, 134.0, 122.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Please note than gf, imubu and polybuffer have the same name",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 1006.0, 336.0, 348.0, 20.0 ],
					"id" : "obj-96",
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Polybuffer~",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 1146.0, 135.0, 110.0, 27.0 ],
					"id" : "obj-94",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontface" : 3,
					"fontsize" : 18.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Visualization",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 666.0, 134.0, 120.0, 27.0 ],
					"id" : "obj-85",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontface" : 3,
					"fontsize" : 18.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set 0",
					"outlettype" : [ "" ],
					"patching_rect" : [ 1381.0, 149.0, 84.0, 19.0 ],
					"id" : "obj-60",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"outlettype" : [ "bang", "bang", "", "int" ],
					"patching_rect" : [ 1361.0, 171.0, 129.0, 29.0 ],
					"hltcolor" : [ 0.47451, 0.694118, 1.0, 0.0 ],
					"presentation" : 1,
					"id" : "obj-34",
					"numinlets" : 1,
					"handoff" : "",
					"numoutlets" : 4,
					"presentation_rect" : [ 535.0, 90.0, 117.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "tab",
					"outlettype" : [ "int", "", "" ],
					"mode" : 1,
					"clicktabcolor" : [ 0.047059, 0.913725, 0.913725, 1.0 ],
					"tabcolor" : [ 0.407843, 0.658824, 0.909804, 1.0 ],
					"patching_rect" : [ 1360.0, 172.0, 130.0, 26.0 ],
					"presentation" : 1,
					"id" : "obj-35",
					"fontname" : "Arial",
					"bordercolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"numinlets" : 1,
					"htabcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"hovertabcolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 3,
					"multiline" : 0,
					"borderoncolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"presentation_rect" : [ 534.0, 90.0, 118.0, 32.0 ],
					"spacing_x" : 3.130002,
					"tabs" : [ "Audio Rec" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1360.0, 149.0, 20.0, 20.0 ],
					"id" : "obj-51",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s audiorec",
					"patching_rect" : [ 1361.0, 202.0, 61.0, 19.0 ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend send 2 replace",
					"outlettype" : [ "" ],
					"patching_rect" : [ 1164.0, 219.0, 137.0, 20.0 ],
					"id" : "obj-92",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"outlettype" : [ "", "" ],
					"types" : [  ],
					"patching_rect" : [ 1164.0, 158.0, 82.0, 55.0 ],
					"presentation" : 1,
					"id" : "obj-93",
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"presentation_rect" : [ 229.0, 210.0, 284.0, 145.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend send 1 replace",
					"outlettype" : [ "" ],
					"patching_rect" : [ 1024.0, 219.0, 137.0, 20.0 ],
					"id" : "obj-91",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"outlettype" : [ "", "" ],
					"types" : [  ],
					"patching_rect" : [ 1024.0, 158.0, 82.0, 55.0 ],
					"presentation" : 1,
					"id" : "obj-103",
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"presentation_rect" : [ 229.0, 57.0, 284.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bufferindex 2",
					"outlettype" : [ "" ],
					"patching_rect" : [ 580.0, 191.0, 80.0, 18.0 ],
					"id" : "obj-87",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bufferindex 1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 497.0, 191.0, 80.0, 18.0 ],
					"id" : "obj-86",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 497.0, 163.0, 60.0, 20.0 ],
					"id" : "obj-84",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "imubu",
					"autoviewbounds" : 0,
					"toolbar_visible" : 0,
					"tabs_position" : 0,
					"outlettype" : [ "" ],
					"alignviewbounds" : 0,
					"bufferchooser_fgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"opacity" : 0.0,
					"bufferchooser_size" : 12,
					"domainscrollbar_size" : 10,
					"bufferchooser_visible" : 0,
					"windresize" : 0,
					"domainruler_size" : 15,
					"content" : [  ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 615.0, 241.0, 155.000031, 86.0 ],
					"domainruler_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"toolbar_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation" : 1,
					"domainruler_position" : 0,
					"id" : "obj-76",
					"domainruler_fgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tabs_size" : 20,
					"rangeruler_grid" : 0,
					"name" : "mygf",
					"region_bounds" : [ 0.0, 0.0 ],
					"domainruler_unit" : 0,
					"orientation" : 0,
					"domainscrollbar_color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"toolbar_position" : 1,
					"domainscrollbar_visible" : 0,
					"numinlets" : 1,
					"layout" : 0,
					"domainruler_grid" : 0,
					"tabs_visible" : 0,
					"domainruler_visible" : 0,
					"bufferchooser_position" : 1,
					"rangeruler_visible" : 0,
					"numoutlets" : 1,
					"autoupdate" : 120.0,
					"rangeruler_size" : 35,
					"region_color" : [ 0.086275, 0.086275, 0.72549, 1.0 ],
					"embed" : 0,
					"bufferchooser_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 229.0, 210.0, 284.000031, 145.0 ],
					"domain_bounds" : [ 0.0, 0.0 ],
					"toolbar_size" : 30
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p GF_settings",
					"outlettype" : [ "" ],
					"patching_rect" : [ 615.0, 214.5, 85.0, 20.0 ],
					"id" : "obj-77",
					"fontname" : "Arial",
					"numinlets" : 0,
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 536.0, 560.0, 601.0, 236.0 ],
						"bglocked" : 0,
						"defrect" : [ 536.0, 560.0, 601.0, 236.0 ],
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
									"text" : "sel 0",
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 258.0, 66.0, 32.5, 17.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "-1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 258.0, 85.0, 32.5, 16.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"outlettype" : [ "" ],
									"patching_rect" : [ 293.0, 83.0, 72.5, 17.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 2",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 293.0, 44.0, 32.5, 17.0 ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r likeliest",
									"outlettype" : [ "" ],
									"patching_rect" : [ 293.0, 25.0, 46.0, 17.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Cursor",
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 398.0, 6.0, 65.0, 25.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontface" : 3,
									"fontsize" : 16.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Graphical settings",
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 67.0, 6.0, 152.0, 25.0 ],
									"id" : "obj-109",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontface" : 3,
									"fontsize" : 16.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "time position of the likeliest gesture in milliseconds",
									"linecount" : 3,
									"patching_rect" : [ 308.0, 102.0, 114.0, 48.0 ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "for setting the cursor",
									"patching_rect" : [ 308.0, 149.0, 120.0, 20.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "tolerance[3]",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"bgcolor" : [ 0.933333, 0.933333, 0.933333, 1.0 ],
									"patching_rect" : [ 258.0, 106.0, 46.0, 20.0 ],
									"id" : "obj-130",
									"hbgcolor" : [ 0.933333, 0.933333, 0.933333, 1.0 ],
									"fontname" : "Arial",
									"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
									"mouseup" : 1,
									"htextcolor" : [ 1.0, 0.196078, 0.196078, 1.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"fontsize" : 12.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "cursor $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 258.0, 138.0, 52.0, 16.0 ],
									"id" : "obj-126",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r time",
									"outlettype" : [ "" ],
									"patching_rect" : [ 346.0, 64.0, 33.0, 17.0 ],
									"id" : "obj-124",
									"fontname" : "Arial",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"outlettype" : [ "" ],
									"patching_rect" : [ 18.0, 84.0, 45.0, 17.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s togf",
									"patching_rect" : [ 58.0, 95.0, 33.0, 17.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 18.0, 56.0, 58.5, 17.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "channelnames X Y",
									"outlettype" : [ "" ],
									"patching_rect" : [ 58.0, 77.0, 86.0, 15.0 ],
									"id" : "obj-35",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 18.0, 36.0, 48.0, 17.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "view data showcolnames 1, view data layout juxtaposed, view data bounds 0. 1., view warpingview bounds 0 1, view warpingview shape lines, view markers fgcolor 0. 1. 0. 1., tabs visible 0, toolbar visible 0, view data colormode rainbow, foremost data",
									"linecount" : 6,
									"outlettype" : [ "" ],
									"patching_rect" : [ 18.0, 114.0, 215.0, 73.0 ],
									"id" : "obj-141",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 18.0, 208.5, 22.0, 22.0 ],
									"id" : "obj-177",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"border" : 6,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 6.0, 16.0, 239.0, 175.0 ],
									"id" : "obj-111",
									"rounded" : 24,
									"background" : 1,
									"bordercolor" : [ 0.756863, 0.756863, 0.756863, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"border" : 6,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 250.0, 16.0, 344.0, 175.0 ],
									"id" : "obj-11",
									"rounded" : 24,
									"background" : 1,
									"bordercolor" : [ 0.756863, 0.756863, 0.756863, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-130", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-141", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-141", 0 ],
									"destination" : [ "obj-177", 0 ],
									"hidden" : 0,
									"midpoints" : [ 27.5, 181.25, 27.5, 181.25 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-130", 0 ],
									"destination" : [ "obj-126", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-126", 0 ],
									"destination" : [ "obj-177", 0 ],
									"hidden" : 0,
									"midpoints" : [ 267.5, 200.25, 27.5, 200.25 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-130", 0 ],
									"hidden" : 0,
									"midpoints" : [ 302.5, 103.5, 267.5, 103.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-124", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 302.5, 63.0, 267.5, 63.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "imubu",
					"autoviewbounds" : 0,
					"toolbar_visible" : 0,
					"tabs_position" : 0,
					"outlettype" : [ "" ],
					"alignviewbounds" : 0,
					"bufferchooser_fgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"opacity" : 0.0,
					"bufferchooser_size" : 12,
					"domainscrollbar_size" : 10,
					"bufferchooser_visible" : 0,
					"windresize" : 0,
					"domainruler_size" : 15,
					"content" : [  ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 389.0, 240.0, 155.000031, 86.0 ],
					"domainruler_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"toolbar_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation" : 1,
					"domainruler_position" : 0,
					"id" : "obj-73",
					"domainruler_fgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tabs_size" : 20,
					"rangeruler_grid" : 0,
					"name" : "mygf",
					"region_bounds" : [ 0.0, 0.0 ],
					"domainruler_unit" : 0,
					"orientation" : 0,
					"domainscrollbar_color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"toolbar_position" : 1,
					"domainscrollbar_visible" : 0,
					"numinlets" : 1,
					"layout" : 0,
					"domainruler_grid" : 0,
					"tabs_visible" : 0,
					"domainruler_visible" : 0,
					"bufferchooser_position" : 1,
					"rangeruler_visible" : 0,
					"numoutlets" : 1,
					"autoupdate" : 120.0,
					"rangeruler_size" : 35,
					"region_color" : [ 0.086275, 0.086275, 0.72549, 1.0 ],
					"embed" : 0,
					"bufferchooser_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 229.0, 57.0, 284.000031, 140.0 ],
					"domain_bounds" : [ 0.0, 0.0 ],
					"toolbar_size" : 30
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p GF_settings",
					"outlettype" : [ "" ],
					"patching_rect" : [ 389.0, 214.5, 85.0, 20.0 ],
					"id" : "obj-144",
					"fontname" : "Arial",
					"numinlets" : 0,
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 536.0, 560.0, 601.0, 236.0 ],
						"bglocked" : 0,
						"defrect" : [ 536.0, 560.0, 601.0, 236.0 ],
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
									"text" : "sel 0",
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 258.0, 66.0, 32.5, 17.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "-1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 258.0, 85.0, 32.5, 16.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"outlettype" : [ "" ],
									"patching_rect" : [ 293.0, 83.0, 72.5, 17.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 1",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 293.0, 44.0, 32.5, 17.0 ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r likeliest",
									"outlettype" : [ "" ],
									"patching_rect" : [ 293.0, 25.0, 46.0, 17.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Cursor",
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 398.0, 6.0, 65.0, 25.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontface" : 3,
									"fontsize" : 16.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Graphical settings",
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 67.0, 6.0, 152.0, 25.0 ],
									"id" : "obj-109",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontface" : 3,
									"fontsize" : 16.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "time position of the likeliest gesture in milliseconds",
									"linecount" : 3,
									"patching_rect" : [ 308.0, 102.0, 114.0, 48.0 ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "for setting the cursor",
									"patching_rect" : [ 308.0, 149.0, 120.0, 20.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "tolerance[3]",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"bgcolor" : [ 0.933333, 0.933333, 0.933333, 1.0 ],
									"patching_rect" : [ 258.0, 106.0, 46.0, 20.0 ],
									"id" : "obj-130",
									"hbgcolor" : [ 0.933333, 0.933333, 0.933333, 1.0 ],
									"fontname" : "Arial",
									"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
									"mouseup" : 1,
									"htextcolor" : [ 1.0, 0.196078, 0.196078, 1.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"fontsize" : 12.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "cursor $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 258.0, 138.0, 52.0, 16.0 ],
									"id" : "obj-126",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r time",
									"outlettype" : [ "" ],
									"patching_rect" : [ 346.0, 64.0, 33.0, 17.0 ],
									"id" : "obj-124",
									"fontname" : "Arial",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"outlettype" : [ "" ],
									"patching_rect" : [ 18.0, 84.0, 45.0, 17.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s togf",
									"patching_rect" : [ 58.0, 95.0, 33.0, 17.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 18.0, 56.0, 58.5, 17.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "channelnames X Y",
									"outlettype" : [ "" ],
									"patching_rect" : [ 58.0, 77.0, 86.0, 15.0 ],
									"id" : "obj-35",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 18.0, 36.0, 48.0, 17.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "view data showcolnames 1, view data layout juxtaposed, view data bounds 0. 1., view warpingview bounds 0 1, view warpingview shape lines, view markers fgcolor 0. 1. 0. 1., tabs visible 0, toolbar visible 0, view data colormode rainbow, foremost markers, foremost 1",
									"linecount" : 6,
									"outlettype" : [ "" ],
									"patching_rect" : [ 18.0, 114.0, 235.0, 73.0 ],
									"id" : "obj-141",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 18.0, 208.5, 22.0, 22.0 ],
									"id" : "obj-177",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-124", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-130", 0 ],
									"hidden" : 0,
									"midpoints" : [ 302.5, 103.5, 267.5, 103.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-126", 0 ],
									"destination" : [ "obj-177", 0 ],
									"hidden" : 0,
									"midpoints" : [ 267.5, 200.25, 27.5, 200.25 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-130", 0 ],
									"destination" : [ "obj-126", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-141", 0 ],
									"destination" : [ "obj-177", 0 ],
									"hidden" : 0,
									"midpoints" : [ 27.5, 181.25, 27.5, 181.25 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-141", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 302.5, 63.0, 267.5, 63.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-130", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1122.0, 252.0, 60.0, 20.0 ],
					"id" : "obj-67",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "appendempty 5000, appendempty 5000",
					"outlettype" : [ "" ],
					"patching_rect" : [ 1122.0, 276.0, 223.0, 18.0 ],
					"id" : "obj-65",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "polybuffer~ mygf",
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1024.0, 303.0, 99.0, 20.0 ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"saved_object_attributes" : 					{
						"embed" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p time",
					"patching_rect" : [ 106.0, 461.0, 40.0, 17.0 ],
					"id" : "obj-75",
					"fontname" : "Helvetica",
					"color" : [ 0.058824, 0.592157, 0.592157, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 204.0, 138.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 204.0, 138.0 ],
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
									"maxclass" : "newobj",
									"text" : "route time",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 46.0, 36.0, 59.0, 19.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s time",
									"patching_rect" : [ 46.0, 87.0, 40.0, 19.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r likeliest",
									"outlettype" : [ "" ],
									"patching_rect" : [ 132.0, 37.0, 53.0, 19.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 0,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl nth",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 46.0, 62.0, 84.0, 19.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "list" ],
									"patching_rect" : [ 46.0, 8.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 11.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s likeliest",
					"patching_rect" : [ 506.0, 510.0, 55.0, 17.0 ],
					"id" : "obj-78",
					"fontname" : "Helvetica",
					"color" : [ 0.768627, 0.737255, 0.317647, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Draw one of the two symbols you had drawn before and listen the output",
					"linecount" : 4,
					"presentation_linecount" : 3,
					"patching_rect" : [ 207.0, 302.0, 152.0, 62.0 ],
					"presentation" : 1,
					"id" : "obj-66",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 896.0, 229.0, 156.0, 48.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2 - Follow",
					"patching_rect" : [ 207.0, 282.0, 113.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-63",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontface" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 896.0, 211.0, 66.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Hold the '1' button on the wiimote and perform the first gesture. If you loaded a sound on the first box above, you should hear it.",
					"linecount" : 5,
					"presentation_linecount" : 5,
					"patching_rect" : [ 204.0, 152.0, 150.0, 75.0 ],
					"presentation" : 1,
					"id" : "obj-12",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontface" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 899.0, 87.0, 182.0, 75.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pipe 500",
					"outlettype" : [ "" ],
					"patching_rect" : [ 58.0, 772.0, 57.0, 20.0 ],
					"id" : "obj-64",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 58.0, 751.0, 72.0, 20.0 ],
					"id" : "obj-57",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1 - Learn gestures",
					"patching_rect" : [ 203.0, 133.0, 121.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-15",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontface" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 899.0, 70.0, 122.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tolerance",
					"patching_rect" : [ 972.0, 658.0, 60.0, 20.0 ],
					"id" : "obj-62",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "LIKELIHOODS",
					"patching_rect" : [ 730.0, 514.0, 171.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-33",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 24.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 29.0, 210.0, 174.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 685.0, 512.0, 44.0, 36.0 ],
					"presentation" : 1,
					"id" : "obj-13",
					"size" : 2,
					"slidercolor" : [ 1.0, 0.215686, 0.215686, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"setstyle" : 1,
					"presentation_rect" : [ 7.0, 210.0, 214.0, 145.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "== 2",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 621.0, 541.0, 33.0, 17.0 ],
					"id" : "obj-26",
					"fontname" : "Helvetica",
					"color" : [ 0.768627, 0.737255, 0.317647, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "== 1",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 493.0, 539.0, 33.0, 17.0 ],
					"id" : "obj-8",
					"fontname" : "Helvetica",
					"color" : [ 0.768627, 0.737255, 0.317647, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p only_during_follow",
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 9.0, 657.0, 154.0, 18.0 ],
					"id" : "obj-70",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 1316.0, 553.0, 135.0, 188.0 ],
						"bglocked" : 0,
						"defrect" : [ 1316.0, 553.0, 135.0, 188.0 ],
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
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 17.0, 75.0, 20.0, 20.0 ],
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 47.0, 54.0, 22.0, 18.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 17.0, 53.0, 22.0, 18.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 14.0, 152.0, 21.0, 21.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 63.0, 153.0, 21.0, 21.0 ],
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 80.0, 102.0, 22.0, 22.0 ],
									"id" : "obj-5",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 34.0, 103.0, 22.0, 22.0 ],
									"id" : "obj-4",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate~",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 63.0, 130.0, 36.0, 18.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate~",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 17.0, 129.0, 36.0, 18.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route follow stop learn",
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 17.0, 31.0, 108.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r togf",
									"outlettype" : [ "" ],
									"patching_rect" : [ 17.0, 10.0, 33.0, 18.0 ],
									"id" : "obj-68",
									"fontname" : "Arial",
									"numinlets" : 0,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 26.5, 98.0, 72.5, 98.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 56.5, 73.0, 26.5, 73.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-11", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 85.833336, 51.0, 56.5, 51.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r togf",
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, 411.0, 33.0, 18.0 ],
					"id" : "obj-69",
					"fontname" : "Arial",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s togf",
					"patching_rect" : [ 923.0, 712.0, 35.0, 18.0 ],
					"id" : "obj-68",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b i",
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 631.0, 592.0, 32.5, 17.0 ],
					"id" : "obj-59",
					"fontname" : "Helvetica",
					"color" : [ 0.768627, 0.737255, 0.317647, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 1.",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 621.0, 613.0, 32.5, 17.0 ],
					"id" : "obj-61",
					"fontname" : "Helvetica",
					"color" : [ 0.768627, 0.737255, 0.317647, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b i",
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 503.0, 593.0, 32.5, 17.0 ],
					"id" : "obj-58",
					"fontname" : "Helvetica",
					"color" : [ 0.768627, 0.737255, 0.317647, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 1.",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 493.0, 616.0, 32.5, 17.0 ],
					"id" : "obj-47",
					"fontname" : "Helvetica",
					"color" : [ 0.768627, 0.737255, 0.317647, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tolerance $1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 924.0, 680.0, 66.0, 16.0 ],
					"id" : "obj-56",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 0.1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 924.0, 638.0, 70.0, 18.0 ],
					"id" : "obj-49",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 924.0, 658.0, 50.0, 20.0 ],
					"id" : "obj-48",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "NB: you can record/recognize any number of phrases",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 252.0, 692.0, 295.0, 20.0 ],
					"id" : "obj-6",
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 156.0, 719.0, 82.0, 22.0 ],
					"id" : "obj-18",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 26.0, 718.0, 82.0, 22.0 ],
					"id" : "obj-17",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Observations:\nfloat list in [0,1]",
					"linecount" : 2,
					"frgb" : [ 0.05098, 0.0, 1.0, 1.0 ],
					"patching_rect" : [ 19.0, 362.0, 91.0, 34.0 ],
					"id" : "obj-36",
					"fontname" : "Arial",
					"textcolor" : [ 0.05098, 0.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "likelihood second phrase",
					"patching_rect" : [ 662.0, 625.0, 143.0, 20.0 ],
					"id" : "obj-30",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "likelihood first phrase",
					"patching_rect" : [ 535.0, 625.0, 123.0, 20.0 ],
					"id" : "obj-32",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "position in ms of second phrase",
					"patching_rect" : [ 190.0, 561.0, 179.0, 20.0 ],
					"id" : "obj-24",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "position in ms of first phrase",
					"patching_rect" : [ 16.0, 560.0, 160.0, 20.0 ],
					"id" : "obj-22",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.270588, 0.34902, 0.470588, 1.0 ],
					"patching_rect" : [ 181.0, 541.0, 50.0, 20.0 ],
					"id" : "obj-21",
					"fontname" : "Arial",
					"numinlets" : 1,
					"triangle" : 0,
					"fontsize" : 12.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.270588, 0.34902, 0.470588, 1.0 ],
					"patching_rect" : [ 10.0, 539.0, 50.0, 20.0 ],
					"id" : "obj-14",
					"fontname" : "Arial",
					"numinlets" : 1,
					"triangle" : 0,
					"fontsize" : 12.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1046.0, 638.0, 52.0, 18.0 ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "likelihoodcontrast 1.5, likelihoodwindow 30",
					"outlettype" : [ "" ],
					"patching_rect" : [ 1046.0, 658.0, 199.0, 16.0 ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "RECOGNIZE",
					"patching_rect" : [ 508.0, 465.0, 82.0, 20.0 ],
					"id" : "obj-20",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "FOLLOW",
					"patching_rect" : [ 31.0, 466.0, 61.0, 20.0 ],
					"id" : "obj-19",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gf mygf",
					"outlettype" : [ "list", "list", "list" ],
					"bgcolor" : [ 0.270588, 0.34902, 0.470588, 1.0 ],
					"patching_rect" : [ 8.0, 435.0, 989.0, 20.0 ],
					"id" : "obj-55",
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.098039, 0.164706, 0.792157, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "gf tutorial 3 : Wii to Audio",
					"patching_rect" : [ 11.0, 7.0, 346.0, 30.0 ],
					"presentation" : 1,
					"id" : "obj-23",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontface" : 3,
					"fontsize" : 20.871338,
					"numoutlets" : 0,
					"presentation_rect" : [ 2.0, 2.0, 346.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"outlettype" : [ "bang", "bang", "", "int" ],
					"patching_rect" : [ 644.0, 20.0, 124.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-106",
					"numinlets" : 1,
					"handoff" : "",
					"numoutlets" : 4,
					"presentation_rect" : [ 742.0, 13.0, 124.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser http://imtr.ircam.fr/index.php/Gesture_Follower",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"patching_rect" : [ 644.0, 43.0, 128.0, 14.0 ],
					"id" : "obj-108",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 4.0,
					"numoutlets" : 1,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "online documentation",
					"frgb" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"patching_rect" : [ 645.0, 19.0, 125.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-109",
					"fontname" : "Arial",
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 743.0, 12.0, 125.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"outlettype" : [ "bang", "bang", "", "int" ],
					"patching_rect" : [ 495.0, 19.0, 146.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-42",
					"numinlets" : 1,
					"handoff" : "",
					"numoutlets" : 4,
					"presentation_rect" : [ 593.0, 13.0, 146.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "gesturefollower@ircam.fr",
					"frgb" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"patching_rect" : [ 494.0, 18.0, 144.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-163",
					"fontname" : "Arial",
					"textcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 592.0, 12.0, 144.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser mailto:gesturefollower@ircam.fr",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.0, 42.0, 103.0, 14.0 ],
					"id" : "obj-152",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 4.0,
					"numoutlets" : 1,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_digest",
					"text" : "Gesture-controlled audio synthesis using Wiiremote",
					"patching_rect" : [ 17.0, 36.0, 326.0, 21.0 ],
					"presentation" : 1,
					"id" : "obj-90",
					"fontname" : "Arial Italic",
					"numinlets" : 1,
					"fontsize" : 12.7547,
					"numoutlets" : 0,
					"presentation_rect" : [ 8.0, 31.0, 326.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"patching_rect" : [ 9.0, 748.0, 45.0, 45.0 ],
					"id" : "obj-10",
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p play_and_record",
					"patching_rect" : [ 1242.0, 307.0, 103.0, 17.0 ],
					"id" : "obj-11",
					"fontname" : "Helvetica",
					"color" : [ 0.066667, 0.835294, 0.086275, 1.0 ],
					"numinlets" : 0,
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 999.0, 601.0, 538.0, 393.0 ],
						"bglocked" : 0,
						"defrect" : [ 999.0, 601.0, 538.0, 393.0 ],
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
									"text" : "!= 0",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 100.0, 72.0, 32.5, 19.0 ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r togf",
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 24.0, 36.0, 19.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 0,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route learn",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 100.0, 46.0, 64.0, 19.0 ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 16.0, 73.0, 32.5, 19.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r audiorec",
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 48.0, 59.0, 19.0 ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"numinlets" : 0,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2 1",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 17.0, 95.0, 103.0, 19.0 ],
									"id" : "obj-29",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s groovesync",
									"patching_rect" : [ 273.0, 313.0, 75.0, 19.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "snapshot~ 30",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 273.0, 290.0, 77.0, 19.0 ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p",
									"outlettype" : [ "stop" ],
									"patching_rect" : [ 194.0, 256.0, 16.0, 17.0 ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 132.0, 154.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 132.0, 154.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t stop",
													"outlettype" : [ "stop" ],
													"patching_rect" : [ 18.0, 85.0, 37.0, 19.0 ],
													"id" : "obj-21",
													"fontname" : "Arial",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 17.0, 57.0, 34.0, 19.0 ],
													"id" : "obj-20",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 11.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 18.0, 33.0, 53.0, 19.0 ],
													"id" : "obj-19",
													"fontname" : "Arial",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus switch",
													"outlettype" : [ "", "int" ],
													"patching_rect" : [ 18.0, 10.0, 86.0, 19.0 ],
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 2,
													"fontsize" : 11.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 19.0, 112.5, 25.0, 25.0 ],
													"id" : "obj-22",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t stop",
									"outlettype" : [ "stop" ],
									"patching_rect" : [ 76.0, 168.0, 37.0, 19.0 ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t startloop",
									"outlettype" : [ "startloop" ],
									"patching_rect" : [ 17.0, 169.0, 59.0, 19.0 ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 17.0, 141.0, 68.0, 19.0 ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sig~ 1",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 150.0, 245.0, 42.0, 19.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 120",
									"outlettype" : [ "" ],
									"patching_rect" : [ 190.0, 333.0, 79.0, 19.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dac~",
									"patching_rect" : [ 153.0, 373.0, 36.0, 19.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 152.0, 309.0, 40.0, 55.0 ],
									"id" : "obj-45",
									"numinlets" : 2,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "groove~ mygf.1",
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 151.0, 283.0, 87.0, 19.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 3,
									"fontsize" : 11.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adc~ 1",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 380.0, 301.0, 44.0, 19.0 ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set mygf.2",
									"outlettype" : [ "" ],
									"patching_rect" : [ 449.0, 195.0, 61.0, 17.0 ],
									"id" : "obj-24",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set mygf.1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 386.0, 196.0, 61.0, 17.0 ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 2",
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 386.0, 163.0, 141.0, 19.0 ],
									"id" : "obj-26",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "record~ mygf.1",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 369.0, 345.0, 84.0, 19.0 ],
									"id" : "obj-28",
									"fontname" : "Arial",
									"numinlets" : 3,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-29", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 110.5, 157.0, 378.5, 157.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 458.5, 276.0, 160.5, 276.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 395.5, 276.5, 160.5, 276.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 109.5, 68.0, 395.5, 68.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 395.5, 276.5, 378.5, 276.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 458.5, 285.0, 378.5, 285.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 389.5, 335.0, 378.5, 335.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [ 161.5, 368.0, 179.5, 368.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 85.5, 275.0, 160.5, 275.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 26.5, 278.5, 160.5, 278.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [ 203.5, 280.0, 160.5, 280.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 159.5, 273.0, 160.5, 273.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 127.",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 621.0, 632.0, 39.0, 17.0 ],
					"id" : "obj-53",
					"fontname" : "Helvetica",
					"color" : [ 0.768627, 0.737255, 0.317647, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 127.",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 493.0, 636.0, 39.0, 17.0 ],
					"id" : "obj-52",
					"fontname" : "Helvetica",
					"color" : [ 0.768627, 0.737255, 0.317647, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route likeliest likelihoodnorm",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 493.0, 489.0, 402.0, 17.0 ],
					"id" : "obj-50",
					"fontname" : "Helvetica",
					"color" : [ 0.768627, 0.737255, 0.317647, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"outlettype" : [ "signal", "int" ],
					"bgcolor" : [ 0.756863, 0.729412, 0.321569, 1.0 ],
					"patching_rect" : [ 143.0, 687.0, 95.0, 28.0 ],
					"id" : "obj-45",
					"numinlets" : 2,
					"scale" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"outlettype" : [ "signal", "int" ],
					"bgcolor" : [ 0.756863, 0.729412, 0.321569, 1.0 ],
					"patching_rect" : [ 9.0, 687.0, 95.0, 28.0 ],
					"id" : "obj-44",
					"numinlets" : 2,
					"scale" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p supervp.scrub~ B",
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 181.0, 631.0, 106.0, 19.0 ],
					"id" : "obj-38",
					"fontname" : "Arial",
					"color" : [ 0.058824, 0.592157, 0.592157, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 797.0, 649.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 797.0, 649.0 ],
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
									"text" : "supervp.scrub~ mygf.2 1 2250 0 4 @transients on @shapeinv off @envtrans on @maxfreq 200 @remix on",
									"linecount" : 7,
									"outlettype" : [ "signal", "" ],
									"patching_rect" : [ 56.0, 401.0, 144.0, 151.0 ],
									"id" : "obj-121",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 18.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 55.0, 354.0, 25.0, 25.0 ],
									"id" : "obj-33",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 55.0, 563.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 153.0, 127.0, 82.0, 17.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "transmode", "time", ",", "transmode", "freq", ",", "transmode", "auto" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sinmode <'vocoder'|'additive': mode> configure sinusoids remix mode ['vocoder']",
									"patching_rect" : [ 230.0, 626.0, 407.0, 17.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "envmode <'trueenv'|'lpc': mode> ... set envelope estimation mode ['trueenv']",
									"patching_rect" : [ 230.0, 574.0, 353.0, 17.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "lpcorder <num: order> ... set order for LPC envelope estimation [12]",
									"patching_rect" : [ 230.0, 600.0, 320.0, 17.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "envscale <'on'|'off': switch> or envscale <num: timbre> [<num: mean>] ... configure or set envelope scaling [off, 1 1]",
									"patching_rect" : [ 230.0, 561.0, 542.0, 17.0 ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "envpres <'on'|'off': switch> ... configure envelope preservation [off]",
									"patching_rect" : [ 230.0, 535.0, 320.0, 17.0 ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "envtrans <'on'|'off': switch> or <num: cent> ... configure or set envelope transformation (requires transpose on) [off, 0]",
									"patching_rect" : [ 230.0, 548.0, 555.0, 17.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "transpose <'on'|'off': switch> or <num: cent> ... configure or set transposition [on, 0]",
									"patching_rect" : [ 230.0, 522.0, 424.0, 17.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "remix <'on'|'off': switch> ... configure or set sinusoids/noise/transients remix [off, 1 1 1 0 0.1]",
									"patching_rect" : [ 230.0, 613.0, 455.0, 17.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "maxfreq <num: hz> ... set maximum f0 for true envelope estimation [500]",
									"patching_rect" : [ 230.0, 587.0, 344.0, 17.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "maxtrans <num: cent> ... set maximum transposition [1200]",
									"patching_rect" : [ 230.0, 509.0, 282.0, 17.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "transmode <'time'|'auto'|'freq': switch> ... configure transposition mode [time]",
									"patching_rect" : [ 230.0, 496.0, 364.0, 17.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 221.0, 263.0, 88.0, 17.0 ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"textcolor" : [ 0.65098, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "sinmode", "vocoder", ",", "sinmode", "additive" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 254.0, 96.0, 77.0, 17.0 ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 200",
									"outlettype" : [ "" ],
									"patching_rect" : [ 436.0, 184.0, 89.0, 17.0 ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 221.0, 184.0, 88.0, 17.0 ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "envmode", "trueenv", ",", "envmode", "lpc" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 242.0, 165.0, 67.0, 17.0 ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "envscale", "off", ",", "envscale", "on" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 100",
									"outlettype" : [ "" ],
									"patching_rect" : [ 581.0, 165.0, 72.0, 17.0 ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 12",
									"outlettype" : [ "" ],
									"patching_rect" : [ 436.0, 203.0, 83.0, 17.0 ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "lpcorder $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 317.0, 203.0, 69.0, 15.0 ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 388.0, 203.0, 46.0, 17.0 ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "LPC order (used for spectral envelope estimation)",
									"patching_rect" : [ 437.0, 204.0, 333.0, 17.0 ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "envelope scaling (timbre and mean factor)",
									"patching_rect" : [ 581.0, 166.0, 199.0, 17.0 ],
									"id" : "obj-24",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 398.0, 165.0, 36.0, 17.0 ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "envscale $1 $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 317.0, 165.0, 79.0, 15.0 ],
									"id" : "obj-26",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.01",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 447.0, 165.0, 41.0, 17.0 ],
									"id" : "obj-27",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 171.0, 146.0, 64.0, 17.0 ],
									"id" : "obj-28",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "envpres", "off", ",", "envpres", "on" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "maxfreq $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 317.0, 184.0, 69.0, 15.0 ],
									"id" : "obj-29",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 388.0, 184.0, 46.0, 17.0 ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "maximal fundamental frequency (used for spectral envelope estimation)",
									"patching_rect" : [ 437.0, 185.0, 333.0, 17.0 ],
									"id" : "obj-31",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"patching_rect" : [ 436.0, 165.0, 143.0, 15.0 ],
									"id" : "obj-32",
									"size" : 201.0,
									"orientation" : 1,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "real-time control",
									"patching_rect" : [ 351.0, 105.0, 112.0, 20.0 ],
									"id" : "obj-34",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sinusoids, noise",
									"patching_rect" : [ 236.0, 297.0, 81.0, 17.0 ],
									"id" : "obj-36",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 120",
									"outlettype" : [ "" ],
									"patching_rect" : [ 507.0, 145.0, 72.0, 17.0 ],
									"id" : "obj-37",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 120",
									"outlettype" : [ "" ],
									"patching_rect" : [ 507.0, 127.0, 72.0, 17.0 ],
									"id" : "obj-38",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"outlettype" : [ "" ],
									"patching_rect" : [ 280.0, 354.0, 62.0, 17.0 ],
									"id" : "obj-39",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak remix 1. 1. 1. 0. 0.1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 280.0, 334.0, 196.0, 17.0 ],
									"id" : "obj-40",
									"fontname" : "Arial",
									"numinlets" : 6,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 7",
									"outlettype" : [ "" ],
									"patching_rect" : [ 555.0, 257.0, 77.0, 17.0 ],
									"id" : "obj-41",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 2",
									"outlettype" : [ "" ],
									"patching_rect" : [ 555.0, 293.0, 77.0, 17.0 ],
									"id" : "obj-42",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 0",
									"outlettype" : [ "" ],
									"patching_rect" : [ 555.0, 275.0, 77.0, 17.0 ],
									"id" : "obj-43",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "advanced features",
									"patching_rect" : [ 649.0, 312.0, 92.0, 17.0 ],
									"id" : "obj-44",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "windowing parameters",
									"patching_rect" : [ 535.0, 312.0, 112.0, 17.0 ],
									"id" : "obj-45",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 603.0, 292.0, 37.0, 17.0 ],
									"id" : "obj-47",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ 3, ",", 3.5, ",", 4, ",", 4.5, ",", 5, ",", 6 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 603.0, 274.0, 37.0, 17.0 ],
									"id" : "obj-48",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ 0, ",", 1, ",", 2, ",", 3, ",", 4 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 603.0, 256.0, 37.0, 17.0 ],
									"id" : "obj-49",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ 512, ",", 750, ",", 1024, ",", 1250, ",", 1500, ",", 1750, ",", 2048, ",", 2250, ",", 2500, ",", 2750, ",", 3000, ",", 3500, ",", 4096, ",", 5000, ",", 6000, ",", 7000, ",", 8192 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "oversamp $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 531.0, 293.0, 69.0, 15.0 ],
									"id" : "obj-50",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "fftover $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 542.0, 275.0, 58.0, 15.0 ],
									"id" : "obj-51",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "windowsize $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 523.0, 257.0, 77.0, 15.0 ],
									"id" : "obj-52",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "transients <'on'|'off': switch> ... configure transient preservation (also for remixing) [off]",
									"patching_rect" : [ 230.0, 457.0, 417.0, 17.0 ],
									"id" : "obj-53",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "shapeinv <'on'|'off': switch> ... configure wave form preservation (overrides transients) [off]",
									"patching_rect" : [ 230.0, 483.0, 434.0, 17.0 ],
									"id" : "obj-54",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "stereopres <'on'|'off': switch> ... configure stereo preservation [off]",
									"patching_rect" : [ 230.0, 470.0, 320.0, 17.0 ],
									"id" : "obj-55",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "oversamp <num: oversamp> ... configure oversampling factor (STFT hop size = windowsize / oversamp) [4]",
									"patching_rect" : [ 230.0, 444.0, 499.0, 17.0 ],
									"id" : "obj-56",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "fftover <num: fftover> ... configure frequency oversampling (STFT size = windowsize * 2 ^ fftover) [0]",
									"patching_rect" : [ 228.0, 431.0, 484.0, 17.0 ],
									"id" : "obj-57",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "windowsize <num: windowsize> ... configure window size [1024]",
									"patching_rect" : [ 230.0, 418.0, 302.0, 17.0 ],
									"id" : "obj-58",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 238.0, 127.0, 72.0, 17.0 ],
									"id" : "obj-59",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "transpose", "off", ",", "transpose", "on" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 254.0, 244.0, 56.0, 17.0 ],
									"id" : "obj-60",
									"fontname" : "Arial",
									"textcolor" : [ 0.65098, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "remix", "off", ",", "remix", "on" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 651.0, 274.0, 67.0, 17.0 ],
									"id" : "obj-61",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "shapeinv", "off", ",", "shapeinv", "on" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 651.0, 292.0, 77.0, 17.0 ],
									"id" : "obj-62",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "stereopres", "off", ",", "stereopres", "on" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 242.0, 146.0, 68.0, 17.0 ],
									"id" : "obj-63",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "envtrans", "off", ",", "envtrans", "on" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 651.0, 256.0, 76.0, 17.0 ],
									"id" : "obj-64",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "transients", "off", ",", "transients", "on" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Note that the re-configuration of windowing parameters and processing features such as remixing and transient preservation will cause the re-initialisation of the SuperVP engine and may cause clicks when DSP is on.",
									"linecount" : 5,
									"frgb" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"patching_rect" : [ 547.0, 343.0, 218.0, 58.0 ],
									"id" : "obj-65",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 10",
									"outlettype" : [ "" ],
									"patching_rect" : [ 465.0, 244.0, 66.0, 17.0 ],
									"id" : "obj-74",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "error",
									"patching_rect" : [ 462.0, 352.0, 35.0, 17.0 ],
									"id" : "obj-75",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.01",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 465.0, 313.0, 41.0, 17.0 ],
									"id" : "obj-76",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"patching_rect" : [ 465.0, 244.0, 19.0, 86.0 ],
									"id" : "obj-77",
									"size" : 101.0,
									"orientation" : 2,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "remix 1. 1. 1. 0. 0.1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 317.0, 334.0, 167.0, 15.0 ],
									"id" : "obj-78",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "attributes:",
									"patching_rect" : [ 219.0, 404.0, 123.0, 17.0 ],
									"id" : "obj-96",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"patching_rect" : [ 436.0, 146.0, 143.0, 15.0 ],
									"id" : "obj-97",
									"size" : 241.0,
									"orientation" : 1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"mult" : 10.0,
									"min" : -1200.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 388.0, 146.0, 46.0, 17.0 ],
									"id" : "obj-98",
									"fontname" : "Arial",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "envtrans $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 317.0, 146.0, 69.0, 15.0 ],
									"id" : "obj-99",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "remixing of",
									"patching_rect" : [ 255.0, 284.0, 62.0, 17.0 ],
									"id" : "obj-100",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"patching_rect" : [ 436.0, 128.0, 143.0, 15.0 ],
									"id" : "obj-101",
									"size" : 241.0,
									"orientation" : 1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"mult" : 10.0,
									"min" : -1200.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 388.0, 128.0, 46.0, 17.0 ],
									"id" : "obj-102",
									"fontname" : "Arial",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "transpose $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 317.0, 128.0, 69.0, 15.0 ],
									"id" : "obj-103",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "arguments: buffer~, channels, windowsize, fftover, oversamp",
									"patching_rect" : [ 219.0, 391.0, 293.0, 17.0 ],
									"id" : "obj-104",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "entirely based on SuperVP by Axel Roebel",
									"patching_rect" : [ 116.0, 77.0, 198.0, 17.0 ],
									"id" : "obj-111",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Max/MSP integration by Norbert Schnell",
									"patching_rect" : [ 116.0, 90.0, 195.0, 17.0 ],
									"id" : "obj-112",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "supervp.scrub~",
									"patching_rect" : [ 116.0, 26.0, 190.0, 34.0 ],
									"id" : "obj-116",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 24.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "advanced phase vocoder position controled player module",
									"patching_rect" : [ 116.0, 58.0, 356.0, 20.0 ],
									"id" : "obj-117",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "fpic",
									"patching_rect" : [ 30.0, 35.0, 80.0, 80.0 ],
									"id" : "obj-118",
									"numinlets" : 1,
									"numoutlets" : 0,
									"embed" : 1,
									"data" : [ 6441, "", "IBkSG0fBZn....PCIgDQRA....E....THX....fiQHeq....DLmPIQEBHf.B7g.YHB..X.dRDEDU3wY6blGlTUb0++SU0s2lt6YFXX1XF1WEWiHRTAEz3Fn3BRzW20DWhKIQMu3FFLf.AM95RLfQ+kXTbInFMZ70sDUTQQQi6P.zfxvLvvvruz8zceqpd+iaCLK8v1P.84Geedtyxc8Teum5bN0oN0U.XYuXmFN.vQN68vhw2QwacSH2SKCeWG6k.6lXuDX2D6k.6lXuDX2D6k.6lXuDX2D6k.6lXuDX2DNcuKWj921172eWD67il0A.wN.AXwh.CfCBoi2kYEcKgXOErBu1t0XPXcwBXQtcqJXYSZfd2osIEHvhxJvpBfHQiXKewXzI9tqxmEPHQU7nwDs2HcShUXwrCzfRqAtc8j.DXkJT5D39ueVBT0xnW.lcNwe2B1Z8Mj.0CzbyeC9GwEfafd.ZWDBaatptlc1rF319TEHrVLJIxTwwcUOCg13xXZ95CGtNDISe6Z68w1te1E20zOPqkzmqkL6Wy6DMBKRqH88qy20MaMAKBa5yXK6rcsQKB7ifUoRvszvZnpk8n3L7yBc3dgTmDKxshjuo6w1gSDKfvJvHk3n0X9xmC4F+L9INEwIpCSJigv6jNysXwhIs9sWSSh.DRvtEsGMlzMYuyxP6cdI27UK.g.wlumRvZwZ6HQj9EBVFMA4580G9kMVFwVwSgu887v0eDvjZKug2JXaRfBgDgMEhl2HxxeG52FWNSQUDmtIWpxlhOU4RU9ZEkhL+BS.VCXbAiFhHjL.7SPDD0JoWFIZfujDTHN7I9ZgZTFLofBvgAfex2HIKq.cGd.hzuDJWpItvxpIAMX0n7AJUaz.2D1bWDAFCjSR+bPV+Ld2r31b5KOTSUxpVwBQ0uwgNRIfz2l5driQf1zussJENIagT+qERt0tRtVmh4jX.fQvaJagavTAi7vbXA2WPJHOWrZ2NwhUrdKS8V07RuhkKldvoROvIcqJEVpAWdJZjOYeqia3x7wO7vgy+JRQsK0O2GkPHjo0TyjbBJfBMRTHn2H4NYirX+Mwseqv4LYIHZiEZqBKJDRHVRebkWugo8WZkoJKhyzzCFGgYoM0Ly4S9C7MgK.e66YiNbAfNEckANEvsJ52wr4iK1zoJcvIYSjZkOMQpcEbKNkxDz4hvZ38cRvT0UvnNJe7bOtOJozlwuLIABpa2ViMq4mciFdoWFtEJfIStsKHgESLtbQEL7oDm+e+V3HFqlE8tZt2G.tPcdreDLsL4cMwvP4jBAPvzlM7rZ5cbeH36SXd+jsxqrLWF6XrLnAB9CjdKnk.A032ulvYmhIdbNrpU6mGb4MPuUAYnVG5qM.6qSDVRh0RiMWNN8XvX8EEq0rY4XyuOVyq0diW1MKQNHS1LoV9BIZM+KtYm9vwnifAKuhSKbstkwgdTN7LOjf7xsYHlEz.taYSm.t24Cu3KJ3Fn.NVh1tGd4jheCUwIb7Vt6aC5aQfII7RuJjSRGFKga24+JzDmKkw4QYblrFlG0PxLnW5GA2BEfsBebm+Vnw5ZubgKdxZqP3fsxi8.FN+yIH2p6ZYAh5Ik.1OW+LKU+n3FJmTe9ifL1FPH8Qlh2ncDnzBVGIJsKtq5YIZ8eI2jSobBln3fkkphws3tdF3A3iE968QuJLNzZmtmdM32.9c+Q3zIGNwNPd.77zHN4q4l94Pu5o29VWkvR+H3vIK5IpMetUiK2CUyALdWVv8CWzkX34hTGyfMzI6h.TL93rHWd9WFd5+VlkO.HI32eq7f+ORN4IjE2soJdAYiHDBFkID2npT5YyqC2U9jnRTGBouN0QNMAlNv.kBmVqmTKeAja0eAyP0GNAcTzVMujLFS0ccL9iM.+8+hOJrjlfXYVtRkBdzmBhVuONW5QmNdcn4uSSbxGObnG7V1eEqGV65f8McW2MgOf3jJKMWykCm8jgeyuB9UWOrjfMy7nlLJCmDYyHbCxS8bPysrUHwDf+.MyS9vvkcwgYltUxCKqm3XXr5Pb6N8iRanBR8EOJxVVGVku1EFkD7BSQHcP51BoV9elv0rBtEm9vQah.BCuppYtdc4bviygm7gETTwM0kZd.7O+T3MVLLExk7ZilzlvaSKDKhKm1DaejBUWqWisfN3a6KnUF5ffCbe89ee9fe5k.+7KG9yh54Mn4N8L7ifyfb4c+.3seusBABPJHn+VXd2slK37CwcoWOOgnILRIiRmEyzoOzqlJiTK6IPEqZDJ+aN1RI.Vo.Ux5wrh+B42v2vzbJgiRGgjn4MkwYNtUwwdrg3wueEYGsEH9VWdd0EAwqRwX5fcrMgOl3L3A.eu8u86OYRvpg.soihFKqjDLn9C8rMJyJEbMWNbziEdPpkVxf8oCkPDpIGdo+w1f.AHAHMw42NWCWxOJByyTIOunARHrbP5fbap9R+iUCtqXgnZY8fvSwPBfTmByxWHAqdYbKN8iIpyAPyKJZlo5VNi+T7yy+3RJtjlwtUz7.HVbXQuCLbBPgYHJIMVJijLrACEle6OlTBH7rwuk1kkJIEEWHDve6O+7yCtn+Knbmj7Oyva0rQw9SPVxGB0U+1f.E.IkjUVw3AtOWtfKLJyPWIOurARhkwnCyM6q2DrguA8JeFjlDag.MJGD4MBRIc3KswHovyksT5EpZdYCACogT.1s9nNprJX0qoy1wZKgTEtTRwoIr1.e97FDRp13Xv.jDKNcQH+i6H75Z+OnoLd7QPPVyZ8rstsfUXAqD2DJpoQC4hhhs9PZglUFVrtYR5D.YwGBVoOf13E112whYfGOyWuQdDQsnQxDLYy+spXdnEDiYMG+PffayTvVw5gZpEFFAx3waFCwvRA8pyGymCnjzovSjH5xADTRwdj3RIN0zNcWOzW7Qs0CqYsac4F.gikjoBvkbUJ9aOSKLCUuYLlPnkv7Yi7H15gAexPwiFicSxF.XwZrHKYL3VzAw8qqh2R0HJqkS0FkIIxkoM2lXgOYHDcNhj1g5a.RjD5C9x3wigAMVhFoyGywwaysMDnCBhfjjo55m4Ae.PyRM+aRzoiUH9PqgMrwt95sj1mPH+ba2gC+oGsQtBUAbDDBPwKIajGQWKhdOZn3Qg1jBDswKLVAVqFCRTCZRjLuQvc3VAqRkD+FEWspWLJ2r3RttF4Cd6vP3tVMLQRPqgr5BUUSZAV0YmyHkd6uscgU.Ygf3w65gkNn9CQi.UPmY4nokisZnL.hnJdrEDjYdWsvYI5EmkMaPCKV0D2i65gB+dHF3IfwXQX2R5LZ+HQrZr9ifugdZrgrJj4oqf5czjuqjo6q2zyZ8y4esIoxxiPWXhCkzKzjtLEVo+sty81HXfLQfBBijlagtTKrf7gbyApNCcg273t2JZvhvRVxhxlK+Fhw3SEkeprWDxnX4NIY1tkS84zWTCcRXTAQXcosiKtcDn.KncQGHWbF5jYQJEywrNpWInzTJlkpH1vmY3TN2TTSUQ.+cTTfPg.GkWvxYBAQfCBRjrqu11RfR7zliEGRz4dn.PjvdaMmgm4lLG3KCVTr.jkjO+iCyobQMSo03mopJjPZKk6jh4nKiJB1CbF5jwnBivn6Hk0w9YdLq0lDSOGDpAb77xll3gEa.izx9YBxzcJlktzDboWmEKYAp1qskWO7HhugLvP.QPgODrwp67w7k1FXGUVBijV6BxC7z586CZMC58MjlTyjMWQPIMTaTNyeRRTqSxLcJlh0JRnfeioBVluP3eD+WXCWhW93x.xngJgUf0sUDEOJj8c77Xt0wyqpGMVFqNKllrHdl+ZLl6c6.gB1tQSTTAdis8KyfAcvKH47PQkUkAhP4QhI6PPwYgjVaMyc6AOaiValaLUhK9864stcvmf5aHBWzUmhx9LCyTUBCV6PbokGfMxhvE0fOIbycfXLYVY.1FAkXDRDC73HYgeOt8TUxanZFkUvjIG9whB4FmYSLu4GDhDXylEJHeXnCBVUWPf9QPI3iUuFnwND5lR40UKSZfwaktTKrkXPSMCQyvvFWEIHud.Cnus8AAnBvUbcFd1+ZbtImBYTlffPviKqk+ntVb52QCENRvM4VcNi5RBTjNUxVqBmANAhkce3tcqfUpRhxX47k4xQ3Fgq5lahW9EB.Q8tUA7Ci7.guhjTaWXGb.3mUuFnrx67w74iNkgkrRSfw6hQAstJ8FGcQYXjOKmVYXCtMZfBfvNb22mOdhE1B+XY9bLlv.FdSYL9CtUAEdvX6yQh0z4DD2QrsmLCqKl.4hyHNWJOZILCSY70NZhpMLMmhXTwCw4bkw3SVZDHrmFvQOVP0CM+ytHcMGAgYcqCdmk198GJnmsr3cnKb.DjHQW2E989mPKMJXDcHzf0QJ9bZkwcDdNYP.DxGO5CGkqa5w3hE8hKUjGArBdOULls6ZIV9G.NC8zwJUdCLeafsuYCxjBSV4gZnmFKS4vbLqkFTPwtJltSuIqMn3LujT7MeUXHjmF3HOP3+klx36uQP.FnI.u7qS67F62u2VhNbUARGHsaFriWSsvK9O7F4yP5PXAuMsPNEa3D+Ao0ihn3E9aYw4c0MxgmLLWrLO7osrZGWlsaYTU3BvYvmDFkeDFCaOS361+zo4lDxtOnFxox6Yc4dXCDSBE6JYlpdSEqHEm1EljMtgHDMOXhGKrThwaQmif0AAiiH7luK7gexV1+l7llIMvToHig97pKBdy2ENCxAUaZvUhKON0y3GiWVeDgk7YePHtveVKL7DA3FTEPXskZUvbbKmxBlKNCaJXBzCv3tM53tErCMejVsFJZj3LnIxypaf+prNjRIGnM.+RUw7oeTRtloYwRHNsIAG9nfml5y3DuebDAa8Jl+C4kAGvajHABjIMPAIS44nns3esJ3+Y9P+SFfwQ6iS4YoAr8zky+LE3KJrw0kMWz0XIvFTLamRoTsCwkBtOpjOTZwYXSFatCvadE1AvN3D5ZwZRgszi.JcLLO2MvyKqGLvwZBysp5MO9SDmq3m6iRJIHW0kBKKPbleFxZbuwGWN4wS9bvcNOu843j4347mVCrsilXsU.Wyzf09INbyTP6xg3aRKrPpmy6LgwOdK0VcXNkKnUV0GlfYq5M8yURBog4QU7r5FPMnSBaOGNZ2jriVmJ63Umk0hFv2.NAZNVsL2ZWN4q7wgYBxIaiRkx7Y9+wMPeJMJW20YXIKMI+tGrNFAAX7cPKYRjMecpjLm6tdRlDtnyFxJDTcGHvfHw0ELoUk+6KBl0cAuy6JXVjOCoMY94qHI2NUwXFqkewOUfi+fbYWGrj2II2gpDN.S.TBAOkrQdT2ZQ1uiEJYzn0ZjaiJoHSncSq41e8YYwp7gSN8gDMTFqHQELZUNjqVvvkAoQqk6eoMyHGQVb1mulu7eY3A+pVnGnX3cvS4nHDFWAy68akOYYdgjjpJESjr2r7rQb4UTMQgE.u7qASetP7U4moSgbXsIq2KgXLMVO8c+zbu2NLrg6mY7qCv7dfXbCphXB1rQB79pVYttkShhNTTCZBXvhbmn5xrq401YHPABrHLVrAxFmbFHUW8xXEt0v2WkK8TCGhJBqHYBt+E0BSbbQ3zlbJ97uvxitlXDCCGHg17f7kH36QHFlMHKtrT74U4RTjLIxdyNEpEMOuoQVxGBe066vDhmC2HEx.ZiW2mmFYNTEC8fL76lKbniygG3Axhq6lalKVlGWD8.GikOyII2r62P04NH7sOmAZkODaipOXqQfdkdyXm8N.A1An7iZieFoV9Svwa8yuTTJYYfxTZtZc4HGhkE+b9IgtIl0bfG+u.EmvO+PxkiiHDpMlg0XYMjhpwkQRnMSf0fKKlXzO7wvHP6tlURB9CTKKlV3DNZ3NtUX+Fkf2awQ3Gblw4PpML+JUQDUCU43xT0qgOOP13reW.5nEgnqBtb6.l25l1Yz.2Br3kaLajBQEnG7k0sLbEI3fkQnGFEGnJKdgpah25KLbomueN4I3x9LX3iKSySugV3MoEbwRXjDEINHnGnnD70tJXHKjLbBPQ3iMMyrqiT7jz.ykMRc8HIS8pEL6o4v.FtgU+U4vIctsR+VW.lspXxVC06HXVl0wRCDBei3rwDsTDZMVgcKElzNZ6emqKbafvldHeVDY6MXyOq1ufnJer+DfBsJFjSPl2WWG0VWPNoI3v9O7TbbGkj92WKUlPyKVWLd5jMxqSy74zJqljzJVJksLI1Mgg2iX7EzJKhVXATG+dpkUlcLNgiyxu9Vfy8r7S3bbnt5BwTtXMU7YZtCUITh1gVUBtaVOuLwwYXSAadCGq1EgXSkMxNWEh1sIvMUqHdkinEYN8Aahl3iabUTpJ.C1Fj9X8Q1JGt2OpVZMQ.N1iUR3fJNrCQyoOQXziDxOenEeZVoNIuSqwYUlDsyF3pIIWCqi2VzBeU33DZfo3DNdK+xeA7ytLX3CAT90jzUw4boBdyWON2tpDNHc.LBI+IQ0r.ccHGvIhn3C0i7PuSSbsk.6lEYtG7bpnwJcvYPSfVasdtm5+RFjuPL7T9XJ1b3eKRvseO0ygbPQYJmUSXaxR1QgS7X71hE2K4BW6s.q70x7y4p9Qv4NEnukBEzq1LqdBfn94dlkedg+2l4+VUBGgIKrBAutpQ9itUCkNFD88HwX27jJvth55dWzxbPfUH.qKZmvnFwTXCQKkYkpL9ZmTnLVtVQAbblb3GcsMwhe8HHB09GcVg7zj5cQcwSP3osdnGrWNGa2ThFxgG6gBwzuiXbVhdxjsQQZE7lplYVtUPh7O.jC53QaoMIHXWSQwuKdchH.aJzA5INCex7Y9Cvz0qk5TPDC7yT8hbqwOS4xZk07ui.g5P4hY25IMMSISfnBVzajEm6OsIFYyg4pj8hfVCqzoUlq6Zo9r6CpgdJfvOxNLeF6Jv+QVnMRSBLQ5CxAOQ9TAb+1JItD5sVwzTERKkY3R9EtzRKg.mtgtPPAq6axhe70Em8IdPlpp.hnETizvcoWOUFt.OmF9hh0rohj7a8DnLcgMmDQgiB0POEdZaC7XxZPKgQaBwrU8g+9q1J2vL.BE.wNiTD.pq1HbFWLTyJgYpJl9qUzjxvsSk7dJKNC6GhMRIfIkW8RuCOPssqV6tZrkEsiUmBQQiBYIigGzci7bxFvfkC23mqT1KtueeBtm6JDDz2NlhgBLl.bkS0vRd2XbSphXPF+jTJ3AoZdEcSnFvDvja+8VGK6h05ZK9O7Zkyh1ZPLvSjjEbPbWtqm2VEGIBNO5ImtaN7ymVC7nOVHHRFlo8tRhCH4lmohmXgI3lk8liwjEVA7jh5XAlZQLfiAJYzfqKhcwZbYRb9OJDVCVgOTC8jo4bG.2oa4rRmjDzX4pb5EGlNB+jaJNe5GFDxvTO1ID1g+zijE+56JNWlLONCQNHAdcUKLe8Fv16Qir+GGVCvtfX81VX2yp0zlBiuHnF1Tnrr5ESOUY70JC8TKXFNEy.qN.m34jjO9CBu0SvVPI+4GOK9QWSLljMWtPQtf1vRUIX1oJiV54vvY.SLM4s8kR9tK1MsbWEHzFHqBvYvShUpTbu10SbAjuVwM5T.srFAWz0nIYhtlAW2ZCvkc8wX3sFjqVkOg0Rpzwk6xsbpMbA3LjIgwIz10jAsqB61VuvVrX0IwzygibelBuAI39oJRJLLLW+LaUw70ejKK4C5Zsl48mRQgaTwrUkPdZAU3jhYnqfUDHBxQbVXBUf2JLZ2H18ufqMoPj+AibfSfEXpiGQVKFofwZCyzbJlu9axbITHDP0kYYFNkP+MJhqf6zrdVhHINC8zgH8a2N4A6QVw5Vz5TH68ghsvQxC5tQdMYSXrZNZaXN5tn.DsVAWgp.Fta.RIr7X1p4ePbTCbBXyanX0oXOwZVdOxR9WfFsvA0PlDIxae31cKmk4jD+F3VkExHEY0oq4RU4w4XyADBdEUi7.5ZP1ue.zmiBcZmF6IV1x6gHPKX0XbBgyPNUpIbwLS2J3qTIIpQxUJJncjQOEJtHxCoEdaUybmoVOt4ueHK8HwZzHQyVVbs6dwdnO5Doyjn1EandhugOYVoufba5xYiRKYancSRdA3C+FKKWkjes6Zotb6GNC8zvH8k1i6dtkL+d1uZGBug64lSew2PNM9XofeOURRkncK2YkEpxQycpqf0kUd3anmIFeY6s9Y2CX2qsXOJAZEFu4Uw0ESA6Gpgbx7LllX9TMBoC9QhOjzrxxzcqfOxQgyv9gnCW.VcRrhcOAKu0vdTBTX2xZM2XbQVzgB896yBz0vqHqm.BIBoh+fsZVhsUbF3IhM2AhUmDgPjNCK6YwtjT528g27LqERTC7Dw0ME28F9PJzWPVssUVntQTCdhXK9P7xvi0tcsb72cfukPfhze1UzXjAwYHmJ0krdtg59Ju5bsziDQoiGiIEVLH9VB4A6ochzA38A2vEiS.bF7IQ89ykD8XnH6+3vXcYOUrdaM7sDMvN.cJLg6MN6+4C9ifQEd2ZBB1QfGAtoueK6AEj1AAfIE5nkl9S9gdOsy1tDs6Cuy2tfXKqMiukRdv2xrA9cQrWBrah8RfcSrWBrah8RfcSrWBrahc805v+eF9+TunF7l1RvN9.....jTQNQjqBAlf" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "IRCAM - Centre Pompidou",
									"patching_rect" : [ 116.0, 103.0, 126.0, 17.0 ],
									"id" : "obj-122",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "spectral envelope transformation (in cent)",
									"patching_rect" : [ 581.0, 147.0, 201.0, 17.0 ],
									"id" : "obj-123",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pitch transposition (in cent)",
									"patching_rect" : [ 582.0, 128.0, 135.0, 17.0 ],
									"id" : "obj-124",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "relax",
									"patching_rect" : [ 424.0, 352.0, 31.0, 17.0 ],
									"id" : "obj-125",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "trans",
									"patching_rect" : [ 387.0, 352.0, 31.0, 17.0 ],
									"id" : "obj-126",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "noise",
									"patching_rect" : [ 351.0, 352.0, 31.0, 17.0 ],
									"id" : "obj-127",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"patching_rect" : [ 428.0, 244.0, 19.0, 86.0 ],
									"id" : "obj-128",
									"size" : 101.0,
									"orientation" : 2,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.01",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 391.0, 313.0, 41.0, 17.0 ],
									"id" : "obj-129",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"patching_rect" : [ 391.0, 244.0, 19.0, 86.0 ],
									"id" : "obj-130",
									"size" : 101.0,
									"orientation" : 2,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.01",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 354.0, 313.0, 41.0, 17.0 ],
									"id" : "obj-131",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"patching_rect" : [ 354.0, 244.0, 19.0, 86.0 ],
									"id" : "obj-132",
									"size" : 101.0,
									"orientation" : 2,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.01",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 317.0, 313.0, 41.0, 17.0 ],
									"id" : "obj-133",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"patching_rect" : [ 317.0, 244.0, 19.0, 86.0 ],
									"id" : "obj-134",
									"size" : 101.0,
									"orientation" : 2,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sinusoids",
									"patching_rect" : [ 301.0, 352.0, 51.0, 17.0 ],
									"id" : "obj-135",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 101",
									"outlettype" : [ "" ],
									"patching_rect" : [ 317.0, 244.0, 72.0, 17.0 ],
									"id" : "obj-136",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "phase vocoder configuration",
									"patching_rect" : [ 534.0, 234.0, 181.0, 20.0 ],
									"id" : "obj-137",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "and transients",
									"patching_rect" : [ 243.0, 310.0, 74.0, 17.0 ],
									"id" : "obj-138",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"border" : 1,
									"bgcolor" : [ 0.968627, 0.968627, 0.968627, 1.0 ],
									"patching_rect" : [ 544.0, 337.0, 224.0, 67.0 ],
									"id" : "obj-139",
									"rounded" : 5,
									"bordercolor" : [ 0.937255, 0.937255, 0.937255, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-121", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-99", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-103", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 1 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 1 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-40", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-97", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-101", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-128", 0 ],
									"destination" : [ "obj-40", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-129", 0 ],
									"destination" : [ "obj-40", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-130", 0 ],
									"destination" : [ "obj-129", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-136", 0 ],
									"destination" : [ "obj-130", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 0 ],
									"destination" : [ "obj-98", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-101", 0 ],
									"destination" : [ "obj-102", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-131", 0 ],
									"destination" : [ "obj-40", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-132", 0 ],
									"destination" : [ "obj-131", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-136", 0 ],
									"destination" : [ "obj-132", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-133", 0 ],
									"destination" : [ "obj-40", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-134", 0 ],
									"destination" : [ "obj-133", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-136", 0 ],
									"destination" : [ "obj-134", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-99", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-102", 0 ],
									"destination" : [ "obj-103", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line~",
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 181.0, 613.0, 34.0, 17.0 ],
					"id" : "obj-40",
					"fontname" : "Helvetica",
					"color" : [ 0.058824, 0.592157, 0.592157, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "append 20",
					"outlettype" : [ "" ],
					"patching_rect" : [ 181.0, 595.0, 62.0, 17.0 ],
					"id" : "obj-43",
					"fontname" : "Helvetica",
					"color" : [ 0.058824, 0.592157, 0.592157, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack f f",
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 9.0, 517.0, 190.0, 17.0 ],
					"id" : "obj-37",
					"fontname" : "Helvetica",
					"color" : [ 0.058824, 0.592157, 0.592157, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p supervp.scrub~ A",
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 9.0, 634.0, 105.0, 19.0 ],
					"id" : "obj-31",
					"fontname" : "Arial",
					"color" : [ 0.058824, 0.592157, 0.592157, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 797.0, 649.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 797.0, 649.0 ],
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
									"maxclass" : "inlet",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 55.0, 354.0, 25.0, 25.0 ],
									"id" : "obj-33",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 56.0, 564.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 153.0, 127.0, 82.0, 17.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "transmode", "time", ",", "transmode", "freq", ",", "transmode", "auto" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sinmode <'vocoder'|'additive': mode> configure sinusoids remix mode ['vocoder']",
									"patching_rect" : [ 230.0, 626.0, 407.0, 17.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "envmode <'trueenv'|'lpc': mode> ... set envelope estimation mode ['trueenv']",
									"patching_rect" : [ 230.0, 574.0, 353.0, 17.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "lpcorder <num: order> ... set order for LPC envelope estimation [12]",
									"patching_rect" : [ 230.0, 600.0, 320.0, 17.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "envscale <'on'|'off': switch> or envscale <num: timbre> [<num: mean>] ... configure or set envelope scaling [off, 1 1]",
									"patching_rect" : [ 230.0, 561.0, 542.0, 17.0 ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "envpres <'on'|'off': switch> ... configure envelope preservation [off]",
									"patching_rect" : [ 230.0, 535.0, 320.0, 17.0 ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "envtrans <'on'|'off': switch> or <num: cent> ... configure or set envelope transformation (requires transpose on) [off, 0]",
									"patching_rect" : [ 230.0, 548.0, 555.0, 17.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "transpose <'on'|'off': switch> or <num: cent> ... configure or set transposition [on, 0]",
									"patching_rect" : [ 230.0, 522.0, 424.0, 17.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "remix <'on'|'off': switch> ... configure or set sinusoids/noise/transients remix [off, 1 1 1 0 0.1]",
									"patching_rect" : [ 230.0, 613.0, 455.0, 17.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "maxfreq <num: hz> ... set maximum f0 for true envelope estimation [500]",
									"patching_rect" : [ 230.0, 587.0, 344.0, 17.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "maxtrans <num: cent> ... set maximum transposition [1200]",
									"patching_rect" : [ 230.0, 509.0, 282.0, 17.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "transmode <'time'|'auto'|'freq': switch> ... configure transposition mode [time]",
									"patching_rect" : [ 230.0, 496.0, 364.0, 17.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 221.0, 263.0, 88.0, 17.0 ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"textcolor" : [ 0.65098, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "sinmode", "vocoder", ",", "sinmode", "additive" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 254.0, 96.0, 77.0, 17.0 ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 200",
									"outlettype" : [ "" ],
									"patching_rect" : [ 436.0, 184.0, 89.0, 17.0 ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 221.0, 184.0, 88.0, 17.0 ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "envmode", "trueenv", ",", "envmode", "lpc" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 242.0, 165.0, 67.0, 17.0 ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "envscale", "off", ",", "envscale", "on" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 100",
									"outlettype" : [ "" ],
									"patching_rect" : [ 581.0, 165.0, 72.0, 17.0 ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 12",
									"outlettype" : [ "" ],
									"patching_rect" : [ 436.0, 203.0, 83.0, 17.0 ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "lpcorder $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 317.0, 203.0, 69.0, 15.0 ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 388.0, 203.0, 46.0, 17.0 ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "LPC order (used for spectral envelope estimation)",
									"patching_rect" : [ 437.0, 204.0, 333.0, 17.0 ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "envelope scaling (timbre and mean factor)",
									"patching_rect" : [ 581.0, 166.0, 199.0, 17.0 ],
									"id" : "obj-24",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 398.0, 165.0, 36.0, 17.0 ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "envscale $1 $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 317.0, 165.0, 79.0, 15.0 ],
									"id" : "obj-26",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.01",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 447.0, 165.0, 41.0, 17.0 ],
									"id" : "obj-27",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 171.0, 146.0, 64.0, 17.0 ],
									"id" : "obj-28",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "envpres", "off", ",", "envpres", "on" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "maxfreq $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 317.0, 184.0, 69.0, 15.0 ],
									"id" : "obj-29",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 388.0, 184.0, 46.0, 17.0 ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "maximal fundamental frequency (used for spectral envelope estimation)",
									"patching_rect" : [ 437.0, 185.0, 333.0, 17.0 ],
									"id" : "obj-31",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"patching_rect" : [ 436.0, 165.0, 143.0, 15.0 ],
									"id" : "obj-32",
									"size" : 201.0,
									"orientation" : 1,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "real-time control",
									"patching_rect" : [ 351.0, 105.0, 112.0, 20.0 ],
									"id" : "obj-34",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sinusoids, noise",
									"patching_rect" : [ 236.0, 297.0, 81.0, 17.0 ],
									"id" : "obj-36",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 120",
									"outlettype" : [ "" ],
									"patching_rect" : [ 507.0, 145.0, 72.0, 17.0 ],
									"id" : "obj-37",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 120",
									"outlettype" : [ "" ],
									"patching_rect" : [ 507.0, 127.0, 72.0, 17.0 ],
									"id" : "obj-38",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"outlettype" : [ "" ],
									"patching_rect" : [ 280.0, 354.0, 62.0, 17.0 ],
									"id" : "obj-39",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak remix 1. 1. 1. 0. 0.1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 280.0, 334.0, 196.0, 17.0 ],
									"id" : "obj-40",
									"fontname" : "Arial",
									"numinlets" : 6,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 7",
									"outlettype" : [ "" ],
									"patching_rect" : [ 555.0, 257.0, 77.0, 17.0 ],
									"id" : "obj-41",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 2",
									"outlettype" : [ "" ],
									"patching_rect" : [ 555.0, 293.0, 77.0, 17.0 ],
									"id" : "obj-42",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 0",
									"outlettype" : [ "" ],
									"patching_rect" : [ 555.0, 275.0, 77.0, 17.0 ],
									"id" : "obj-43",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "advanced features",
									"patching_rect" : [ 649.0, 312.0, 92.0, 17.0 ],
									"id" : "obj-44",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "windowing parameters",
									"patching_rect" : [ 535.0, 312.0, 112.0, 17.0 ],
									"id" : "obj-45",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 603.0, 292.0, 37.0, 17.0 ],
									"id" : "obj-47",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ 3, ",", 3.5, ",", 4, ",", 4.5, ",", 5, ",", 6 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 603.0, 274.0, 37.0, 17.0 ],
									"id" : "obj-48",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ 0, ",", 1, ",", 2, ",", 3, ",", 4 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 603.0, 256.0, 37.0, 17.0 ],
									"id" : "obj-49",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ 512, ",", 750, ",", 1024, ",", 1250, ",", 1500, ",", 1750, ",", 2048, ",", 2250, ",", 2500, ",", 2750, ",", 3000, ",", 3500, ",", 4096, ",", 5000, ",", 6000, ",", 7000, ",", 8192 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "oversamp $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 531.0, 293.0, 69.0, 15.0 ],
									"id" : "obj-50",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "fftover $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 542.0, 275.0, 58.0, 15.0 ],
									"id" : "obj-51",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "windowsize $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 523.0, 257.0, 77.0, 15.0 ],
									"id" : "obj-52",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "transients <'on'|'off': switch> ... configure transient preservation (also for remixing) [off]",
									"patching_rect" : [ 230.0, 457.0, 417.0, 17.0 ],
									"id" : "obj-53",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "shapeinv <'on'|'off': switch> ... configure wave form preservation (overrides transients) [off]",
									"patching_rect" : [ 230.0, 483.0, 434.0, 17.0 ],
									"id" : "obj-54",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "stereopres <'on'|'off': switch> ... configure stereo preservation [off]",
									"patching_rect" : [ 230.0, 470.0, 320.0, 17.0 ],
									"id" : "obj-55",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "oversamp <num: oversamp> ... configure oversampling factor (STFT hop size = windowsize / oversamp) [4]",
									"patching_rect" : [ 230.0, 444.0, 499.0, 17.0 ],
									"id" : "obj-56",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "fftover <num: fftover> ... configure frequency oversampling (STFT size = windowsize * 2 ^ fftover) [0]",
									"patching_rect" : [ 228.0, 431.0, 484.0, 17.0 ],
									"id" : "obj-57",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "windowsize <num: windowsize> ... configure window size [1024]",
									"patching_rect" : [ 230.0, 418.0, 302.0, 17.0 ],
									"id" : "obj-58",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 238.0, 127.0, 72.0, 17.0 ],
									"id" : "obj-59",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "transpose", "off", ",", "transpose", "on" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 254.0, 244.0, 56.0, 17.0 ],
									"id" : "obj-60",
									"fontname" : "Arial",
									"textcolor" : [ 0.65098, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "remix", "off", ",", "remix", "on" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 651.0, 274.0, 67.0, 17.0 ],
									"id" : "obj-61",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "shapeinv", "off", ",", "shapeinv", "on" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 651.0, 292.0, 77.0, 17.0 ],
									"id" : "obj-62",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "stereopres", "off", ",", "stereopres", "on" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 242.0, 146.0, 68.0, 17.0 ],
									"id" : "obj-63",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "envtrans", "off", ",", "envtrans", "on" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 651.0, 256.0, 76.0, 17.0 ],
									"id" : "obj-64",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"items" : [ "transients", "off", ",", "transients", "on" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Note that the re-configuration of windowing parameters and processing features such as remixing and transient preservation will cause the re-initialisation of the SuperVP engine and may cause clicks when DSP is on.",
									"linecount" : 5,
									"frgb" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"patching_rect" : [ 547.0, 343.0, 218.0, 58.0 ],
									"id" : "obj-65",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 10",
									"outlettype" : [ "" ],
									"patching_rect" : [ 465.0, 244.0, 66.0, 17.0 ],
									"id" : "obj-74",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "error",
									"patching_rect" : [ 462.0, 352.0, 35.0, 17.0 ],
									"id" : "obj-75",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.01",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 465.0, 313.0, 41.0, 17.0 ],
									"id" : "obj-76",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"patching_rect" : [ 465.0, 244.0, 19.0, 86.0 ],
									"id" : "obj-77",
									"size" : 101.0,
									"orientation" : 2,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "remix 1. 1. 1. 0. 0.1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 317.0, 334.0, 167.0, 15.0 ],
									"id" : "obj-78",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "attributes:",
									"patching_rect" : [ 219.0, 404.0, 123.0, 17.0 ],
									"id" : "obj-96",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"patching_rect" : [ 436.0, 146.0, 143.0, 15.0 ],
									"id" : "obj-97",
									"size" : 241.0,
									"orientation" : 1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"mult" : 10.0,
									"min" : -1200.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 388.0, 146.0, 46.0, 17.0 ],
									"id" : "obj-98",
									"fontname" : "Arial",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "envtrans $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 317.0, 146.0, 69.0, 15.0 ],
									"id" : "obj-99",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "remixing of",
									"patching_rect" : [ 255.0, 284.0, 62.0, 17.0 ],
									"id" : "obj-100",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"patching_rect" : [ 436.0, 128.0, 143.0, 15.0 ],
									"id" : "obj-101",
									"size" : 241.0,
									"orientation" : 1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"mult" : 10.0,
									"min" : -1200.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 388.0, 128.0, 46.0, 17.0 ],
									"id" : "obj-102",
									"fontname" : "Arial",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "transpose $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 317.0, 128.0, 69.0, 15.0 ],
									"id" : "obj-103",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "arguments: buffer~, channels, windowsize, fftover, oversamp",
									"patching_rect" : [ 219.0, 391.0, 293.0, 17.0 ],
									"id" : "obj-104",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "entirely based on SuperVP by Axel Roebel",
									"patching_rect" : [ 116.0, 77.0, 198.0, 17.0 ],
									"id" : "obj-111",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Max/MSP integration by Norbert Schnell",
									"patching_rect" : [ 116.0, 90.0, 195.0, 17.0 ],
									"id" : "obj-112",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "supervp.scrub~",
									"patching_rect" : [ 116.0, 26.0, 190.0, 34.0 ],
									"id" : "obj-116",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 24.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "advanced phase vocoder position controled player module",
									"patching_rect" : [ 116.0, 58.0, 356.0, 20.0 ],
									"id" : "obj-117",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "fpic",
									"patching_rect" : [ 30.0, 35.0, 80.0, 80.0 ],
									"id" : "obj-118",
									"numinlets" : 1,
									"numoutlets" : 0,
									"embed" : 1,
									"data" : [ 6441, "", "IBkSG0fBZn....PCIgDQRA....E....THX....fiQHeq....DLmPIQEBHf.B7g.YHB..X.dRDEDU3wY6blGlTUb0++SU0s2lt6YFXX1XF1WEWiHRTAEz3Fn3BRzW20DWhKIQMu3FFLf.AM95RLfQ+kXTbInFMZ70sDUTQQQi6P.zfxvLvvvruz8zceqpd+iaCLK8v1P.84Geedtyxc8Teum5bN0oN0U.XYuXmFN.vQN68vhw2QwacSH2SKCeWG6k.6lXuDX2D6k.6lXuDX2D6k.6lXuDX2D6k.6lXuDX2DNcuKWj921172eWD67il0A.wN.AXwh.CfCBoi2kYEcKgXOErBu1t0XPXcwBXQtcqJXYSZfd2osIEHvhxJvpBfHQiXKewXzI9tqxmEPHQU7nwDs2HcShUXwrCzfRqAtc8j.DXkJT5D39ueVBT0xnW.lcNwe2B1Z8Mj.0CzbyeC9GwEfafd.ZWDBaatptlc1rF319TEHrVLJIxTwwcUOCg13xXZ95CGtNDISe6Z68w1te1E20zOPqkzmqkL6Wy6DMBKRqH88qy20MaMAKBa5yXK6rcsQKB7ifUoRvszvZnpk8n3L7yBc3dgTmDKxshjuo6w1gSDKfvJvHk3n0X9xmC4F+L9INEwIpCSJigv6jNysXwhIs9sWSSh.DRvtEsGMlzMYuyxP6cdI27UK.g.wlumRvZwZ6HQj9EBVFMA4580G9kMVFwVwSgu887v0eDvjZKug2JXaRfBgDgMEhl2HxxeG52FWNSQUDmtIWpxlhOU4RU9ZEkhL+BS.VCXbAiFhHjL.7SPDD0JoWFIZfujDTHN7I9ZgZTFLofBvgAfex2HIKq.cGd.hzuDJWpItvxpIAMX0n7AJUaz.2D1bWDAFCjSR+bPV+Ld2r31b5KOTSUxpVwBQ0uwgNRIfz2l5driQf1zussJENIagT+qERt0tRtVmh4jX.fQvaJagavTAi7vbXA2WPJHOWrZ2NwhUrdKS8V07RuhkKldvoROvIcqJEVpAWdJZjOYeqia3x7wO7vgy+JRQsK0O2GkPHjo0TyjbBJfBMRTHn2H4NYirX+Mwseqv4LYIHZiEZqBKJDRHVRebkWugo8WZkoJKhyzzCFGgYoM0Ly4S9C7MgK.e66YiNbAfNEckANEvsJ52wr4iK1zoJcvIYSjZkOMQpcEbKNkxDz4hvZ38cRvT0UvnNJe7bOtOJozlwuLIABpa2ViMq4mciFdoWFtEJfIStsKHgESLtbQEL7oDm+e+V3HFqlE8tZt2G.tPcdreDLsL4cMwvP4jBAPvzlM7rZ5cbeH36SXd+jsxqrLWF6XrLnAB9CjdKnk.A032ulvYmhIdbNrpU6mGb4MPuUAYnVG5qM.6qSDVRh0RiMWNN8XvX8EEq0rY4XyuOVyq0diW1MKQNHS1LoV9BIZM+KtYm9vwnifAKuhSKbstkwgdTN7LOjf7xsYHlEz.taYSm.t24Cu3KJ3Fn.NVh1tGd4jheCUwIb7Vt6aC5aQfII7RuJjSRGFKga24+JzDmKkw4QYblrFlG0PxLnW5GA2BEfsBebm+Vnw5ZubgKdxZqP3fsxi8.FN+yIH2p6ZYAh5Ik.1OW+LKU+n3FJmTe9ifL1FPH8Qlh2ncDnzBVGIJsKtq5YIZ8eI2jSobBln3fkkphws3tdF3A3iE968QuJLNzZmtmdM32.9c+Q3zIGNwNPd.77zHN4q4l94Pu5o29VWkvR+H3vIK5IpMetUiK2CUyALdWVv8CWzkX34hTGyfMzI6h.TL93rHWd9WFd5+VlkO.HI32eq7f+ORN4IjE2soJdAYiHDBFkID2npT5YyqC2U9jnRTGBouN0QNMAlNv.kBmVqmTKeAja0eAyP0GNAcTzVMujLFS0ccL9iM.+8+hOJrjlfXYVtRkBdzmBhVuONW5QmNdcn4uSSbxGObnG7V1eEqGV65f8McW2MgOf3jJKMWykCm8jgeyuB9UWOrjfMy7nlLJCmDYyHbCxS8bPysrUHwDf+.MyS9vvkcwgYltUxCKqm3XXr5Pb6N8iRanBR8EOJxVVGVku1EFkD7BSQHcP51BoV9elv0rBtEm9vQah.BCuppYtdc4bviygm7gETTwM0kZd.7O+T3MVLLExk7ZilzlvaSKDKhKm1DaejBUWqWisfN3a6KnUF5ffCbe89ee9fe5k.+7KG9yh54Mn4N8L7ifyfb4c+.3seusBABPJHn+VXd2slK37CwcoWOOgnILRIiRmEyzoOzqlJiTK6IPEqZDJ+aN1RI.Vo.Ux5wrh+B42v2vzbJgiRGgjn4MkwYNtUwwdrg3wueEYGsEH9VWdd0EAwqRwX5fcrMgOl3L3A.eu8u86OYRvpg.soihFKqjDLn9C8rMJyJEbMWNbziEdPpkVxf8oCkPDpIGdo+w1f.AHAHMw42NWCWxOJByyTIOunARHrbP5fbap9R+iUCtqXgnZY8fvSwPBfTmByxWHAqdYbKN8iIpyAPyKJZlo5VNi+T7yy+3RJtjlwtUz7.HVbXQuCLbBPgYHJIMVJijLrACEle6OlTBH7rwuk1kkJIEEWHDve6O+7yCtn+Knbmj7Oyva0rQw9SPVxGB0U+1f.E.IkjUVw3AtOWtfKLJyPWIOurARhkwnCyM6q2DrguA8JeFjlDag.MJGD4MBRIc3KswHovyksT5EpZdYCACogT.1s9nNprJX0qoy1wZKgTEtTRwoIr1.e97FDRp13Xv.jDKNcQH+i6H75Z+OnoLd7QPPVyZ8rstsfUXAqD2DJpoQC4hhhs9PZglUFVrtYR5D.YwGBVoOf13E112whYfGOyWuQdDQsnQxDLYy+spXdnEDiYMG+PffayTvVw5gZpEFFAx3waFCwvRA8pyGymCnjzovSjH5xADTRwdj3RIN0zNcWOzW7Qs0CqYsac4F.gikjoBvkbUJ9aOSKLCUuYLlPnkv7Yi7H15gAexPwiFicSxF.XwZrHKYL3VzAw8qqh2R0HJqkS0FkIIxkoM2lXgOYHDcNhj1g5a.RjD5C9x3wigAMVhFoyGywwaysMDnCBhfjjo55m4Ae.PyRM+aRzoiUH9PqgMrwt95sj1mPH+ba2gC+oGsQtBUAbDDBPwKIajGQWKhdOZn3Qg1jBDswKLVAVqFCRTCZRjLuQvc3VAqRkD+FEWspWLJ2r3RttF4Cd6vP3tVMLQRPqgr5BUUSZAV0YmyHkd6uscgU.Ygf3w65gkNn9CQi.UPmY4nokisZnL.hnJdrEDjYdWsvYI5EmkMaPCKV0D2i65gB+dHF3IfwXQX2R5LZ+HQrZr9ifugdZrgrJj4oqf5czjuqjo6q2zyZ8y4esIoxxiPWXhCkzKzjtLEVo+sty81HXfLQfBBijlagtTKrf7gbyApNCcg273t2JZvhvRVxhxlK+Fhw3SEkeprWDxnX4NIY1tkS84zWTCcRXTAQXcosiKtcDn.KncQGHWbF5jYQJEywrNpWInzTJlkpH1vmY3TN2TTSUQ.+cTTfPg.GkWvxYBAQfCBRjrqu11RfR7zliEGRz4dn.PjvdaMmgm4lLG3KCVTr.jkjO+iCyobQMSo03mopJjPZKk6jh4nKiJB1CbF5jwnBivn6Hk0w9YdLq0lDSOGDpAb77xll3gEa.izx9YBxzcJlktzDboWmEKYAp1qskWO7HhugLvP.QPgODrwp67w7k1FXGUVBijV6BxC7z586CZMC58MjlTyjMWQPIMTaTNyeRRTqSxLcJlh0JRnfeioBVluP3eD+WXCWhW93x.xngJgUf0sUDEOJj8c77Xt0wyqpGMVFqNKllrHdl+ZLl6c6.gB1tQSTTAdis8KyfAcvKH47PQkUkAhP4QhI6PPwYgjVaMyc6AOaiValaLUhK9864stcvmf5aHBWzUmhx9LCyTUBCV6PbokGfMxhvE0fOIbycfXLYVY.1FAkXDRDC73HYgeOt8TUxanZFkUvjIG9whB4FmYSLu4GDhDXylEJHeXnCBVUWPf9QPI3iUuFnwND5lR40UKSZfwaktTKrkXPSMCQyvvFWEIHud.Cnus8AAnBvUbcFd1+ZbtImBYTlffPviKqk+ntVb52QCENRvM4VcNi5RBTjNUxVqBmANAhkce3tcqfUpRhxX47k4xQ3Fgq5lahW9EB.Q8tUA7Ci7.guhjTaWXGb.3mUuFnrx67w74iNkgkrRSfw6hQAstJ8FGcQYXjOKmVYXCtMZfBfvNb22mOdhE1B+XY9bLlv.FdSYL9CtUAEdvX6yQh0z4DD2QrsmLCqKl.4hyHNWJOZILCSY70NZhpMLMmhXTwCw4bkw3SVZDHrmFvQOVP0CM+ytHcMGAgYcqCdmk198GJnmsr3cnKb.DjHQW2E989mPKMJXDcHzf0QJ9bZkwcDdNYP.DxGO5CGkqa5w3hE8hKUjGArBdOULls6ZIV9G.NC8zwJUdCLeafsuYCxjBSV4gZnmFKS4vbLqkFTPwtJltSuIqMn3LujT7MeUXHjmF3HOP3+klx36uQP.FnI.u7qS67F62u2VhNbUARGHsaFriWSsvK9O7F4yP5PXAuMsPNEa3D+Ao0ihn3E9aYw4c0MxgmLLWrLO7osrZGWlsaYTU3BvYvmDFkeDFCaOS361+zo4lDxtOnFxox6Yc4dXCDSBE6JYlpdSEqHEm1EljMtgHDMOXhGKrThwaQmif0AAiiH7luK7gexV1+l7llIMvToHig97pKBdy2ENCxAUaZvUhKON0y3GiWVeDgk7YePHtveVKL7DA3FTEPXskZUvbbKmxBlKNCaJXBzCv3tM53tErCMejVsFJZj3LnIxypaf+prNjRIGnM.+RUw7oeTRtloYwRHNsIAG9nfml5y3DuebDAa8Jl+C4kAGvajHABjIMPAIS44nns3esJ3+Y9P+SFfwQ6iS4YoAr8zky+LE3KJrw0kMWz0XIvFTLamRoTsCwkBtOpjOTZwYXSFatCvadE1AvN3D5ZwZRgszi.JcLLO2MvyKqGLvwZBysp5MO9SDmq3m6iRJIHW0kBKKPbleFxZbuwGWN4wS9bvcNOu843j4347mVCrsilXsU.Wyzf09INbyTP6xg3aRKrPpmy6LgwOdK0VcXNkKnUV0GlfYq5M8yURBog4QU7r5FPMnSBaOGNZ2jriVmJ63Umk0hFv2.NAZNVsL2ZWN4q7wgYBxIaiRkx7Y9+wMPeJMJW20YXIKMI+tGrNFAAX7cPKYRjMecpjLm6tdRlDtnyFxJDTcGHvfHw0ELoUk+6KBl0cAuy6JXVjOCoMY94qHI2NUwXFqkewOUfi+fbYWGrj2II2gpDN.S.TBAOkrQdT2ZQ1uiEJYzn0ZjaiJoHSncSq41e8YYwp7gSN8gDMTFqHQELZUNjqVvvkAoQqk6eoMyHGQVb1mulu7eY3A+pVnGnX3cvS4nHDFWAy68akOYYdgjjpJESjr2r7rQb4UTMQgE.u7qASetP7U4moSgbXsIq2KgXLMVO8c+zbu2NLrg6mY7qCv7dfXbCphXB1rQB79pVYttkShhNTTCZBXvhbmn5xrq401YHPABrHLVrAxFmbFHUW8xXEt0v2WkK8TCGhJBqHYBt+E0BSbbQ3zlbJ97uvxitlXDCCGHg17f7kH36QHFlMHKtrT74U4RTjLIxdyNEpEMOuoQVxGBe066vDhmC2HEx.ZiW2mmFYNTEC8fL76lKbniygG3Axhq6lalKVlGWD8.GikOyII2r62P04NH7sOmAZkODaipOXqQfdkdyXm8N.A1An7iZieFoV9Svwa8yuTTJYYfxTZtZc4HGhkE+b9IgtIl0bfG+u.EmvO+PxkiiHDpMlg0XYMjhpwkQRnMSf0fKKlXzO7wvHP6tlURB9CTKKlV3DNZ3NtUX+Fkf2awQ3Gblw4PpML+JUQDUCU43xT0qgOOP13reW.5nEgnqBtb6.l25l1Yz.2Br3kaLajBQEnG7k0sLbEI3fkQnGFEGnJKdgpah25KLbomueN4I3x9LX3iKSySugV3MoEbwRXjDEINHnGnnD70tJXHKjLbBPQ3iMMyrqiT7jz.ykMRc8HIS8pEL6o4v.FtgU+U4vIctsR+VW.lspXxVC06HXVl0wRCDBei3rwDsTDZMVgcKElzNZ6emqKbafvldHeVDY6MXyOq1ufnJer+DfBsJFjSPl2WWG0VWPNoI3v9O7TbbGkj92WKUlPyKVWLd5jMxqSy74zJqljzJVJksLI1Mgg2iX7EzJKhVXATG+dpkUlcLNgiyxu9Vfy8r7S3bbnt5BwTtXMU7YZtCUITh1gVUBtaVOuLwwYXSAadCGq1EgXSkMxNWEh1sIvMUqHdkinEYN8Aahl3iabUTpJ.C1Fj9X8Q1JGt2OpVZMQ.N1iUR3fJNrCQyoOQXziDxOenEeZVoNIuSqwYUlDsyF3pIIWCqi2VzBeU33DZfo3DNdK+xeA7ytLX3CAT90jzUw4boBdyWON2tpDNHc.LBI+IQ0r.ccHGvIhn3C0i7PuSSbsk.6lEYtG7bpnwJcvYPSfVasdtm5+RFjuPL7T9XJ1b3eKRvseO0ygbPQYJmUSXaxR1QgS7X71hE2K4BW6s.q70x7y4p9Qv4NEnukBEzq1LqdBfn94dlkedg+2l4+VUBGgIKrBAutpQ9itUCkNFD88HwX27jJvth55dWzxbPfUH.qKZmvnFwTXCQKkYkpL9ZmTnLVtVQAbblb3GcsMwhe8HHB09GcVg7zj5cQcwSP3osdnGrWNGa2ThFxgG6gBwzuiXbVhdxjsQQZE7lplYVtUPh7O.jC53QaoMIHXWSQwuKdchH.aJzA5INCex7Y9Cvz0qk5TPDC7yT8hbqwOS4xZk07ui.g5P4hY25IMMSISfnBVzajEm6OsIFYyg4pj8hfVCqzoUlq6Zo9r6CpgdJfvOxNLeF6Jv+QVnMRSBLQ5CxAOQ9TAb+1JItD5sVwzTERKkY3R9EtzRKg.mtgtPPAq6axhe70Em8IdPlpp.hnETizvcoWOUFt.OmF9hh0rohj7a8DnLcgMmDQgiB0POEdZaC7XxZPKgQaBwrU8g+9q1J2vL.BE.wNiTD.pq1HbFWLTyJgYpJl9qUzjxvsSk7dJKNC6GhMRIfIkW8RuCOPssqV6tZrkEsiUmBQQiBYIigGzci7bxFvfkC23mqT1KtueeBtm6JDDz2NlhgBLl.bkS0vRd2XbSphXPF+jTJ3AoZdEcSnFvDvja+8VGK6h05ZK9O7Zkyh1ZPLvSjjEbPbWtqm2VEGIBNO5ImtaN7ymVC7nOVHHRFlo8tRhCH4lmohmXgI3lk8liwjEVA7jh5XAlZQLfiAJYzfqKhcwZbYRb9OJDVCVgOTC8jo4bG.2oa4rRmjDzX4pb5EGlNB+jaJNe5GFDxvTO1ID1g+zijE+56JNWlLONCQNHAdcUKLe8Fv16Qir+GGVCvtfX81VX2yp0zlBiuHnF1Tnrr5ESOUY70JC8TKXFNEy.qN.m34jjO9CBu0SvVPI+4GOK9QWSLljMWtPQtf1vRUIX1oJiV54vvY.SLM4s8kR9tK1MsbWEHzFHqBvYvShUpTbu10SbAjuVwM5T.srFAWz0nIYhtlAW2ZCvkc8wX3sFjqVkOg0Rpzwk6xsbpMbA3LjIgwIz10jAsqB61VuvVrX0IwzygibelBuAI39oJRJLLLW+LaUw70ejKK4C5Zsl48mRQgaTwrUkPdZAU3jhYnqfUDHBxQbVXBUf2JLZ2H18ufqMoPj+AibfSfEXpiGQVKFofwZCyzbJlu9axbITHDP0kYYFNkP+MJhqf6zrdVhHINC8zgH8a2N4A6QVw5Vz5TH68ghsvQxC5tQdMYSXrZNZaXN5tn.DsVAWgp.Fta.RIr7X1p4ePbTCbBXyanX0oXOwZVdOxR9WfFsvA0PlDIxae31cKmk4jD+F3VkExHEY0oq4RU4w4XyADBdEUi7.5ZP1ue.zmiBcZmF6IV1x6gHPKX0XbBgyPNUpIbwLS2J3qTIIpQxUJJncjQOEJtHxCoEdaUybmoVOt4ueHK8HwZzHQyVVbs6dwdnO5Doyjn1EandhugOYVoufba5xYiRKYancSRdA3C+FKKWkjes6Zotb6GNC8zvH8k1i6dtkL+d1uZGBug64lSew2PNM9XofeOURRkncK2YkEpxQycpqf0kUd3anmIFeY6s9Y2CX2qsXOJAZEFu4Uw0ESA6Gpgbx7LllX9TMBoC9QhOjzrxxzcqfOxQgyv9gnCW.VcRrhcOAKu0vdTBTX2xZM2XbQVzgB896yBz0vqHqm.BIBoh+fsZVhsUbF3IhM2AhUmDgPjNCK6YwtjT528g27LqERTC7Dw0ME28F9PJzWPVssUVntQTCdhXK9P7xvi0tcsb72cfukPfhze1UzXjAwYHmJ0krdtg59Ju5bsziDQoiGiIEVLH9VB4A6ochzA38A2vEiS.bF7IQ89ykD8XnH6+3vXcYOUrdaM7sDMvN.cJLg6MN6+4C9ifQEd2ZBB1QfGAtoueK6AEj1AAfIE5nkl9S9gdOsy1tDs6Cuy2tfXKqMiukRdv2xrA9cQrWBrah8RfcSrWBrah8RfcSrWBrahc805v+eF9+TunF7l1RvN9.....jTQNQjqBAlf" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "supervp.scrub~ mygf.1 1 2250 0 4 @transients on @shapeinv off @envtrans on @maxfreq 200 @remix on",
									"linecount" : 7,
									"outlettype" : [ "signal", "" ],
									"patching_rect" : [ 57.0, 381.0, 158.0, 151.0 ],
									"id" : "obj-121",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 18.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "IRCAM - Centre Pompidou",
									"patching_rect" : [ 116.0, 103.0, 126.0, 17.0 ],
									"id" : "obj-122",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "spectral envelope transformation (in cent)",
									"patching_rect" : [ 581.0, 147.0, 201.0, 17.0 ],
									"id" : "obj-123",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pitch transposition (in cent)",
									"patching_rect" : [ 582.0, 128.0, 135.0, 17.0 ],
									"id" : "obj-124",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "relax",
									"patching_rect" : [ 424.0, 352.0, 31.0, 17.0 ],
									"id" : "obj-125",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "trans",
									"patching_rect" : [ 387.0, 352.0, 31.0, 17.0 ],
									"id" : "obj-126",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "noise",
									"patching_rect" : [ 351.0, 352.0, 31.0, 17.0 ],
									"id" : "obj-127",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"patching_rect" : [ 428.0, 244.0, 19.0, 86.0 ],
									"id" : "obj-128",
									"size" : 101.0,
									"orientation" : 2,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.01",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 391.0, 313.0, 41.0, 17.0 ],
									"id" : "obj-129",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"patching_rect" : [ 391.0, 244.0, 19.0, 86.0 ],
									"id" : "obj-130",
									"size" : 101.0,
									"orientation" : 2,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.01",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 354.0, 313.0, 41.0, 17.0 ],
									"id" : "obj-131",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"patching_rect" : [ 354.0, 244.0, 19.0, 86.0 ],
									"id" : "obj-132",
									"size" : 101.0,
									"orientation" : 2,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.01",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 317.0, 313.0, 41.0, 17.0 ],
									"id" : "obj-133",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"patching_rect" : [ 317.0, 244.0, 19.0, 86.0 ],
									"id" : "obj-134",
									"size" : 101.0,
									"orientation" : 2,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sinusoids",
									"patching_rect" : [ 301.0, 352.0, 51.0, 17.0 ],
									"id" : "obj-135",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 101",
									"outlettype" : [ "" ],
									"patching_rect" : [ 317.0, 244.0, 72.0, 17.0 ],
									"id" : "obj-136",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "phase vocoder configuration",
									"patching_rect" : [ 534.0, 234.0, 181.0, 20.0 ],
									"id" : "obj-137",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "and transients",
									"patching_rect" : [ 243.0, 310.0, 74.0, 17.0 ],
									"id" : "obj-138",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"border" : 1,
									"bgcolor" : [ 0.968627, 0.968627, 0.968627, 1.0 ],
									"patching_rect" : [ 544.0, 337.0, 224.0, 67.0 ],
									"id" : "obj-139",
									"rounded" : 5,
									"bordercolor" : [ 0.937255, 0.937255, 0.937255, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-99", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-103", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-121", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 1 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 1 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-40", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-97", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-101", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-128", 0 ],
									"destination" : [ "obj-40", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-129", 0 ],
									"destination" : [ "obj-40", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-130", 0 ],
									"destination" : [ "obj-129", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-136", 0 ],
									"destination" : [ "obj-130", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 0 ],
									"destination" : [ "obj-98", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-101", 0 ],
									"destination" : [ "obj-102", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-131", 0 ],
									"destination" : [ "obj-40", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-132", 0 ],
									"destination" : [ "obj-131", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-136", 0 ],
									"destination" : [ "obj-132", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-133", 0 ],
									"destination" : [ "obj-40", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-134", 0 ],
									"destination" : [ "obj-133", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-136", 0 ],
									"destination" : [ "obj-134", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-99", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-102", 0 ],
									"destination" : [ "obj-103", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line~",
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 9.0, 616.0, 34.0, 17.0 ],
					"id" : "obj-29",
					"fontname" : "Helvetica",
					"color" : [ 0.058824, 0.592157, 0.592157, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "append 20",
					"outlettype" : [ "" ],
					"patching_rect" : [ 9.0, 598.0, 62.0, 17.0 ],
					"id" : "obj-28",
					"fontname" : "Helvetica",
					"color" : [ 0.058824, 0.592157, 0.592157, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route time timenorm",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 8.0, 487.0, 370.0, 17.0 ],
					"id" : "obj-27",
					"fontname" : "Helvetica",
					"color" : [ 0.058824, 0.592157, 0.592157, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"border" : 6,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 1014.0, 147.0, 339.0, 186.0 ],
					"id" : "obj-95",
					"rounded" : 24,
					"background" : 1,
					"bordercolor" : [ 0.756863, 0.756863, 0.756863, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"border" : 6,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 380.0, 147.0, 624.0, 190.0 ],
					"id" : "obj-89",
					"rounded" : 24,
					"background" : 1,
					"bordercolor" : [ 0.756863, 0.756863, 0.756863, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-137", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-137", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-137", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 17.5, 156.5, 50.5, 156.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1369.5, 170.0, 1370.5, 170.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"color" : [ 0.058824, 0.592157, 0.592157, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"color" : [ 0.058824, 0.592157, 0.592157, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1173.5, 245.5, 1033.5, 245.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [ 589.5, 239.5, 624.5, 239.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [ 506.5, 187.5, 589.5, 187.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"color" : [ 0.058824, 0.592157, 0.592157, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 502.5, 532.0, 630.5, 532.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 152.5, 743.0, 18.5, 743.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [ 18.5, 742.0, 44.5, 742.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [ 152.5, 744.5, 44.5, 744.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 1 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-70", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1055.5, 710.5, 932.5, 710.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [ 933.5, 707.5, 932.5, 707.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-152", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"color" : [ 0.058824, 0.592157, 0.592157, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"color" : [ 0.058824, 0.592157, 0.592157, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"color" : [ 0.058824, 0.592157, 0.592157, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"color" : [ 0.058824, 0.592157, 0.592157, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"color" : [ 0.058824, 0.592157, 0.592157, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"color" : [ 0.058824, 0.592157, 0.592157, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"color" : [ 0.768627, 0.737255, 0.317647, 1.0 ],
					"midpoints" : [ 502.5, 679.0, 18.5, 679.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"color" : [ 0.768627, 0.737255, 0.317647, 1.0 ],
					"midpoints" : [ 630.5, 683.0, 152.5, 683.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 1 ],
					"destination" : [ "obj-47", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 1 ],
					"destination" : [ "obj-61", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [ 17.5, 457.5, 115.5, 457.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"color" : [ 0.058824, 0.592157, 0.592157, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 1 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"color" : [ 0.768627, 0.737255, 0.317647, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 33.5, 431.5, 17.5, 431.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1131.5, 298.0, 1033.5, 298.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-144", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [ 398.5, 238.25, 398.5, 238.25 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [ 506.5, 239.5, 398.5, 239.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [ 624.5, 239.25, 624.5, 239.25 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 0 ],
					"destination" : [ "obj-102", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 0 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [ 821.5, 222.5, 877.5, 222.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-110", 0 ],
					"destination" : [ "obj-117", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-110", 1 ],
					"destination" : [ "obj-116", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-110", 0 ],
					"hidden" : 0,
					"midpoints" : [ 821.5, 196.5, 938.5, 196.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-116", 0 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 0,
					"midpoints" : [ 979.5, 248.5, 937.5, 248.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-117", 0 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
