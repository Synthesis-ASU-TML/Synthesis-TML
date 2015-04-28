{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 411.0, 44.0, 783.0, 534.0 ],
		"bgcolor" : [ 0.368627, 0.368627, 0.368627, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 411.0, 44.0, 783.0, 534.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 3.0, 3.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 277.0, 346.0, 55.0, 20.0 ],
					"text" : "r 2mng2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 295.0, 80.0, 55.0, 20.0 ],
					"text" : "r 2mng1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-56",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 285.0, 385.0, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.0, 406.0, 18.0, 20.0 ],
					"text" : "V"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-54",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 264.0, 384.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 253.0, 406.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 262.0, 405.0, 41.0, 20.0 ],
					"text" : "gate~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 337.0, 417.0, 100.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 309.0, 460.0, 42.0, 41.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-54", "toggle", "int", 1 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-49",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 252.0, 116.0, 69.0, 34.0 ],
					"text" : "prepend /audio/gain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 253.0, 93.0, 31.0, 20.0 ],
					"text" : "r s8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-46",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 250.0, 37.0, 69.0, 34.0 ],
					"text" : "prepend /audio/gain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 251.0, 14.0, 31.0, 20.0 ],
					"text" : "r s7"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 314.0, 452.0, 117.0, 20.0 ],
					"text" : "prepend /audio/gain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 307.0, 433.0, 31.0, 20.0 ],
					"text" : "r s6"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.470588, 0.407843, 0.690196, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 321.0, 597.0, 87.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 162.0, 406.0, 87.0, 21.0 ],
					"text" : "Spat_Oper"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.470588, 0.407843, 0.690196, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-38",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 236.0, 598.0, 44.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 113.0, 406.0, 44.0, 21.0 ],
					"text" : "Circ"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 175.0, 599.0, 37.0, 20.0 ],
					"text" : "s out"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 540.0, 551.0, 393.0, 323.0 ],
						"bglocked" : 0,
						"defrect" : [ 540.0, 551.0, 393.0, 323.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 3.0, 3.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 279.0, 187.0, 31.0, 20.0 ],
									"text" : "r s5"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-77",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 112.0, 58.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-76",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 14.0, 55.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-75",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 339.0, 33.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-74",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 188.0, 27.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-73",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 11.0, 302.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 310.0, 6.0, 76.0, 18.0 ],
									"text" : "Spat_Oper"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-26",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 225.0, 7.0, 40.0, 18.0 ],
									"text" : "Circ"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 50.0, 40.0, 558.0, 270.0 ],
										"bglocked" : 0,
										"defrect" : [ 50.0, 40.0, 558.0, 270.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 3.0, 3.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-1",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 83.0, 224.0, 28.0, 25.0 ],
													"text" : "open"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 83.0, 245.0, 45.0, 17.0 ],
													"text" : "pcontrol"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 83.0, 203.0, 20.0, 17.0 ],
													"text" : "t b"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-4",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 23.0, 224.0, 28.0, 25.0 ],
													"text" : "open"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 23.0, 245.0, 45.0, 17.0 ],
													"text" : "pcontrol"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 23.0, 203.0, 20.0, 17.0 ],
													"text" : "t b"
												}

											}
, 											{
												"box" : 												{
													"comment" : "open Spat_Oper window (anything)",
													"hidden" : 1,
													"id" : "obj-7",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 83.0, 161.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "open Circ window (anything)",
													"hidden" : 1,
													"id" : "obj-8",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 23.0, 161.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Spat~ high-level control messages",
													"id" : "obj-9",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 362.0, 186.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "From Spat_Oper to Spat~ rightmost inlet",
													"id" : "obj-10",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 182.0, 186.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-11",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 376.0, 28.0, 92.0, 27.0 ],
													"text" : "<- Double-click to open Circ interface"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-12",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 212.0, 108.0, 148.0, 17.0 ],
													"text" : "Double-click to open Spat_Oper"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-13",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 26.0, 22.0, 191.0, 38.0 ],
													"text" : "2D control interface that allows to control Azimuth, Distance, orientation -> and radiation for 3 independent sources."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-14",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 378.0, 143.0, 146.0, 48.0 ],
													"text" : "<- Right outlet reflects user's actions on the control interface by sending the corresponding high-level control messages."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-15",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 21.0, 90.0, 45.0, 27.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 220.0, 26.0, 152.0, 27.0 ],
													"text" : "Circ.3 source1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 220.0, 66.0, 152.0, 17.0 ],
													"text" : "Spat_Circ source1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 182.0, 122.0, 190.0, 27.0 ],
													"text" : "Spat_Oper source1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-19",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 30.0, 130.0, 149.0, 27.0 ],
													"text" : "High-level perceptual control -> interface for Spat~."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-20",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 373.0, 69.0, 144.0, 38.0 ],
													"text" : "<- Connection to a Circ window providing a 2-D graphic interface to drive Spat_OPer."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-21",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 201.0, 188.0, 131.0, 17.0 ],
													"text" : "<- To Spat~ rightmost inlet"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"hidden" : 1,
													"midpoints" : [ 30.5, 115.0, 191.5, 115.0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-18", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 207.0, 62.0, 98.0, 20.0 ],
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0
									}
,
									"text" : "p Spat_Control"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-38",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 131.0, 122.0, 34.0, 20.0 ],
									"text" : "Ch 4"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-39",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 92.0, 122.0, 34.0, 20.0 ],
									"text" : "Ch 3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-40",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 122.0, 34.0, 20.0 ],
									"text" : "Ch 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 1,
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 203.0, 137.0, 58.0, 20.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 1,
									"id" : "obj-42",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 203.0, 158.0, 32.0, 18.0 ],
									"text" : "127"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"orientation" : 2,
									"outlettype" : [ "" ],
									"patching_rect" : [ 164.0, 136.0, 38.0, 122.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 32,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.0, 269.0, 152.0, 20.0 ],
									"text" : "jcom.multi.in~"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
									"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
									"id" : "obj-51",
									"interval" : 15,
									"maxclass" : "meter~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 149.0, 136.0, 14.0, 122.0 ],
									"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
									"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "gain~",
									"numinlets" : 2,
									"numoutlets" : 2,
									"orientation" : 2,
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 125.0, 136.0, 22.0, 122.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
									"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
									"id" : "obj-53",
									"interval" : 15,
									"maxclass" : "meter~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 109.0, 136.0, 14.0, 122.0 ],
									"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
									"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "gain~",
									"numinlets" : 2,
									"numoutlets" : 2,
									"orientation" : 2,
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 85.0, 136.0, 22.0, 122.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
									"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
									"id" : "obj-55",
									"interval" : 15,
									"maxclass" : "meter~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 69.0, 136.0, 14.0, 122.0 ],
									"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
									"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "gain~",
									"numinlets" : 2,
									"numoutlets" : 2,
									"orientation" : 2,
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 45.0, 136.0, 22.0, 122.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
									"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
									"id" : "obj-57",
									"interval" : 15,
									"maxclass" : "meter~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 29.0, 136.0, 14.0, 122.0 ],
									"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
									"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "gain~",
									"numinlets" : 2,
									"numoutlets" : 2,
									"orientation" : 2,
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 5.0, 136.0, 22.0, 122.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 9,
									"outlettype" : [ "signal", "signal", "signal", "signal", "", "", "", "", "" ],
									"patching_rect" : [ 6.0, 91.0, 229.0, 20.0 ],
									"text" : "Spat2~ 2 8c 4r 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-60",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 203.0, 175.0, 41.0, 34.0 ],
									"text" : "Master Gain"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-67",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 12.0, 122.0, 34.0, 20.0 ],
									"text" : "Ch 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 2 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 3 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 2 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-59", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-59", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-59", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-77", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 178.0, 575.0, 59.5, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 55.0, 405.0, 53.0, 20.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}
,
					"text" : "p spat"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 13.0, 623.0, 179.0, 19.0 ],
					"text" : "make presets using cueManager :"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/cueManager" ],
					"id" : "obj-30",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.cueManager.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8.0, 646.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 448.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 821.0, 95.0, 302.0, 317.0 ],
						"bglocked" : 0,
						"defrect" : [ 821.0, 95.0, 302.0, 317.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 27.0, 60.0, 19.0 ],
									"text" : "r jcom.init"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 191.0, 194.0, 17.0 ],
									"text" : "/input~/soundfile/play 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 166.0, 68.0, 19.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 141.0, 210.0, 19.0 ],
									"text" : "jcom.receive jcom.remote.module.from"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 51.0, 131.0, 17.0 ],
									"text" : "/input%/source_mode 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 182.0, 19.0 ],
									"text" : "jcom.send jcom.remote.module.to"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-5", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 197.0, 624.0, 57.0, 19.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}
,
					"text" : "p presets"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 50.0, 84.0, 306.0, 144.0 ],
						"bglocked" : 0,
						"defrect" : [ 50.0, 84.0, 306.0, 144.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 3.0, 3.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 284.0, 191.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 143.0, 191.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 780.0, 44.0, 202.0, 267.0 ],
										"bglocked" : 0,
										"defrect" : [ 780.0, 44.0, 202.0, 267.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 45.0, 55.0, 103.0, 19.0 ],
													"text" : "jcom.oscroute /file"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "int" ],
													"patching_rect" : [ 45.0, 115.0, 80.0, 19.0 ],
													"text" : "t 1 l 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 45.0, 150.0, 20.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-4",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 45.0, 180.0, 103.0, 17.0 ],
													"text" : "/soundfile/play $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 45.0, 85.0, 132.0, 19.0 ],
													"text" : "prepend /soundfile/open"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-6",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 45.0, 20.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-7",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 45.0, 215.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-2", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-2", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 3.0, 28.0, 68.0, 19.0 ],
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}
,
									"text" : "p load_play"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "/input~" ],
									"id" : "obj-12",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jmod.input~.maxpat",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "signal", "signal" ],
									"patching_rect" : [ 3.0, 48.0, 300.0, 140.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.0, 2.0, 300.0, 140.0 ],
									"varname" : "/input~"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 3.0, 2.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-12", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-3", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 11.0, 562.0, 39.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 406.0, 39.0, 19.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}
,
					"text" : "p sf"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/fileBrowser1" ],
					"id" : "obj-27",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.fileBrowser.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 11.0, 488.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 330.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/filter~" ],
					"id" : "obj-3",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.filter~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 2.0, 259.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 168.0, 300.0, 70.0 ],
					"varname" : "/filter~[1]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/filter~" ],
					"id" : "obj-26",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.filter~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 1.0, 177.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 235.0, 300.0, 70.0 ],
					"varname" : "/filter~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 168.0, 453.0, 698.0, 256.0 ],
						"bglocked" : 0,
						"defrect" : [ 168.0, 453.0, 698.0, 256.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 3.0, 3.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 434.0, 201.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 434.0, 201.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 3.0, 3.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 148.0, 57.0, 20.0 ],
													"text" : "s 2mng2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 127.0, 130.0, 20.0 ],
													"text" : "prepend /params/pitch"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 106.0, 99.0, 20.0 ],
													"text" : "scale 0 127 0. 4."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 198.0, 142.0, 57.0, 20.0 ],
													"text" : "s 2mng2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 198.0, 121.0, 150.0, 20.0 ],
													"text" : "prepend /params/pitchVar"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 198.0, 100.0, 105.0, 20.0 ],
													"text" : "scale 0 127 0. 40."
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-34",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-35",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 198.0, 40.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 303.557678, 220.0, 32.5, 20.0 ],
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0
									}
,
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 313.0, 140.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 313.0, 140.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 3.0, 3.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 7.0, 114.0, 57.0, 20.0 ],
													"text" : "s 2mng1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 7.0, 93.0, 130.0, 20.0 ],
													"text" : "prepend /params/pitch"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 7.0, 72.0, 99.0, 20.0 ],
													"text" : "scale 0 127 0. 4."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 155.0, 108.0, 57.0, 20.0 ],
													"text" : "s 2mng1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 155.0, 87.0, 150.0, 20.0 ],
													"text" : "prepend /params/pitchVar"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 155.0, 66.0, 105.0, 20.0 ],
													"text" : "scale 0 127 0. 40."
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-34",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 7.0, 6.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-35",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 155.0, 6.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 253.189346, 220.0, 32.0, 20.0 ],
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0
									}
,
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 286.0, 125.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 286.0, 125.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 3.0, 3.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 7.0, 83.0, 57.0, 20.0 ],
													"text" : "s 2mng1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 7.0, 62.0, 92.0, 20.0 ],
													"text" : "prepend voices"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 7.0, 41.0, 99.0, 20.0 ],
													"text" : "scale 0 127 8 22"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 155.0, 77.0, 57.0, 20.0 ],
													"text" : "s 2mng2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 155.0, 56.0, 92.0, 20.0 ],
													"text" : "prepend voices"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 155.0, 35.0, 99.0, 20.0 ],
													"text" : "scale 0 127 8 22"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-34",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 7.0, 6.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-35",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 155.0, 6.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 7.51358, 236.45372, 55.0, 20.0 ],
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0
									}
,
									"text" : "p voices"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 313.0, 140.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 313.0, 140.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 3.0, 3.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 7.0, 114.0, 57.0, 20.0 ],
													"text" : "s 2mng1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 7.0, 93.0, 123.0, 20.0 ],
													"text" : "prepend delayLength"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 7.0, 72.0, 132.0, 20.0 ],
													"text" : "scale 0 127 200. 1000."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 155.0, 108.0, 57.0, 20.0 ],
													"text" : "s 2mng2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 155.0, 87.0, 123.0, 20.0 ],
													"text" : "prepend delayLength"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 155.0, 66.0, 132.0, 20.0 ],
													"text" : "scale 0 127 200. 1000."
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-34",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 7.0, 6.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-35",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 155.0, 6.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 28.0, 217.0, 61.938793, 20.0 ],
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0
									}
