{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 25.0, 69.0, 167.0, 89.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 69.0, 167.0, 89.0 ],
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
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 57.0, 42.0, 37.0, 20.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 430.0, 122.0, 721.0, 574.0 ],
						"bglocked" : 0,
						"defrect" : [ 430.0, 122.0, 721.0, 574.0 ],
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
						"devicewidth" : 0.0,
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 537.0, 260.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 537.0, 260.0, 640.0, 480.0 ],
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
													"args" : [ "/qmetro" ],
													"id" : "obj-18",
													"lockeddragscroll" : 1,
													"maxclass" : "bpatcher",
													"name" : "jmod.qmetro.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 35.0, 53.0, 150.0, 70.0 ],
													"presentation_rect" : [ 30.0, 30.0, 150.0, 70.0 ],
													"varname" : "jmod.qmetro"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.619608, 0.0, 0.360784, 0.698039 ],
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 35.0, 129.0, 129.0, 19.0 ],
													"text" : "jcom.random 5. 12."
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-18", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 582.0, 437.0, 73.0, 20.0 ],
									"saved_object_attributes" : 									{
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial"
									}
,
									"text" : "p mappings"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "gain~",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 639.0, 69.0, 28.0, 95.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 639.0, 43.0, 47.0, 20.0 ],
									"text" : "adc~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "gain~",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 579.0, 70.0, 28.0, 95.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-34",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 329.0, 542.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-33",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 297.0, 543.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-31",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 250.0, 542.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-19",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 208.0, 543.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 579.0, 44.0, 47.0, 20.0 ],
									"text" : "adc~ 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 107.0, 26.0, 79.0, 20.0 ],
									"text" : "loadmess 70"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "gain~",
									"numinlets" : 2,
									"numoutlets" : 2,
									"orientation" : 2,
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 335.0, 441.0, 19.0, 66.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
									"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
									"id" : "obj-23",
									"maxclass" : "meter~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 356.0, 441.0, 13.0, 66.0 ],
									"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
									"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "gain~",
									"numinlets" : 2,
									"numoutlets" : 2,
									"orientation" : 2,
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 299.0, 441.0, 19.0, 66.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
									"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
									"id" : "obj-30",
									"maxclass" : "meter~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 320.0, 441.0, 13.0, 66.0 ],
									"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
									"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "list", "list" ],
									"patching_rect" : [ 298.0, 519.0, 72.0, 17.0 ],
									"text" : "omx.peaklim~"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "Output2", "@channel", 4, "@gain", 0.0 ],
									"id" : "obj-10",
									"maxclass" : "bpatcher",
									"name" : "mlys.point-output.pat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 488.0, 240.0, 84.0, 36.0 ],
									"varname" : "mlys.point-output.pat[3]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 16.0, 40.0, 72.0, 20.0 ],
									"text" : "receive~ pit"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 577.0, 186.0, 72.0, 20.0 ],
									"text" : "receive~ pit"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "Force", "@controller", "signal", "@channel", 2 ],
									"id" : "obj-151",
									"maxclass" : "bpatcher",
									"name" : "mlys.force.pat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 399.0, 133.0, 84.0, 36.0 ],
									"varname" : "mlys.force.pat"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 688.0, 490.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 688.0, 490.0, 640.0, 480.0 ],
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
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 134.0, 82.0, 64.0, 20.0 ],
													"text" : "s rec_freq"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 12.0, 78.0, 66.0, 20.0 ],
													"text" : "s circ_freq"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 135.0, 54.0, 112.0, 20.0 ],
													"text" : "scale 0. 1. 0. 1200."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 12.0, 53.0, 115.0, 20.0 ],
													"text" : "scale 0. 1. 0. 10000"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 46.0, 13.0, 47.0, 20.0 ],
													"text" : "r piezo"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-3", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 549.0, 479.0, 49.0, 20.0 ],
									"saved_object_attributes" : 									{
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial"
									}
