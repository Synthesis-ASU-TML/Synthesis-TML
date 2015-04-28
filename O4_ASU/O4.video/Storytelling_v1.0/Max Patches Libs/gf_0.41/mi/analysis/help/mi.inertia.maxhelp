{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 335.0, 187.0, 548.0, 461.0 ],
		"bglocked" : 0,
		"defrect" : [ 335.0, 187.0, 548.0, 461.0 ],
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
					"text" : "Descriptors list:\ndx dy dz :  original acceleration data \nLPx LPy LPz : low pass filtered data\nHPx HPy HPz : high pass filtered data\nFREQx FREQy FREQz FREQmax : zero crossing\nDELTAx DELTAy DELTAz : delta values\nEx Ey Ez Eall  : energy (calculated as standard deviation)\nEpitch Eperiod : extimated pitch and periodicity factor",
					"linecount" : 8,
					"id" : "obj-15",
					"fontname" : "Arial",
					"patching_rect" : [ 238.0, 344.0, 293.0, 108.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "input: XYZ accelerations in [0,1] - XYZ",
					"linecount" : 2,
					"id" : "obj-2",
					"fontname" : "Arial",
					"patching_rect" : [ 51.0, 257.0, 192.0, 32.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "init channelnames",
					"id" : "obj-11",
					"fontname" : "Arial",
					"patching_rect" : [ 262.0, 197.0, 117.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"setstyle" : 1,
					"id" : "obj-10",
					"patching_rect" : [ 24.0, 137.0, 135.0, 85.0 ],
					"numinlets" : 1,
					"size" : 5,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-6",
					"patching_rect" : [ 24.0, 76.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p randomgesture",
					"id" : "obj-3",
					"fontname" : "Arial",
					"patching_rect" : [ 24.0, 106.0, 94.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 383.0, 210.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 383.0, 210.0 ],
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
									"text" : "/ 100.",
									"id" : "obj-30",
									"fontname" : "Arial",
									"patching_rect" : [ 314.0, 120.0, 38.0, 19.0 ],
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "drunk 100",
									"id" : "obj-31",
									"fontname" : "Arial",
									"patching_rect" : [ 314.0, 93.0, 59.0, 19.0 ],
									"numinlets" : 3,
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 100.",
									"id" : "obj-22",
									"fontname" : "Arial",
									"patching_rect" : [ 231.0, 121.0, 38.0, 19.0 ],
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "drunk 100",
									"id" : "obj-23",
									"fontname" : "Arial",
									"patching_rect" : [ 231.0, 94.0, 59.0, 19.0 ],
									"numinlets" : 3,
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 100.",
									"id" : "obj-26",
									"fontname" : "Arial",
									"patching_rect" : [ 158.0, 121.0, 38.0, 19.0 ],
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "drunk 100",
									"id" : "obj-27",
									"fontname" : "Arial",
									"patching_rect" : [ 158.0, 94.0, 59.0, 19.0 ],
									"numinlets" : 3,
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 100.",
									"id" : "obj-18",
									"fontname" : "Arial",
									"patching_rect" : [ 84.0, 121.0, 38.0, 19.0 ],
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "drunk 100",
									"id" : "obj-19",
									"fontname" : "Arial",
									"patching_rect" : [ 84.0, 94.0, 59.0, 19.0 ],
									"numinlets" : 3,
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-15",
									"patching_rect" : [ 11.0, 179.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack f f f f f",
									"id" : "obj-14",
									"fontname" : "Arial",
									"patching_rect" : [ 11.0, 150.0, 321.0, 19.0 ],
									"numinlets" : 5,
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 5",
									"id" : "obj-12",
									"fontname" : "Arial",
									"patching_rect" : [ 11.0, 71.0, 48.0, 19.0 ],
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 100.",
									"id" : "obj-10",
									"fontname" : "Arial",
									"patching_rect" : [ 11.0, 121.0, 38.0, 19.0 ],
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"id" : "obj-4",
									"patching_rect" : [ 11.0, 47.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-1",
									"patching_rect" : [ 11.0, 10.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "drunk 100",
									"id" : "obj-2",
									"fontname" : "Arial",
									"patching_rect" : [ 11.0, 94.0, 59.0, 19.0 ],
									"numinlets" : 3,
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 20.5, 91.0, 323.5, 91.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 20.5, 91.5, 240.5, 91.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 20.5, 91.5, 167.5, 91.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 20.5, 91.5, 93.5, 91.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-30", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-14", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-14", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-14", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 11.0,
						"fontface" : 0,
						"fontsize" : 11.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print GF",
					"id" : "obj-22",
					"fontname" : "Arial",
					"patching_rect" : [ 392.0, 210.0, 50.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r G.in",
					"id" : "obj-21",
					"fontname" : "Arial",
					"patching_rect" : [ 392.0, 187.0, 37.0, 19.0 ],
					"numinlets" : 0,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"setstyle" : 1,
					"id" : "obj-17",
					"patching_rect" : [ 24.0, 337.0, 203.0, 121.0 ],
					"numinlets" : 1,
					"size" : 22,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"id" : "obj-13",
					"fontname" : "Arial",
					"patching_rect" : [ 178.0, 161.0, 56.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "channelnames",
					"id" : "obj-9",
					"fontname" : "Arial",
					"patching_rect" : [ 178.0, 198.0, 82.0, 17.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mi.inertia G",
					"id" : "obj-1",
					"fontname" : "Arial",
					"patching_rect" : [ 24.0, 310.0, 83.0, 23.0 ],
					"numinlets" : 1,
					"fontsize" : 14.0,
					"color" : [ 1.0, 0.0, 0.0, 0.596078 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "argument : GF name",
					"id" : "obj-7",
					"fontname" : "Arial",
					"patching_rect" : [ 108.0, 314.0, 117.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "mi.inertia",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"patching_rect" : [ 7.0, 4.0, 103.0, 30.0 ],
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
					"text" : "inertial sensors descriptors bundle",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"id" : "obj-90",
					"fontname" : "Arial",
					"patching_rect" : [ 7.0, 32.0, 204.0, 21.0 ],
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
					"patching_rect" : [ 2.0, 1.0, 542.0, 56.0 ],
					"numinlets" : 1,
					"background" : 1,
					"numoutlets" : 0,
					"grad1" : [ 0.407843, 0.658824, 0.909804, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 187.5, 243.0, 33.5, 243.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