,
									"text" : "p delay"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 637.0, 220.0, 33.0, 20.0 ],
									"text" : "s s8"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 593.0, 220.0, 33.0, 20.0 ],
									"text" : "s s7"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 554.0, 220.0, 33.0, 20.0 ],
									"text" : "s s6"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 512.0, 220.0, 33.0, 20.0 ],
									"text" : "s s5"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 471.0, 220.0, 33.0, 20.0 ],
									"text" : "s s4"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 427.0, 220.0, 33.0, 20.0 ],
									"text" : "s s3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 388.0, 220.0, 33.0, 20.0 ],
									"text" : "s s2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 346.0, 220.0, 33.0, 20.0 ],
									"text" : "s s1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
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
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"hidden" : 1,
													"id" : "obj-3",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 53.0, 100.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-5",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 75.0, 139.0, 16.0, 15.0 ],
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 74.0, 109.0, 48.0, 17.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 157.0, 46.0, 17.0 ],
													"text" : "midiinfo"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-12",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 54.0, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-13",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 234.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 1 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 240.0, 3.0, 31.0, 17.0 ],
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0
									}
,
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"args" : [  ],
									"id" : "obj-11",
									"maxclass" : "bpatcher",
									"name" : "nav.io.ZeroSL.right.maxpat",
									"numinlets" : 1,
									"numoutlets" : 24,
									"outlettype" : [ "", "int", "int", "", "int", "int", "", "int", "int", "", "int", "int", "", "int", "int", "", "int", "int", "", "int", "int", "", "int", "int" ],
									"patching_rect" : [ 345.0, 23.0, 338.0, 192.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [  ],
									"id" : "obj-10",
									"maxclass" : "bpatcher",
									"name" : "nav.io.ZeroSL.left.maxpat",
									"numinlets" : 1,
									"numoutlets" : 40,
									"outlettype" : [ "int", "float", "int", "float", "", "int", "float", "int", "float", "", "int", "float", "int", "float", "", "int", "float", "int", "float", "", "int", "float", "int", "float", "", "int", "float", "int", "float", "", "int", "float", "int", "float", "", "int", "float", "int", "float", "" ],
									"patching_rect" : [ 2.0, 23.0, 342.0, 192.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 1050.0, 755.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 1050.0, 755.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-1",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 77.0, 907.0, 17.0 ],
													"text" : "+ The RemoteSL_Interface patch uses the [bpatcher] objects. Two files are embedded in the bpatchers: 1) RemoteSL_LeftSideModule.pat and 2) RemoteSL_RightSideModule.pat."
												}

											}
