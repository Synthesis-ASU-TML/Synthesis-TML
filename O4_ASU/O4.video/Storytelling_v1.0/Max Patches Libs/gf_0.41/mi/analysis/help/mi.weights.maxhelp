{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 760.0, 347.0, 568.0, 306.0 ],
		"bglocked" : 0,
		"defrect" : [ 760.0, 347.0, 568.0, 306.0 ],
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
					"text" : "←",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontface" : 1,
					"fontsize" : 36.0,
					"id" : "obj-8",
					"numinlets" : 1,
					"patching_rect" : [ 362.0, 251.0, 46.0, 48.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "←",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontface" : 1,
					"fontsize" : 36.0,
					"id" : "obj-7",
					"numinlets" : 1,
					"patching_rect" : [ 362.0, 218.0, 46.0, 48.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "←",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontface" : 1,
					"fontsize" : 36.0,
					"id" : "obj-65",
					"numinlets" : 1,
					"patching_rect" : [ 362.0, 197.0, 46.0, 48.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p channelnames",
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-11",
					"numinlets" : 0,
					"patching_rect" : [ 433.0, 81.0, 91.0, 19.0 ],
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 542.0, 112.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 542.0, 112.0 ],
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
									"text" : "NB: channelnames informations can come by messages in the patch or sending the \"channelnames\" message to mi.inertia or mi.audiodescriptors abstractions",
									"linecount" : 2,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-7",
									"numinlets" : 1,
									"patching_rect" : [ 89.0, 27.0, 421.0, 32.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-8",
									"numinlets" : 1,
									"patching_rect" : [ 27.0, 34.0, 56.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "channels 5, channelnames X Y Z energy pitch",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"numinlets" : 2,
									"patching_rect" : [ 27.0, 60.0, 255.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s G.in",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-5",
									"numinlets" : 1,
									"patching_rect" : [ 27.0, 82.0, 39.0, 19.0 ],
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontsize" : 11.0,
						"fontface" : 0,
						"fontsize" : 11.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Incoming descriptors",
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-1",
					"numinlets" : 1,
					"patching_rect" : [ 33.0, 115.0, 117.0, 19.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Input",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-25",
					"numinlets" : 1,
					"patching_rect" : [ 52.0, 182.0, 52.0, 23.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "↓",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontface" : 1,
					"fontsize" : 36.0,
					"id" : "obj-26",
					"numinlets" : 1,
					"patching_rect" : [ 30.0, 163.0, 38.0, 48.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "click to enable channels",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-21",
					"numinlets" : 1,
					"patching_rect" : [ 403.0, 215.0, 127.0, 19.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "GF weights",
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-20",
					"numinlets" : 1,
					"patching_rect" : [ 404.0, 266.0, 66.0, 19.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "data preview",
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-19",
					"numinlets" : 1,
					"patching_rect" : [ 403.0, 236.0, 73.0, 19.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-13",
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 67.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p random5",
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-9",
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 90.0, 63.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 469.0, 271.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 469.0, 271.0 ],
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
									"text" : "line 0.",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-17",
									"numinlets" : 3,
									"patching_rect" : [ 342.0, 170.0, 58.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "line 0.",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-18",
									"numinlets" : 3,
									"patching_rect" : [ 266.0, 175.0, 58.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append 400",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-19",
									"numinlets" : 1,
									"patching_rect" : [ 357.0, 142.0, 69.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 100.",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-20",
									"numinlets" : 2,
									"patching_rect" : [ 353.0, 115.0, 38.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "random 100",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-21",
									"numinlets" : 2,
									"patching_rect" : [ 337.0, 90.0, 69.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append 400",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-22",
									"numinlets" : 1,
									"patching_rect" : [ 277.0, 142.0, 69.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 100.",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-23",
									"numinlets" : 2,
									"patching_rect" : [ 273.0, 115.0, 38.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "random 100",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-24",
									"numinlets" : 2,
									"patching_rect" : [ 257.0, 90.0, 69.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "line 0.",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-16",
									"numinlets" : 3,
									"patching_rect" : [ 180.0, 169.0, 58.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "line 0.",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-15",
									"numinlets" : 3,
									"patching_rect" : [ 106.0, 172.0, 58.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "line 0.",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-14",
									"numinlets" : 3,
									"patching_rect" : [ 18.0, 171.0, 58.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append 400",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-11",
									"numinlets" : 1,
									"patching_rect" : [ 195.0, 141.0, 69.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 100.",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-12",
									"numinlets" : 2,
									"patching_rect" : [ 191.0, 114.0, 38.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "random 100",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-13",
									"numinlets" : 2,
									"patching_rect" : [ 175.0, 89.0, 69.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append 400",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-8",
									"numinlets" : 1,
									"patching_rect" : [ 115.0, 141.0, 69.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 100.",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-9",
									"numinlets" : 2,
									"patching_rect" : [ 111.0, 114.0, 38.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "random 100",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-10",
									"numinlets" : 2,
									"patching_rect" : [ 95.0, 89.0, 69.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-7",
									"numinlets" : 1,
									"patching_rect" : [ 18.0, 221.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack f f f f f",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-6",
									"numinlets" : 5,
									"patching_rect" : [ 14.0, 199.0, 348.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append 400",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-5",
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 141.0, 69.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 100.",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-4",
									"numinlets" : 2,
									"patching_rect" : [ 15.0, 114.0, 38.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 400",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-3",
									"numinlets" : 2,
									"patching_rect" : [ 15.0, 63.0, 60.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "random 100",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-2",
									"numinlets" : 2,
									"patching_rect" : [ 15.0, 89.0, 69.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-1",
									"numinlets" : 0,
									"patching_rect" : [ 15.0, 23.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 24.5, 85.5, 346.5, 85.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 24.5, 85.5, 266.5, 85.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-6", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-6", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-6", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-6", 1 ],
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
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-23", 0 ],
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
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 24.5, 84.5, 184.5, 84.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 24.5, 85.0, 104.5, 85.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontsize" : 11.0,
						"fontface" : 0,
						"fontsize" : 11.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "mi.weights",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontname" : "Arial",
					"fontface" : 3,
					"fontsize" : 20.871338,
					"id" : "obj-4",
					"numinlets" : 1,
					"patching_rect" : [ 7.0, 4.0, 118.0, 30.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_digest",
					"text" : "descriptors chooser interface",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.754705,
					"id" : "obj-90",
					"numinlets" : 1,
					"patching_rect" : [ 7.0, 32.0, 174.0, 21.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"args" : [ "G" ],
					"id" : "obj-2",
					"numinlets" : 1,
					"name" : "mi.weights.maxpat",
					"patching_rect" : [ 20.0, 215.0, 410.0, 85.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"border" : 3,
					"bordercolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 213.0, 344.0, 89.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"grad2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"mode" : 1,
					"id" : "obj-117",
					"background" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 2.0, 1.0, 565.0, 59.0 ],
					"numoutlets" : 0,
					"grad1" : [ 0.407843, 0.658824, 0.909804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "200",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"numinlets" : 2,
					"patching_rect" : [ 283.0, 99.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "320",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"numinlets" : 2,
					"patching_rect" : [ 251.0, 98.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 290",
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-16",
					"numinlets" : 1,
					"patching_rect" : [ 171.0, 98.0, 79.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "horizontal length",
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-3",
					"numinlets" : 1,
					"patching_rect" : [ 193.0, 69.0, 91.0, 19.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"numinlets" : 1,
					"patching_rect" : [ 171.0, 121.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "dim $1",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"numinlets" : 2,
					"patching_rect" : [ 171.0, 148.0, 47.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 180.5, 169.0, 29.5, 169.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 260.5, 118.0, 180.5, 118.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 292.5, 118.5, 180.5, 118.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
