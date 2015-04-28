{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 21.0, 45.0, 691.0, 545.0 ],
		"bgcolor" : [ 0.27451, 0.368627, 0.45098, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 21.0, 45.0, 691.0, 545.0 ],
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
					"varname" : "Cosine[5]",
					"text" : "p Read/Write",
					"presentation_rect" : [ 465.0, 419.0, 0.0, 0.0 ],
					"numinlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 465.0, 420.0, 120.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-21",
					"fontsize" : 12.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 156.0, 282.0, 501.0, 363.0 ],
						"bgcolor" : [ 0.270588, 0.368627, 0.45098, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 156.0, 282.0, 501.0, 363.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 250.0, 28.0, 20.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "write yoyo.json",
									"presentation_rect" : [ 76.0, 257.0, 0.0, 0.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 111.0, 154.0, 90.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 260.0, 81.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "" ],
									"hidden" : 1,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"presentation_rect" : [ 360.0, 384.0, 0.0, 0.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 59.0, 322.0, 334.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 286.0, 334.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route read write",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 336.0, 258.0, 94.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-5",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "read yoyo.json",
									"presentation_rect" : [ 76.0, 220.0, 0.0, 0.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 95.0, 128.0, 89.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "write",
									"presentation_rect" : [ 76.0, 168.0, 0.0, 0.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 71.0, 87.0, 36.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b clear b",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 250.0, 51.0, 157.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-20",
									"outlettype" : [ "bang", "clear", "bang" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 388.0, 220.0, 50.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-21",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 11.595187
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p cputimer",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 388.0, 192.0, 65.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-23",
									"outlettype" : [ "float" ],
									"fontsize" : 11.595187,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 525.0, 182.0, 197.0, 237.0 ],
										"bglocked" : 0,
										"defrect" : [ 525.0, 182.0, 197.0, 237.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 11.595187,
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
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 34.0, 173.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"id" : "obj-1",
													"comment" : "interval in ms is reported here"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "b 1",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 107.0, 78.0, 27.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "bang" ],
													"fontsize" : 11.595187
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "cpuclock",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 107.0, 104.0, 56.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "float" ],
													"fontsize" : 11.595187
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 0.",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 34.0, 143.0, 32.5, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "float" ],
													"fontsize" : 11.595187
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "b 1",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 48.0, 78.0, 27.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "bang" ],
													"fontsize" : 11.595187
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "cpuclock",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 47.5, 104.0, 56.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "float" ],
													"fontsize" : 11.595187
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 107.0, 47.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "bang" ],
													"comment" : "bang stops timing and reports interval"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 48.0, 47.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "bang" ],
													"comment" : "bang starts timing interval"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 11.595187,
										"fontface" : 0,
										"fontsize" : 11.595187
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl group",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 336.0, 166.0, 53.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-24",
									"outlettype" : [ "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "random 1000",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 250.0, 136.0, 81.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-25",
									"outlettype" : [ "int" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi 30",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 250.0, 104.0, 46.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-26",
									"outlettype" : [ "bang", "bang", "int" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi 5000",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 250.0, 77.0, 105.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-27",
									"outlettype" : [ "bang", "bang", "int" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zsa.dist @append 1 @quiet 1",
									"linecount" : 2,
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 223.0, 210.0, 132.0, 34.0 ],
									"numoutlets" : 3,
									"id" : "obj-28",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 250.0, 6.0, 60.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-29",
									"outlettype" : [ "bang" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "read",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 57.0, 64.0, 35.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 120.5, 190.5, 232.5, 190.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 2 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 104.5, 190.5, 232.5, 190.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 80.5, 190.5, 232.5, 190.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 66.5, 190.5, 232.5, 190.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 2 ],
									"destination" : [ "obj-24", 0 ],
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
									"source" : [ "obj-20", 2 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 273.0, 129.0, 345.5, 129.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"midpoints" : [ 328.5, 198.0, 232.5, 198.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-28", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "Cosine[4]",
					"text" : "p Efficienty",
					"presentation_rect" : [ 328.0, 508.0, 0.0, 0.0 ],
					"numinlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 465.0, 390.0, 120.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-20",
					"fontsize" : 12.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 234.0, 281.0, 675.0, 341.0 ],
						"bgcolor" : [ 0.270588, 0.368627, 0.45098, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 234.0, 281.0, 675.0, 341.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
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
									"text" : "getkeys",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 409.0, 233.0, 52.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-33",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "By default, each time you add a new item {key, values}, zsa.dist needs to make sure the key is unique. If the append attribute is set to 1, it won't do the search and only add the new item to its memory. When the quiet attribute is set you zsa.dist doesn't output automatically the list of the keys when an item is added.",
									"linecount" : 3,
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 23.0, 6.0, 588.0, 48.0 ],
									"numoutlets" : 0,
									"id" : "obj-31",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b clear b",
									"presentation_rect" : [ 324.0, 48.0, 0.0, 0.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 436.0, 112.0, 157.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-20",
									"outlettype" : [ "bang", "clear", "bang" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"presentation_rect" : [ 462.0, 217.0, 0.0, 0.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 574.0, 281.0, 50.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-21",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 11.595187
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p cputimer",
									"presentation_rect" : [ 462.0, 189.0, 0.0, 0.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 574.0, 253.0, 65.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-23",
									"outlettype" : [ "float" ],
									"fontsize" : 11.595187,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 525.0, 182.0, 197.0, 237.0 ],
										"bglocked" : 0,
										"defrect" : [ 525.0, 182.0, 197.0, 237.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 11.595187,
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
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 34.0, 173.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"id" : "obj-1",
													"comment" : "interval in ms is reported here"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "b 1",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 107.0, 78.0, 27.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "bang" ],
													"fontsize" : 11.595187
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "cpuclock",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 107.0, 104.0, 56.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "float" ],
													"fontsize" : 11.595187
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 0.",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 34.0, 143.0, 32.5, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "float" ],
													"fontsize" : 11.595187
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "b 1",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 48.0, 78.0, 27.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "bang" ],
													"fontsize" : 11.595187
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "cpuclock",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 47.5, 104.0, 56.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "float" ],
													"fontsize" : 11.595187
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 107.0, 47.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "bang" ],
													"comment" : "bang stops timing and reports interval"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 48.0, 47.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "bang" ],
													"comment" : "bang starts timing interval"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 11.595187,
										"fontface" : 0,
										"fontsize" : 11.595187
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl group",
									"presentation_rect" : [ 410.0, 163.0, 0.0, 0.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 522.0, 227.0, 53.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-24",
									"outlettype" : [ "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "random 1000",
									"presentation_rect" : [ 324.0, 133.0, 0.0, 0.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 436.0, 197.0, 81.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-25",
									"outlettype" : [ "int" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi 30",
									"presentation_rect" : [ 324.0, 101.0, 0.0, 0.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 436.0, 165.0, 46.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-26",
									"outlettype" : [ "bang", "bang", "int" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi 5000",
									"presentation_rect" : [ 324.0, 74.0, 0.0, 0.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 436.0, 138.0, 105.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-27",
									"outlettype" : [ "bang", "bang", "int" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zsa.dist @append 1 @quiet 1",
									"linecount" : 2,
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 409.0, 271.0, 132.0, 34.0 ],
									"numoutlets" : 3,
									"id" : "obj-28",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"presentation_rect" : [ 324.0, 24.0, 0.0, 0.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 436.0, 88.0, 20.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-29",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b clear b",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 71.0, 112.0, 157.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-3",
									"outlettype" : [ "bang", "clear", "bang" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 209.0, 281.0, 50.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-9",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 11.595187
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p cputimer",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 209.0, 253.0, 65.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "float" ],
									"fontsize" : 11.595187,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 525.0, 182.0, 197.0, 237.0 ],
										"bglocked" : 0,
										"defrect" : [ 525.0, 182.0, 197.0, 237.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 11.595187,
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
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 34.0, 173.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"id" : "obj-1",
													"comment" : "interval in ms is reported here"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "b 1",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 107.0, 78.0, 27.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "bang" ],
													"fontsize" : 11.595187
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "cpuclock",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 107.0, 104.0, 56.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "float" ],
													"fontsize" : 11.595187
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 0.",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 34.0, 143.0, 32.5, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "float" ],
													"fontsize" : 11.595187
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "b 1",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 48.0, 78.0, 27.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "bang" ],
													"fontsize" : 11.595187
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "cpuclock",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 47.5, 104.0, 56.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "float" ],
													"fontsize" : 11.595187
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 107.0, 47.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "bang" ],
													"comment" : "bang stops timing and reports interval"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 48.0, 47.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "bang" ],
													"comment" : "bang starts timing interval"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 11.595187,
										"fontface" : 0,
										"fontsize" : 11.595187
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl group",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 157.0, 227.0, 53.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-14",
									"outlettype" : [ "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "random 1000",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 71.0, 197.0, 81.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-11",
									"outlettype" : [ "int" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi 30",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 71.0, 165.0, 46.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-10",
									"outlettype" : [ "bang", "bang", "int" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi 5000",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 71.0, 138.0, 105.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-7",
									"outlettype" : [ "bang", "bang", "int" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zsa.dist",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 112.0, 281.0, 64.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-5",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 71.0, 88.0, 20.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-22",
									"outlettype" : [ "bang" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-28", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"midpoints" : [ 514.5, 259.0, 418.5, 259.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 459.0, 190.0, 531.5, 190.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 2 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-20", 0 ],
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
									"source" : [ "obj-27", 2 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 2 ],
									"destination" : [ "obj-14", 0 ],
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
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 2 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 94.0, 190.0, 166.5, 190.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "zsa_open",
					"args" : [  ],
					"numinlets" : 0,
					"patching_rect" : [ 484.0, 11.0, 196.0, 51.0 ],
					"numoutlets" : 0,
					"id" : "obj-55",
					"name" : "zsa.open.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "Cosine[3]",
					"text" : "p Minkowsky",
					"numinlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 330.0, 390.0, 120.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-11",
					"fontsize" : 12.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 549.0, 121.0, 687.0, 495.0 ],
						"bgcolor" : [ 0.270588, 0.368627, 0.45098, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 549.0, 121.0, 687.0, 495.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
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
									"text" : "loadmess set 2",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 128.0, 235.0, 91.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"hidden" : 1,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 25.0, 433.0, 50.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-32",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p orderKeys",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 126.0, 357.0, 77.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-30",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 547.0, 420.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 547.0, 420.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
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
													"text" : "prepend setminmax",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 151.0, 328.0, 116.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0. 0.",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 151.0, 298.0, 101.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "maximum 0.",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 233.0, 266.0, 76.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-5",
													"outlettype" : [ "float", "int" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l l",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 69.0, 236.0, 183.0, 20.0 ],
													"numoutlets" : 3,
													"id" : "obj-3",
													"outlettype" : [ "", "", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "minimum 0.",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 151.0, 265.0, 76.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-2",
													"outlettype" : [ "float", "int" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "so we just do a little sorting which makes sense here because we have integers as key.",
													"linecount" : 2,
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 205.0, 118.0, 275.0, 34.0 ],
													"numoutlets" : 0,
													"id" : "obj-1",
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "The keys are ordered by time of arrival by default.",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 210.0, 84.0, 275.0, 20.0 ],
													"numoutlets" : 0,
													"id" : "obj-4",
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 69.0, 148.0, 75.5, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-26",
													"outlettype" : [ "bang", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 69.0, 179.0, 52.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-25",
													"outlettype" : [ "", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl lookup",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 69.0, 211.0, 76.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-20",
													"outlettype" : [ "", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl sort",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 126.0, 117.0, 43.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-11",
													"outlettype" : [ "", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route keys",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 126.0, 84.0, 66.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-10",
													"outlettype" : [ "", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 69.0, 47.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"id" : "obj-27",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 126.0, 47.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"id" : "obj-28",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 69.0, 369.5, 25.0, 25.0 ],
													"numoutlets" : 0,
													"id" : "obj-29",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 2 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 1 ],
													"destination" : [ "obj-20", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-25", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"numinlets" : 1,
									"size" : 4,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.997314, 1.473278 ],
									"patching_rect" : [ 126.0, 389.0, 116.0, 68.0 ],
									"numoutlets" : 2,
									"id" : "obj-1",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "u100000220",
									"text" : "autopattr",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 342.0, 15.0, 59.5, 20.0 ],
									"numoutlets" : 4,
									"id" : "obj-19",
									"outlettype" : [ "", "", "", "" ],
									"hidden" : 1,
									"fontsize" : 12.0,
									"restore" : 									{
										"multislider" : [ 0.027397, 0.068493, 0.123288, 0.150685, 0.205479, 0.273973, 0.356164, 0.438356, 0.479452, 0.520548, 0.630137, 0.712329, 0.767123, 0.808219, 0.821918, 0.849315, 0.863014, 0.876712, 0.876712, 0.890411, 0.917808, 0.931507, 0.958904, 0.972603, 1.0 ],
										"multislider[1]" : [ 1.0, 0.986301, 0.958904, 0.931507, 0.890411, 0.849315, 0.813699, 0.778082, 0.742466, 0.706849, 0.671233, 0.630137, 0.589041, 0.547945, 0.506849, 0.465753, 0.424658, 0.383562, 0.342466, 0.30137, 0.260274, 0.205479, 0.150685, 0.09589, 0.0 ],
										"multislider[2]" : [ 0.0, 0.109589, 0.39726, 0.438356, 0.575342, 0.794521, 0.863014, 0.945205, 1.0, 1.0, 1.0, 1.0, 0.986301, 0.890411, 0.780822, 0.732877, 0.684932, 0.589041, 0.493151, 0.410959, 0.328767, 0.246575, 0.178082, 0.109589, 0.0 ],
										"multislider[3]" : [ 0.931507, 0.890411, 0.863014, 0.794521, 0.726027, 0.671233, 0.630137, 0.424658, 0.452055, 0.438356, 0.273973, 0.178082, 0.068493, 0.027397, 0.082192, 0.150685, 0.205479, 0.287671, 0.356164, 0.438356, 0.60274, 0.849315, 0.986301, 1.0, 1.0 ]
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 4",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 473.0, 267.0, 65.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-15",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 3",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 266.0, 65.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-16",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"varname" : "multislider[3]",
									"presentation_rect" : [ 473.0, 251.0, 184.0, 75.0 ],
									"numinlets" : 1,
									"size" : 25,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 473.0, 180.0, 184.0, 75.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-17",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"varname" : "multislider[2]",
									"presentation_rect" : [ 277.0, 251.0, 184.0, 75.0 ],
									"numinlets" : 1,
									"size" : 25,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 277.0, 180.0, 184.0, 75.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-18",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 2",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 473.0, 143.0, 65.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 1",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 143.0, 65.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"varname" : "multislider[1]",
									"presentation_rect" : [ 473.0, 131.0, 184.0, 75.0 ],
									"numinlets" : 1,
									"size" : 25,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 473.0, 60.0, 184.0, 75.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-8",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"varname" : "multislider",
									"presentation_rect" : [ 277.0, 131.0, 184.0, 75.0 ],
									"numinlets" : 1,
									"size" : 25,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 277.0, 60.0, 184.0, 75.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-6",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zsa.dist @mode minkowsky",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 56.0, 326.0, 159.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-5",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"numinlets" : 1,
									"size" : 25,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 56.0, 60.0, 184.0, 75.0 ],
									"numoutlets" : 2,
									"id" : "obj-9",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 78.0, 296.0, 37.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-33",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "order $1",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 128.0, 296.0, 53.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"minimum" : 1,
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 128.0, 266.0, 50.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-3",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 2 ],
									"destination" : [ "obj-30", 1 ],
									"hidden" : 0,
									"midpoints" : [ 205.5, 351.0, 193.5, 351.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-32", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 482.5, 311.0, 205.5, 311.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 286.5, 311.0, 205.5, 311.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 482.5, 167.0, 205.5, 167.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 286.5, 167.0, 205.5, 167.0 ]
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "Cosine[2]",
					"text" : "p Kullback-Liebler",
					"numinlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 330.0, 479.0, 120.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-10",
					"fontsize" : 12.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 253.0, 200.0, 687.0, 495.0 ],
						"bgcolor" : [ 0.270588, 0.368627, 0.45098, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 253.0, 200.0, 687.0, 495.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
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
									"text" : "4",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 25.0, 433.0, 50.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-32",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p orderKeys",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 138.0, 360.0, 75.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-30",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 547.0, 420.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 547.0, 420.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
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
													"text" : "prepend setminmax",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 151.0, 328.0, 116.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0. 0.",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 151.0, 298.0, 101.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "maximum 0.",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 233.0, 266.0, 76.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-5",
													"outlettype" : [ "float", "int" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l l",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 69.0, 236.0, 183.0, 20.0 ],
													"numoutlets" : 3,
													"id" : "obj-3",
													"outlettype" : [ "", "", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "minimum 0.",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 151.0, 265.0, 76.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-2",
													"outlettype" : [ "float", "int" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "so we just do a little sorting which makes sense here because we have integers as key.",
													"linecount" : 2,
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 205.0, 118.0, 275.0, 34.0 ],
													"numoutlets" : 0,
													"id" : "obj-1",
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "The keys are ordered by time of arrival by default.",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 210.0, 84.0, 275.0, 20.0 ],
													"numoutlets" : 0,
													"id" : "obj-4",
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 69.0, 148.0, 75.5, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-26",
													"outlettype" : [ "bang", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 69.0, 179.0, 52.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-25",
													"outlettype" : [ "", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl lookup",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 69.0, 211.0, 76.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-20",
													"outlettype" : [ "", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl sort",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 126.0, 117.0, 43.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-11",
													"outlettype" : [ "", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route keys",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 126.0, 84.0, 66.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-10",
													"outlettype" : [ "", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 69.0, 47.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"id" : "obj-27",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 126.0, 47.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"id" : "obj-28",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 69.0, 369.5, 25.0, 25.0 ],
													"numoutlets" : 0,
													"id" : "obj-29",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-25", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 1 ],
													"destination" : [ "obj-20", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 2 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"numinlets" : 1,
									"size" : 4,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.381905, 2.388137 ],
									"patching_rect" : [ 138.0, 392.0, 116.0, 68.0 ],
									"numoutlets" : 2,
									"id" : "obj-1",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "u422000222",
									"text" : "autopattr",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 342.0, 15.0, 59.5, 20.0 ],
									"numoutlets" : 4,
									"id" : "obj-19",
									"outlettype" : [ "", "", "", "" ],
									"hidden" : 1,
									"fontsize" : 12.0,
									"restore" : 									{
										"multislider" : [ 0.027397, 0.068493, 0.123288, 0.150685, 0.205479, 0.273973, 0.356164, 0.438356, 0.479452, 0.520548, 0.630137, 0.726027, 0.767123, 0.808219, 0.821918, 0.849315, 0.863014, 0.876712, 0.876712, 0.890411, 0.917808, 0.931507, 0.958904, 0.972603, 1.0 ],
										"multislider[1]" : [ 1.0, 0.986301, 0.958904, 0.931507, 0.890411, 0.849315, 0.813699, 0.778082, 0.742466, 0.706849, 0.671233, 0.630137, 0.589041, 0.547945, 0.506849, 0.465753, 0.424658, 0.383562, 0.342466, 0.30137, 0.260274, 0.205479, 0.150685, 0.09589, 0.0 ],
										"multislider[2]" : [ 0.0, 0.109589, 0.39726, 0.438356, 0.575342, 0.794521, 0.863014, 0.945205, 1.0, 1.0, 1.0, 1.0, 0.986301, 0.890411, 0.780822, 0.732877, 0.684932, 0.589041, 0.493151, 0.410959, 0.328767, 0.246575, 0.178082, 0.109589, 0.0 ],
										"multislider[3]" : [ 0.931507, 0.890411, 0.863014, 0.794521, 0.726027, 0.671233, 0.630137, 0.424658, 0.452055, 0.438356, 0.273973, 0.178082, 0.068493, 0.027397, 0.082192, 0.150685, 0.205479, 0.287671, 0.356164, 0.438356, 0.60274, 0.849315, 0.986301, 1.0, 1.0 ]
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 4",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 473.0, 267.0, 65.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-15",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 3",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 266.0, 65.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-16",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"varname" : "multislider[3]",
									"presentation_rect" : [ 473.0, 251.0, 184.0, 75.0 ],
									"numinlets" : 1,
									"size" : 25,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 473.0, 180.0, 184.0, 75.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-17",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"varname" : "multislider[2]",
									"presentation_rect" : [ 277.0, 251.0, 184.0, 75.0 ],
									"numinlets" : 1,
									"size" : 25,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 277.0, 180.0, 184.0, 75.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-18",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 2",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 473.0, 143.0, 65.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 1",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 143.0, 65.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"varname" : "multislider[1]",
									"presentation_rect" : [ 473.0, 131.0, 184.0, 75.0 ],
									"numinlets" : 1,
									"size" : 25,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 473.0, 60.0, 184.0, 75.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-8",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"varname" : "multislider",
									"presentation_rect" : [ 277.0, 131.0, 184.0, 75.0 ],
									"numinlets" : 1,
									"size" : 25,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 277.0, 60.0, 184.0, 75.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-6",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zsa.dist @mode kullback-liebler",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 56.0, 326.0, 183.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-5",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"numinlets" : 1,
									"size" : 25,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 56.0, 60.0, 184.0, 75.0 ],
									"numoutlets" : 2,
									"id" : "obj-9",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 78.0, 296.0, 37.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-33",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 2 ],
									"destination" : [ "obj-30", 1 ],
									"hidden" : 0,
									"midpoints" : [ 229.5, 351.0, 203.5, 351.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-32", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 482.5, 311.0, 229.5, 311.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 286.5, 311.0, 229.5, 311.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 482.5, 167.0, 229.5, 167.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 286.5, 167.0, 229.5, 167.0 ]
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
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "Cosine[1]",
					"text" : "p Covariance",
					"numinlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 330.0, 449.0, 120.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-4",
					"fontsize" : 12.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 590.0, 227.0, 687.0, 495.0 ],
						"bgcolor" : [ 0.270588, 0.368627, 0.45098, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 590.0, 227.0, 687.0, 495.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
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
									"text" : "3",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 25.0, 433.0, 50.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-32",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p orderKeys",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 126.0, 357.0, 75.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-30",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 547.0, 420.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 547.0, 420.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
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
													"text" : "prepend setminmax",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 151.0, 328.0, 116.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0. 0.",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 151.0, 298.0, 101.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "maximum 0.",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 233.0, 266.0, 76.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-5",
													"outlettype" : [ "float", "int" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l l",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 69.0, 236.0, 183.0, 20.0 ],
													"numoutlets" : 3,
													"id" : "obj-3",
													"outlettype" : [ "", "", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "minimum 0.",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 151.0, 265.0, 76.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-2",
													"outlettype" : [ "float", "int" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "so we just do a little sorting which makes sense here because we have integers as key.",
													"linecount" : 2,
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 205.0, 118.0, 275.0, 34.0 ],
													"numoutlets" : 0,
													"id" : "obj-1",
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "The keys are ordered by time of arrival by default.",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 210.0, 84.0, 275.0, 20.0 ],
													"numoutlets" : 0,
													"id" : "obj-4",
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 69.0, 148.0, 75.5, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-26",
													"outlettype" : [ "bang", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 69.0, 179.0, 52.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-25",
													"outlettype" : [ "", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl lookup",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 69.0, 211.0, 76.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-20",
													"outlettype" : [ "", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl sort",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 126.0, 117.0, 43.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-11",
													"outlettype" : [ "", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route keys",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 126.0, 84.0, 66.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-10",
													"outlettype" : [ "", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 69.0, 47.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"id" : "obj-27",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 126.0, 47.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"id" : "obj-28",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 69.0, 369.5, 25.0, 25.0 ],
													"numoutlets" : 0,
													"id" : "obj-29",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-25", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 1 ],
													"destination" : [ "obj-20", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 2 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"numinlets" : 1,
									"size" : 4,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ -0.400833, 0.569877 ],
									"patching_rect" : [ 126.0, 389.0, 116.0, 68.0 ],
									"numoutlets" : 2,
									"id" : "obj-1",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "u021000224",
									"text" : "autopattr",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 342.0, 15.0, 59.5, 20.0 ],
									"numoutlets" : 4,
									"id" : "obj-19",
									"outlettype" : [ "", "", "", "" ],
									"hidden" : 1,
									"fontsize" : 12.0,
									"restore" : 									{
										"multislider" : [ 0.027397, 0.068493, 0.123288, 0.150685, 0.205479, 0.273973, 0.356164, 0.438356, 0.479452, 0.520548, 0.630137, 0.712329, 0.767123, 0.808219, 0.821918, 0.849315, 0.863014, 0.876712, 0.876712, 0.890411, 0.917808, 0.931507, 0.958904, 0.972603, 1.0 ],
										"multislider[1]" : [ 1.0, 0.986301, 0.958904, 0.931507, 0.890411, 0.849315, 0.813699, 0.778082, 0.742466, 0.706849, 0.671233, 0.630137, 0.589041, 0.547945, 0.506849, 0.465753, 0.424658, 0.383562, 0.342466, 0.30137, 0.260274, 0.205479, 0.150685, 0.09589, 0.0 ],
										"multislider[2]" : [ 0.0, 0.109589, 0.39726, 0.438356, 0.575342, 0.794521, 0.863014, 0.945205, 1.0, 1.0, 1.0, 1.0, 0.986301, 0.890411, 0.780822, 0.732877, 0.684932, 0.589041, 0.493151, 0.410959, 0.328767, 0.246575, 0.178082, 0.109589, 0.0 ],
										"multislider[3]" : [ 0.931507, 0.890411, 0.863014, 0.794521, 0.726027, 0.671233, 0.630137, 0.424658, 0.452055, 0.438356, 0.273973, 0.178082, 0.068493, 0.027397, 0.082192, 0.150685, 0.205479, 0.287671, 0.356164, 0.438356, 0.60274, 0.849315, 0.986301, 1.0, 1.0 ]
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 4",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 473.0, 267.0, 65.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-15",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 3",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 266.0, 65.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-16",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"varname" : "multislider[3]",
									"presentation_rect" : [ 473.0, 251.0, 184.0, 75.0 ],
									"numinlets" : 1,
									"size" : 25,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 473.0, 180.0, 184.0, 75.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-17",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"varname" : "multislider[2]",
									"presentation_rect" : [ 277.0, 251.0, 184.0, 75.0 ],
									"numinlets" : 1,
									"size" : 25,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 277.0, 180.0, 184.0, 75.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-18",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 2",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 473.0, 143.0, 65.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 1",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 143.0, 65.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"varname" : "multislider[1]",
									"presentation_rect" : [ 473.0, 131.0, 184.0, 75.0 ],
									"numinlets" : 1,
									"size" : 25,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 473.0, 60.0, 184.0, 75.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-8",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"varname" : "multislider",
									"presentation_rect" : [ 277.0, 131.0, 184.0, 75.0 ],
									"numinlets" : 1,
									"size" : 25,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 277.0, 60.0, 184.0, 75.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-6",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zsa.dist @mode covariance",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 56.0, 326.0, 158.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-5",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"numinlets" : 1,
									"size" : 25,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 56.0, 60.0, 184.0, 75.0 ],
									"numoutlets" : 2,
									"id" : "obj-9",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 78.0, 296.0, 37.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-33",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 286.5, 167.0, 204.5, 167.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 482.5, 167.0, 204.5, 167.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 286.5, 311.0, 204.5, 311.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 482.5, 311.0, 204.5, 311.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-32", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 2 ],
									"destination" : [ "obj-30", 1 ],
									"hidden" : 0,
									"midpoints" : [ 204.5, 351.0, 191.5, 351.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "Cosine",
					"text" : "p Cosine",
					"numinlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 330.0, 419.0, 120.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-2",
					"fontsize" : 12.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 549.0, 121.0, 687.0, 495.0 ],
						"bgcolor" : [ 0.270588, 0.368627, 0.45098, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 549.0, 121.0, 687.0, 495.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
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
									"text" : "1",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 25.0, 433.0, 50.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-32",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p orderKeys",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 114.0, 357.0, 77.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-30",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 547.0, 420.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 547.0, 420.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
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
													"text" : "prepend setminmax",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 151.0, 328.0, 116.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0. 0.",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 151.0, 298.0, 101.0, 20.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "maximum 0.",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 233.0, 266.0, 76.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-5",
													"outlettype" : [ "float", "int" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l l",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 69.0, 236.0, 183.0, 20.0 ],
													"numoutlets" : 3,
													"id" : "obj-3",
													"outlettype" : [ "", "", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "minimum 0.",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 151.0, 265.0, 76.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-2",
													"outlettype" : [ "float", "int" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "so we just do a little sorting which makes sense here because we have integers as key.",
													"linecount" : 2,
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 205.0, 118.0, 275.0, 34.0 ],
													"numoutlets" : 0,
													"id" : "obj-1",
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "The keys are ordered by time of arrival by default.",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 210.0, 84.0, 275.0, 20.0 ],
													"numoutlets" : 0,
													"id" : "obj-4",
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 69.0, 148.0, 75.5, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-26",
													"outlettype" : [ "bang", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 69.0, 179.0, 52.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-25",
													"outlettype" : [ "", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl lookup",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 69.0, 211.0, 76.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-20",
													"outlettype" : [ "", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl sort",
													"numinlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 126.0, 117.0, 43.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-11",
													"outlettype" : [ "", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route keys",
													"numinlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 126.0, 84.0, 66.0, 20.0 ],
													"numoutlets" : 2,
													"id" : "obj-10",
													"outlettype" : [ "", "" ],
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 69.0, 47.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"id" : "obj-27",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 126.0, 47.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"id" : "obj-28",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 69.0, 369.5, 25.0, 25.0 ],
													"numoutlets" : 0,
													"id" : "obj-29",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-25", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 1 ],
													"destination" : [ "obj-20", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 2 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"numinlets" : 1,
									"size" : 4,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.550495, 0.9949 ],
									"patching_rect" : [ 114.0, 389.0, 116.0, 68.0 ],
									"numoutlets" : 2,
									"id" : "obj-1",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "u616000226",
									"text" : "autopattr",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 342.0, 15.0, 59.5, 20.0 ],
									"numoutlets" : 4,
									"id" : "obj-19",
									"outlettype" : [ "", "", "", "" ],
									"hidden" : 1,
									"fontsize" : 12.0,
									"restore" : 									{
										"multislider" : [ 0.027397, 0.068493, 0.123288, 0.150685, 0.205479, 0.273973, 0.356164, 0.438356, 0.479452, 0.520548, 0.630137, 0.712329, 0.767123, 0.808219, 0.821918, 0.849315, 0.863014, 0.876712, 0.876712, 0.890411, 0.917808, 0.931507, 0.958904, 0.972603, 1.0 ],
										"multislider[1]" : [ 1.0, 0.986301, 0.958904, 0.931507, 0.890411, 0.849315, 0.813699, 0.778082, 0.742466, 0.706849, 0.671233, 0.630137, 0.589041, 0.547945, 0.506849, 0.465753, 0.424658, 0.383562, 0.342466, 0.30137, 0.260274, 0.205479, 0.150685, 0.09589, 0.0 ],
										"multislider[2]" : [ 0.0, 0.109589, 0.39726, 0.438356, 0.575342, 0.794521, 0.863014, 0.945205, 1.0, 1.0, 1.0, 1.0, 0.986301, 0.890411, 0.780822, 0.732877, 0.684932, 0.589041, 0.493151, 0.410959, 0.328767, 0.246575, 0.178082, 0.109589, 0.0 ],
										"multislider[3]" : [ 0.931507, 0.890411, 0.863014, 0.794521, 0.726027, 0.671233, 0.630137, 0.424658, 0.452055, 0.438356, 0.273973, 0.178082, 0.068493, 0.027397, 0.082192, 0.150685, 0.205479, 0.287671, 0.356164, 0.438356, 0.60274, 0.849315, 0.986301, 1.0, 1.0 ]
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 4",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 473.0, 267.0, 65.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-15",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 3",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 266.0, 65.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-16",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"varname" : "multislider[3]",
									"presentation_rect" : [ 473.0, 251.0, 184.0, 75.0 ],
									"numinlets" : 1,
									"size" : 25,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 473.0, 180.0, 184.0, 75.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-17",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"varname" : "multislider[2]",
									"presentation_rect" : [ 277.0, 251.0, 184.0, 75.0 ],
									"numinlets" : 1,
									"size" : 25,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 277.0, 180.0, 184.0, 75.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-18",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 2",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 473.0, 143.0, 65.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 1",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 143.0, 65.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"varname" : "multislider[1]",
									"presentation_rect" : [ 473.0, 131.0, 184.0, 75.0 ],
									"numinlets" : 1,
									"size" : 25,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 473.0, 60.0, 184.0, 75.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-8",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"varname" : "multislider",
									"presentation_rect" : [ 277.0, 131.0, 184.0, 75.0 ],
									"numinlets" : 1,
									"size" : 25,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 277.0, 60.0, 184.0, 75.0 ],
									"numoutlets" : 2,
									"presentation" : 1,
									"id" : "obj-6",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zsa.dist @mode cosine",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 56.0, 326.0, 135.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-5",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"numinlets" : 1,
									"size" : 25,
									"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 56.0, 60.0, 184.0, 75.0 ],
									"numoutlets" : 2,
									"id" : "obj-9",
									"contdata" : 1,
									"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 78.0, 296.0, 37.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-33",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 2 ],
									"destination" : [ "obj-30", 1 ],
									"hidden" : 0,
									"midpoints" : [ 181.5, 351.0, 181.5, 351.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-32", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 482.5, 311.0, 181.5, 311.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 286.5, 311.0, 181.5, 311.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 482.5, 167.0, 181.5, 167.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 286.5, 167.0, 181.5, 167.0 ]
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 10.0, 489.0, 50.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-32",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p orderKeys",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 76.0, 413.0, 75.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-30",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 547.0, 420.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 547.0, 420.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
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
									"text" : "prepend setminmax",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 151.0, 328.0, 116.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. 0.",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 151.0, 298.0, 101.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "maximum 0.",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 233.0, 266.0, 76.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-5",
									"outlettype" : [ "float", "int" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l l",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 69.0, 236.0, 183.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-3",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "minimum 0.",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 151.0, 265.0, 76.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-2",
									"outlettype" : [ "float", "int" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "so we just do a little sorting which makes sense here because we have integers as key.",
									"linecount" : 2,
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 205.0, 118.0, 275.0, 34.0 ],
									"numoutlets" : 0,
									"id" : "obj-1",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The keys are ordered by time of arrival by default.",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 210.0, 84.0, 275.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-4",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 69.0, 148.0, 75.5, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-26",
									"outlettype" : [ "bang", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 69.0, 179.0, 52.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-25",
									"outlettype" : [ "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl lookup",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 69.0, 211.0, 76.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-20",
									"outlettype" : [ "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl sort",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 126.0, 117.0, 43.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-11",
									"outlettype" : [ "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route keys",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 126.0, 84.0, 66.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-10",
									"outlettype" : [ "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 69.0, 47.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"id" : "obj-27",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 126.0, 47.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"id" : "obj-28",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 69.0, 369.5, 25.0, 25.0 ],
									"numoutlets" : 0,
									"id" : "obj-29",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-29", 0 ],
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 2 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numinlets" : 1,
					"size" : 4,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"setminmax" : [ 0.875684, 2.578874 ],
					"patching_rect" : [ 76.0, 445.0, 116.0, 68.0 ],
					"numoutlets" : 2,
					"id" : "obj-1",
					"contdata" : 1,
					"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "u011000228",
					"text" : "autopattr",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 327.0, 71.0, 59.5, 20.0 ],
					"numoutlets" : 4,
					"id" : "obj-19",
					"outlettype" : [ "", "", "", "" ],
					"hidden" : 1,
					"fontsize" : 12.0,
					"restore" : 					{
						"multislider" : [ 0.027397, 0.068493, 0.123288, 0.150685, 0.205479, 0.273973, 0.356164, 0.438356, 0.479452, 0.520548, 0.630137, 0.712329, 0.767123, 0.808219, 0.821918, 0.849315, 0.863014, 0.876712, 0.876712, 0.890411, 0.917808, 0.931507, 0.958904, 0.972603, 1.0 ],
						"multislider[1]" : [ 1.0, 0.986301, 0.958904, 0.931507, 0.890411, 0.849315, 0.813699, 0.778082, 0.742466, 0.706849, 0.671233, 0.630137, 0.589041, 0.547945, 0.506849, 0.465753, 0.424658, 0.383562, 0.342466, 0.30137, 0.260274, 0.205479, 0.150685, 0.09589, 0.0 ],
						"multislider[2]" : [ 0.123288, 0.232877, 0.39726, 0.438356, 0.575342, 0.794521, 0.863014, 0.945205, 0.958904, 0.945205, 0.945205, 0.917808, 0.876712, 0.863014, 0.780822, 0.732877, 0.684932, 0.589041, 0.493151, 0.410959, 0.328767, 0.246575, 0.178082, 0.109589, 0.109589 ],
						"multislider[3]" : [ 0.931507, 0.890411, 0.863014, 0.794521, 0.726027, 0.671233, 0.630137, 0.424658, 0.452055, 0.438356, 0.273973, 0.178082, 0.068493, 0.027397, 0.082192, 0.150685, 0.205479, 0.287671, 0.356164, 0.438356, 0.60274, 0.849315, 0.986301, 1.0, 1.0 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 4",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 458.0, 323.0, 65.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-15",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 3",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 262.0, 322.0, 65.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "multislider[3]",
					"presentation_rect" : [ 458.0, 236.0, 184.0, 75.0 ],
					"numinlets" : 1,
					"size" : 25,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"patching_rect" : [ 458.0, 236.0, 184.0, 75.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"id" : "obj-17",
					"contdata" : 1,
					"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "multislider[2]",
					"presentation_rect" : [ 262.0, 236.0, 184.0, 75.0 ],
					"numinlets" : 1,
					"size" : 25,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"patching_rect" : [ 262.0, 236.0, 184.0, 75.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"id" : "obj-18",
					"contdata" : 1,
					"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 2",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 458.0, 199.0, 65.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 262.0, 199.0, 65.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "multislider[1]",
					"presentation_rect" : [ 458.0, 116.0, 184.0, 75.0 ],
					"numinlets" : 1,
					"size" : 25,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"patching_rect" : [ 458.0, 116.0, 184.0, 75.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"id" : "obj-8",
					"contdata" : 1,
					"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "multislider",
					"presentation_rect" : [ 262.0, 116.0, 184.0, 75.0 ],
					"numinlets" : 1,
					"size" : 25,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"patching_rect" : [ 262.0, 116.0, 184.0, 75.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"id" : "obj-6",
					"contdata" : 1,
					"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zsa.dist",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 41.0, 382.0, 89.0, 20.0 ],
					"numoutlets" : 3,
					"id" : "obj-5",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numinlets" : 1,
					"size" : 25,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"patching_rect" : [ 41.0, 116.0, 184.0, 75.0 ],
					"numoutlets" : 2,
					"id" : "obj-9",
					"contdata" : 1,
					"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "zsa_seealso",
					"args" : [  ],
					"numinlets" : 0,
					"patching_rect" : [ 535.0, 480.0, 141.0, 51.0 ],
					"numoutlets" : 0,
					"id" : "obj-14",
					"name" : "zsa.seealso.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_description",
					"text" : "Find the closest list",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 7.0, 39.0, 371.0, 21.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 12.754705
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_title",
					"text" : "zsa.dist",
					"frgb" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 7.0, 9.0, 455.0, 30.0 ],
					"numoutlets" : 0,
					"id" : "obj-7",
					"textcolor" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"mode" : 1,
					"angle" : -88.349983,
					"grad1" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"background" : 1,
					"numinlets" : 1,
					"grad2" : [ 0.27451, 0.368627, 0.45098, 1.0 ],
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"patching_rect" : [ 7.0, 8.0, 473.0, 52.0 ],
					"numoutlets" : 0,
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 63.0, 352.0, 37.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-33",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [ 271.5, 223.0, 120.5, 223.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [ 467.5, 223.0, 120.5, 223.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [ 271.5, 367.0, 120.5, 367.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [ 467.5, 367.0, 120.5, 367.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 2 ],
					"destination" : [ "obj-30", 1 ],
					"hidden" : 0,
					"midpoints" : [ 120.5, 407.0, 141.5, 407.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-32", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