, 											{
												"box" : 												{
													"data" : [ 26229, "", "IBkSG0fBZn....PCIgDQRA..C7G..DvZHX....PXuAyJ....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6cuGcaddXmm+26EPRQPQJQp6WsjrsrTrUbbjcbbbcSS7sj1toS51oMSRSlNY2ssSmbZmrISmtmr6ImY54zYOsmzoGOYb6NMSuusooIMocZbZha6rdbiaZTTbTr0E6XKq6VhhThThW.v6k8O.AHHIHHdAddeAde42OmirItv2G7Efj34AWdgkjBE......xzbW7Q7I9DeBIIEFFpff.0au8F6WH777Zowqx2Wtb4Lx1Io5scE0Kuci80tWlnIyKtF+N8OuFGc0ousZ4DkKWEJTXYOOcq8sR5TWtSqWesRnqzE5JcgtPmvm7S9IkkjBejG8wz668+AzN1wNz22C9fJLTJHLXY+Fssrqd5N11xx1VVxp7M3JTNNNx1xRAgAx2e9siiss7CBp9+qrsjV3343XG4uOSscLUSNN1pjmW0yWNWWEDDT87FDDHIK455pRdkp60s1V1JLLTgy8jyV4xUfev7W+uLMV61aw8YpFqrMsjkbbcjmmW4sqkk778q98653nvv4eBlsscjuuec+YrV41LWW21tiJGWscUqbt4TPfe0uuJW+4UyswK22amnIamneaaT+8dYoH2UydcgI+6OQc60rc0NMky0UAgAxxZg+LTq76Rk7JIKYoPEthst3KqMy0IU11s6eWe91W4eWp1ws1wYI+LZX4qKkkToRdx1t4ustQmlisc0s0J0ZZ75q.QWzEcQWzUy1U6b4ek9dW74QgJVG+m64dtk9L+M4jStjqrA.....P5kqiqr6zWH......P7xOvmE+A.....j0YaYwh+......x5774Y9C.....Hyyw1lE+A.....j04GDrz81mKmm7S+Dw4kE..fX2O6O2GogmN2WG..RyVo6mim4O.....fUAZ5m4uJ9P+TeXM1XiEGWVRbiLxHp+96u5gmd5oyDsQWoKzU5Bck9LxHineuemOSj9d39559QWoKzU5Bcktzr2OmisSzW724N24ZoKTcild5o092+9qd3rRazU5BcktPWoOSO8zQ96Iq0eV71V5JcgtRWnqzkl8943y4O.....fUAx4liE+A.....j0UxqTzeYe1rN6YNi9RegOuN5QNRbMD008b3CqO7O8OyBd87ZRzkYQWsF5xrnqVSVsK..frnbt4huE+8D+5eJc0QGUqe3g0vCORbMLKvEuv40QOxQzzS8ozu3m3SDKiAcYNzUqitLG5p0kU6B..HKJVel+t5nipss8sqe9O1GOtFh5523W6WUm7DGO119zkYQWsF5xrnqVSVsK..frpXaweRR80WeJv2ONGh5NlIwXPWlaLShwftL2XlDiAcYtwLIFirXWIguzW3yqgFbP0ae8J+.oG7gdnN8EIiftRWnqzE5JcoarqXcweggR99Aw4PT2wLIFC5xbiYRLFzk4FyjXLnKyMlIwXjE6JI7E+7e9pe8cbfC1ULo.SftRWnqzE5Jcoarq3cweJT9AI6iHbnh+YEPWlcLShwftL2XlDiAcYtwLIFirXW...YMVVVw8y7Wn787hygntiYRLFzk4FyjXLnKyMlIwXPWlaLShwHK1E..PViqia7t3OEJ4GjrubfRjGPX5xniYRLFzk4FyjXLnKyMlIwXjI6B..HiwOvO9eYeFjzuWPRnWlSzk4FyjXLnKyMlIwXPWlaLShwHK1E..PVicb+x9TgI+6EjjZOb.cYtwLIFC5xbiYRLFzk4FyjXLxjcA..jw34G2OyegRAI8NBfDZuaGcYtwLIFC5xbiYRLFzk4FyjXLxhcA..j03Xam.6sOyfubfnKyNlIwXPWlaLShwftL2XlDiQVrK..frF+ff3+k8YR+dAIodntoKyMlIwXPWlaLShwftL2XlDiQlrK..fLnD3C48r2KGH5xriYRLFzk4FyjXLnKyMlIwXjE6B..HKJVW72jSNglY1YTu81abNLUciImTSN4Dw93PWlAc0dnKyftZOY0t...xZbrchuE+cGG3f5jm335y7j+miqgXYcOG9vw11ltLO5J5nKyithtrZW...YQw5myeejO5GUesuxSoSd7SDWCQccGG7.5Qd72Urs8oKyhtZMzkYQWslrZW...YQ4byEeK9q+96Wum26OpdOu23ZD5LnqzE5JcgtRWxpcA..jEUxqjr6zWH......P7JmaNV7G.....PVGOye......qBTpDK9C.....Hyq2d5kE+A.....j0EDFvh+......x5BBBYwe......YcNN1r3O.....frNGaGV7G.....PVWIOO41ouP...jVciabCchSbR43D8GK0+Uez+2Wvg+VequUj9988CzANvcn0t10F4wdkPWKEcUezUzQWKEcUeltKaaKV7G..Pq5nG8aqG3s9V05V2PI9Xe8qOg95O2you+u+Gx3aa5x7nqnitLO5J5xRcwh+...ZC4ymWqcsCHee+DerW6ZGP4ymOV11zk4QWQGcYdzUzkk5xyKfE+A..zpBCC0ryNqd9uy2QEKVLwF20st0o2vAOnBCCiksOcYVzUqgtLK5p0j05hE+A..zpBC0+327H5xW9xRJdl3Q8bkqLpbbbjhoI6PWlEc0hnKihtZQYntrrRnE+8PO3CrfC+LO6WuoO9JGWqb9iaz0xe4bwm2U57mDh6tpb5IYSUFy5c4gauV9tVoaGiSIwOGV47vsWwuPEpwG+Zx0M4erTG6piIYIM4jWWqcsCIKKKissoKyithN5x7nqnKK0kqiS7u3ukaBHM6wW4vQ87G2nq5e7UNb8lHZiN+ws3tqE+0IEt8p9G+J0UitcLNkD+bX8NbbKI5paYwdKVXnjsssrag8BbsMKKEFFpBEJHoIzfCtNisooqX.cEYzULfthrrTWd99oqW1m0ah.K9QEtacBBMRyzUZVm3YCKIr3txJ2lUaWK9YjIMe6X894vrXW09.KklUutpna51qvvP43XK2bI+cmZYIEDT9kCTwhEkuue4WhPF.cYdzUzQWlGcEcYotbrsSWK9qYdlyRiKzX4t72nWZnoEowaOZFql5JKz5J8LMkVab4Vfzx8L2lVTuGXkFc5cTggx11Q4by0AFbqpuWPBCC0zSOkV6ZGzLaZ5JFPWQFcECnqHKC0kePBr29rdOBzUlzUyb7qzyvWm5Y9Kt6Z4dexD2LUWR0eBZo8aujZ7yfTsecRzVR0UReaF+bXq2UiN83RR96WK972oEpxubf5DOhvxZg65Alc1YL1jcnqX.cEYzULfthrrVWIREK2cTG2GebKNu72ImbC2dE8iOqd6UVsqFc7wsj5xeR2WV8mCWIgggx11ti7HB666ujcA3kJUT4x0SausoKyithN5x7nqnKq0Up5k8I..P2jPEJaaKi8dKIJ788UXLsaGmtLO5J5nKyithtrTWN1Ivd6So5+R1oUdu50nWlVch2CHzEcQWwG5ht5F5ZEM2dAtNwt.7hEKEeejSQWFGc0BnKiitZAYnt7CRf81mQ8NqenG7Azq7pmVRRW3hWZY2N0d3NwNCE5Z9yOcQWlFcM+4mt5bc0LBCCkkkSG4QDtx3WKS7Rbpx1ktLO5J5aW5x7nqnucyJckyMWm8k8Y8ty7V4Q0sd6TA5jnqFitRFzUiQWIirZWUT48BR2vjBL5GpwzUrfth91ktLO5J5a2rRWk7J0YW72heDdq7+q7HBmVQWoKzU5BcktjU6phN46EjJieEtFbmQ.cEOnqnucoKyith91MqzUh7L+UuGs1F8n91n8.b068BRsGWkuNIdOgPWM9znK5pcPWM9znqtn8.nggxpC8dAox3WgQuLPWwC5JxaW5JFPWQd6lU5Jwdl+p2cRu3iqYti7lY6jjnq1e6jjnq1e6jjnq1e6jjxpcsRBCkrs5fOhvgy8eL7kA5JdPWQe6RWlGcE8saVoqRk5vurOA..R0BCkkUm48BhkU4wOTRVJFdjtoKihtZAzkwQWsfLTW81Sur3O..fVUnT42KH11crwuBaaC9HcK5JNPWQe6RWlGcE8saVoqfv.V7G..Pqp7t.bKY0I2KvEKuLmnq3.cE8sKcYdzUz2tYktBBBYwe...stxubfr6.Ohvg07eiisNcY5Qd9+abr0oKSOxy+eiisNcY5Qd9+abr0yJc43Xyh+...ZUy8fw1QlTfBWvNANytooqXXvoqHuooqXXvoqHuoyPc4X6vh+...ZUgyMq.aC9AJbjGeI45X16NmthGzUKrcoKiitZgsaFoqRddr3O..fVUnl68BhcmXRAgU+v+0Ov23aY5xznqVYKSWlFc0Ja4rRW11Vr3O..fVVX4c+1VcfGQ3xe1OIIYU8QF1bab5xznqVYiSWlFc0Ja7rSWr3O..f1P46L1RVpCLo.EN2KGoXXaSWleroqnusoKyO1zUz21Ynt775B9ndHe97ZcCMnFZnAUe81qxmOe0Sau64VzDSLolsPAMwDST8qSCnK5pa.cQWcCxpcIUdRA99dcjGQ3YmY1x6BxigsMcYdzUzQWlGcEcYst5HK9y00UadSaTaaaaU80auZ1BEzTSMkFa7qoyb1yKOeOII0Wu8p95qOMzfCpQ1ysHWWWMwDSpKekqnKekQ6DWzaH5ht5FPWzU2frZWKVnjtxnipQFYCZcqanDabO+4ufJVr3buZfJOs.eeei8YaEcYVzUqgtLK5p0jk5xxpCr3uMuoMp8tmx2A+kuxn53W7RZpolptm2IVzgGY3g0121V0sea2p1911pdkS+ZZhIlL1uL2LnK5pa.cQWcCxpcUWggx2OPG669ciu8y30Q4c9.1KXLCBL2jcnKyhtZQzkQQWsnLVWI1h+bcc0Aui8qgFZPc4qLpd0S+ZxyyaImuSdhST8q2vF1f1vF2X0CO13iqwFebkOedsu8bK5P24aPW3hWRu5oesDnf5itnK5J9PWzU2PWMR4WNPlcOKWyNtx2O1lHBcY9wktZssOcY1wktZsseVpqDYwe4ymWG7.6WtNN5XuvKtfGE2ydlyn+9m4Yz4N2YUu80mxOv.ZcqeXMyzSqqN5UzMl7FZ8qe85MbW2ktm27aVqa8qWSM0T5XuvKpsussp8tmaQCjOuN9IOUcmjAcQWzEcQWzUbw00UEJVriM98jKW0u1yyS4x0iQ1tzU7fthF5JdPWQSVpqbNtw+h+xmOuNzcdPUnPA8se9iU8NtO6YNi9y+beNs1gFTG7NuKcm28aTdddxyySEK4IuRkzV2wNjummJUpjd0W8U0e8S8k0ccn2n9Q9Q+Q0.CLftvEujt9DSpCcmGTG5NOnN1Kb7DahAzEcQWzEcks6pYbfCbG5Dm3jpXoRI9Xmy0U2xsrqpG1j6dyoKyithN5x7nqnKS0kUL+Q8fqqqN3A1uJTnvBtC6u5W4ozy+sNp9geu+SjqaN44UZEuy7Q13F0Pqa85JW900ux+t+c5G6m3mP288bOy8nCebcn67f51us8oiehSEmIQWzEcQWz0pftZVae6aWadyaVSN4jZ1YmUyN6LK7LL2cTGFFpfvPov4935MLTeleq+epd11x11pd2+P+PUOrkrp7AKU0Oeop7ux612rT+8ulE7d+HHHftnK5htnK5ZYUxqT7t3uCdGkeI.U6iD7m4252TaYaaS+y9PeHUpzBmLfkksbbbTe1tpjssrcbzLK5Sy90OxHZM82u9c+u9YzicoKo20O3OnlZpozwO4ozgty2f18t1oNyYOWblEcQWzEcQWY7thBWWW0e+qQ99kTtbCrzyPX4OmlJ+u4djaCC0Ut7qW8rjOe+ZfAxqJeXNU999sJOo.KqxGt5jBp+N8aS+LhRWzEcQWzU1pKq37Y9ayaZiZngFTG6EdwpWP+i+C9Cz124tzc+luG4UZtK7gk+fSz0MmbcqMz9q9USM0TZrqdUMYoxuGRbykSG7tNj9q+x+Upmd6QuyG9QzDSLoN64Nu10N2gt7kuRr84DEcQWzEcQWY6thpBEJnabiFrGI0pxGMvVxxpxDCrVx4w11VUlTP4iZ9ICTcajfeNSQWzU4ihthCzEcU9nR1tbcbkcrrgcc0d2ysnKekQq9l9+nG4Hx1wV268e+UOeAAAxyOPkuRX4CMe97ZW6d2ZW6d2UepOccc0sevCpu7e4eodkW4UjjzYN64zrEJna+1t03HK5htnK5htx3c0JbccUu81aiOSVVxxtxitqsrsW30EVRx1t7waaaIm49ZKa6U7QBNtPWzEcEenK5pizUXX7r3uMuox61tqrq4d5omVOy+e+20i+CN+qyUuRdpXwn8FmbvAGT21scaUmXfiiq13l2h9i989c0ktzEkjzK8xeOMzPCp74yafRVH5htjnK5JZnqzUWsBGGGM3fqSqacqek+7WplIGrviWkm.P0+Y0wljSEzknK5J1PWht5.cUx2KdV72111V0XiespuLf9ZekmRu82w6n5o6UxSyL6rsz1dMqoecG2wApd30NzP5ZW6Z5q+rOqN2YOilXhI0rEJnsuss1dQTGzUzQWzUyhthN5x7c0NxkqGs90OhVyZ5ekOyK5N5sz7SBn5DAh3jAbcim2IGzknqHfthF5RzUDztcYYYY9E+kOed0Wu8pKbwKU83dsSeZca6+NjjTXPflZpoaqwn+96W6Xm6r5g2vl1rN4INgN6YdM8xuzozEu3kzHCu91ZLVL5p0QWlCc05nKyIq1kIXYYoAFXsZ8qeDkO+.p2d6U4x0yJ+HE2hbbbTtb8n0rl9U970YmPfgPWlAc0dnKyftZOo4tbcyY9c3KaXjg0rEJnolZJIU9y4oJSHPRpPwhFY2u5V251z4N6YkmuuFXsqUW3rmQ27l2TRut9ad5ul9fevOnFZnAWvGzvsC5p8PWzUiPWsG5xLcYRtttM7Qn02eg6gScbc05VWysXVS8AWbqftJitnq3.cUFcEecUpTw33Y9q+EbGwm7DGW6+NleRAyL8L06aKxbcc0HirgpGtjmmldts80t90z23e3an9Vo2XlQ.c0dnKyftZOzkYjU6JIs3GgXaKakKWOM0+5lQWzU2.5ht5FzM1kqii4W72HCOrt7UtR0CO8TSocrycpvvPUrPQUpTzdy+2HgZ9OSMTXnbbbjiiibcbUgBEzwewWXIq5tUQWsO5p8QWsO5p8kU6B..HKyy22rK9qxddMOu4ui3ydlyXxgXA5qu9p9045oGM8LyTdhA1NpXwhx2ySu1q98Z6IFPWlAcQW0CcYFzEK.D..nQx4lyrK9y0s7SuYk2GHRRS2luo+iBKYIGaG43XIGGaYaaqhEKpyc1Wqsd+mPWwC5JZnq3AcEMY0t...x5J4UJd9ndnV6Z26NtGh4YYIGGKYa6T9eNNx11VdEKoKdgyYzIFPWF.c01nKCftZaY0t...xZL5h+JLaAIIMzPCV83ld54eDgM8t.0x602JyqTIM3ZGXtIDXKGGa4XaKGaGY6XKOuRZzKeoVZhAzkYPWzU8PWlAc0dcA..rZfQW72rEJrjiKe97UmXfiqibyYlOcI777zDW+5UOriiq5qu9jsssrcbT974K+lZzwV1Nkmbfuuut13iF4whtZezEcsbnq1Gc09cA..rZfweYeN0TSo0MzPUO79OvAzyeziV8v8ul0XjwY7wFSdy8F7elomVCNzfZnAGT1NNpu95S8zSOUmTP42eHkmbPfWfF80uzJr0WJ5p8PWzUiPWsG5xLcA..j0Y7E+cyolVCM37ubftmCeXcrm+aW8v81aus8KKHeeO8Zu1oqd3qdkKqctqcq0z+ZjsssFbvAkssslYloqYBAyOlVN15pid4HMlzUqitnqUBc05nKy0E..PVmwW72XiMtFZnAWvm38u4689zK+Rmp5gymueYYY0xiwq7Jup777jjTwBETN2bZO6cOkeOfX6n0u90qabyatfID3XU9eVys2gy11VSb8woK5htnK5ht...VUv7K9a7wkmmm1911Z0i6AenGRek+a+2l+8DhisVyZ5SQcdA9995Lu1qoqe8qU83N+YdMcf67Mnsr4MIGaG06Z5Sqe8qW27l2TN1yOg.KG6pSHnxGRv111ZpotYCFQ5htnK5htR6cM8MuQztP...jQEKeTObwK85ZaacKK3QE98+A+P5K9m84lefssUO8jqoejgmd5oz26keIM13iU83tvYOi13l1jtq65tpt2daaacaxyySSNwDx1coOJvUlLPkG83YldF4UpDcQWzEcQWYztZmmAR..frBi+g7dEW3hkei1W6iJ7t18t0c8Fua8Y+i9Cq4bZIaaKEFFH+.eED3qvvvpmZgBEzjSNoN6YOiNyYNiJVb9IkbkW+0UfefdvuuuOM3ZWqrcrU9740F1vH5pW8pKYBA09n.6X6TcBANtNZ5YldAiKcQWzEcQWYmt...P4Oj2My9i6EwyySW7Rut10N2gt5XiqolZJIU9kEjjze7evef9gdO+HxolGw3f.e4UpjJ44oRk7jmmm77JIuRdpzhdjn+dm5jx11VO969costksTc278t28tUwhE0DSNwRlPfsc404t3ICXaaKKYohEKRWzEcQWzUFqqhkJV83A..VsK1tGwyb1yoIlXRcvCr+E7xB5AenGR+v+H+Sze7e3en9Ne6i1fsvRM9XWUemi7M0F23lzi+tV3DBtkceKpu0rFcwKcw5Ng.GaG453JKKKUrTQUrTQ446IaqxueQBCV4Goa5htnK5htROcIopGO...jbjzmbe66V0ccnCoAGbPskMu45dFOx27eTRR6Yu6qo23iM90zN291zFFYXM5UGSAAARRZ3QFQu021aSu5266o+h+7uf777lamCvZTPPvB92Mtwj57m8r53e2uqlc1Yz8d+2ut268vUeI.Y6XqMuoMqsr0spW+0ecM8MmttSHn1Gc6PEV9k3jsi1vl1zbuORbVvNX.5htnK5htR2cYaaKKKKYYYoye9yIIo689dKMrmV495ZUVVRuk6+90a4sd+ZG6Z2ZW6d2w1XsgMrgpe8XiMVCNmsO5p8QWsO5p8QWsujrqS+puhjZ78yM5niJKIE9HO5io226+Cncricn23gNTcOyO4m9Ijjz63gezHcAIe975P24AUgBEzwdgiWcW2cEEKVTO6+imQe6ibDM5UFUCugQTXXnBCC0UuxnJ+ZGP6bm6T6Yu6UiLxvZMqYMUeS+W4QBdjMrAcwKdQM40mXEmPfjp99MwxxR2wAdCk+rgxR5zu5qRWzEcQWzUFoqZOtm6495RR5m8m6izvVZ06qqa292+9q90m5TmpAmyzE5JcgtRWnqzk+1m9qJoFe+bG+DmLddO+UqolZJcrW33Z+219z89leS5kd4WQiM97etK0SO8n2w67g0a9vGVm6rmQSLwDpTwRx11R80WeZM80W48Za0bm71N1pu95S69V1sFbvghzDBjzBeOtL2DcnK5htnK5Ja1E...jJUpX7u3Oo4mXvsea6SG7.6WiM935Ue0WSyVnP0yyPCsNMzcsNcsqMttv4Nq78JIaamkLg.2dxoMu4MqMuoMIIoW8UeEUb1hM8DBVh1X9AzEcQWzEckB5B...JmatjYweRk2yvc7SbJMxvCq8t2aQ26guGM13iqKe4Q0DSNY0WlPqe8Cq0u9g00FeLM5Utr788ksckcu2aPaXCaP1115ZiOtF+5WSJPczIDPWzEcQWzU1tK..frfX6i5gFYrwGWiM93ZyaZiZjQFVG7.kec2N0TSoaN0zpvbOJw6dW6TNNNxRgZhIlPElcV446qwGebcswGWgVZY2au0IlP.cQWzEcQWY6t...RyRzm4uE6xWYTc4qLpbcc0PCNnFXf7ZnAGT80auJe99kmuuJLaAcyolR812Zz0m3F5JW900ryLcc+f8saYBAzEcQWzEcks6B..HMpi7L+sXdddUeThWICugMpvf.M8zSohEJnPE10Ng.5ht5FPWzU2fNcWqI+.sxEa..fLmN9h+hJKaakef0p7CrVUpTQ4UpjBCBZ6I5X2gmnDcEMzU7fthF5JdXxtXge...yK0s3uZkKWOJWtdTXXn787juWope.C2LpcRANNNwwEwVBcUezUxhtpO5JY0NcwB+...lmqiS5dweUXYYI2b4jatbyOAAeOE36KKKKYYaqvfPYYaIGGW4lK2B99y451U8RjpB5ht5FPWzU2f1sK..fU67C7yFK9qV0NAglQ25DcVL5pL5pyhtJit5rhZW...Pxw1U1c5KDcZogI5zJnqzE5Jcgt...PZimuGK9C.....X0.V7G.....PFmisMK9C.....HqyOHfE+A.....rZ.K9C.....XU.V7G.....vp.YtOm+...5DdnG7AVvgelm8q2zGekiqUN93Fcs7cs3y6Jc9SBwcWUN8jroJiY8t7vsWKeWqzsiwoj3mCqbd31qngE+A..zlVtIfzrGekCG0iOtQW0+3qb35MQzFc9iawcWK9qSJb6U8O9UpqFc6XbJI94v5c33VRzUb+yctNtIyh+L0iZXkSqSdk1xMt0N1lnqz9iVSsaqk6xcZ7Qqo1s0pkauVtsSbiau3uGtba+j9YbHIs3qepb3E+nBm1tNnY6JsZ4lrcZW85JKbaV894v5c7oMqzh9xRcU6CfTZ0x0UEwwsW9A9w+h+L0pjq70Q47Gmh6tR6OZMU95FMNIojnqNweTMo+8qjB+9U8O9Uq+8vNUWcJK2heS6WGrbWlWoGXltYK9QxOMd6R8rZrqzbiKWWo8aGaTWUNbsGeZwx0UTdBTZGopW1m0aE9YgGslF8HWjE6Js+n0zntp87j1rZqqJRa2oQEK2eOLKd6UZ3uWrbWta1iew2W1hOsN0sswcWK28oG2LUWQ83iawcW0dbI47SRptR5ay3mCa8tpHIuO7j72up83Movvvz0h+VNo0Iu0Ho8GslkSZ+QqY4jTOZMcBo8msgFIq2SVpuE2U2nk655nb7M51qN0skwYWcxe9zDc0JGebKNu7mUu8Jq1UiN93VRc4Oo6Ks+yg4byIKIE9HO5io226+CncricPD+KN...H.jDQAQUn23gNTcOyO4m9Ijjz63gezHOPqzyVWiN9k67V4zZlWRWMx92+9q90m5Tmpo+9p2kIS10xc9aVcycU63jU5pcezZ5V6Z4N+Mqt8tZ0+Pa2dWK93ZVcqcYhGMz+1m9qJIoe1etORCOesy800MqctssaFcktPWoKzU5Ryb+bu3K9hIyh+5lkU+A.5JcgtRWnqzmjXweK2KW0n9rw1nEv2pOnEldg8zU82NzUiQWM9xSkKSzU82NzUi0L2O2wO9IxFurOA..5jh5cVubm+FMIhNwK2U5pwme5JYPWM97SWIirPWd9dctOpG5VVkb6ftnK5J9PWzU2PWlPidY5FE06k.amDc0XzUxftZL5JYjV5JQ1gujEVkb8PWM97SWIC5pwme5JYjU6xTVbSU9+owExVK5JcgtRWnqzkzRW111c1W1mokUIGUzUiQWIC5pwnqjQVsqEqdW9ZTmK2os3sS8V7akuNIlTAc03Sitnq1Ac03SitLeWAAAc1E+kVVkbTQWoKzU5BcktjU6pdpWSK93ZltalsSRhtZ+sSRhtZ+sSRhtZ+sSRJKzUru3urvpjalKOqz3RWzUbftZ7oQWzE...lGeTOjQ20lSWoKzU5Bck9vmyeYyaaoqzE5JcgtRWZl6m66briI6j5BTTLxvCqQFd3N8ECiitRWnqzE5JcIq1UTkUudftRWnqzE5Jcoapqbt45NW7G......LmRdkXwe......qFvh+......VEfE+A.....rJ.K9C.....XU.V7G.....vp.r3O.....fUAXwe......qBvh+......VEfE+A.....rJ.K9C.....XU.V7G.....PFmkkEK9C.....Hqy0wkE+A.....j04G3K23Zie1ybF8k9Bedczibj3ZHpq64vGVe3e5eF0e+8GKae5xrnqVCcYVzUqIq1UTjUuNftLK5p0PWlEc0ZxRcYaYEeK96I90+T5piNpV+vCqgGdj3ZXVfKdgyqidjinom5SoewOwmHVFC5xbnqVGcYNzUqKq1UTjUuNftLG5p0QWlCc05xRc44GiOyeWczQ011910O+G6iGWCQc8a7q8qpSdhiGaae5xrnqVCcYVzUqIq1UTjUuNftLK5p0PWlEc0ZxRc4XaGeK9SRpu95SA99w4PT2wLIFC5xbiYRLFzk4FyjXLnKyMlIwXjE6JJxpWGPWlcLShwftL2XlDiAcYtwLIFirPW9AAw6h+BCk78ChygntiYRLFzk4FyjXLnKyMlIwXPWlaLShwHK1UTjUuNftL6XlDiAcYtwLIFC5xbiYRLFYkth2E+oP4GjrqRNTw+OAPWlcLShwftL2XlDiAcYtwLIFirXWQQV85.5xriYRLFzk4FyjXLnKyMlIwXjU5Jlel+BkumWbND0cLShwftL2XlDiAcYtwLIFC5xbiYRLFYwthhr50AzkYGyjXLnKyMlIwXPWlaLShwHKzkisS7t3OEV90VZhJIlS.cYzwLIFC5xbiYRLFzk4FyjXLxjcEEY0qCnKiNlIwXPWlaLShwftL2XlDiQVnqX8y4OoxOckAI8qO1D5o9ktL2XlDiAcYtwLIFC5xbiYRLFYwthhr50AzkYGyjXLnKyMlIwXPWlaLShwHKzUN2bw8y7Wx+5iModWeRWlaLShwftL2XlDiAcYtwLIFiLYWQQV85.5xniYRLFzk4FyjXLnKyMlIwXjE5pjWo3eu8YPR+liLg1i+PWlaLShwftL2XlDiAcYtwLIFirXWQQV85.5xriYRLFzk4FyjXLnKyMlIwXjE5J1el+BUXxuaQMo1i+PWFaLShwftL2XlDiAcYtwLIFirXWQQV85.5xriYRLFzk4FyjXLnKyMlIwXjE5J1el+TXx+5iMoV9OcYtwLIFC5xbiYRLFzk4FyjXLxjcEEY0qCnKiNlIwXPWlaLShwftL2XlDiQVnKWG2j3C48z+SQZ8FC5xbiYRLFzk4FyjXLnKyMlIwXjE6JJxpWGPWlcLShwftL2XlDiAcYtwLIFirQWgw6h+lbxIzLyNi5s2diygopaL4jZxImH1GG5xLnq1CcYFzU6Iq1UTjUuNftLC5p8PWlAc0dxJc44GieTObGG3f5jm335y7j+miqgXYcOG9vw11ltLO5J5nKyithtrZWQQV85.5x7nqnitLO5J5xZcEaK96i7Q+n5q8UdJcxieh3ZHpq63fGPOxi+thssOcYVzUqgtLK5p0jU6JJxpWGPWlEc0ZnKyhtZMYstrjT3i7nOldeu+Of1wN1gdiG5P08L9je5mPRRuiG9QM9EhNo8u+8W8qO0oNUG7RhYQWoKzU5Bck9729zeUII8y9y8QZ34i6qKcgtRWnqzE5JcoYteti8c+txNot.A.....fNCaKKV7G.....vpAr3O.....fLN+f.V7G.....vpAr3O.....fUAXwe......YbtNNr3O.....frNOeeV7G.....vpAr3O.....fUAXwe......YbV7g7N.....P1mMK9C.....X0AV7G.....PFmeP.K9C.....X0.2jXPdnG7AVvgelm8q2zG+xcdalsSbKN6pQ8F2RxauRplp2kI5ZgWNi5wG2h6tpbZIYSK9xiD2dU6wsbGem7uGFEIwOyV4z4111WR96hK9zhSb6E+sS5J9jElaRru3ukKfl83qb35cESi1Nws3tqk63iaI8sWI0sezU8O9JGNpGebKt6pxWmz31q5e7qzk+N0eOLJRhelsxgSRIQWo46CuYO9jRV82E4ucV+imtZ710zxByMww1IYdl+LsFcmgch+XqoD0enJsXw2IeV71qE2UZSV51kZ0ntRy2lsbcs367Hsc63J8ygo0thhFccPsSbHsYk5pdGeZvpwtpHMN2jF82Nyh2dkV+6EUj1u7ubZTWwcy9A9ouE+Uu+XSmX0+l1pgE90LGNsnY94vzjrxsKK1pwtRyMtROJoYgFWIM55fJGtdmutcQ4YRJKzkT5dtIqVtu6N8yjjoDkeNLsIse4e4zI6xRRgOxi9X5889+.ZG6XG5MdnCU2y3S9oeBII8Nd3GMxCxhiZ4dpMq2w2L+xX67n0r+8u+pe8oN0ohz2aRzUq9Ge516pdm+lQ2ZWK21nY0szUTN9lQ2ZW06OzFk1nqkpa9mCkj9ae5upjj9Y+49HM770sbec063q8zyp+tXVoqFc7Mit8tR6yMIJGeynasqz9ue0nK+o4auZ1sQsmVynYtetuywNVxr3utYsyO.zMitRWnqzE5J8IIV7W2rr5sszU5BcktPWoKM6h+3i5A.....fUARjE+8PO3Crf+U43V74IJam5cZIM5p42N06zRZzUyucp2okznqle6TuSKokU6JJxpWGPWM+1odmVRitZ9sS8NsjFc07am5cZIsrPWcrOpGh54ewGesGtSciOcQWzU7ftZ74mt59jUuNftZ74mtRFzUiO+zUxHqzUGcu8Y8BrUdSD+LOa20tBV5pwnqjAc0XzUxHq1UTjUuNftZL5JYPWMFckLRKckyMWm8872y7re8p+qhtoaHaUzU5BcktPWoKY0thhr50AzU5BcktPWoKoktJ4UJ9el+p2JXazJgWtSawam58ziV4qakUZGUzUiOM5htZGzUiOM5JY5JJxpWGPWM9znK5pcPWM9znKy2UN2b7Q8PVc28JcktPWoKzU5CeTOjMusktRWnqzE5JcgOpG......PUr3O.....fUA5JW72HCOrFY3g6zWLLN5JcgtRWnqzkrZW...cy5JW7G......LKV7G.....PFWG+y4O......D+J4UhE+A.....rZ.K9C.....HiiW1m......qBvK6S.....fUIXwe...cHY0OuCoqzE5JcgtRW5l5JmiKK9C.....HqqjuGK9C.....X0.V7G.....vp.r3O.....fUAXwe......YbtNNxsSegHe97ZCiLrFZvAkqqixmO+BN8IlXR446oIlXRM1XiqYKTnCcIMZnK5pa.cQWcCxpcA..jl3462YV7mqqq17l1n1111p5q2d0rEJnIlXRUXxB5UN8qM+4ywUCLPdkOe+ZW6bGZu64VzDSLot7Utht7UFsSbQugnK5pa.cQWcCxpcA..jlk3K9ayaZiZu64VjjzXieMc7KdIM0TSsrm+wFe7pe8HCOr17l2nt8a6V0121V0qb5WSSLwjw7k3lCco4NOzUmDco4NOzUmTVsK..fzLaa6jawettt5f2w90PCMntvEujN64Nu777hz1XrwGWiM93pud6U29scq5P24aPW3hWRuZMOJxIM5Z4QWIG5Z4QWImrZW...YAAAAIyh+xmOuN3A1ubcbzwdgWbIOJtWczQ0Q+VGQm6LmQ8zauJLLTggg5F23FZjgGQ6Ye6SG5tua0e+8KIoYKTPG6EdQs8ssUsqctCMP9753m7TQdRFzEcQWzEcQW...qVD6K9Ke975P24AUgBEz294O1Bti6SdhSn+6+MOs7880cbm2otm669jmmmJVxSdkJoRddZlomVG6XGSe0+5uh1vF1fd2+P+v5V1ydjjzEt3kz0mXRcn67f5P24A0wdgimXSLftnK5htnqrcW...YItNNxQRex8suaU20gNjFbvA0V17lq6Y9Hey+QIIsm8tule.bc0gtq2fJUpzBtC6qN5n5+xu4Spadian212+aW6dO6QqYMqQAAAJHHP9y8+CBBjskkxOv.ZCaZSRgV5q9U9x5Bm+b5.ug2fbbbToRkz0t9DZ6aaqZfAxqQu5XQ5JgMrgMT8qGarl66ktnK5htnqzSWRRm9UeEIIcu22aogmuV495ZG8ul0HIoYlYlXcbZkaaaGzU6gtLC5p8PWlQR0Uyb+bW50e838y4uCdGUdI.M+DBN6YNi9M+z+mz63QeT8Vdf2Vj1dqo+90a3Md250u7k0+ge4+8UuAapolRG6ENtFY3g0t20NMdGKFc0bnq3Ec0bnq3UVsK..frnXaweadSaTCMzfK38nwYOyYze1m8OQef+4+y05W+v0btsjssi5omdU97qUe7O5uf9k9E+3ZSabSZ3QFYIelPsksscs9Q1f9O8a7ebASL3rm67ZW6bGpud6MtxhtnK5htnqLdW...YQw1d6yJ6k1d0Z1Ece1ybF8W8W7kzG7ewGVddkToRdJLLP99ApxjBVrb4xob4xoAxOfFbvA0EN+ETwREUXXn5OedM9Uup9y9reV8S+u7eojJ+dCYaacKZyadS5Lm8bzEcQWzEcQWwpydlynuzW3yqidjijni68b3CqO7O8OS0cPNlFcYVzUqgtLK5p0jk5J11aetqcsSMagB5BW7RUOt+ne+eO8O++k+WWvfWrXIEF1bay96Ou1691mN+4Nmt7Utrjj1712tN0weQ827zOsdmO7CKOOOcwK85ZaacK5BW7RFemB.cQWzEcQWY6thpm3W+SoqN5nZ8COrFd3QRjw7hW375nG4HZ5o9T5W7S7IhkwftLG5p0QWlCc05xZcY7E+455pMuoMpW5k+dUOtuzW3yqG+G5GR82e+pToRx2OPyLyrM8DBpvwwQ69VtEUnXQc0Quhjj1wtuE80dpmRCN3.5McOGd9GU3MswELoD5htnK5htnKS6piNp1112t94+Xe7Dcb+M909U0IOwwissOcYVzUqgtLK5p0jk5x0ww7K9ajgWujjFa7qU83t7kurdmO1iK+4dDZmZpoUXTmQPM1291qt90FWk77TO81qJ4URuzodIkyMmts8ueM13Wy3SJftnqEitnqUBckt5pU0We8o.e+DeLShwftL2XlDiAcYtwLIFC5xbiYRLFYgt778M+N7kQFYXM13iW8khyQOxQzsc66u5oWnPA42lW4433pa4V1S0CugMsY8Zm9zZpotodgi8czYO6YU974kqq4VaKc05nK5ZkPWsN5J1+3pcEEFJ46Gjn+qMVWMcQWzEcQWqR6Jmiq4W7W974q9l+WR5Tm3D5tum6o5gmZpoMx3roMuY45TdmGvZ5uec8qccM8zyHOOO80+6eVckqbEkOu4dCRRWsG5xLnq1CcYFY0tZUgJT9A9I5+BU7OaG5htnK5htxVcUx2y7urO6q2d0MmZppGdpolp76ADOO464ql4QC9y76762Ti0PqacZ1KWdmBfuumldlYz.CjWddd54+1OuFXvAasHpC5Z4QWzU6htVdzUx0UqJLLr5K20jbLShwftL2XlDiAcYtwLIFC5xbiYRLFYgtbL8G0CU9bZxya963u1cOos6KCnEafAFPWdtIE3lKm777jiiibrcTwhE0EN24TeqoestgGdE1RMFcYFzEcUOzkYPWsWWskPI+ffDeLShwftL2XlDiAcYtwLIFC5xbiYRLFYgt7M8G0Cttke44LUMOhvm8LmwjCQC4UxSN1Nx11RNN1xwwVW7hmWqcngjiyR+7kpYQWwC5JZnq3AcEMY0tZGgJTA9I6jBRpWlSzk4FyjXLnKyMlIwXPWlaLShwHKzUN2bwymye0p+j78igklaBANx11Q1NNx11Vm6rul10t2irsM2awQ5x.nq1FcY.zUaKq1USKr76EjjdLShwftL2XlDiAcYtwLIFC5xbiYRLFYgtJ4UxrK9qvrEjjzPCMX0cF.6Z261jCwBL6ryV8qKUrn5smdmaBAkezfcrskisi7JVRW7BmSaa66rklX.cYFzEcUOzkYPWsWWsivPofDdRAI0d2N5xbiYRLFzk4FyjXLnKyMlIwXjU5xnK9a1BEVxwM1UuZ0utmd6QV1VJLvL0Lw0ud0u1wwU80Wux11V1NNZvAGT23F2T1N1xxxRddkznW9RZiadqQdhAzEc0HzEcUOzU5pq1QnBkeF3kCT8FC5xbiYRLFzk4FyjXLnKyMlIwXjU5x3263TSMkV2PCU8v6+.GTO+QOZ0C2au8ZjwYhIln5jP787Tu81qFbvAksii5qu9jsiS4OHCssksS4GYXeeecswGskFO5p8PWzUiPWsG5xLc0xBK+dAII+WR8PcSWzEcQWzU1pKiu3uaN0zZnZ10aeOG9v54+1yOof96ueYYY01iy4N2Yq90Warwzl2xVz5V2Px11VCN3fxw1VyLyzU2qv43TdxAAdAZzW+RQd7nq1CcQWMBc0dnKyzUqp7G9u9I5+RtOTioK5htnK5JK0kwW72XiMtFZnAUey8H+1e+8KWGGM9XkeYA4Xaq0rl9ZqwXzQGUSNwDUO7MlbBcq29sU98.hsiV+5VutwMu4BdegXWydANKGac0QuLcQWzEcQWzUaaxImPyL6LJHLHQ92DSbcM4jSrxWvnK5htnK5htpQtb8X981miM93xyySadyaRm4rmSRRum26Op9C9c+cz+h+29okjTu81iJUpjJUJ5eXIN1XioSe5Ws5guz4Om12sc6Z6aaqxw1Q8sl9z5W+50Et3EJOg.WGYYYIGqxSJvxwt56EjIt93zEcQWzEckw6Zn0EeeF.dGG3f5jm335y7j+miswX4bOG9vw11ltLO5J5nKyithtrTWddEimOpGt3kdcssstEcgKdI444oMrwMp8tu8ouwy8bUinx6IjnLwfKe4KqKbgyW8vSeyaJuRkzAN3AU+qoeY6Xqst0sJOeeMwDSHG2xuTfrjkrbJOQfxOBwNU+5ol5lJe9AnK5htnK5Ji10z27FM83GUejO5GUesuxSoSd7SDaiQ8bGG7.5Qd72Urs8oKyhtZMzkYQWslrTWggFdu8YEW3hWRaaqaQaeaacAOpv+1+lOo17V2h17l2rjpbGzVp7dOm5+9CIHHP27l2TW4JWVyL8LUOdeOOc1S+p59evGT2xt2krcrU9740F1vFzEu3EqNg.aaaIKqpOJvUdIBII4X6nYldF0aO8J2b4nK5htnK5JC1kId+Gtb5u+906489ip2y6M1FhNB5JcgtRWnqzkrVWwx9BaOOOc1ycdsqctCkOe9pG++rO3GRe0u7WVu526Up4baovvPUxqnJTXFM8zSoImbBcsqMtF8pipyctypqbkKqRkJU863l23F5kN4Iz8d+uU8Fuq6R1y8R7Y26d2pXwhZhImn5DBp7OGGm4eugX6TcBANtNZ5YlVgMw6pR5htnK5htRecA..fxum+hsOHjtvEujlXhI0AOv9qdb82e+5i+K8+gdoScR828zeMM6ryrfumff.446oRddpXoRpXwk94I04dsSqy8ZmV2+C71z87lta0Su8HaaassssMsl0rlxOZv0NgfZlLPkIDXYYUcBA111xRVpXwhzEcQWzEckw5pXohxyO5uuCA..xZJUpnbjzmbe66V0ccnCoAGbPsk4do5rXG4a9OJIo8r280zCvXieMcsqc8E7n4JIc22y8nRkJo+p+h+BM0MmRCO7vk28bGDrr+6Lm9z5E+NOuV6fCoG5s+8qa+1tU4lys5i1awhEUwRE0ryL6BlPPsSFnxDBJVpn7C7UnB0F2vljsS42uHSLQysW0gtnK5htnqt+tbbbTnBkisiN+4K+9H7duu2RC6oUtutzfMrgMT8qGarw5fWRLK5JcgtRWnqzkS+pkeE2zn6ma7wFOddO+Ugmmm77p+i35guu6SG5tua80e1mUeouvmW4xkSiLxHxOHTaZKaQidkqnYmcFM40ut7880F1zlzi+C9Cpss8sody0S0WBPUeucXIM0MmZISHXwOx1RkezskJ+dAwdtOenpcWDNcQWzEcQWYmt3k9I..fTIuRw6h+VI8zSO5s+NdG5s9.Ofd4W9kzYOyYzXicUUb1Yz5FZPs1crc02ZViFZvA0.qcfp2I+hmPPsuo+W7DBpLAfZ4XO2tCbKq4mniAma.cQWzEcQWcOcA...obt45rK9qhd6qOcm20gzt10t0Etv4zz2bJYaaM+6giZuS91bBARKbx.ldhNzEcQWzEc0c0E...5Bdl+VrAGZHM3PCoadianK+5WRyL8TFeBAKQBL+.5htVQzUKitnK...zb5pV7WECr10pAV6Z0TScSM1nipByNalXBAzEc0MftnqtAY0t...5l0Ut3uJxme.kO+.xqTIcsqMd4Gg3LvDBnK5pa.cQWcCxpcA..zMpqdweU3lKm13l1rBBBzTScCUb1YUXXXpeBAzEc0MftnqtAY0t...5ljJV7WE111ZsqcHo0NjJVrfJUrn788R8SHftRWnqzE5JcIN5ZM4GvvWJA..RmRUK9qV8zSupmd5UgAAx22WdkJovvfVd6Y2krmgitZNzU7htZNzU7xDcwB+...lWpcweUXYaKWaa4lKmBBBjuWI4642TSPn1IE3DgOTiSBz0RQWIO5ZonqjWq1EK7C..XdcMeN+YJ111xtmdUtdjBCCUfuujj77JovfPYYaIGGW4lK2B99x451U+YBEcQWcCnK5paPq1E..vpccceN+YRVVVxwsbdU9+0S29DcVL5ht5FPWzU2flsqjxC8fOvBN7y7re8l93qbbsxwG2hytV71XweOwo391qZOct8p8kj+90hOs3D2dweOLo6pyeukcXooI5DEzU5BcktPWXwVtI32rGekCG0iOtE2cs3sQ8lrZbHt6p1CmjRhtRxIZubWNi5wG0e+JovueU+ie05eOLI5Jy8x9D..HMqxD.p2wKM+j25DSTscrbcUQVrqZmPWZyJ0UsmuzjUicUQmZAtsiF82Cyh2dkD+8hL8K6S..fznk6YNJMN4sZUutV7yPQZrwkqqE++yBcUumIorPW063yJcU4vosdpnQ+ciZO9zVesxKEYSfm4O...CndOhsUVTSyb7M66ajj9Q6Nt6pS8H3mDcUQRNwzj5mCW7wG23mCastpbZI8Bi31qt2e+pjWIYIovG4QeL89d+e.sicrC8FOzgp6Y9I+zOgjjdGO7iZ7KHcR6e+6u5WepScpN3kDyhtRWnqzE5J84u8o+pRR5m8m6izvyG2WW5BcktPWoKzU5Ryb+bemicLYmTWf......PmCK9C..v.dnG7AVv+pbbK97DksS8NsjFc07am5cZIM5p42N06zRZzUyucp2okzxBcw64O..f1TTee0rbm+FsiLnSMQG5htnq3Ac03yOcEORjE+E02XiK2ahynd7ws3tqJmVR+F0kauhdW06WVSp1RheNrxoysWsuj72uV7oEmxp2dYBl5xe81oBzIQWMFckLnqFitRFooth8E+0rq5c4N9JGNpGebKt6pxWmz31q5e7qzk+5sn8jPR7ygUNbRJI5pSr3gj92uRJY0e+xTp2uK0otsxjnqzE5JcgtRWRKckp9ndXwKHpa6JyVUi5pa6Q0HJVttR62NtRW9yhcU6DySaVotV74KsX0XWUzMdmoRK+t.7Fc9alsS8dv.Sx+NCc03Sitnq1Ac03SitLeWotOj26VuS+10pstR68VuK+K9YnHM13x00h++YgtVta+RSVtKyM5YvMMnQWl616Ykt8X4NOsx1IIQWs+1IIQWs+1IIQWs+1IIk16Jmatj4y4ukaUxMywubm2U572rZmOqOhytZTuMC5Zo3mCastpcbxJcEkG4t5oasqk672r516pctiQ9b9Ka94ZEcktPWoKzU5Ry947GeHumQ+A.5JcgtRWnqzmnt3uOzO0GViM1Xw9kqjvHiLh5u+9qd3omd5LQazU5BcktPWoKiLxH52624yHoUdweopW1m...IgJ2IJ..PVRh7g79C8fo+OPDWoKOzUi2N06zRZzUyucp2okznqle6TuSKokU6B..HKoi8Q8PiN+u3wOojjFa7wW1sSsGtSMQG5htnq3AcM+4mtR1tVoWVn...oYczW1mM5M2eTrb6HQ5TnqFitRFzUiQWIirZW...oMc7Om+V7ivak+ekGQ3zJ5JcgtRWnqzkrZW...oMIxmyeQc2p9xcZKd6TuWJPU95j3yIC5pwmFcQWsC5pwmFc0Y+bdB..Hspq7i5gQFdXIsv2KHwkjbWaNc09nq1Gc09nq1WR1kTy+Q8...PV0wO9IRl81m......nyojW8Ct7xN...B.IQTPTIV7G.....vpAr3O.....fUA5n6sOA..5lT482N..PZzJ8damm4O.....fUA3Y9C..XQ9P+TeXM1Xi0ouX...rhFYjQzu2uymYEOetNNr3O..fE6bm6bc5KB...Mkomd5l57446yK6S.....fUCL1y72IOwIzoNwwM0lyn14t1stiCdP0e+8G4uW5J4QWKEck7nqkJq1E..vpA111s+h+N6YNidhe8Okt5niZhKSwl96ue899I+f5AenGpoN+zUmEcUFc0YQWkkU6B..X0jfff1aweScyap+u+k+2qomdZcn69t0i7XOt1zV1rTXnBCBUnBUX3B+mBBTnjBpbdBCUXXP0SOnx4MnQGmTXXfBp86OHTAZ9sYPPfBCCz3iOtN8q7p567sOp9L+V+lRRq3DCnK5htnK5Ja2E..vpQs0h+9u7jOold5o0G6e6ujd3G6wVvcPGFVdRAUty4vf4tScEV9NyCBUPXP4SuxcjO2gCBBjl6N4qb34ui9Je+ycdqLgfv4Ouk2lAxOHP6bW6V20a7t08d+uE8a+jOo9i+C9802+a+sK+f.5htnK5htVk1E..vpMtNNs2N7kuyy+s09t0as4lPP0iK4lPPXPP0SaiaZy5deKuEM8zSqi9s9VzEcQWzEcsJtK..fUa778a+2yeu0G7Aq6DBlc1Ykuu+bGWfp9RBZt6Du1yePXvbu7fl63l6kQTPPMGenpdm7K9+GTYLBBTvbS3PgKbxBgAA5Vu8aWeyuw2Pi0DuuUnK5htnK5Ja2E..vpMs+d6yEcG79A950e8WWSO8Lycxgye9pd9Cq9+Cq47T43kJ+dEoxwU6+TnTfJe9BBBjBkjU3biupNoDIIKYM2iZ7bO5wUtrPWzEcQWzEcA..rJhkkU6u3uJOJuUty3thIDDpxuzip9HCW9kkTPDlT.cQWzEcQWY6t...VMILLr8+Pdu16LNHHnqYBAU+dBC076w3Z927+zEcQWzEcks6B..X0l1dweycWvUeS+K08LgfvZlPPze4.QWzEcQWzU1tK..fUOx43Zfm4Ookr2dq7IzMLgf41Y.DVYODWyOo.5htnK5htx1cA..rZRIeOC7L+EF10NgfPqPUY2Edne4KizEcQWzEcQW...q13Xaah2yegUmPP3buw66VlPfprqA2On56ID5htnK5htnK..fUa7CBLzh+l6NbCB5tlPfjTf+7eNPU4x.cQWzEcQWzE..vpI4byYfOm+jleBAAgcUSHHLb92GHgggQ98BBcQWzEcQWY6t.fY433nadyapabianaL4jZxabCMyzynadyapYmofJTnfjkjkksrjT+46W81auZ26dmU2F66Vu0NW..YXk7JYlOm+pLgfp6o05hlPPkSKvu7G.vzEcQWzEcQW.vbt90ullbxI04Oy404N6404N6EzniNtt4MmRk77UfJ+621VRxRRgVk+8bU9OYXoPYIKYYao0zaOZn0sVskstEs6cuScK6c2ZW6ZmZv0sNEFvueCztL1Gx6UdjW6llPfBU4Ka9AxKvu71ktnK5htnK5B.skqcsw0oekWSequ4Q0wO9KqoldFEDJYYYIKKK0ibzdJN7bmaKo4VrmjzkycSUzJP6r3fJPgZB2BZbqokuUnlonml8JWSW5xiqi9seQov.4Xaosr0Mo689dS5duu6UadKatizLPVP6+x9LTy+RtInKaBAgRAAyOgfJWlnK5htnK5ht.PzcoKcI828z+2023e3nZ5YKHqxuFNkrrK+L6oxK06VJtd8eP+v0ca7+awinynqoeIqGQARxyyWiqo0WK7D5K06wUfBks0ba2418TbwKcU8E+heU8E+BeEsycsE8C++z6V2ygumDoYfrj1+Y9SgcsSHHLLT9KZBKzEcQWzEcQW.HZJVnf9K+R+2zS+zOi77q7L7sv8af0976YIqEcZkOb4+Bhkrm6v1RpG4nsn0peRq6SiTHu9s64eTgK7au5ynnrs0Etvn5Idheas4MMr9X+a9WqMrwQLev.YTF6k8Yk6PNRSHPw6DBBCmeBKk++s1t1b5htnK5htxdcAflSgBEz+t+O+k0ku5Dx11t7SH2bp7kg0b9Cm63sT42aeU9+K96wxxp5emnhG05.5uozKqS2y0pddC0BWXorrTO45QWcrI0+5eg+M5W5W5ioCdmGvP0lt749b+ox1sWkywQV0bUYwhEkaNWEZYoRdkTnmmtk8cq59L3yV5XWaB8z+0eYstQ1jdrG4cF4u+i97GSuzIeQs1gFV+fuqGaIm9jSMi9x+k+kpm95SqacqSqcM40zyLsrrrTfuuby4JYaqomYZcsqMgFZcCpG+Qd3krcdpu5WSEKTPdddJLTJWtbxy2SklYZs1gFVElYV0aO4jrsjumu16d2qty65fU+98Bj9y9r+wZfgVubsbjkjby4padyaN2WmSgNVx0wU9AA5c+XORjutHojKWOFZweg07dAQQXBAgw6DBBU37SHHLn5kE5htnK5htnK.rxBCCzu7m7WQWYrIksc4mouZWvWs+FWnJ+J0bteUdAK3q722hd57BKu.vJ+M.IobxQ6KbDcZcspayZ++UVDXnjrssUe8Mf9O7q7qoOw+W+a0su+ayDImpDX4per+Iuml579Y+S9i0d16d0FGdclYvCC0PCuQYYYoS7RurNvs27W+OwMlRuzKcJs+Cdm5JW4J0877k+K+h5wd2+vZ8CNPSsMetu4QzW4q8zKYAfuqGcoKFysm9zS8TOkdj24OvJtccskV+F2jdrGN5KvsaSoREa+Om+T37uWPp99sHAmPPPClPfpNlye4itnK5htnK5B.Mmu4+3QzEtznkeO3oEt3qJrp4eJrluVZAOqey++U0CW82kq43bm6EE5hVp3B9dqNtVVxMWe524+5ue6jY5UD1CGu0ctaM1UupwFZ+f.s9gFRO5C+NzwN5Qj2hes51.O0e0eg9I+I+f5dO7gUoBEWxoO4TyH41SSuvOIo258dXc8wFsoNudEmUSM0TM81dlomooOuc6L164ufffx2QcBOgfvFNg.U8xl+burfnK5htnK5ht.Py4XemWP11N0rfsxV7KGyEt+7bgKvqdK.r71X9WVnUVoWk+Fhrp9mZp6KszZYa6nIt9jsTeqljOedsbeb3b7S9R5kO0oTgYJnPEHKYKYGJG6b5PuoCoaae6cIeOtttpnWIII89+f+T5O5O5OT+3+X+OuhWN9Z+M+cZ+G7NUoBynoKTr5ynbsJL6rp2b8DwBkbpy1Z4T8m0ZBt4xE4KKcibcbL0myekmPPf5tlPPkGMX+f.E3Gs8BbzEcQWzEcks6Js6rm4L5K8E975nG4HI53dOG9v5C+S+yn96ueitcyZ8jUTrPwk7LvUuE70J+lWXseWy82DrrJ+b9EtvSptOKfKbas5jiSyOU9u2K8x5Adauskb7Oy+i+d433n2y6o96cVet+guolXhIzgum2zBN9omdlpuTd8JNqtu66sn+tm4+g9Adnuuk8xvqctyqhEKp2zgtqpGmsiyRNeAJT11M+yjXqnPcdFGWNEKVHFujjb778Myh+pLgfffftqIDnv4mPPDe4.QWzEcQWzU1tqztm3W+SoqN5nZ8COrFd3jYuc3Euv40QOxQzzS8ozu3m3SXzscVqmrha812qNx256pb11KXgd0aZ4K9Y+qxyrW3bG6R2wuT6d.z411y82PV71LbQGV07+CB70PCMrVMxu3L5y+m+kTNGGoPIaKKEFDJOeOYYWduipuuu5su9z9tsaS6b6acIaiKcgype7eh22xNFu06+d0m8y94Vxh+b6o7NTlJ1yt2odsSeZcgKdIs8sszwQR5e3u+uW+D+D+3UObe80W4KmKhiss5omdWw9aG45o4WFTwomRO6W+ePt11xyOP4bcksss5smbpPwRpnumTPfdaOv8GiWhMCy747WW5DBBCmaLlaBAK2S0McQWzEcQWqB6Jk6piNp1112t94+Xe7Dcb+M909U0IOwwM91Mq0SVw67gem5O8O4OWggkeV4Bm63C0BW.3hW32hUYO6oUkk7YM+h9V7N8kFsMWxgCCkmWA8i8i8diVXYE1t5GsI1gu7k+q+pZf7Kyytskq9q+Z+MJmsi5omdTPfe4OZMjsBsBUwhEkB8V52WXn7JUZAG0Ova+gzm6y940G5C8A0zytv2Scegu3WRO5i+3K33lY5YTf+R+61ElsvR94ASaI6.hZfAV2v5ASAKrqYXt2yegkuy2tpIDDN+6SkV983BcQWzEcQWYxtxB5qu9TfuehOlw41NK0SVfiii9O9e5WS+q9Y9ETtbqQ1K9Y.rl8tmplCuXU9aEgUNmgysfPM+eGYwOyfqjvf.Myr2Te3O7GRu468MsxeCYPVtM2T4e2O1ip+zO6eh1yd1m5M2h97YzxRO9i+XJzuNKvqAbrcjsyReO18i+O8ep9c+c+8z+zeh4e++8beiuo14t1kFdcCsfy6Z5eMpzhV.ojTu80qlc1YizkmHKB61Kssh2WBpIEWGm1eu8YXXX0IDDD4IDnXcBAUlTP4WRP9Q9k4DcQWzEcQWY2txBBCk78CRz+E17yMeUeOYECjOu9s9LeZskMOrJUpnBCCq9Y82hu9q1CGN2B4rptmBsxKyykZA67Wp98W6oW6XDpRkJJY4oO9G+WP+.uyu+VrrzuvH7fkryaYeZ7qM9R2FAdQdgeRyceC04YsKvxW2wcbG5a7beSIIM0TypKbgKn68dV5BzKVrnBCVZCaYyaVEmo42abVgeDtO.6HrLnrxelvy22LK9q5DBp4QDVpYlPPP7Ngf4F6xSHX9KWzEcQWzEcQWYAgJT9A9I5+BiwoAk05IKo2d5Q+6+U9j++2d24gIUkG36w+dN0o15p5M5lUYQATYSTivXDc.ifqINLJR2PLSlm4Zt2YIayiShNy8YxDwDynNwXxLORljL9jPxMW5FzYDQhKwDG3haQw.FWZQPnwE.gFnWq0y4b+ip5p6p6pW.J5t5p+844wG65r7dN+phtq22y6648veyW51Hb3.DOdLbR+2C5qGKCYZrWt98xtOrOGDC+tN+c8DIhgiSbVzks.9Yq6+fK7hm+oQpJBjiFe0Wbbc50vzDRMjF22A9f9b+N9IZk5qa88Z4ACFjjIyciFm+EMOZt4lY2MrG1xS7XTSM0jysKXvf4rAaIiGCSK+7BuzuqOOu5oG6weBl54LiA81exbwBy06aiTkelsO6rhANEVUHnyqHriSWCKHkKkKkKkKkKkqhEtttX2GU95L4w7LYYWLkmhQKXgWBKXgWBMt+F4I2xSyNdsWm3wShoGKLLLScuhYXPKlQ3Es2GPumXW9.NAGi14kb2e56+uziUzz2WfGh151uq6ficRbwkwOtwxm9ybcbkW0RvwwlDIG7yViEq7EL3fda85wJmMV6SecWCa+EdI10u+2SogBQrXIvqkGRjHI1t1X4wha8y+WPx3YOLL850hvg66mCeWy0sLdzG4+hEc4KFm93yJGaGJszxx45p4VtY151ed13FeTrALM.CSS.CLMMIYh33wSpIdEGWGl4LlIWz7m2f98ippZvOwREMVL1zl2RlQYhkkUp+dkscl6m0.ACfcRaV9M9oGzk6PMSSy7w87GcUgfzeo6vcEB59UktqJFXm47S4R4R4R4R4R4pnf6I2vbJecLOSV1EU4oH1zN6owe0W7+Edr7Pi6qQZ3seG10N+Cr+FeeZsk1nQinbOlOclFCBFYFpncNDOuOdVbbAC55h43hCtN1X4Xw3F2XYVm+4xkrvOAyd1yBOVodj.3jigI3nU2Te73YHW9iV3kzmqaflLS5YC+.HfOubYW5B628aE2xM0uq2v0lqdoep9b8K4J58ilh7kk7GO3K6ZukhiITHGGm7wr8oalJDjYlfaXtBANtc8WxSc0fs65bS4R4R4R4R4R4pHgKt47dt4L8w7LYYWLkmQCrSZyjmxjYxSYxrrqYo32ueZo4V33m33zTSMwwN5w3Dm3DzbysPznwHVzXDKdLLM7PvfAvmeuDNbXJu7xo5pqhwNtwxXpZLTVYkg8P7j+iHiFjWF1mYMEaW.Ug.ftN2bbRUlJWJWJWJWJWJWEKbScOxMTeLOSV1EU4YTnXwhg+.9YBSXBLgILgS4xQM7Sj7OKOdxS2yeoqPfqSgUEBRUdcUofSlKtmxkxkxkxkxUwctJF35NzOD3xwGA40xtXJOhHRgjj114qI7kzUHH8W1WnTgfLmemB2+.JWJWJWJWJWE24pXfKtXWDMLIK1xiHhTnIOMrOS8kxNNNETUH.3T9l+W4R4R4R4R4p3NWEEbcGxuG4ne9rHeT1EU4QDQJvjGlvWHSEBbbbJnpPfxkxkxkxkxkxUwLW2g96MpyjebTrkGQDoPSd3Q8PWUHH0MaewQEBTtTtTtTtTtJtyUwfVZoYhDMB986eH430ZKsPKsz7YrxuXKOhHRgDuVdyiS3KNN353fgoAN11EDUHHYhDDIRDkKkKkKkKkKkqhNyZ1ygFd62hG9Gt1g7i8mXAKHuWlEa4QDQJzjHYh7Wi+bcbv1wI0CySLvAmg8JDbnCdPkKkKkKkKkKkqhRe4a+14W+TOIM7Vu8P5wcVyY1b0W20m2K2hs7HhHEZxa87WmUHv0IcEAL.bAR+E3ttodv65Zm5YvjicWKuyoMb6LyjbcsLW2NK2rq3gS5iSlG5vtNYNO5zo6UBV4R4R4R4R4p3NWizURIkvxu4Uvxu4g6yj7ihs7HhHEZxK872a8FuIK9ScUo+x4rGZPo9xZGbR+k8NNN3Z201455hisCIcryLIBzYkAb5rB.1oKqLu1NU443fS58Kyy2oAvQ93OF.pZriU4R4R4R4R4ZTdtDQDQFsw7zYmuvK5h4PG7i3E291K3qPvIN1w38ab+DNbXV3kdoJWJWJWJWJWihykHhHxnQmV872e0W5KyW+u8qvS+q1BM7VuES8rmVl6WCna2OG85+H8PExIyqcwEWmT6mia5eta26GYu+NY85ARzHQ3fe3Gl5b9K9kHd73JWJWJWJWJWihykHRgqMukmje6y8awqWezVaswm5JWBqbEYOdfW+FdDdpMuIJsxpvw0E6jIYsqcs3wXf+6EhLZ1oUi+BDL.+Ke++Utq+w+2z392GMt+8kuNux6BGNL+c24eOm8zm9.tsJWC+TtTtJDnbU7lKQjBW976iVZtEJq7xHVrXjzt287eYkUFfINttXXXPxjIojPkPrNZen+DVxRKsGge0l2L9BDfJpnBJMXH5HRGXXjZlh1xqEXZRGQ5fie7lo1U16az25V+5YUqd0CCm8E+Nsum+BDL.26C78HZjnr287tb3Ccn7w4UeZve8bbw.HTnvLiYNSpdbi6j53nbkenbobkKJW4GJWmd4RjQZZsiHDJTX73wCgJIHs0Ry3MPIru88d333RznQXZScZ32qm9rLBFtLd+CzHezAOD11IIQhj30qEWvELer5Yul4wKG5PGBuVVDIZDBDH.UWYEYsI6c+GfRJIH974mHQ5fIOwIj05MbL4sd62h8uu8SyM2BwsSfGedYbiebL2YOGlzD552a8FnDd0W8UY269cIT3vXZZRvRBxdeu8xK+J6.KKKtjK9BAfUrhal4Mu4Q3vgIZjHbzlZJmM76fe7QX6++1NucCMPhDwwioGpbLigoLkovke4KhwWcUYs8a+EeYNPiMRkioRhEKFKcYKklOQK7LOySSqs1FGqolX7ie7rzktTN+ycFCpO2Fs4Ws4Giq8FtQprrvmxkQkiU+87yTNsa7WmBDL.y8Bt.l6EbA4qhrffx0HKJWirnbMxRwZtDYjfe2q9Z7P+fG.OABic7XL9INIlvDmH65U+c.Nf2.XfAXZv4etmGey07MIdGcjUY73a4I4oepmh1ZoYvIAYl1d8F.rsYhSYxr5U8Y4Bm2bRsC1I3Nu8uB3wOXXfkkEO7O4Gko798+g2fu+8+OCVAfjQ4rl1z467s+VYV+289d.ZngFHQxnoNGyv.C+AwMdBl07lG2y87soslOA6cu6ku288c.CKFy3FapY2WGW16d1Cu6a953KTY7S92+goxxldb9kq6gwvWIo1tjQ4ecs+XJuzP.PKcDg6+duONv92GXltwvN1faRvJ.6Zm6jG6QpiYMuKh6dMqgnczF.rsssMZ3M1EX4G.17iuYRFMciJs7SokWJG5vGlW942FKZIeJ9K+B2V93i2hFszdDvx2oUC+.HRGitmMmOSwqk2SuI7EQDQDQjy7BGNL9CWAia7iiwOoyh16nCd8csKtrEuD9jWwUR3vkRYkWFUVQErm8rGVycc2Ys+e2G7Gvi9nOB976ifgBSkiah7mVSsbEW4RwiGOTYUUS6s0Neu6+94W+b+2Y1uK4RubBENLUO1pIYz1YaO+KjYc+2O2yQ4UOdprxJAL419B+Oyrt64a8Oye3MdszOdVbYU09mQ8q+QYs+neBW3BtTFSkUREUUEM7G1Ea4IdB.X5Se5r1exCy0dC2.czQGoFE.lFLmYOG9w+zeN+fu+Onq.Y.9BUFkWVYTd4kC3gILgT85n2.kvW+q803DMeBpnppvqOeL+4Oe9G+m9m3q9280Ybicr30mWpbrSjFZnAti67NXbSbR.Pf.9orpplJqrRprhJHY73bS0rJVy87cn1UUKs0RaDJTITwXm.uvVeNZUMRIKwiGCed8dZWNV4gxP5s7xi5AQDQDYn0irwMvsrxZx4xs618GkgITSMqB.put5vioI1NNYVd80UGFFPmyoNFFPM0tJpu955ZgoU6pVM0W25o1U008gyF2vFXk0z6yiSV0U25YUcqb2P80QM0tJ1P80k9wIYpg3amG6dt8c2FputLSvPceapa8qGSSCbbbybuDUec000DJjA8YYVHHQhD.Px3IvEWhEKJO3C9fTY4klYa9y+KtMl3DmHiopp3c186jY4+maZy7lu4avDlvDn8N5.+A7yO6msNNQSGA.lvDlHOwVdB762OkW0X3+yO8mwUtjkfWSC97+4edt8a+1IPvfTdUiim5IeZV7kuH.Xm670YLioB5n8NXlydtLiydpYNl2029tIQrraXTzjQ4C9nCxgO7gIVrX30qO7GtLdmcuaVxe7UPxXQHT.+L9wO9L+yuHs2AgBEB+Vd.qtFNq984iDIShoGShGOUuXlLYR.XSO1iQzHQITnPDOQB74yG+K2+8wgOzAAfpqdbb2qYMXDDJszRow8rad1m82v7m6rw0EZqs1HTIgIYxDbwK7R3O8F+L.vYO0ox1151HRznXZZ.ld48Ov6ybl04kO9HtnP0UVAwib5eeWFOdr7vYizS4kGx6hHhHxPK6bLAX.joAg0WWcT6pVUlkug5y90cpyk0qFw45lUi75tt2.PGG6Soy+dx.idtfTkuaOZ.W+znuddt08su95qKqIOhNmLILMMXk0rpds7BQNtNXXXfKod+xu+.Y0vuNYm9wjhWqtphWCMz.kVZYjHQB7YYQ0UO1LM7Cfq9pWFaZSaBy.l3wxBbc4.G38YFm8TohRCybm67X2uytojfkvG99e.G6Dswu9YdFB32Ods7Rz1Zgku7km04QhXQ3ke0WiW601AG+3Gm28ceWbhEAvELrHX3RwxJUK7RlHYV6a7Dwwzv.WGW7GH.eb5memcWxj1od7wXmZlA1JX.rsS8uGe28rGBFLHwSj.GaGJszRyzvO.l4LScu54X6fkkEtXvQOxQ.lMkVZX7XZgkkEQ5nCNqIM4rNtlloFzbtNtfgA976e.9jazmUspUyV29ySIdCzuSzKkWQYbcW8xFtOcGUQ87mHhHxHPllFC7F0M0Ta5d4K89USM0l05cc6ciIqut0CPuZDX26APSy9dhE4jgQOtITbb5pWG23FpG6zOmGGndlynGETmuK453Rcqe8C34gGOEt2MLdL8PpoCIWRjHYe1yHo5ISir9rorxJk8u+8SYkVJs0QaYd+rSG9voZbkWudSu+1DNbnLqe0qd07ObG2IgBEhPkVJeq69tIRjTS.LQiEkJG63Y9yc1Y19nIr4q9U+pDs0iig+Rv01goc1SiksrkwhtrEwu6UdE94qac3yqW5ni1ozxxtQrSYJSgnwiQIkDDuVVru8sO9F20ZXgKXg7m7YtA.vA2L8NsWKKZukXX5wDmjvTm5TXW6bmTRnPjzHIs1ZqYU9Mt+FS8HlAG7fIF3x7l27558fzOKSsSjfnQyt2KCDL.s0d63wxCtN1TQ4k0+evMJ0RthKe.2lW7UdUdpe8ylyF.FWyZqmwnF+IhHhLBigw.z3ubr5t2ye8rmA64yRQCCCpo1d2SgcdbqMcuo0ygF5or9oXVYOZnZ+omuuz8Sud1yePu6A09pGUKDDrjfXXXfggYpFcEMZu2HCCbbrw.irdu3Fuw+DdkW7kvNTITd4UPi6e+7Ju1umE9ItX75O.0UecDnjfDOdbZssVYZy3bYVyZVb7ilp2Amz3GKmyzmNGsolHfe+DOQRBFLHldL4XGuIVYOFBxa9webhFMJUOgIShDIvvvfG768.zZyMC.u4a7FX5wCNNNX.TRvRxZ+mybmKlX.FFX5wjwT0X3XMcL9M+1eSlF+EOVbLLLv10ASCCvSpdqKYL3V+r2JO8S8zzQ6sie+9IRzHr1+8eL21W3+Ae3G9Qr1GZsXXZfAFbhibXl94OGFW0iI0agXfkWO3ymO7ELP5gTZWL83ACRcgFLLLwHOcAPFM5xV3BXian9bttvULlg3ylQOTi+DQDQFgw11gMrg5v0gzUhMUijput5RMrzbS0.OHUi9put5xLwN14xFHc1yePpJ5VSs0lUiDqs1UwF2vFxK4olZWUld3yzvHSO70WMx0vvf5Re90YCcpo1ZYk0TC0U25wioGbbrGTCgyMtg5yznuB0g7I.9R2qb986O08+WtdqwwAOdrR+9VWeVMsIOI9a9JeY9Q+neLNtNDve.dnG5gvmO+Dqi1wiOe3yqOZs0iySvvpD...FfPRDEDUjOmyk69t9lYZ3Wm9r25sx8rl0P4UUMllFDOQBHtKtNtbqe1Uywa5nY11YMqYwSroMwINwIHTnPzZaswcbm+CL4y5rXG6XGz5wOBgqnZhDIB11NjHYOZfkiMetO2mi08v+G3we.BDLH3lpGO6jkkGLMMwuOe333.11o9+.czVK7cefuK268dubf2auX4OHu7yuUdomeqo92K9CfSrDzbj13RWzh4K9W+W10agttDsiH.FDKVbbrydnMGo8NHdhDjLYRbchSLcuocZom8BcmFvKvkbJSM9SDQDYDl9pwamrKuq0mcidxUu9kqsKeLYuzUY06d3q1957nOVNj6gFZOaTWmutPtwd8Tr3wIZqmfOJdbbRZiQOFhpsGMF3jfi0TS30qWb5QuxdoK3RXwK9Wv+2e45Ym6Zmb3C+w3yuOr73gPgBwDmzj35u9qiYedmaNO9m2LOGl1LlAG8HGEKuVXaaSxDI35ugaHqF9AvEL2Yy2XMqg+yG8Q4iOxGCs2FG3.MRhDwYEq3lIQxjrks7qHXf.briebBFLXuNdW0UtXtnK5hXqacqz362HG5fGJ8rJZWri0NG8H1otnDNwyZ3BGNX.91q4tnwO3iXG6XGbnCcHN5QNBcDoClxjmByZVyhK8S9IIbvrum8l3DmHSZJSgRBFDGGGlzYcVYs9E7GsPdu89dXZXPysLtb1FbYv4wd7mfodN49YkXxDIx4xkSepwehHhHhTf67lwzYc+heYet9PA7y594+h9sLh0QGrhaZ4rhaZ48610Wt665aLn21YdNSi63qc6845ulkdUCXYLlJJiaZ42XNW20trkx0trkl0xRFq2O1El1jmDSaxSZ.OVc55ulkw0eM88jPxMkdl+T5aabiOJ1.lFfgoIotGTMIYh33wiElll335vLmwL4hl+7xYYDMVL1zl2RpIvHa6TSLOttXaamZhOx0k.ACfcRaV9M9oGRy2HcpwehHhHhHhjWrxUthS6xn1a4lyCmIRtT3NsVIhHhHhHhH4Eds7pF+IhHhHhHhTrKQxDpwehHhHhHhHiFLj13uEeEKJq+avr7dt+82xGtnb00x6492eKe3hxUWKum6e+s7gKJWcs7dt+82xGtTrlKQDQjQ57Z4cneBeYaa+Ex7yK9JVTlW2WKuuz41TnTg.kKkqBAJWJWEBJVykHhHxHYIRlnvY19r6e49.UgfN2lQBULP4pqsQ4Z3ixUWaix0vmh0bIhHhLRPA0D9x119KLnpLPO2mBcJWYuOE5TtxdeJzobk89TnqXMWhHhHiDLrzyeCzU9s6Wo2dd0dKjqDfxkxUg.kKkqBAEq4RDQDYjNC.2q9ZtVV8s94XxSdxbgye94bC+gOz+F.bUK6ZFBO8Ny67O+yOyO+Nuy6LLdljeobMxhx0HKJWi77ae1mA.9q+he49c6JV+tNQDQJtMX9dtc85udgyv9TDQDQDQDQNyYHowe4ZJ99TYZ7NWSS3mL6e9lx0fubx05FpobM3KmbstgZJWC9xIWqanVwZtDQDQJlbF+d9qy6qiS2sumKu6ud3phNJWJWJWmYnb0+auxkHhHhbpXX8Q8Pt9x7Ska1+BsoAbkq9mx0PCkq9mx0Pih0bIhHhLRyv9i5gNmo254U5cjNkqQVTtFYQ4Zjkh0bIhHhLRyPxi5gbc0Z6uq5aest9Z5.u6KqyednXpBW4p+Wmxkx0oCkq9ecJW5QBgHhHxIKKOdzi5gh0o1bkqQVTtFYQ4ZjG8ndPDQjhY5Q8fHhHhHhHhjgZ7mHhHhHhHRQNSSS03OQDQDQDQjhcNNNm7S3KSYJSglZpoyDmOC4ppppx50EKYS4ZjEkqQVTtF4omYavnXJ+hHhTb6j464Noa7259oO7I6tHhHhLhh9tNQDQJ1X4wiF1mhHhHhHhHE6RZaO364uAZ5wVDQDYjN8cchHhTLS87mHhHhHhHRQNuVdUi+DQDQDQDQJ1kHYBrl9zmNUTQEDOVLZskV3fG7iFtOuDQFAYhSbRC2mBhHhHhHC.uVdO4msOEQjtSWvHQDQDQJ7cri0jF1mhHhHhHhHiF7+GjtipUEzElR7.....jTQNQjqBAlf" ],
													"embed" : 1,
													"id" : "obj-2",
													"maxclass" : "fpic",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 245.0, 895.0, 363.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-3",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 614.0, 232.0, 17.0 ],
													"text" : "+ Drum Pads set to MIDI Note Numbers 36-43"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-4",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 225.0, 827.0, 17.0 ],
													"text" : "+ Buttons and Sliders are set to various CC #s. In the picture below, note that the button in column 1 row A is set to send on CC#68."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-5",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 41.0, 100.0, 17.0 ],
													"text" : "HELP"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-6",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 56.0, 907.0, 17.0 ],
													"text" : "+ The RemoteSL_Interface patch works with the Max_MSP.syx template that must be uploaded to your RemoteSL. I made the template on a RemoteZeRO_SL so I made no MIDI keyboard provision."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-7",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 97.0, 759.0, 17.0 ],
													"text" : "+ The outputs of the bpatcher object are labeled and may be connected to any object."
												}

											}