,
									"text" : "p piezo"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 105.0, 56.0, 47.0, 20.0 ],
									"text" : "r offset"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-131",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 291.0, 83.0, 68.0, 25.0 ],
									"text" : ";\rHammer open"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-32",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 471.0, 198.0, 72.0, 25.0 ],
									"text" : ";\rRectPlate open"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ],
									"id" : "obj-112",
									"maxclass" : "scope~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 596.0, 213.0, 100.0, 50.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-114",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 635.0, 358.0, 86.0, 17.0 ],
									"text" : "force in Newtons"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"ft1" : 5.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-115",
									"interval" : 250.0,
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 578.0, 356.0, 56.0, 17.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-116",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 578.0, 331.0, 56.0, 17.0 ],
									"text" : "*~ 10000"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Rounded MT Bold",
									"fontsize" : 12.0,
									"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
									"id" : "obj-117",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 627.0, 271.0, 69.0, 48.0 ],
									"text" : "3) Turn excitation noise on",
									"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
									"id" : "obj-118",
									"maxclass" : "led",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offcolor" : [ 0.0, 0.266667, 0.0, 1.0 ],
									"oncolor" : [ 0.0, 1.0, 0.0, 1.0 ],
									"outlettype" : [ "int" ],
									"patching_rect" : [ 595.0, 275.0, 17.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-119",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 578.0, 299.0, 27.0, 17.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-120",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 635.0, 333.0, 34.0, 17.0 ],
									"text" : "boost"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "bang", "bang" ],
									"patching_rect" : [ 455.0, 49.0, 40.0, 17.0 ],
									"save" : [ "#N", "qlist", ";", "#X", "insert", "RectPlate", "tune", "size", ";", ";", "#X", "insert", "RectPlate", "modes", 123, ";", ";", "#X", "insert", "RectPlate", "length0", 0.974849, ";", ";", "#X", "insert", "RectPlate", "length1", 0.854242, ";", ";", "#X", "insert", "RectPlate", "thickness", 0.006635, ";", ";", "#X", "insert", "RectPlate", "density", 2700.0, ";", ";", "#X", "insert", "RectPlate", "young", 7.0, 10, ";", ";", "#X", "insert", "RectPlate", "poisson", 0.240152, ";", ";", "#X", "insert", "RectPlate", "freq-loss", 0.240899, ";", ";", "#X", "insert", "RectPlate", "const-loss", 0.397587, ";", ";", "#X", "insert", "RectPlate", "pitch", 45, ";", ";", "#X", "insert", "Force", "controller", "signal", ";", ";", "#X", "insert", "Force", "channel", 2, ";", ";", "#X", "insert", "Force", "force", 0.0, ";", ";", "#X", "insert", "Force", "access-direction", "none", ";", ";", "#X", "insert", "Force", "access-position", "X", 0.68, ";", ";", "#X", "insert", "Force", "access-position", "Y", 0.62, ";", ";" ],
									"text" : "qlist",
									"varname" : "this"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 455.0, 19.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-89",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 480.0, 25.0, 16.0, 17.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "RectPlate", "@modes", 80, "@tune", "size", "@pitch", "G2" ],
									"id" : "obj-92",
									"maxclass" : "bpatcher",
									"name" : "mlys.rect-plate.pat",
									"numinlets" : 10,
									"numoutlets" : 10,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 398.0, 195.0, 135.0, 32.0 ],
									"varname" : "mlys.rect-plate.pat"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "Output", "@channel", 3, "@gain", 0.0 ],
									"id" : "obj-93",
									"maxclass" : "bpatcher",
									"name" : "mlys.point-output.pat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 398.0, 240.0, 84.0, 36.0 ],
									"varname" : "mlys.point-output.pat[2]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-97",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 293.0, 200.0, 88.0, 25.0 ],
									"text" : ";\rFreeCircPlate open"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-95",
									"maxclass" : "preset",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "preset", "int", "preset", "int" ],
									"patching_rect" : [ 667.0, 387.0, 43.0, 30.0 ],
									"preset_data" : [ 										{
											"number" : 1,
											"data" : [ 5, "<invalid>", "number", "int", 20, 5, "obj-84", "number~", "list", 100.0, 6, "obj-74", "gain~", "list", 0, 10.0, 6, "obj-72", "gain~", "list", 0, 10.0, 5, "<invalid>", "number~", "list", 0.0, 5, "<invalid>", "number~", "list", 15.0, 5, "obj-50", "number~", "list", 7.0, 5, "obj-43", "number~", "list", 0.0, 5, "obj-15", "led", "int", 0, 5, "obj-16", "flonum", "float", 0.0 ]
										}
, 										{
											"number" : 2,
											"data" : [ 5, "obj-84", "number~", "list", 0.0, 6, "obj-74", "gain~", "list", 0, 10.0, 6, "obj-72", "gain~", "list", 0, 10.0, 5, "<invalid>", "number~", "list", 0.0, 5, "<invalid>", "number~", "list", 15.0, 5, "obj-50", "number~", "list", 7.0, 5, "obj-43", "number~", "list", 0.0, 5, "obj-15", "led", "int", 0, 5, "obj-16", "flonum", "float", 1.0, 5, "obj-118", "led", "int", 0, 5, "obj-115", "number~", "list", 0.0, 5, "<invalid>", "number~", "list", 0.0, 5, "<invalid>", "slider", "float", 0.0 ]
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "bang", "bang" ],
									"patching_rect" : [ 406.0, 94.0, 40.0, 17.0 ],
									"save" : [ "#N", "qlist", ";", "#X", "insert", "Hammer-position", "controller", "signal", ";", ";", "#X", "insert", "Hammer-position", "channel", 1, ";", ";", "#X", "insert", "Hammer-position", "position", 0.1, ";", ";", "#X", "insert", "Hammer-position", "access-direction", "trans0", ";", ";", "#X", "insert", "Hammer-position", "access-position", "X", 0.0, ";", ";", "#X", "insert", "Hammer-position", "access-position", "Y", 0.5, ";", ";", "#X", "insert", "Hammer", "small-mass", 0.01, ";", ";", "#X", "insert", "Hammer", "large-mass", 0.01, ";", ";", "#X", "insert", "Hammer", "stiffness0", 15000.0, ";", ";", "#X", "insert", "Hammer", "freq-loss0", 100.0, ";", ";", "#X", "insert", "Hammer", "const-loss0", 0.0, ";", ";", "#X", "insert", "Strike", "hammer", "initial-position", 0.1, ";", ";", "#X", "insert", "Strike", "struck", "initial-position", 0.0, ";", ";", "#X", "insert", "Strike", "hammer", "access-direction", "trans0", ";", ";", "#X", "insert", "Strike", "hammer", "access-position", "X", 1.0, ";", ";", "#X", "insert", "Strike", "hammer", "access-position", "Y", 0.5, ";", ";", "#X", "insert", "Strike", "struck", "access-direction", "normal", ";", ";", "#X", "insert", "Strike", "struck", "access-position", "X", 0.5, ";", ";", "#X", "insert", "Strike", "struck", "access-position", "Y", 0.5, ";", ";", "#X", "insert", "FreeCircPlate", "tune", "radius", ";", ";", "#X", "insert", "FreeCircPlate", "modes", 80, ";", ";", "#X", "insert", "FreeCircPlate", "radius", 0.5, ";", ";", "#X", "insert", "FreeCircPlate", "thickness", 0.01, ";", ";", "#X", "insert", "FreeCircPlate", "density", 7800.0, ";", ";", "#X", "insert", "FreeCircPlate", "young", 2.0, 11, ";", ";", "#X", "insert", "FreeCircPlate", "poisson", 0.3, ";", ";", "#X", "insert", "FreeCircPlate", "freq-loss", 0.045289, ";", ";", "#X", "insert", "FreeCircPlate", "const-loss", 0.110415, ";", ";", "#X", "insert", "FreeCircPlate", "pitch", 36.0, ";", ";", "#X", "insert", "FCP-out1", "channel", 1, ";", ";", "#X", "insert", "FCP-out1", "gain", 0.0, ";", ";", "#X", "insert", "FCP-out1", "access-direction", "normal", ";", ";", "#X", "insert", "FCP-out1", "access-position", "X", 0.21, ";", ";", "#X", "insert", "FCP-out1", "access-position", "Y", 0.67, "FCP-out2", "channel", 2, ";", ";", "#X", "insert", "FCP-out2", "gain", 0.0, ";", ";", "#X", "insert", "FCP-out2", "access-direction", "normal", ";", ";", "#X", "insert", "FCP-out2", "access-position", "X", 0.93, ";", ";", "#X", "insert", "FCP-out2", "access-position", "Y", 0.47, ";", ";" ],
									"text" : "qlist"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 406.0, 75.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 423.0, 77.0, 16.0, 17.0 ],
									"text" : "2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "bang", "bang" ],
									"patching_rect" : [ 457.0, 95.0, 40.0, 17.0 ],
									"save" : [ "#N", "qlist", ";", "#X", "insert", "Hammer-position", "controller", "signal", ";", ";", "#X", "insert", "Hammer-position", "channel", 1, ";", ";", "#X", "insert", "Hammer-position", "position", 0.1, ";", ";", "#X", "insert", "Hammer-position", "access-direction", "trans0", ";", ";", "#X", "insert", "Hammer-position", "access-position", "X", 0.0, ";", ";", "#X", "insert", "Hammer-position", "access-position", "Y", 0.5, ";", ";", "#X", "insert", "Hammer", "small-mass", 0.01, ";", ";", "#X", "insert", "Hammer", "large-mass", 0.01, ";", ";", "#X", "insert", "Hammer", "stiffness0", 15000.0, ";", ";", "#X", "insert", "Hammer", "freq-loss0", 100.0, ";", ";", "#X", "insert", "Hammer", "const-loss0", 0.0, ";", ";", "#X", "insert", "Strike", "hammer", "initial-position", 0.1, ";", ";", "#X", "insert", "Strike", "struck", "initial-position", 0.0, ";", ";", "#X", "insert", "Strike", "hammer", "access-direction", "trans0", ";", ";", "#X", "insert", "Strike", "hammer", "access-position", "X", 1.0, ";", ";", "#X", "insert", "Strike", "hammer", "access-position", "Y", 0.5, ";", ";", "#X", "insert", "Strike", "struck", "access-direction", "normal", ";", ";", "#X", "insert", "Strike", "struck", "access-position", "X", 0.8, ";", ";", "#X", "insert", "Strike", "struck", "access-position", "Y", 0.4, ";", ";", "#X", "insert", "FreeCircPlate", "tune", "radius", ";", ";", "#X", "insert", "FreeCircPlate", "modes", 80, ";", ";", "#X", "insert", "FreeCircPlate", "radius", 0.5, ";", ";", "#X", "insert", "FreeCircPlate", "thickness", 0.01, ";", ";", "#X", "insert", "FreeCircPlate", "density", 7800.0, ";", ";", "#X", "insert", "FreeCircPlate", "young", 2.0, 11, ";", ";", "#X", "insert", "FreeCircPlate", "poisson", 0.3, ";", ";", "#X", "insert", "FreeCircPlate", "freq-loss", 0.01, ";", ";", "#X", "insert", "FreeCircPlate", "const-loss", 1.0, ";", ";", "#X", "insert", "FreeCircPlate", "pitch", 84.0, ";", ";", "#X", "insert", "FCP-out1", "channel", 1, ";", ";", "#X", "insert", "FCP-out1", "gain", 0.0, ";", ";", "#X", "insert", "FCP-out1", "access-direction", "normal", ";", ";", "#X", "insert", "FCP-out1", "access-position", "X", 0.7, ";", ";", "#X", "insert", "FCP-out1", "access-position", "Y", 0.3, ";", ";", "#X", "insert", "FCP-out2", "channel", 2, ";", ";", "#X", "insert", "FCP-out2", "gain", 0.0, ";", ";", "#X", "insert", "FCP-out2", "access-direction", "normal", ";", ";", "#X", "insert", "FCP-out2", "access-position", "X", 0.4, ";", ";", "#X", "insert", "FCP-out2", "access-position", "Y", 0.3, ";", ";" ],
									"text" : "qlist"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 457.0, 76.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 474.0, 78.0, 16.0, 17.0 ],
									"text" : "3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 66.0, 247.0, 43.0, 17.0 ],
									"text" : "Smooth"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 32.0, 226.0, 38.0, 15.0 ],
									"text" : "$1 100"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 33.0, 245.0, 32.0, 17.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-14",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 53.0, 207.0, 39.0, 17.0 ],
									"text" : "On/off"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
									"id" : "obj-15",
									"maxclass" : "led",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offcolor" : [ 0.0, 0.266667, 0.0, 1.0 ],
									"oncolor" : [ 0.0, 1.0, 0.0, 1.0 ],
									"outlettype" : [ "int" ],
									"patching_rect" : [ 33.0, 205.0, 17.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "front" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 237.0, 114.0, 218.0, 258.0 ],
										"bglocked" : 0,
										"defrect" : [ 237.0, 114.0, 218.0, 258.0 ],
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
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-1",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 92.0, 106.0, 33.0, 15.0 ],
													"text" : "clean"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 92.0, 85.0, 50.0, 17.0 ],
													"text" : "del 1000"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 92.0, 64.0, 48.0, 17.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 26.0, 43.0, 116.0, 17.0 ],
													"text" : "match mlys.StrikePlate"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-5",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 27.0, 161.0, 140.0, 38.0 ],
													"text" : "prevent multiple copies of the same patcher from being opened from Mlys overview"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "front" ],
													"patching_rect" : [ 26.0, 64.0, 48.0, 17.0 ],
													"text" : "t b front"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 26.0, 22.0, 64.0, 17.0 ],
													"text" : "r mlys-hey!"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-8",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 64.0, 136.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 26.0, 85.0, 58.0, 17.0 ],
													"text" : "s mlys-ho!"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-7", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 487.0, 522.0, 44.0, 17.0 ],
									"saved_object_attributes" : 									{
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial"
									}