, 											{
												"box" : 												{
													"data" : [ 1324, "", "IBkSG0fBZn....PCIgDQRA...DO...fSHX....P7WAep....DLmPIQEBHf.B7g.YHB..DLdRDEDU3wY6cGjUpyCFFGOf3.GJtCfINm0h6EWBtVj0hychtCtLT7nH8NvS8DJIsIMoI4M7+24vwuOnjlmz9lFPt3rlllFkilMalZ++d00MG.Iv7b2A.PXnHFP3nHFP3nHFP3Vj5c3M2ceR1Okxa.G4cZTB4sTxZxKhUJk5s2daRa+0qWOosuuHuwUIk2RHqYoHdHO93iFu+md5oD2SRCx6upw7lhrVTEw5A9gGd3rG+kWdQsc61p4fM48T0TdSYVmk5OrG2b28msDjgBrI8M.rd85h30LoTjWkpdyaoj0rWD2FZWCbWa1r4r6qTNHqTj2ZNukRVKheESiMzJ0uKKQZHutSZ4MGYMqEw1dQ+9Z0pUQoclZj2wQB4MmYMnh3at69yt4qPl4p01saCtMRExq+jRdyUVC9Jw6+2qmbyUwZlqVk9r0j2vTx4M2YMqKmNFyb0RByVSdGuROu4LqEwarUrTxyVOEHu0KexZveXOzecvkva6OvklfKhovEHuppkSCbIJaEw0vmOVePdqW4NqAWDGxum3X9NNFy2cvoB4c7J87lyrFTQb2eGw995ii8LXu+96Qs8hMxaXJ47lyrl8WSbLlAqzmkVG40eRIu4JqYuHNVyfUxyRqi7NNRHu4JqYuHVoL+OAKWIkYo0QdcmzxaNxZw7M6wlMaTqVsx4kjnGXILKcWj29I47l5rVLEwJ0uAXnA.IevsKx64pk7lxrVTEwszG.r830Dx64OdsHEYsHKhaUSGLcA4sdMkYMKEwkz2avo.4sdUBYM4eQ4Af3pH9ULAfwihX.gihX.gihX.gihX.gihX.gihX.gihX.gihX.gy6OwV.nrLIWItooQ4wbCr8r8r8Ar8SxUh8oCAfvvqIFP375eJhbEVfxCWIFP3nHFP3nHFP3nHFP3nHFP3nHFP3nHFP3nHFP3nHFP3nHFP3nHFP3nHFP3nHFP3nHFP3nHFP3VbI82HVfZzhau81b2G.P.X4z.BGEwnpsb4xr87Cce6pSJhWtb4I2lBtztl5C9ze7suquu59bsMdXZez2901i4ZecnsaJNd46Xtqm2Dqr3R6ra2NmZqPX5b018cJJjO6KJO8PmpAAcc2mScenu1uu9xX5SlZuZPLOlEqwjXbdiKswPYusPdJOG14kSaa1F8qfY6pX5++5+z1ySWLC+P8GaWM1TeYnLX59zmY1zAVeFC6qe12XZeqrXniU8sOssur0dtLFOTa66U5F5b3w7766moxYEw5Aqc.s8+t6fl9808wMcecuJlssYJVRuK8GS+bn9hd6129pksYlGZLLjb10PGKMMVnucgHjUxDBWNG1z122yenyeREiKm11IYSASs6Tsb5wjgw1WR0pK7ceGymStX5JeotvojX7KOdSExS0fjsqHkh80PBoujySpBImRoXdJeuEj1jBV+K.gskI6Z3r8bFpcMsbmVcu+9N34xRE6qeaaoW8kygxdebYrv184x91TgZe6G86enUiXabxm1M15tOFywDSsmuO+TLgvrc61weaVtfHsqxDpbl2Tsu4C6ApZR5k0LVTDeg4R5pvWJnHFP3V77yOq93iOT62uWse+d0me9o5qu95uae+82pCGNn94me96lRwelSAJEKVrXg55quVc3vA0wiGUGOd7jMX974pqt5pSd7llFJhAJD+G.zCsT8b0CHl.....PRE4DQtJDXBB" ],
													"embed" : 1,
													"id" : "obj-8",
													"maxclass" : "fpic",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 114.0, 241.0, 78.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-9",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 202.0, 576.0, 17.0 ],
													"text" : "+ Set the MIDI port to the RemoteSL in the menu. You may need to \"refresh\" the ports list in some cases."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-10",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 388.0, 645.0, 178.0, 48.0 ],
													"text" : "+ This patch was written by Mitchell Turner Associate Professor of Music at LaGrange College http://home.lagrange.edu/mturner"
												}

											}
 ],
										"lines" : [  ]
									}
,
									"patching_rect" : [ 197.0, 3.0, 40.0, 17.0 ],
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0
									}
,
									"text" : "p HELP"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 3.0, 84.0, 15.0 ],
									"text" : "refresh port list"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-7",
									"items" : [ "EDIROL FA-101 (3087) Plug 1", ",", "ReMOTE ZeRO SL Port 1", ",", "ReMOTE ZeRO SL Port 2", ",", "ReMOTE ZeRO SL Port 3", ",", "to MaxMSP 1", ",", "to MaxMSP 2" ],
									"labelclick" : 1,
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 94.0, 3.0, 100.0, 17.0 ],
									"types" : [  ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-10", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-10", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-10", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-10", 33 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-10", 31 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-10", 38 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-10", 36 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-11", 21 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-11", 18 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-11", 15 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-11", 12 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-11", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-11", 9 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-11", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-7", 1 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 47.0, 461.0, 33.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 253.0, 141.0, 33.0, 20.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}
,
					"text" : "p IO"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 553.0, 449.0, 37.0, 20.0 ],
					"text" : "s out"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 769.0, 258.0, 37.0, 20.0 ],
					"text" : "s out"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 746.0, 547.0, 35.0, 20.0 ],
					"text" : "r out"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 122.0, 457.0, 51.0, 20.0 ],
					"text" : "s psyc2"
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
					"patching_rect" : [ 225.0, 445.0, 43.0, 20.0 ],
					"text" : "s spt4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 181.0, 445.0, 43.0, 20.0 ],
					"text" : "s spt3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 770.0, 228.0, 41.0, 20.0 ],
					"text" : "r mg2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 242.0, 285.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 242.0, 285.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 3.0, 3.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 123.0, 135.0, 20.0 ],
									"text" : "prepend /numChannels"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 100.0, 166.0, 20.0 ],
									"text" : "jcom.oscroute /numChannels"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-34",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-35",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 203.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-34", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 317.0, 183.0, 51.0, 20.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}