,
									"text" : "p heyho"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 492.0, 541.0, 61.0, 17.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Rounded MT Bold",
									"fontsize" : 20.0,
									"frgb" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
									"id" : "obj-25",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 127.0, 390.0, 65.0, 30.0 ],
									"text" : "Synth",
									"textcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 135.0, 339.0, 19.0, 17.0 ],
									"text" : "-1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 135.0, 318.0, 25.0, 17.0 ],
									"text" : "0 m"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 135.0, 296.0, 20.0, 17.0 ],
									"text" : "+1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
									"id" : "obj-36",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 436.0, 383.0, 123.0, 27.0 ],
									"text" : "<- Modalys  synthesizer \rwith 1 input and 2 outputs",
									"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Rounded MT Bold",
									"fontsize" : 12.0,
									"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
									"id" : "obj-40",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 98.0, 205.0, 101.0, 34.0 ],
									"text" : "4) Turn random positioning on",
									"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Rounded MT Bold",
									"fontsize" : 12.0,
									"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
									"id" : "obj-41",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 121.0, 532.0, 27.0, 20.0 ],
									"text" : "2)",
									"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 16.0, 269.0, 27.0, 17.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "bang", "bang" ],
									"patching_rect" : [ 406.0, 53.0, 40.0, 17.0 ],
									"save" : [ "#N", "qlist", ";", "#X", "insert", "Hammer-position", "controller", "signal", ";", ";", "#X", "insert", "Hammer-position", "channel", 1, ";", ";", "#X", "insert", "Hammer-position", "position", 0.1, ";", ";", "#X", "insert", "Hammer-position", "access-direction", "trans0", ";", ";", "#X", "insert", "Hammer-position", "access-position", "X", 0.0, ";", ";", "#X", "insert", "Hammer-position", "access-position", "Y", 0.5, ";", ";", "#X", "insert", "Hammer", "small-mass", 0.5, ";", ";", "#X", "insert", "Hammer", "large-mass", 0.5, ";", ";", "#X", "insert", "Hammer", "stiffness0", 100000.0, ";", ";", "#X", "insert", "Hammer", "freq-loss0", 100.0, ";", ";", "#X", "insert", "Hammer", "const-loss0", 0.0, ";", ";", "#X", "insert", "Strike", "hammer", "initial-position", 0.1, ";", ";", "#X", "insert", "Strike", "struck", "initial-position", 0.0, ";", ";", "#X", "insert", "Strike", "hammer", "access-direction", "trans0", ";", ";", "#X", "insert", "Strike", "hammer", "access-position", "X", 1.0, ";", ";", "#X", "insert", "Strike", "hammer", "access-position", "Y", 0.5, ";", ";", "#X", "insert", "Strike", "struck", "access-direction", "normal", ";", ";", "#X", "insert", "Strike", "struck", "access-position", "X", 0.8, ";", ";", "#X", "insert", "Strike", "struck", "access-position", "Y", 0.4, ";", ";", "#X", "insert", "FreeCircPlate", "tune", "radius", ";", ";", "#X", "insert", "FreeCircPlate", "modes", 80, ";", ";", "#X", "insert", "FreeCircPlate", "radius", 0.5, ";", ";", "#X", "insert", "FreeCircPlate", "thickness", 0.01, ";", ";", "#X", "insert", "FreeCircPlate", "density", 7800.0, ";", ";", "#X", "insert", "FreeCircPlate", "young", 2.0, 11, ";", ";", "#X", "insert", "FreeCircPlate", "poisson", 0.3, ";", ";", "#X", "insert", "FreeCircPlate", "freq-loss", 0.25, ";", ";", "#X", "insert", "FreeCircPlate", "const-loss", 1.0, ";", ";", "#X", "insert", "FreeCircPlate", "pitch", 55.0, ";", ";", "#X", "insert", "FCP-out1", "channel", 1, ";", ";", "#X", "insert", "FCP-out1", "gain", 0.0, ";", ";", "#X", "insert", "FCP-out1", "access-direction", "normal", ";", ";", "#X", "insert", "FCP-out1", "access-position", "X", 0.7, ";", ";", "#X", "insert", "FCP-out1", "access-position", "Y", 0.3, ";", ";", "#X", "insert", "FCP-out2", "channel", 2, ";", ";", "#X", "insert", "FCP-out2", "gain", 0.0, ";", ";", "#X", "insert", "FCP-out2", "access-direction", "normal", ";", ";", "#X", "insert", "FCP-out2", "access-position", "X", 0.4, ";", ";", "#X", "insert", "FCP-out2", "access-position", "Y", 0.3, ";", ";", "#X", "insert", "RectPlate", "tune", "size", ";", ";", "#X", "insert", "RectPlate", "modes", 123, ";", ";", "#X", "insert", "RectPlate", "length0", 0.974849, ";", ";", "#X", "insert", "RectPlate", "length1", 0.854242, ";", ";", "#X", "insert", "RectPlate", "thickness", 0.006635, ";", ";", "#X", "insert", "RectPlate", "density", 2700.0, ";", ";", "#X", "insert", "RectPlate", "young", 7.0, 10, ";", ";", "#X", "insert", "RectPlate", "poisson", 0.240152, ";", ";", "#X", "insert", "RectPlate", "freq-loss", 0.240899, ";", ";", "#X", "insert", "RectPlate", "const-loss", 0.397587, ";", ";", "#X", "insert", "RectPlate", "pitch", 45, ";", ";", "#X", "insert", "Force", "controller", "signal", ";", ";", "#X", "insert", "Force", "channel", 2, ";", ";", "#X", "insert", "Force", "force", 0.0, ";", ";", "#X", "insert", "Force", "access-direction", "none", ";", ";", "#X", "insert", "Force", "access-position", "X", 0.68, ";", ";", "#X", "insert", "Force", "access-position", "Y", 0.62, ";", ";" ],
									"text" : "qlist"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"ft1" : 5.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-44",
									"interval" : 250.0,
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 16.0, 357.0, 49.0, 17.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-45",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 66.0, 359.0, 65.0, 17.0 ],
									"text" : "Position (m)"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ],
									"id" : "obj-50",
									"maxclass" : "scope~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 34.0, 298.0, 100.0, 50.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-55",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 112.0, 81.0, 37.0, 17.0 ],
									"text" : "offset"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-57",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 81.0, 75.0, 17.0 ],
									"text" : "Max amplitude"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-59",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 83.0, 97.0, 21.0, 17.0 ],
									"text" : "cm"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"ft1" : 5.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-61",
									"interval" : 250.0,
									"maxclass" : "number~",
									"minimum" : 0.0,
									"mode" : 1,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 33.0, 95.0, 49.0, 17.0 ],
									"sig" : 34.0
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 33.0, 118.0, 47.0, 17.0 ],
									"text" : "*~ 0.01"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"ft1" : 5.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-65",
									"interval" : 250.0,
									"maxclass" : "number~",
									"maximum" : 0.0,
									"mode" : 1,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 105.0, 95.0, 49.0, 17.0 ],
									"sig" : -11.0
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 105.0, 118.0, 47.0, 17.0 ],
									"text" : "*~ 0.01"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 16.0, 166.0, 99.0, 17.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 16.0, 142.0, 27.0, 17.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Rounded MT Bold",
									"fontsize" : 12.0,
									"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
									"id" : "obj-75",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 276.0, 6.0, 74.0, 20.0 ],
									"text" : "1) Evaluate",
									"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 251.0, 2.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "StrikePlate", "@precision", "'float", "@script", "none", "@dump", 0, "@multi", 1 ],
									"id" : "obj-78",
									"maxclass" : "bpatcher",
									"name" : "mlys.script.pat",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 219.0, 323.0, 96.0, 38.0 ],
									"varname" : "mlys.script.pat"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ],
									"id" : "obj-79",
									"maxclass" : "scope~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 104.0, 435.0, 100.0, 50.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ],
									"id" : "obj-80",
									"maxclass" : "scope~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 386.0, 437.0, 100.0, 50.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-81",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 230.0, 426.0, 25.0, 15.0 ],
									"text" : "127"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-82",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 85.0, 509.0, 67.0, 15.0 ],
									"text" : "startwindow"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "ezdac~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 85.0, 528.0, 33.0, 33.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "list", "list" ],
									"patching_rect" : [ 219.0, 518.0, 72.0, 17.0 ],
									"text" : "omx.peaklim~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "gain~",
									"numinlets" : 2,
									"numoutlets" : 2,
									"orientation" : 2,
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 256.0, 442.0, 19.0, 66.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
									"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
									"id" : "obj-86",
									"maxclass" : "meter~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 277.0, 442.0, 13.0, 66.0 ],
									"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
									"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-91",
									"maxclass" : "gain~",
									"numinlets" : 2,
									"numoutlets" : 2,
									"orientation" : 2,
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 220.0, 442.0, 19.0, 66.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
									"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
									"id" : "obj-125",
									"maxclass" : "meter~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 241.0, 442.0, 13.0, 66.0 ],
									"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
									"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-126",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 5,
									"outlettype" : [ "signal", "signal", "signal", "signal", "list" ],
									"patching_rect" : [ 243.0, 399.0, 73.0, 17.0 ],
									"text" : "modalys~ 2 4",
									"varname" : "modalys~"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "Hammer-position", "@controller", "signal", "@channel", 1, "@position", 0.1 ],
									"id" : "obj-135",
									"maxclass" : "bpatcher",
									"name" : "mlys.position.pat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 218.0, 25.0, 116.0, 37.0 ],
									"varname" : "mlys.position.pat"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "Hammer", "@shape", "hammer" ],
									"id" : "obj-136",
									"maxclass" : "bpatcher",
									"name" : "mlys.mono-two-mass.pat",
									"numinlets" : 10,
									"numoutlets" : 10,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 218.0, 80.0, 109.0, 31.0 ],
									"varname" : "mlys.mono-two-mass.pat"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "Strike", "@hammer-position", 0.1, "@struck-position", 0.0 ],
									"id" : "obj-137",
									"maxclass" : "bpatcher",
									"name" : "mlys.strike.pat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 218.0, 130.0, 84.0, 36.0 ],
									"varname" : "mlys.strike.pat"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "FCP-out1", "@channel", 1, "@gain", 0.0 ],
									"id" : "obj-138",
									"maxclass" : "bpatcher",
									"name" : "mlys.point-output.pat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 218.0, 240.0, 84.0, 36.0 ],
									"varname" : "mlys.point-output.pat[1]"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "FCP-out2", "@channel", 2, "@gain", 0.0 ],
									"id" : "obj-139",
									"maxclass" : "bpatcher",
									"name" : "mlys.point-output.pat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 307.0, 240.0, 84.0, 36.0 ],
									"varname" : "mlys.point-output.pat"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-140",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 155.0, 97.0, 24.0, 17.0 ],
									"text" : "cm"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-141",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 406.0, 23.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "FreeCircPlate", "@modes", 80, "@tune", "radius", "@pitch", "G#0" ],
									"id" : "obj-143",
									"maxclass" : "bpatcher",
									"name" : "mlys.free-circ-plate.pat",
									"numinlets" : 10,
									"numoutlets" : 10,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 218.0, 196.0, 119.0, 35.0 ],
									"varname" : "mlys.free-circ-plate.pat"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-144",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 431.0, 29.0, 16.0, 17.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 329.0, 588.0, 89.0, 17.0 ],
									"text" : "send~ mdlys_out_4"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 310.0, 552.0, 89.0, 17.0 ],
									"text" : "send~ mdlys_out_3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 220.0, 553.0, 89.0, 17.0 ],
									"text" : "send~ mdlys_out_2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 197.0, 580.0, 89.0, 17.0 ],
									"text" : "send~ mdlys_out_1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-70",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 0.0, 418.0, 16.0, 15.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 16.0, 417.0, 46.0, 17.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"bubblesize" : 8,
									"id" : "obj-72",
									"margin" : 4,
									"maxclass" : "preset",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "preset", "int", "preset", "int" ],
									"patching_rect" : [ 1.0, 450.0, 55.0, 37.0 ],
									"preset_data" : [ 										{
											"number" : 1,
											"data" : [ 6, "obj-91", "gain~", "list", 0, 10.0, 6, "obj-85", "gain~", "list", 0, 10.0, 5, "obj-65", "number~", "list", -8.0, 5, "obj-61", "number~", "list", 0.0, 5, "obj-44", "number~", "list", 0.0, 5, "obj-15", "led", "int", 0, 5, "obj-118", "led", "int", 0, 5, "obj-115", "number~", "list", 0.0, 5, "<invalid>", "slider", "float", 0.0, 6, "obj-29", "gain~", "list", 0, 10.0, 6, "obj-21", "gain~", "list", 0, 10.0 ]
										}
, 										{
											"number" : 2,
											"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "obj-59", "gain~", "list", 128, 10.0, 6, "obj-57", "gain~", "list", 128, 10.0, 6, "obj-55", "gain~", "list", 128, 10.0, 6, "obj-22", "gain~", "list", 128, 10.0, 5, "obj-1", "led", "int", 0, 5, "obj-45", "led", "int", 0, 5, "obj-44", "led", "int", 0, 5, "obj-43", "led", "int", 0, 5, "obj-41", "led", "int", 0, 5, "obj-1", "led", "int", 0, 5, "obj-9", "led", "int", 0, 5, "obj-8", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "obj-27", "led", "int", 0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
										}
, 										{
											"number" : 3,
											"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "obj-59", "gain~", "list", 128, 10.0, 6, "obj-57", "gain~", "list", 128, 10.0, 6, "obj-55", "gain~", "list", 128, 10.0, 6, "obj-22", "gain~", "list", 128, 10.0, 5, "obj-1", "led", "int", 0, 5, "obj-45", "led", "int", 0, 5, "obj-44", "led", "int", 0, 5, "obj-43", "led", "int", 0, 5, "obj-41", "led", "int", 0, 5, "obj-1", "led", "int", 0, 5, "obj-9", "led", "int", 0, 5, "obj-8", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "obj-27", "led", "int", 0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
										}
, 										{
											"number" : 4,
											"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "obj-59", "gain~", "list", 128, 10.0, 6, "obj-57", "gain~", "list", 128, 10.0, 6, "obj-55", "gain~", "list", 128, 10.0, 6, "obj-22", "gain~", "list", 128, 10.0, 5, "obj-1", "led", "int", 0, 5, "obj-45", "led", "int", 0, 5, "obj-44", "led", "int", 0, 5, "obj-43", "led", "int", 0, 5, "obj-41", "led", "int", 0, 5, "obj-1", "led", "int", 0, 5, "obj-9", "led", "int", 0, 5, "obj-8", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "obj-27", "led", "int", 0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
										}
, 										{
											"number" : 5,
											"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "obj-59", "gain~", "list", 128, 10.0, 6, "obj-57", "gain~", "list", 128, 10.0, 6, "obj-55", "gain~", "list", 128, 10.0, 6, "obj-22", "gain~", "list", 128, 10.0, 5, "obj-1", "led", "int", 0, 5, "obj-45", "led", "int", 0, 5, "obj-44", "led", "int", 0, 5, "obj-43", "led", "int", 0, 5, "obj-41", "led", "int", 0, 5, "obj-1", "led", "int", 0, 5, "obj-9", "led", "int", 0, 5, "obj-8", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "obj-27", "led", "int", 0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
										}
, 										{
											"number" : 6,
											"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "obj-59", "gain~", "list", 128, 10.0, 6, "obj-57", "gain~", "list", 128, 10.0, 6, "obj-55", "gain~", "list", 128, 10.0, 6, "obj-22", "gain~", "list", 128, 10.0, 5, "obj-1", "led", "int", 0, 5, "obj-45", "led", "int", 0, 5, "obj-44", "led", "int", 0, 5, "obj-43", "led", "int", 0, 5, "obj-41", "led", "int", 0, 5, "obj-1", "led", "int", 0, 5, "obj-9", "led", "int", 0, 5, "obj-8", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "obj-27", "led", "int", 0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
										}
, 										{
											"number" : 7,
											"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "obj-59", "gain~", "list", 128, 10.0, 6, "obj-57", "gain~", "list", 128, 10.0, 6, "obj-55", "gain~", "list", 128, 10.0, 6, "obj-22", "gain~", "list", 128, 10.0, 5, "obj-1", "led", "int", 0, 5, "obj-45", "led", "int", 0, 5, "obj-44", "led", "int", 0, 5, "obj-43", "led", "int", 0, 5, "obj-41", "led", "int", 0, 5, "obj-1", "led", "int", 0, 5, "obj-9", "led", "int", 0, 5, "obj-8", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "obj-27", "led", "int", 0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
										}
, 										{
											"number" : 8,
											"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "obj-59", "gain~", "list", 128, 10.0, 6, "obj-57", "gain~", "list", 128, 10.0, 6, "obj-55", "gain~", "list", 128, 10.0, 6, "obj-22", "gain~", "list", 128, 10.0, 5, "obj-1", "led", "int", 0, 5, "obj-45", "led", "int", 0, 5, "obj-44", "led", "int", 0, 5, "obj-43", "led", "int", 0, 5, "obj-41", "led", "int", 0, 5, "obj-1", "led", "int", 0, 5, "obj-9", "led", "int", 0, 5, "obj-8", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "obj-27", "led", "int", 0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
										}
, 										{
											"number" : 9,
											"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "obj-59", "gain~", "list", 128, 10.0, 6, "obj-57", "gain~", "list", 128, 10.0, 6, "obj-55", "gain~", "list", 128, 10.0, 6, "obj-22", "gain~", "list", 128, 10.0, 5, "obj-1", "led", "int", 0, 5, "obj-45", "led", "int", 0, 5, "obj-44", "led", "int", 0, 5, "obj-43", "led", "int", 0, 5, "obj-41", "led", "int", 0, 5, "obj-1", "led", "int", 0, 5, "obj-9", "led", "int", 0, 5, "obj-8", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "obj-27", "led", "int", 0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
										}
, 										{
											"number" : 10,
											"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "obj-59", "gain~", "list", 128, 10.0, 6, "obj-57", "gain~", "list", 128, 10.0, 6, "obj-55", "gain~", "list", 128, 10.0, 6, "obj-22", "gain~", "list", 128, 10.0, 5, "obj-1", "led", "int", 0, 5, "obj-45", "led", "int", 0, 5, "obj-44", "led", "int", 0, 5, "obj-43", "led", "int", 0, 5, "obj-41", "led", "int", 0, 5, "obj-1", "led", "int", 0, 5, "obj-9", "led", "int", 0, 5, "obj-8", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "obj-27", "led", "int", 0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
										}
, 										{
											"number" : 11,
											"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "obj-59", "gain~", "list", 128, 10.0, 6, "obj-57", "gain~", "list", 128, 10.0, 6, "obj-55", "gain~", "list", 128, 10.0, 6, "obj-22", "gain~", "list", 128, 10.0, 5, "obj-1", "led", "int", 0, 5, "obj-45", "led", "int", 0, 5, "obj-44", "led", "int", 0, 5, "obj-43", "led", "int", 0, 5, "obj-41", "led", "int", 0, 5, "obj-1", "led", "int", 0, 5, "obj-9", "led", "int", 0, 5, "obj-8", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "obj-27", "led", "int", 0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
										}
, 										{
											"number" : 12,
											"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "obj-59", "gain~", "list", 128, 10.0, 6, "obj-57", "gain~", "list", 128, 10.0, 6, "obj-55", "gain~", "list", 128, 10.0, 6, "obj-22", "gain~", "list", 128, 10.0, 5, "obj-1", "led", "int", 0, 5, "obj-45", "led", "int", 0, 5, "obj-44", "led", "int", 0, 5, "obj-43", "led", "int", 0, 5, "obj-41", "led", "int", 0, 5, "obj-1", "led", "int", 0, 5, "obj-9", "led", "int", 0, 5, "obj-8", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "obj-27", "led", "int", 0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
										}
, 										{
											"number" : 13,
											"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "obj-59", "gain~", "list", 128, 10.0, 6, "obj-57", "gain~", "list", 128, 10.0, 6, "obj-55", "gain~", "list", 128, 10.0, 6, "obj-22", "gain~", "list", 128, 10.0, 5, "obj-1", "led", "int", 0, 5, "obj-45", "led", "int", 0, 5, "obj-44", "led", "int", 0, 5, "obj-43", "led", "int", 0, 5, "obj-41", "led", "int", 0, 5, "obj-1", "led", "int", 0, 5, "obj-9", "led", "int", 0, 5, "obj-8", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "obj-27", "led", "int", 0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
										}
 ],
									"spacing" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-119", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-115", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-116", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-126", 1 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-116", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-119", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-118", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-119", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-126", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-126", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [ 252.5, 424.0, 113.5, 424.0 ],
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-126", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-126", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-91", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-136", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-135", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-136", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-143", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-137", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-138", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-139", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-141", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-138", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-143", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-139", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-143", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-151", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-29", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-119", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-39", 0 ]
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
									"destination" : [ "obj-126", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-135", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-151", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-126", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-91", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-84", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-84", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 1 ],
									"hidden" : 0,
									"midpoints" : [ 263.5, 512.0, 281.5, 512.0 ],
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-91", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-91", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-91", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-92", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-92", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-93", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 38.0, 15.0, 72.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial"
					}
,
					"text" : "p mdlys",
					"varname" : "mdlys"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-16", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-16", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-16", 0 ]
				}

			}
 ],
		"parameters" : 		{

		}

	}

}