,
					"text" : "p apapt"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "Munger~", 30000 ],
					"id" : "obj-20",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.munger~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 310.0, 230.0, 450.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 316.0, 198.0, 450.0, 140.0 ],
					"varname" : "munger[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 242.0, 285.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 242.0, 285.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 3.0, 3.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 123.0, 106.0, 20.0 ],
									"text" : "prepend channels"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 100.0, 166.0, 20.0 ],
									"text" : "jcom.oscroute /numChannels"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-34",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-35",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 203.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-34", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 407.0, 375.0, 51.0, 20.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}
,
					"text" : "p apapt"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/jmod.sur.multi.aux~" ],
					"id" : "obj-22",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.sur.multi.aux~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 459.0, 375.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 316.0, 318.0, 300.0, 54.0 ],
					"varname" : "jmod.sur.multi.aux~[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 3.0, 3.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 123.0, 135.0, 20.0 ],
									"text" : "prepend /numSpeakers"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 100.0, 131.0, 20.0 ],
									"text" : "jcom.oscroute /outputs"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-34",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-35",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 203.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-34", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 449.0, 547.0, 51.0, 20.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}
,
					"text" : "p apapt"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 797.0, 0.0, 41.0, 20.0 ],
					"text" : "r mg1"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "Munger~", 30000 ],
					"id" : "obj-15",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.munger~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 311.0, 10.0, 450.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 316.0, 5.0, 450.0, 140.0 ],
					"varname" : "munger"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 242.0, 285.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 242.0, 285.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 3.0, 3.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 123.0, 106.0, 20.0 ],
									"text" : "prepend channels"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 100.0, 166.0, 20.0 ],
									"text" : "jcom.oscroute /numChannels"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-34",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-35",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 203.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-34", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 387.0, 163.0, 51.0, 20.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}
,
					"text" : "p apapt"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/jmod.sur.multi.aux~" ],
					"id" : "obj-24",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.sur.multi.aux~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 460.0, 154.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 316.0, 125.0, 300.0, 54.0 ],
					"varname" : "jmod.sur.multi.aux~"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/output" ],
					"id" : "obj-40",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.sur.output~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 449.0, 570.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 382.0, 458.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 217.0, 218.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 217.0, 218.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 3.0, 3.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 106.0, 116.0, 101.0, 20.0 ],
									"text" : "prepend /outputs"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 50.0, 94.0, 394.0, 269.0 ],
										"bglocked" : 0,
										"defrect" : [ 50.0, 94.0, 394.0, 269.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 3.0, 3.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-18",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 156.0, 201.0, 229.0, 32.0 ],
													"text" : "you need another reverbrator for more than 16 channels of output from munger"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 156.0, 236.0, 34.0, 20.0 ],
													"text" : "print"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 127.0, 178.0, 49.0, 20.0 ],
													"text" : "split 16"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 67.0, 120.0, 49.0, 20.0 ],
													"text" : "split 12"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 40.0, 92.0, 46.0, 20.0 ],
													"text" : "split 8"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 97.0, 163.0, 31.0, 20.0 ],
													"text" : "t 16"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 67.0, 143.0, 31.0, 20.0 ],
													"text" : "t 12"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 40.0, 114.0, 22.0, 20.0 ],
													"text" : "t 8"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 13.0, 70.0, 46.0, 20.0 ],
													"text" : "split 5"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-24",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 13.0, 10.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-25",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 13.0, 201.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-11", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-11", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-13", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [ 49.5, 167.0, 22.5, 167.0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [ 76.5, 181.5, 22.5, 181.5 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [ 106.5, 191.5, 22.5, 191.5 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-7", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [ 22.5, 145.0, 22.5, 145.0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-8", 1 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 12.0, 89.0, 43.0, 20.0 ],
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0
									}
,
									"text" : "p filter"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 116.0, 93.0, 20.0 ],
									"text" : "prepend /inputs"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 12.0, 65.0, 166.0, 20.0 ],
									"text" : "jcom.oscroute /numChannels"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-27",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 5.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-28",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 12.0, 178.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 115.5, 162.5, 21.5, 162.5 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 21.5, 112.0, 115.5, 112.0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 450.0, 439.0, 51.0, 20.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}
,
					"text" : "p adapt"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/reverb" ],
					"id" : "obj-17",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.sur.reverb~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 449.0, 472.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 382.0, 385.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 118.0, 430.0, 45.0, 20.0 ],
					"text" : "s psyc"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 430.0, 43.0, 20.0 ],
					"text" : "s mg2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 32.0, 430.0, 43.0, 20.0 ],
					"text" : "s mg1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 22.0, 353.0, 38.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 210.0, 83.0, 32.0, 20.0 ],
					"text" : "mg2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 22.0, 335.0, 38.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 210.0, 66.0, 32.0, 20.0 ],
					"text" : "mg1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 173.0, 360.0, 70.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 239.0, 53.0, 65.0, 20.0 ],
					"text" : "V   C  B  S"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-2",
					"maxclass" : "bpatcher",
					"name" : "nav.mtrx.4x6.maxpat",
					"numinlets" : 4,
					"numoutlets" : 6,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 61.0, 334.0, 139.0, 95.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 239.0, 67.0, 67.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"border" : 1,
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "nav.adc.racines.maxpat",
					"numinlets" : 0,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 48.0, 11.0, 196.0, 158.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 6.0, 196.0, 158.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-15", 1 ]
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
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-17", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-2", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-2", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-2", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-22", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-24", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 3 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-26", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-3", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 3 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ]
	}

}
