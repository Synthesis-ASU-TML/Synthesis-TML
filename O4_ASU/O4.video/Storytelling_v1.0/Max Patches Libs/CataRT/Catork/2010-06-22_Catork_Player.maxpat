{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 85.0, 362.0, 332.0, 367.0 ],
		"bglocked" : 0,
		"defrect" : [ 85.0, 362.0, 332.0, 367.0 ],
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
					"maxclass" : "newobj",
					"text" : "r lb",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 441.586945, 537.127747, 27.0, 20.0 ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p load-piece",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 135.0, 240.0, 76.0, 20.0 ],
					"id" : "obj-100",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 704.0, 616.0, 345.0, 232.0 ],
						"bglocked" : 0,
						"defrect" : [ 704.0, 616.0, 345.0, 232.0 ],
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
									"text" : "print Player-ID",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 334.0, 231.0, 87.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3) Select your part:",
									"presentation_linecount" : 2,
									"fontface" : 1,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 135.0, 176.0, 119.0, 48.0 ],
									"patching_rect" : [ 45.0, 135.0, 174.0, 27.0 ],
									"presentation" : 1,
									"id" : "obj-24",
									"fontname" : "Trebuchet MS",
									"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"fontsize" : 18.0,
									"numoutlets" : 3,
									"items" : [ "a", ",", "b", ",", "c", ",", "d", ",", "e", ",", "f", ",", "g", ",", "h", ",", "i", ",", "j", ",", "k", ",", "l", ",", "m", ",", "n", ",", "o", ",", "p", ",", "q", ",", "r", ",", "s", ",", "t", ",", "u", ",", "v", ",", "w", ",", "x", ",", "y", ",", "z" ],
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 221.0, 135.0, 58.0, 27.0 ],
									"framecolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
									"id" : "obj-23",
									"fontname" : "Trebuchet MS Bold",
									"types" : [  ],
									"numinlets" : 1,
									"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s score_identify-player",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 249.376678, 201.535919, 131.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-19",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "(this is where Events live)",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 351.0, 84.0, 150.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-17",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "(close this window when you are done)",
									"presentation_linecount" : 3,
									"fontface" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 150.0, 191.0, 116.0, 48.0 ],
									"patching_rect" : [ 57.0, 191.0, 230.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-15",
									"fontname" : "Trebuchet MS",
									"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.101961 ],
									"presentation_rect" : [ 163.0, 222.0, 22.04904, 22.04904 ],
									"outlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.34902 ],
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 256.0, 44.0, 34.0, 34.0 ],
									"presentation" : 1,
									"id" : "obj-14",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.101961 ],
									"presentation_rect" : [ 213.0, 236.0, 22.04904, 22.04904 ],
									"outlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.34902 ],
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 256.0, 85.0, 34.0, 34.0 ],
									"presentation" : 1,
									"id" : "obj-102",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1) Load Events txt file:",
									"presentation_linecount" : 3,
									"fontface" : 1,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 135.0, 176.0, 119.0, 69.0 ],
									"patching_rect" : [ 45.0, 45.0, 211.0, 27.0 ],
									"presentation" : 1,
									"id" : "obj-13",
									"fontname" : "Trebuchet MS",
									"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2) Load Presets txt file:",
									"presentation_linecount" : 3,
									"fontface" : 1,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 120.0, 161.0, 119.0, 69.0 ],
									"patching_rect" : [ 45.0, 90.0, 210.0, 27.0 ],
									"presentation" : 1,
									"id" : "obj-101",
									"fontname" : "Trebuchet MS",
									"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 35.0, 238.0, 35.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 35.0, 262.0, 69.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "read",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 359.0, 31.0, 35.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s score_qlist-filename",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 359.0, 59.0, 127.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "read",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 358.0, 132.0, 35.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s to-presets-coll",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 358.0, 157.0, 95.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-99",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 35.0, 208.0, 25.0, 25.0 ],
									"hidden" : 1,
									"id" : "obj-1",
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"midpoints" : [ 265.5, 82.0, 317.0, 82.0, 317.0, 21.0, 368.5, 21.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-102", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [ 265.5, 125.0, 367.5, 125.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-99", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "composer's corner ->",
					"fontface" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 154.0, 323.0, 128.0, 20.0 ],
					"patching_rect" : [ 1031.565674, 142.117279, 128.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-98",
					"fontname" : "Trebuchet MS",
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : " up ----->\n\ndown -->",
					"linecount" : 3,
					"presentation_linecount" : 3,
					"fontface" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 209.0, 136.0, 61.0, 48.0 ],
					"patching_rect" : [ 1020.0, 90.0, 110.0, 48.0 ],
					"presentation" : 1,
					"id" : "obj-91",
					"fontname" : "Trebuchet MS",
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.101961 ],
					"presentation_rect" : [ 139.0, 221.0, 22.04904, 22.04904 ],
					"outlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.34902 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 135.0, 195.0, 34.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-76",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "4",
					"fontsize" : 44.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 195.0, 85.0, 41.0, 58.0 ],
					"patching_rect" : [ 1005.0, 360.0, 60.0, 58.0 ],
					"presentation" : 1,
					"id" : "obj-70",
					"fontname" : "Trebuchet MS Bold",
					"frgb" : [ 0.337255, 0.337255, 0.337255, 0.25098 ],
					"numinlets" : 1,
					"textcolor" : [ 0.337255, 0.337255, 0.337255, 0.25098 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3",
					"fontsize" : 44.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 15.0, 265.0, 41.0, 58.0 ],
					"patching_rect" : [ 930.0, 360.0, 60.0, 58.0 ],
					"presentation" : 1,
					"id" : "obj-69",
					"fontname" : "Trebuchet MS Bold",
					"frgb" : [ 0.337255, 0.337255, 0.337255, 0.25098 ],
					"numinlets" : 1,
					"textcolor" : [ 0.337255, 0.337255, 0.337255, 0.25098 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2",
					"fontsize" : 44.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 16.0, 204.0, 41.0, 58.0 ],
					"patching_rect" : [ 1005.0, 300.0, 60.0, 58.0 ],
					"presentation" : 1,
					"id" : "obj-67",
					"fontname" : "Trebuchet MS Bold",
					"frgb" : [ 0.337255, 0.337255, 0.337255, 0.25098 ],
					"numinlets" : 1,
					"textcolor" : [ 0.337255, 0.337255, 0.337255, 0.25098 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1",
					"fontsize" : 44.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 15.0, 144.0, 41.0, 58.0 ],
					"patching_rect" : [ 930.0, 300.0, 60.0, 58.0 ],
					"presentation" : 1,
					"id" : "obj-66",
					"fontname" : "Trebuchet MS Bold",
					"frgb" : [ 0.337255, 0.337255, 0.337255, 0.25098 ],
					"numinlets" : 1,
					"textcolor" : [ 0.337255, 0.337255, 0.337255, 0.25098 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "initialize ->",
					"fontface" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 67.0, 162.0, 75.0, 20.0 ],
					"patching_rect" : [ 956.565735, 37.117279, 115.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-65",
					"fontname" : "Trebuchet MS",
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "volume",
					"fontface" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 235.0, 106.0, 51.0, 20.0 ],
					"patching_rect" : [ 1001.565735, 67.117279, 110.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-64",
					"fontname" : "Trebuchet MS",
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "audio on ->",
					"fontface" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 63.0, 282.0, 74.0, 20.0 ],
					"patching_rect" : [ 986.565735, 52.117279, 109.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-62",
					"fontname" : "Trebuchet MS",
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "load piece ->",
					"fontface" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 59.0, 222.0, 83.0, 20.0 ],
					"patching_rect" : [ 926.565735, 22.117277, 109.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-61",
					"fontname" : "Trebuchet MS",
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0",
					"fontsize" : 44.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 16.0, 84.0, 41.0, 58.0 ],
					"patching_rect" : [ 870.0, 300.0, 60.0, 58.0 ],
					"presentation" : 1,
					"id" : "obj-60",
					"fontname" : "Trebuchet MS Bold",
					"frgb" : [ 0.337255, 0.337255, 0.337255, 0.25098 ],
					"numinlets" : 1,
					"textcolor" : [ 0.337255, 0.337255, 0.337255, 0.25098 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
					"presentation_rect" : [ 15.0, 211.0, 165.41861, 44.156166 ],
					"patching_rect" : [ 867.0, 146.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-48",
					"bordercolor" : [ 0.74902, 0.301961, 0.101961, 0.698039 ],
					"border" : 2,
					"numinlets" : 1,
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.101961 ],
					"presentation_rect" : [ 139.0, 101.0, 22.04904, 22.04904 ],
					"outlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.34902 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 420.066498, 592.445618, 34.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-44",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 419.865723, 638.244568, 37.0, 18.0 ],
					"id" : "obj-40",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s to-dac",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 420.0, 660.0, 53.0, 20.0 ],
					"id" : "obj-35",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dsp status ->",
					"fontface" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 60.0, 101.0, 82.0, 20.0 ],
					"patching_rect" : [ 911.565735, 7.117277, 112.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-4",
					"fontname" : "Trebuchet MS",
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "CataRT skin for *LOrks",
					"fontsize" : 13.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 25.0, 45.0, 147.0, 21.0 ],
					"patching_rect" : [ 199.973709, 385.392334, 144.0, 21.0 ],
					"presentation" : 1,
					"id" : "obj-12",
					"fontname" : "Arial",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Catork",
					"fontsize" : 24.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 24.0, 16.0, 93.0, 34.0 ],
					"patching_rect" : [ 99.0, 373.0, 93.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-8",
					"fontname" : "Arial Bold",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.101961 ],
					"presentation_rect" : [ 280.0, 322.0, 22.04904, 22.04904 ],
					"outlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.34902 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 32.0, 203.0, 34.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-3",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p presets",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 31.0, 173.502625, 60.0, 20.0 ],
					"id" : "obj-295",
					"fontname" : "Arial",
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 483.0, 425.0, 1127.0, 573.0 ],
						"bglocked" : 0,
						"defrect" : [ 483.0, 425.0, 1127.0, 573.0 ],
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
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 305.0, 48.0, 50.0, 20.0 ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 0",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 165.447433, 326.65799, 35.0, 20.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 165.25, 351.486847, 44.0, 20.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r to-presets-gate",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.658081, 319.484436, 99.0, 20.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl group",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 190.0, 379.0, 53.0, 20.0 ],
									"id" : "obj-31",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- dump may be sent from the composer's corner to print current Presets (index)",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 163.0, 209.0, 437.0, 20.0 ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route dump",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 65.0, 235.0, 71.0, 20.0 ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 dump 0",
									"fontsize" : 12.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "dump", "int" ],
									"patching_rect" : [ 65.0, 262.0, 69.0, 20.0 ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 115.0, 320.0, 44.0, 20.0 ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Presets file loaded successfully!",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 250.0, 337.0, 181.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print Presets",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 250.0, 417.0, 78.0, 20.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r to-presets-coll",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 64.658081, 209.484436, 93.0, 20.0 ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "PRESET STUFF",
									"fontsize" : 36.0,
									"numoutlets" : 0,
									"patching_rect" : [ 450.0, 10.0, 281.0, 48.0 ],
									"id" : "obj-7",
									"fontname" : "Arial Bold",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "and this part specializes in testing which corpus is currently loaded and, if applicable, load a new one when recalled.",
									"linecount" : 5,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 944.0, 277.497375, 169.0, 75.0 ],
									"id" : "obj-4",
									"fontname" : "Arial Bold",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "this part is the one taking care of all presets (saving and recalling to/from a coll stored as a text file)",
									"linecount" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 450.0, 121.497375, 308.0, 34.0 ],
									"id" : "obj-3",
									"fontname" : "Arial Bold",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 861.0, 372.497375, 20.0, 20.0 ],
									"id" : "obj-285",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s s",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 876.0, 399.497375, 120.0, 20.0 ],
									"id" : "obj-283",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s current-corpus",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 876.490051, 425.4953, 97.0, 20.0 ],
									"id" : "obj-282",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "corpus-bad",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 889.0, 373.497375, 98.0, 18.0 ],
									"id" : "obj-279",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 876.0, 312.497375, 20.0, 20.0 ],
									"id" : "obj-277",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 0",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 876.0, 288.497375, 35.0, 20.0 ],
									"id" : "obj-275",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 876.0, 346.497375, 44.0, 20.0 ],
									"id" : "obj-274",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl compare",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 876.334717, 263.213745, 69.0, 20.0 ],
									"id" : "obj-250",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l b",
									"fontsize" : 12.0,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "bang" ],
									"patching_rect" : [ 903.0, 186.497375, 46.0, 20.0 ],
									"id" : "obj-249",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 925.87915, 210.814362, 20.0, 20.0 ],
									"id" : "obj-238",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "value current-corpus",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 925.990601, 237.561035, 120.0, 20.0 ],
									"id" : "obj-231",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r recall-corpus",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 903.220154, 161.0, 87.0, 20.0 ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 524.0, 290.649963, 50.0, 20.0 ],
									"id" : "obj-204",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r player_recall-preset",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 524.0, 258.484436, 123.0, 20.0 ],
									"id" : "obj-202",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- sort after each new preset is saved",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 153.0, 152.497375, 216.0, 20.0 ],
									"id" : "obj-201",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 88.0, 127.497375, 20.0, 20.0 ],
									"id" : "obj-199",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p recall-presets",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 114.559204, 512.598877, 93.0, 20.0 ],
									"id" : "obj-197",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 900.0, 506.0, 626.0, 546.0 ],
										"bglocked" : 0,
										"defrect" : [ 900.0, 506.0, 626.0, 546.0 ],
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
													"text" : "p to-arrows",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 102.0, 287.0, 71.0, 20.0 ],
													"id" : "obj-18",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 291.0, 433.0, 766.0, 430.0 ],
														"bglocked" : 0,
														"defrect" : [ 291.0, 433.0, 766.0, 430.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "these values go to  [lcd-controls] > routing subpatch in order to update the arrow starting point. The bug, for example, was: the user was arrowing Gain up or down around -3. Then he invokes a preset which brings Gain down to -99. He then tries to move the Gain up one dB (i.e., to -98) by hitting the arrow up key. Suddenly, the Gain would jump back to -3 (where the last \"arrowed\" value was).\n\nThis subpatch fix this by sending current value taken from preset to overwrite previous arrow value.",
																	"linecount" : 6,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 109.965157, 266.375214, 544.0, 89.0 ],
																	"id" : "obj-5",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s rate-std_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 91.81575, 161.6996, 101.0, 20.0 ],
																	"id" : "obj-4",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s gain-std_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 394.59082, 237.643356, 103.0, 20.0 ],
																	"id" : "obj-171",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s size-std_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 166.608429, 229.238983, 101.0, 20.0 ],
																	"id" : "obj-172",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s transposition-std_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 325.367432, 167.690887, 148.0, 20.0 ],
																	"id" : "obj-173",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s onset-std_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 506.424927, 169.656601, 109.0, 20.0 ],
																	"id" : "obj-174",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s reverse-prob_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 479.210236, 127.379478, 128.0, 20.0 ],
																	"id" : "obj-175",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s gain_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 360.414429, 206.930222, 83.0, 20.0 ],
																	"id" : "obj-176",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s xfade_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 223.750824, 156.732132, 89.0, 20.0 ],
																	"id" : "obj-177",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s size_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 140.07869, 192.181381, 81.0, 20.0 ],
																	"id" : "obj-178",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s transposition_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 297.652161, 128.933685, 128.0, 20.0 ],
																	"id" : "obj-179",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s rate_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 74.952988, 133.039337, 81.0, 20.0 ],
																	"id" : "obj-180",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route rate rate_std duration duration_std xfade transposition transposition_std gain gain_std reverse onset_std",
																	"fontsize" : 12.0,
																	"numoutlets" : 12,
																	"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "" ],
																	"patching_rect" : [ 75.0, 90.0, 596.0, 20.0 ],
																	"id" : "obj-2",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 75.0, 52.0, 25.0, 25.0 ],
																	"id" : "obj-1",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 10 ],
																	"destination" : [ "obj-174", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 9 ],
																	"destination" : [ "obj-175", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 8 ],
																	"destination" : [ "obj-171", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 7 ],
																	"destination" : [ "obj-176", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 6 ],
																	"destination" : [ "obj-173", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 5 ],
																	"destination" : [ "obj-179", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 4 ],
																	"destination" : [ "obj-177", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 3 ],
																	"destination" : [ "obj-172", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 2 ],
																	"destination" : [ "obj-178", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 1 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-180", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"default_fontname" : "Arial",
														"fontsize" : 12.0,
														"default_fontsize" : 12.0,
														"fontname" : "Arial",
														"default_fontface" : 0,
														"globalpatchername" : ""
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p to-display",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 204.0, 288.0, 72.0, 20.0 ],
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 184.0, 605.0, 689.0, 337.0 ],
														"bglocked" : 0,
														"defrect" : [ 184.0, 605.0, 689.0, 337.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s rate-std_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 91.81575, 161.6996, 105.0, 20.0 ],
																	"id" : "obj-4",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s gain-std_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 394.59082, 237.643356, 107.0, 20.0 ],
																	"id" : "obj-171",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s size-std_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 166.608429, 229.238983, 105.0, 20.0 ],
																	"id" : "obj-172",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s transposition-std_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 325.367432, 167.690887, 152.0, 20.0 ],
																	"id" : "obj-173",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s onset-std_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 506.424927, 169.656601, 113.0, 20.0 ],
																	"id" : "obj-174",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s reverse-prob_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 479.210236, 127.379478, 132.0, 20.0 ],
																	"id" : "obj-175",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s gain_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 360.414429, 206.930222, 87.0, 20.0 ],
																	"id" : "obj-176",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s xfade_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 223.750824, 156.732132, 93.0, 20.0 ],
																	"id" : "obj-177",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s size_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 140.07869, 192.181381, 85.0, 20.0 ],
																	"id" : "obj-178",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s transposition_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 297.652161, 128.933685, 132.0, 20.0 ],
																	"id" : "obj-179",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s rate_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 74.952988, 133.039337, 85.0, 20.0 ],
																	"id" : "obj-180",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route rate rate_std duration duration_std xfade transposition transposition_std gain gain_std reverse onset_std",
																	"fontsize" : 12.0,
																	"numoutlets" : 12,
																	"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "" ],
																	"patching_rect" : [ 75.0, 90.0, 596.0, 20.0 ],
																	"id" : "obj-2",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 75.0, 52.0, 25.0, 25.0 ],
																	"id" : "obj-1",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 10 ],
																	"destination" : [ "obj-174", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 9 ],
																	"destination" : [ "obj-175", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 8 ],
																	"destination" : [ "obj-171", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 7 ],
																	"destination" : [ "obj-176", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 6 ],
																	"destination" : [ "obj-173", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 5 ],
																	"destination" : [ "obj-179", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 4 ],
																	"destination" : [ "obj-177", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 3 ],
																	"destination" : [ "obj-172", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 2 ],
																	"destination" : [ "obj-178", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 1 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-180", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"default_fontname" : "Arial",
														"fontsize" : 12.0,
														"default_fontsize" : 12.0,
														"fontname" : "Arial",
														"default_fontface" : 0,
														"globalpatchername" : ""
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "This patch sorts incoming preset messages from coll",
													"linecount" : 2,
													"fontsize" : 14.0,
													"numoutlets" : 0,
													"patching_rect" : [ 48.0, 10.0, 196.0, 39.0 ],
													"id" : "obj-10",
													"fontname" : "Arial Bold",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s recall-corpus",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 180.220154, 344.502625, 89.0, 20.0 ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route corpus",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 180.0, 318.0, 131.0, 20.0 ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "All these messages get sent to catart.lcd.simple2, which take care of recalling all values.\n\nOnly \"corpus\" message has to go somewhere else and treated differently (we want first to check whether the corpus being recalled doesn't happen to be loaded already)",
													"linecount" : 10,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 177.489441, 368.71051, 195.0, 144.0 ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s to-catart-lcd",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 292.220154, 344.502625, 83.0, 20.0 ],
													"id" : "obj-186",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Desired output order:\n\n* corpus my-corpus-name\n* trigger 2\n* set-descriptors Relstart Shift Pitch\n* rate 1318\n* rate_std 6\n* size 68\n* size_std 90\n* xfade 102\n* transposition 9.4\n* transposition_std 4.4\n* gain -44.\n* gain_std 5.5\n* reverse 52\n* onset_std 1\n* radius 1.\n* setpos 0.43609 0.453634\n* freeze 1\n",
													"linecount" : 19,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 383.289673, 252.717102, 199.0, 269.0 ],
													"id" : "obj-185",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "delay 40",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 23.894775, 186.012146, 56.0, 20.0 ],
													"id" : "obj-183",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "30 31, 32 33 34, 35 36",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 24.0, 210.610535, 131.0, 18.0 ],
													"id" : "obj-182",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 24.435547, 161.0, 175.0, 20.0 ],
													"id" : "obj-179",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0 1, 2 3, 4 5 6 7, 8 9, 10 11, 12 13, 14 15, 16 17, 18 19, 20 21, 22 23, 24 25, 26 27, 28 29",
													"linecount" : 2,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 179.86676, 198.20459, 248.0, 32.0 ],
													"id" : "obj-175",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl lookup",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 180.132996, 257.342712, 159.605301, 20.0 ],
													"id" : "obj-173",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 106.284302, 59.0, 25.0, 25.0 ],
													"id" : "obj-196",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-173", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-179", 1 ],
													"destination" : [ "obj-175", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-196", 0 ],
													"destination" : [ "obj-179", 0 ],
													"hidden" : 0,
													"midpoints" : [ 115.784302, 122.0, 33.935547, 122.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-179", 0 ],
													"destination" : [ "obj-183", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-182", 0 ],
													"destination" : [ "obj-173", 0 ],
													"hidden" : 0,
													"midpoints" : [ 33.5, 242.476624, 189.632996, 242.476624 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-173", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-186", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-173", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-175", 0 ],
													"destination" : [ "obj-173", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-183", 0 ],
													"destination" : [ "obj-182", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-196", 0 ],
													"destination" : [ "obj-173", 1 ],
													"hidden" : 0,
													"midpoints" : [ 115.784302, 104.171356, 330.238281, 104.171356 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "this stuff here just for visualization",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 248.0, 488.497375, 217.0, 20.0 ],
									"id" : "obj-195",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 115.0, 365.497375, 41.5, 20.0 ],
									"id" : "obj-193",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 115.0, 416.497375, 20.0, 20.0 ],
									"id" : "obj-192",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p save-presets",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 139.916382, 96.732056, 89.0, 20.0 ],
									"id" : "obj-190",
									"fontname" : "Arial",
									"numinlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 272.0, 384.0, 1317.0, 689.0 ],
										"bglocked" : 0,
										"defrect" : [ 272.0, 384.0, 1317.0, 689.0 ],
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
													"maxclass" : "comment",
													"text" : "When the composer decides to save a preset, the following actions happen:\n- a bang is sent to \"composer_report-value\" (update all applicable \"value\" boxes)\n- the number chosen for the preset being saved is sent to \"prepend\" (it will become an index of the coll) \n- a bang is sent to all \"value\" boxes, in order to get current values out and make a big list out of them",
													"linecount" : 4,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 600.0, 51.0, 585.0, 62.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "print saved-preset",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 73.0, 614.0, 107.0, 20.0 ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 289.083618, 50.765305, 50.0, 20.0 ],
													"id" : "obj-141",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 651.41333, 250.222839, 20.0, 20.0 ],
													"id" : "obj-138",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 51.962097, 484.732056, 348.306335, 20.0 ],
													"id" : "obj-129",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 52.323669, 565.637756, 55.0, 20.0 ],
													"id" : "obj-123",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 723.303711, 253.471497, 50.0, 20.0 ],
													"id" : "obj-122",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s composer_report-value",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 795.08728, 252.420593, 143.0, 20.0 ],
													"id" : "obj-119",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i b",
													"fontsize" : 12.0,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "int", "bang" ],
													"patching_rect" : [ 651.338745, 224.715393, 162.453796, 20.0 ],
													"id" : "obj-118",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r composer_save-preset",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 650.8396, 198.000977, 140.0, 20.0 ],
													"id" : "obj-117",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 380.97998, 459.183044, 606.249451, 20.0 ],
													"id" : "obj-114",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0 0 0. 0. 0.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 967.842529, 392.638611, 238.749817, 20.0 ],
													"id" : "obj-112",
													"fontname" : "Arial",
													"numinlets" : 5
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0 0 0 0 0 0. 0. 0. 0.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 380.761963, 392.638611, 473.676575, 20.0 ],
													"id" : "obj-111",
													"fontname" : "Arial",
													"numinlets" : 9
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "reverse $1 onset_std $2 radius $3 setpos $4 $5 freeze 1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 968.031738, 423.214996, 315.210358, 18.0 ],
													"id" : "obj-110",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "rate $1 rate_std $2 duration $3 duration_std $4 xfade $5 transposition $6 transposition_std $7 gain $8 gain_std $9",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 336.381104, 420.96106, 621.0, 18.0 ],
													"id" : "obj-108",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "corpus $1 trigger $2 set-descriptors $3 $4 $5",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.48175, 425.340149, 249.0, 18.0 ],
													"id" : "obj-106",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value onset",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1023.271973, 364.056091, 72.0, 20.0 ],
													"id" : "obj-105",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value reverse",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 968.233154, 340.682556, 83.0, 20.0 ],
													"id" : "obj-104",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value gain-std",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 835.490479, 364.056091, 85.0, 20.0 ],
													"id" : "obj-102",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value gain",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 779.509766, 339.179932, 65.0, 20.0 ],
													"id" : "obj-103",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value transp-std",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 721.763916, 364.056091, 96.0, 20.0 ],
													"id" : "obj-101",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value transp",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 665.162354, 339.179932, 76.0, 20.0 ],
													"id" : "obj-100",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value x-fade",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 607.939697, 364.056091, 76.0, 20.0 ],
													"id" : "obj-99",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value size-std",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 551.19397, 339.179932, 84.0, 20.0 ],
													"id" : "obj-96",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value size",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 494.213257, 364.056091, 64.0, 20.0 ],
													"id" : "obj-98",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value rate-std",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 437.709351, 339.179932, 83.0, 20.0 ],
													"id" : "obj-95",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value rate",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 381.107666, 364.056091, 63.0, 20.0 ],
													"id" : "obj-92",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack corpus 1 x y z",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 400.880432, 252.744553, 20.0 ],
													"id" : "obj-78",
													"fontname" : "Arial",
													"numinlets" : 5
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value trigger-mode",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 108.441826, 346.299683, 111.0, 20.0 ],
													"id" : "obj-77",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value lcd-y-position",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1188.384033, 339.179932, 113.0, 20.0 ],
													"id" : "obj-74",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value lcd-x-position",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1132.654297, 364.056091, 113.0, 20.0 ],
													"id" : "obj-75",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value lcd-y-position",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 472.040405, 129.903503, 113.0, 20.0 ],
													"id" : "obj-72",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value radius",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1077.899902, 339.179932, 75.0, 20.0 ],
													"id" : "obj-70",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value z-axis",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.770355, 374.284088, 74.0, 20.0 ],
													"id" : "obj-68",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value y-axis",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 224.81366, 346.299683, 74.0, 20.0 ],
													"id" : "obj-67",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value x-axis",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 166.884689, 374.284088, 74.0, 20.0 ],
													"id" : "obj-66",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value current-corpus",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 40.704414, 373.284088, 120.0, 20.0 ],
													"id" : "obj-65",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value current-corpus",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 253.999146, 155.263382, 120.0, 20.0 ],
													"id" : "obj-63",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r current-corpus",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 254.259033, 128.575821, 95.0, 20.0 ],
													"id" : "obj-64",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r composer_report-value",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 88.08728, 105.692871, 141.0, 20.0 ],
													"id" : "obj-62",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 149.534546, 203.290222, 32.5, 20.0 ],
													"id" : "obj-61",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value radius",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 149.161316, 226.146332, 75.0, 20.0 ],
													"id" : "obj-58",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 163.134216, 154.858383, 57.0, 20.0 ],
													"id" : "obj-57",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"triangle" : 0,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 163.134216, 179.07431, 50.0, 20.0 ],
													"id" : "obj-55",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r lcd_radius",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 163.134216, 130.139145, 73.0, 20.0 ],
													"id" : "obj-53",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value lcd-x-position",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 386.876343, 152.884308, 113.0, 20.0 ],
													"id" : "obj-52",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r composer_report-value",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 386.652588, 27.979843, 141.0, 20.0 ],
													"id" : "obj-50",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 472.511475, 105.805603, 32.5, 20.0 ],
													"id" : "obj-49",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 386.968384, 105.805603, 32.5, 20.0 ],
													"id" : "obj-48",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "$1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 185.88385, 53.843994, 32.5, 18.0 ],
													"id" : "obj-45",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value z-axis",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 185.88385, 75.687561, 74.0, 20.0 ],
													"id" : "obj-46",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r lcd_z-axis",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 185.88385, 30.072922, 71.0, 20.0 ],
													"id" : "obj-47",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "$1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 28.029846, 53.843994, 32.5, 18.0 ],
													"id" : "obj-44",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "$1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 106.88385, 53.843994, 32.5, 18.0 ],
													"id" : "obj-41",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value trigger-mode",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 265.07782, 75.687561, 111.0, 20.0 ],
													"id" : "obj-39",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value x-axis",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 27.787964, 75.687561, 74.0, 20.0 ],
													"id" : "obj-38",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "value y-axis",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 106.88385, 75.687561, 74.0, 20.0 ],
													"id" : "obj-36",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p find-lcd-position",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 399.889771, 52.921738, 105.0, 20.0 ],
													"id" : "obj-76",
													"fontname" : "Arial",
													"numinlets" : 0,
													"patcher" : 													{
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
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "scale 399 0. 0. 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 107.0, 149.0, 102.0, 20.0 ],
																	"id" : "obj-71",
																	"fontname" : "Arial",
																	"numinlets" : 6
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "scale 0 399 0. 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 173.0, 99.0, 20.0 ],
																	"id" : "obj-66",
																	"fontname" : "Arial",
																	"numinlets" : 6
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack 0. 0.",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "float", "float" ],
																	"patching_rect" : [ 50.0, 126.0, 76.0, 20.0 ],
																	"id" : "obj-13",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r lcd_position",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 100.0, 81.0, 20.0 ],
																	"id" : "obj-192",
																	"fontname" : "Arial",
																	"numinlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 253.0, 25.0, 25.0 ],
																	"id" : "obj-74",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 107.0, 253.0, 25.0, 25.0 ],
																	"id" : "obj-75",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-71", 0 ],
																	"destination" : [ "obj-75", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-66", 0 ],
																	"destination" : [ "obj-74", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 1 ],
																	"destination" : [ "obj-71", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-66", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-192", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"default_fontname" : "Arial",
														"fontsize" : 12.0,
														"default_fontsize" : 12.0,
														"fontname" : "Arial",
														"default_fontface" : 0,
														"globalpatchername" : ""
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 485.889771, 79.921738, 50.0, 20.0 ],
													"id" : "obj-73",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 399.889771, 79.921738, 50.0, 20.0 ],
													"id" : "obj-69",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r lcd_trigger-mode",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 265.337708, 25.0, 108.0, 20.0 ],
													"id" : "obj-21",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r lcd_y-axis",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 106.88385, 30.072922, 71.0, 20.0 ],
													"id" : "obj-17",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r lcd_x-axis",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 27.675537, 30.072922, 71.0, 20.0 ],
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 70.951294, 536.049438, 50.0, 18.0 ],
													"id" : "obj-124",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 52.323669, 645.637756, 25.0, 25.0 ],
													"id" : "obj-189",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-74", 0 ],
													"destination" : [ "obj-112", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-75", 0 ],
													"destination" : [ "obj-112", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-70", 0 ],
													"destination" : [ "obj-112", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-104", 0 ],
													"destination" : [ "obj-112", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-105", 0 ],
													"destination" : [ "obj-112", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-112", 0 ],
													"destination" : [ "obj-110", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-68", 0 ],
													"destination" : [ "obj-78", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-67", 0 ],
													"destination" : [ "obj-78", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-66", 0 ],
													"destination" : [ "obj-78", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-77", 0 ],
													"destination" : [ "obj-78", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-65", 0 ],
													"destination" : [ "obj-78", 0 ],
													"hidden" : 0,
													"midpoints" : [ 50.204414, 396.582275, 59.5, 396.582275 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-78", 0 ],
													"destination" : [ "obj-106", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-123", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-76", 1 ],
													"destination" : [ "obj-73", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-76", 0 ],
													"destination" : [ "obj-69", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-69", 0 ],
													"destination" : [ "obj-48", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-73", 0 ],
													"destination" : [ "obj-49", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-57", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 0 ],
													"destination" : [ "obj-55", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-61", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-61", 0 ],
													"destination" : [ "obj-58", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-61", 0 ],
													"hidden" : 0,
													"midpoints" : [ 97.58728, 163.991531, 159.034546, 163.991531 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-64", 0 ],
													"destination" : [ "obj-63", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-72", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-92", 0 ],
													"destination" : [ "obj-111", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-111", 0 ],
													"destination" : [ "obj-108", 0 ],
													"hidden" : 0,
													"midpoints" : [ 390.261963, 416.299835, 345.881104, 416.299835 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-95", 0 ],
													"destination" : [ "obj-111", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-98", 0 ],
													"destination" : [ "obj-111", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-96", 0 ],
													"destination" : [ "obj-111", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-99", 0 ],
													"destination" : [ "obj-111", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-100", 0 ],
													"destination" : [ "obj-111", 5 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-101", 0 ],
													"destination" : [ "obj-111", 6 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-103", 0 ],
													"destination" : [ "obj-111", 7 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-102", 0 ],
													"destination" : [ "obj-111", 8 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-124", 0 ],
													"destination" : [ "obj-123", 0 ],
													"hidden" : 0,
													"midpoints" : [ 80.451294, 559.343567, 61.823669, 559.343567 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-122", 0 ],
													"destination" : [ "obj-124", 0 ],
													"hidden" : 0,
													"color" : [ 0.815686, 0.086275, 0.086275, 1.0 ],
													"midpoints" : [ 732.803711, 528.97876, 80.451294, 528.97876 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-114", 0 ],
													"destination" : [ "obj-129", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-110", 0 ],
													"destination" : [ "obj-114", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-108", 0 ],
													"destination" : [ "obj-114", 0 ],
													"hidden" : 0,
													"midpoints" : [ 345.881104, 448.572052, 390.47998, 448.572052 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-106", 0 ],
													"destination" : [ "obj-129", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-129", 0 ],
													"destination" : [ "obj-123", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-118", 2 ],
													"destination" : [ "obj-119", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-117", 0 ],
													"destination" : [ "obj-118", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-118", 1 ],
													"destination" : [ "obj-122", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-118", 0 ],
													"destination" : [ "obj-138", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-105", 0 ],
													"hidden" : 0,
													"midpoints" : [ 660.91333, 318.639465, 1032.771973, 318.639465 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-104", 0 ],
													"hidden" : 0,
													"midpoints" : [ 660.91333, 310.70929, 977.733154, 310.70929 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-102", 0 ],
													"hidden" : 0,
													"midpoints" : [ 660.91333, 318.639465, 844.990479, 318.639465 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-103", 0 ],
													"hidden" : 0,
													"midpoints" : [ 660.91333, 310.70929, 789.009766, 310.70929 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-101", 0 ],
													"hidden" : 0,
													"midpoints" : [ 660.91333, 318.639465, 731.263916, 318.639465 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-100", 0 ],
													"hidden" : 0,
													"midpoints" : [ 660.91333, 310.70929, 674.662354, 310.70929 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-99", 0 ],
													"hidden" : 0,
													"midpoints" : [ 660.91333, 318.639465, 617.439697, 318.639465 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-96", 0 ],
													"hidden" : 0,
													"midpoints" : [ 660.91333, 310.70929, 560.69397, 310.70929 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-98", 0 ],
													"hidden" : 0,
													"midpoints" : [ 660.91333, 318.639465, 503.713257, 318.639465 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-95", 0 ],
													"hidden" : 0,
													"midpoints" : [ 660.91333, 311.460632, 447.209351, 311.460632 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-92", 0 ],
													"hidden" : 0,
													"midpoints" : [ 660.91333, 318.639465, 390.607666, 318.639465 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-77", 0 ],
													"hidden" : 0,
													"midpoints" : [ 660.91333, 318.177063, 117.941826, 318.177063 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-74", 0 ],
													"hidden" : 0,
													"midpoints" : [ 660.91333, 310.969604, 1197.884033, 310.969604 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-75", 0 ],
													"hidden" : 0,
													"midpoints" : [ 660.91333, 299.861633, 1142.154297, 299.861633 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-70", 0 ],
													"hidden" : 0,
													"midpoints" : [ 660.91333, 318.177063, 1087.399902, 318.177063 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-68", 0 ],
													"hidden" : 0,
													"midpoints" : [ 660.91333, 310.969604, 293.270355, 310.969604 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-67", 0 ],
													"hidden" : 0,
													"midpoints" : [ 660.91333, 299.861633, 234.31366, 299.861633 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-66", 0 ],
													"hidden" : 0,
													"midpoints" : [ 660.91333, 288.168762, 176.384689, 288.168762 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [ 660.91333, 276.678345, 50.204414, 276.678345 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-141", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-123", 0 ],
													"destination" : [ "obj-189", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "corpus corpus-bad trigger 2 set-descriptors UnitID NoteNumber Pitch rate 90 rate_std 10 duration 150 duration_std 0 xfade 10 transposition 0. transposition_std 2. gain -20. gain_std 0. reverse 0 onset_std 0 radius 0.42 setpos 0.526316 0.501253 freeze 1",
									"linecount" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 115.111328, 442.710205, 658.0, 46.0 ],
									"id" : "obj-147",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r composer_recall-preset",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 375.658081, 258.484436, 143.0, 20.0 ],
									"id" : "obj-142",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "sort -1 -1",
									"fontsize" : 11.595187,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 88.470154, 153.770813, 55.0, 18.0 ],
									"id" : "obj-28",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 375.940552, 292.649963, 50.0, 20.0 ],
									"id" : "obj-26",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll mypiece_presets.txt 1",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"color" : [ 0.631373, 0.835294, 0.12549, 1.0 ],
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 139.940552, 292.649963, 168.834717, 20.0 ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"numinlets" : 1,
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "import $1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 976.895386, 425.4953, 61.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s import-saved-corpus",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 977.04541, 449.4953, 129.0, 20.0 ],
									"id" : "obj-97",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.976471, 0.854902, 0.854902, 1.0 ],
									"patching_rect" : [ 838.0, 148.0, 282.0, 336.0 ],
									"id" : "obj-1",
									"border" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.976471, 0.854902, 0.854902, 1.0 ],
									"patching_rect" : [ 5.0, 90.0, 807.0, 461.0 ],
									"id" : "obj-2",
									"border" : 1,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 199.5, 402.363647, 259.5, 402.363647 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 74.5, 300.5, 124.5, 300.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 2 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-193", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-274", 0 ],
									"destination" : [ "obj-285", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-283", 0 ],
									"destination" : [ "obj-282", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-283", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-274", 0 ],
									"destination" : [ "obj-283", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-274", 0 ],
									"destination" : [ "obj-279", 1 ],
									"hidden" : 0,
									"midpoints" : [ 885.5, 369.997375, 977.5, 369.997375 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-249", 0 ],
									"destination" : [ "obj-274", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-249", 1 ],
									"destination" : [ "obj-250", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-249", 2 ],
									"destination" : [ "obj-238", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-249", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-277", 0 ],
									"destination" : [ "obj-274", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-250", 0 ],
									"destination" : [ "obj-275", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-275", 0 ],
									"destination" : [ "obj-277", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-231", 0 ],
									"destination" : [ "obj-250", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-238", 0 ],
									"destination" : [ "obj-231", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-202", 0 ],
									"destination" : [ "obj-204", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-199", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-190", 0 ],
									"destination" : [ "obj-199", 0 ],
									"hidden" : 0,
									"midpoints" : [ 149.416382, 124.114716, 97.5, 124.114716 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 0 ],
									"destination" : [ "obj-197", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-192", 0 ],
									"destination" : [ "obj-147", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-193", 1 ],
									"destination" : [ "obj-147", 1 ],
									"hidden" : 0,
									"midpoints" : [ 147.0, 411.285645, 763.611328, 411.285645 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-193", 0 ],
									"destination" : [ "obj-192", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-142", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-97", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 97.970154, 182.210388, 149.440552, 182.210388 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-142", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 385.158081, 285.5672, 149.440552, 285.5672 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-190", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-202", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 533.5, 286.309021, 149.440552, 286.309021 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 2 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 249.330368, 327.324982, 259.5, 327.324982 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 3 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 18.158081, 348.484436, 112.329041, 348.484436, 112.329041, 310.0, 124.5, 310.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 174.75, 374.379761, 199.5, 374.379761 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 2 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"color" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"color" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 1 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r to-catart-lcd",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 499.417084, 451.419891, 81.0, 20.0 ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "loaded 239 units in 1 sound files of 0.9 min using 19.433052 MB RAM",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 653.935608, 453.290863, 160.0, 25.0 ],
					"id" : "obj-96",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "standard interface for segmentation parameters",
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 564.592224, 359.852692, 221.0, 18.0 ],
					"id" : "obj-92",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "segmentation",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 562.477783, 309.159271, 69.0, 17.0 ],
					"id" : "obj-93",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"items" : [ "none", ",", "chop", ",", "split", ",", "import sdif", ",", "import ascii", ",", "yin note segmentation", ",", "silence segmentation", ",", "import soundfile markers" ],
					"outlettype" : [ "int", "", "" ],
					"pattrmode" : 1,
					"patching_rect" : [ 625.575134, 308.288208, 143.0, 18.0 ],
					"id" : "obj-94",
					"fontname" : "Arial",
					"types" : [  ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"lockeddragscroll" : 1,
					"offset" : [ 0.0, -82.0 ],
					"patching_rect" : [ 555.139587, 328.417175, 213.0, 33.0 ],
					"id" : "obj-95",
					"name" : "catart.segmentation.params.maxpat",
					"args" : [  ],
					"border" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r composer_save-corpus",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 658.342346, 244.653946, 143.0, 20.0 ],
					"id" : "obj-85",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r import-saved-corpus",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 645.471252, 218.398666, 127.0, 20.0 ],
					"id" : "obj-83",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r composer_import-audio-folder",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 615.313293, 404.577698, 178.0, 20.0 ],
					"id" : "obj-81",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r composer_import-audio-file",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 575.605469, 381.675049, 163.0, 20.0 ],
					"id" : "obj-82",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p composer",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 31.868431, 240.151291, 73.0, 20.0 ],
					"id" : "obj-68",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 528.0, 401.0, 847.0, 588.0 ],
						"bglocked" : 0,
						"defrect" : [ 528.0, 401.0, 847.0, 588.0 ],
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
									"text" : "0",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 21.0, 54.0, 32.5, 18.0 ],
									"hidden" : 1,
									"id" : "obj-54",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "before starting, go through checklist items on main patch to get the patch ready to go (you may skip step #2 of checklist)",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 129.0, 42.0, 656.0, 20.0 ],
									"id" : "obj-52",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 137.0, 12.0, 25.0, 25.0 ],
									"hidden" : 1,
									"id" : "obj-50",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 167.0, 20.0, 35.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-49",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 133.0, 41.0, 69.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-47",
									"fontname" : "Arial",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Composer's Corner",
									"fontsize" : 24.0,
									"numoutlets" : 0,
									"patching_rect" : [ 307.0, 9.0, 234.0, 34.0 ],
									"id" : "obj-9",
									"fontname" : "Arial Bold",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 0,
									"offset" : [ 0.0, -1310.0 ],
									"patching_rect" : [ 22.0, 146.0, 796.758179, 417.856049 ],
									"id" : "obj-6",
									"name" : "composer_bpatcher.maxpat",
									"args" : [  ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p offset",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 3.0, 19.0, 51.0, 21.0 ],
									"hidden" : 1,
									"id" : "obj-5",
									"fontname" : "Helvetica Neue",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 54.0, 128.0, 394.0, 326.0 ],
										"bglocked" : 0,
										"defrect" : [ 54.0, 128.0, 394.0, 326.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Helvetica Neue",
										"gridonopen" : 0,
										"gridsize" : [ 19.0, 19.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. -874",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 171.0, 132.0, 49.0, 19.0 ],
													"id" : "obj-1",
													"fontname" : "Helvetica Neue",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. -1310.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 232.0, 132.0, 59.0, 19.0 ],
													"id" : "obj-2",
													"fontname" : "Helvetica Neue",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1 2 3",
													"fontsize" : 12.0,
													"numoutlets" : 5,
													"outlettype" : [ "bang", "bang", "bang", "bang", "" ],
													"patching_rect" : [ 50.0, 99.0, 262.0, 21.0 ],
													"id" : "obj-10",
													"fontname" : "Helvetica Neue",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 132.0, 41.0, 19.0 ],
													"id" : "obj-9",
													"fontname" : "Helvetica Neue",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. -440.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 111.0, 132.0, 52.0, 19.0 ],
													"id" : "obj-7",
													"fontname" : "Helvetica Neue",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "offset $1 $2",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 168.0, 74.0, 19.0 ],
													"id" : "obj-5",
													"fontname" : "Helvetica Neue",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
													"id" : "obj-11",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 247.0, 25.0, 25.0 ],
													"id" : "obj-12",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-10", 3 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 2 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Helvetica Neue",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Helvetica Neue",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "tab",
									"clicktextcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 20.0,
									"numoutlets" : 3,
									"tabs" : [ "Samples", "Presets", "Events", "Conductor" ],
									"clicktabcolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
									"outlettype" : [ "int", "", "" ],
									"tabcolor" : [ 0.92549, 0.92549, 0.92549, 1.0 ],
									"patching_rect" : [ 21.0, 81.0, 798.751343, 73.264465 ],
									"multiline" : 0,
									"id" : "obj-1",
									"fontname" : "Arial",
									"htabcolor" : [ 0.85098, 0.85098, 0.85098, 1.0 ],
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 626.847473, 129.856583, 77.0, 20.0 ],
					"id" : "obj-25",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r catart-init",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 626.847473, 105.856575, 67.0, 20.0 ],
					"id" : "obj-26",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 685.913269, 158.35527, 20.0, 20.0 ],
					"id" : "obj-27",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 626.540894, 158.919754, 20.0, 20.0 ],
					"id" : "obj-47",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.synthesis~ ork",
					"fontsize" : 12.0,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 575.605469, 534.065918, 121.0, 20.0 ],
					"id" : "obj-24",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.select ork",
					"fontsize" : 12.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 575.605469, 508.552734, 95.0, 20.0 ],
					"id" : "obj-23",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart.lcd.simple",
					"text" : "catart.lcd.simple2 ork",
					"fontsize" : 12.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 575.605469, 484.119843, 124.0, 20.0 ],
					"id" : "obj-22",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.import ork",
					"fontsize" : 12.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 575.605469, 429.979034, 97.0, 20.0 ],
					"id" : "obj-21",
					"fontname" : "Arial",
					"numinlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart.data[1]",
					"text" : "catart.data ork",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 644.758118, 272.076416, 87.0, 20.0 ],
					"id" : "obj-18",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.init ork",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 626.565979, 181.76059, 79.0, 20.0 ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"triangle" : 0,
					"presentation_rect" : [ 237.0, 289.0, 27.166418, 20.0 ],
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 651.586914, 627.127686, 50.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-90",
					"fontname" : "Arial",
					"minimum" : -99,
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "atodb",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 651.586914, 602.127686, 41.0, 20.0 ],
					"id" : "obj-86",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s reset",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 107.0, 45.0, 47.0, 20.0 ],
					"id" : "obj-41",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "RESET",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 145.0, 14.0, 51.0, 20.0 ],
					"id" : "obj-36",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 107.0, 6.0, 34.0, 34.0 ],
					"id" : "obj-33",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r to-dac",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 492.586945, 648.127747, 51.0, 20.0 ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.101961 ],
					"presentation_rect" : [ 266.0, 162.0, 22.04904, 22.04904 ],
					"outlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.34902 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 481.042206, 569.030334, 34.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-39",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 481.042206, 608.030334, 32.5, 18.0 ],
					"id" : "obj-37",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.101961 ],
					"presentation_rect" : [ 266.0, 136.0, 22.04904, 22.04904 ],
					"outlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.34902 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 502.042206, 499.030334, 34.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-34",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p keyboard-controls",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 30.0, 127.0, 116.0, 20.0 ],
					"id" : "obj-89",
					"fontname" : "Arial",
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 117.0, 179.0, 1267.0, 730.0 ],
						"bglocked" : 0,
						"defrect" : [ 117.0, 179.0, 1267.0, 730.0 ],
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
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 643.0, 221.0, 20.0, 20.0 ],
									"id" : "obj-11",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s kbctrl_return",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 643.372314, 246.060425, 87.0, 20.0 ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Shift+N triggers next score event ->",
									"linecount" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 301.0, 385.0, 114.0, 34.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 598.0, 334.0, 20.0, 20.0 ],
									"id" : "obj-8",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s kbctrl_trigger-next-event-by-shortcut",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 410.191895, 397.064301, 213.0, 20.0 ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r kbctrl_open-window",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 1058.0, 482.0, 124.0, 20.0 ],
									"id" : "obj-28",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1058.0, 511.0, 35.0, 18.0 ],
									"id" : "obj-31",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1058.0, 536.0, 69.0, 20.0 ],
									"id" : "obj-32",
									"fontname" : "Arial",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p grid_minus",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1114.983643, 232.81665, 79.0, 20.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 188.0, 181.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 188.0, 181.0 ],
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
													"maxclass" : "message",
													"text" : "gridminus",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 76.0, 81.0, 63.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 76.476929, 55.0, 20.0, 20.0 ],
													"id" : "obj-32",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 76.476929, 22.0, 25.0, 25.0 ],
													"id" : "obj-147",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 76.0, 107.987488, 25.0, 25.0 ],
													"id" : "obj-149",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 61 45",
									"fontsize" : 12.0,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 1051.0, 173.0, 59.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "key",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 1050.608398, 111.310913, 59.5, 20.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 1050.608398, 137.611328, 50.0, 20.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p grid_plus",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1043.983643, 232.81665, 69.0, 20.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 188.0, 181.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 188.0, 181.0 ],
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
													"maxclass" : "message",
													"text" : "gridplus",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 76.0, 81.0, 53.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 76.476929, 55.0, 20.0, 20.0 ],
													"id" : "obj-32",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 76.476929, 22.0, 25.0, 25.0 ],
													"id" : "obj-147",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 76.0, 107.987488, 25.0, 25.0 ],
													"id" : "obj-149",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "-99.",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 718.0, 586.0, 50.0, 18.0 ],
									"id" : "obj-47",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p arrow_right",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 959.983643, 233.81665, 81.0, 20.0 ],
									"id" : "obj-50",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 347.0, 398.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 347.0, 398.0 ],
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
													"maxclass" : "message",
													"text" : "right",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 76.0, 171.0, 34.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 76.476929, 145.0, 20.0, 20.0 ],
													"id" : "obj-32",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r kbctrl_arrow-up-speed",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 122.0, 87.0, 137.0, 20.0 ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 113.078674, 55.0, 32.5, 18.0 ],
													"id" : "obj-138",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 76.476929, 56.241882, 32.5, 18.0 ],
													"id" : "obj-136",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 76.476929, 87.150635, 20.0, 20.0 ],
													"id" : "obj-134",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "metro 100",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 76.476929, 112.987488, 65.0, 20.0 ],
													"id" : "obj-130",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 76.476929, 22.0, 25.0, 25.0 ],
													"id" : "obj-147",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 113.078674, 22.0, 25.0, 25.0 ],
													"id" : "obj-148",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 76.0, 197.987488, 25.0, 25.0 ],
													"id" : "obj-149",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-130", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-130", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-148", 0 ],
													"destination" : [ "obj-138", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-136", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-134", 0 ],
													"destination" : [ "obj-130", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-134", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-136", 0 ],
													"destination" : [ "obj-134", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p arrow_left",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 883.983643, 232.81665, 73.0, 20.0 ],
									"id" : "obj-52",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 347.0, 398.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 347.0, 398.0 ],
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
													"maxclass" : "message",
													"text" : "left",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 76.0, 171.0, 32.5, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 76.476929, 145.0, 20.0, 20.0 ],
													"id" : "obj-32",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r kbctrl_arrow-up-speed",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 122.0, 87.0, 137.0, 20.0 ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 113.078674, 55.0, 32.5, 18.0 ],
													"id" : "obj-138",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 76.476929, 56.241882, 32.5, 18.0 ],
													"id" : "obj-136",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 76.476929, 87.150635, 20.0, 20.0 ],
													"id" : "obj-134",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "metro 100",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 76.476929, 112.987488, 65.0, 20.0 ],
													"id" : "obj-130",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 76.476929, 22.0, 25.0, 25.0 ],
													"id" : "obj-147",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 113.078674, 22.0, 25.0, 25.0 ],
													"id" : "obj-148",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 76.0, 197.987488, 25.0, 25.0 ],
													"id" : "obj-149",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-136", 0 ],
													"destination" : [ "obj-134", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-134", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-134", 0 ],
													"destination" : [ "obj-130", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-136", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-148", 0 ],
													"destination" : [ "obj-138", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-130", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-130", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p arrow_down",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 794.983643, 232.81665, 86.0, 20.0 ],
									"id" : "obj-54",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 347.0, 398.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 347.0, 398.0 ],
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
													"maxclass" : "message",
													"text" : "down",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 76.0, 171.0, 39.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 76.476929, 145.0, 20.0, 20.0 ],
													"id" : "obj-32",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r kbctrl_arrow-up-speed",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 122.0, 87.0, 137.0, 20.0 ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 113.078674, 55.0, 32.5, 18.0 ],
													"id" : "obj-138",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 76.476929, 56.241882, 32.5, 18.0 ],
													"id" : "obj-136",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 76.476929, 87.150635, 20.0, 20.0 ],
													"id" : "obj-134",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "metro 100",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 76.476929, 112.987488, 65.0, 20.0 ],
													"id" : "obj-130",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 76.476929, 22.0, 25.0, 25.0 ],
													"id" : "obj-147",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 113.078674, 22.0, 25.0, 25.0 ],
													"id" : "obj-148",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 76.0, 197.987488, 25.0, 25.0 ],
													"id" : "obj-149",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-130", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-130", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-148", 0 ],
													"destination" : [ "obj-138", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-136", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-134", 0 ],
													"destination" : [ "obj-130", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-134", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-136", 0 ],
													"destination" : [ "obj-134", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- filter spacebar",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 722.0, 116.0, 105.0, 20.0 ],
									"id" : "obj-62",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 32",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 678.0, 117.0, 43.0, 20.0 ],
									"id" : "obj-63",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 871.0, 371.0, 40.5, 20.0 ],
									"id" : "obj-65",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r kbctrl_gate-open",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 871.372437, 346.060425, 107.0, 20.0 ],
									"id" : "obj-66",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 2 4 5 3 7 8 9 10 11 6",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 871.0, 397.0, 131.0, 18.0 ],
									"id" : "obj-67",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 894.0, 420.0, 50.0, 20.0 ],
									"id" : "obj-71",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl sub",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 871.0, 445.0, 42.0, 20.0 ],
									"id" : "obj-73",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 809.0, 576.0, 32.5, 20.0 ],
									"id" : "obj-74",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $i1 > 10 then 0 else $i1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 823.0, 474.0, 144.0, 20.0 ],
									"id" : "obj-78",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 809.0, 549.0, 50.0, 20.0 ],
									"id" : "obj-80",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 809.0, 523.0, 32.5, 20.0 ],
									"id" : "obj-82",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i 1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 809.0, 498.0, 32.5, 20.0 ],
									"id" : "obj-86",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s kbctrl_gate-open",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 809.372437, 693.060425, 109.0, 20.0 ],
									"id" : "obj-87",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 809.0, 447.0, 20.0, 20.0 ],
									"id" : "obj-88",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 9",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 809.0, 419.0, 36.0, 20.0 ],
									"id" : "obj-95",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "key",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 809.0, 394.0, 59.5, 20.0 ],
									"id" : "obj-117",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 809.0, 663.0, 50.0, 20.0 ],
									"id" : "obj-118",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl nth",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 809.0, 633.0, 39.0, 20.0 ],
									"id" : "obj-122",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 2 4 5 3 7 8 9 10 11 6",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 809.0, 606.0, 131.0, 18.0 ],
									"id" : "obj-123",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "TAB key can be used to cycle through gate options\n(non-linear order for sake\nof presentation mode)",
									"linecount" : 4,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 703.0, 332.0, 155.0, 62.0 ],
									"id" : "obj-127",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "D",
									"fontsize" : 36.0,
									"numoutlets" : 0,
									"patching_rect" : [ 664.0, 333.0, 38.0, 48.0 ],
									"id" : "obj-128",
									"fontname" : "Arial Bold",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.815686, 0.807843, 0.611765, 1.0 ],
									"patching_rect" : [ 662.0, 329.0, 344.0, 93.0 ],
									"id" : "obj-131",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s kbctrl_update-arrows",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 657.388062, 197.213745, 132.0, 20.0 ],
									"id" : "obj-134",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Any numbers typed in are directly sent to gate-data after \"return\" is pressed. Keyboard arrows are used to slide through numbers quickly. Up/Down: gradual. Left/Right: grid. Arrows have controllable grid value and slide speed",
									"linecount" : 4,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 745.0, 48.0, 346.0, 62.0 ],
									"id" : "obj-138",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p all-arrows-speed",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 1051.0, 670.0, 109.0, 20.0 ],
									"id" : "obj-139",
									"fontname" : "Arial",
									"numinlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 430.0, 198.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 430.0, 198.0 ],
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
													"maxclass" : "number",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 241.0, 21.0, 50.0, 20.0 ],
													"id" : "obj-158",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s kbctrl_all-arrows-speed",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 241.316956, 52.049042, 144.0, 20.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r kbctrl_all-arrows-speed",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 15.0, 15.0, 142.0, 20.0 ],
													"id" : "obj-41",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s kbctrl_arrow-right-speed",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 61.0, 146.0, 149.0, 20.0 ],
													"id" : "obj-39",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s kbctrl_arrow-left-speed",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 46.0, 116.0, 142.0, 20.0 ],
													"id" : "obj-35",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s kbctrl_arrow-down-speed",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 31.0, 86.0, 155.0, 20.0 ],
													"id" : "obj-34",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s kbctrl_arrow-up-speed",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 16.0, 56.0, 139.0, 20.0 ],
													"id" : "obj-33",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-158", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "also possible:",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 1046.0, 581.0, 83.0, 20.0 ],
									"id" : "obj-140",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rkbctrl_all-arrows-speed 111;\r",
									"linecount" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1043.0, 600.0, 165.0, 32.0 ],
									"id" : "obj-141",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "C",
									"fontsize" : 36.0,
									"numoutlets" : 0,
									"patching_rect" : [ 668.0, 45.0, 38.0, 48.0 ],
									"id" : "obj-142",
									"fontname" : "Arial Bold",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Opens appropriate gate according to last selected shortcut. Numbers and arrows typed from keyboard will be sent as data to that open gate. These are the control parameters for CataRT's grain parameters.\nWHAT GETS SENT THROUGH GATE-DATA: numbers or messages (up arrow, down arrow etc)",
									"linecount" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 186.0, 497.0, 565.0, 48.0 ],
									"id" : "obj-143",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "B",
									"fontsize" : 36.0,
									"numoutlets" : 0,
									"patching_rect" : [ 265.0, 445.0, 38.0, 48.0 ],
									"id" : "obj-144",
									"fontname" : "Arial Bold",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "A",
									"fontsize" : 36.0,
									"numoutlets" : 0,
									"patching_rect" : [ 286.0, 47.0, 38.0, 48.0 ],
									"id" : "obj-147",
									"fontname" : "Arial Bold",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- shortcut will open gate",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 155.0, 397.0, 150.0, 20.0 ],
									"id" : "obj-148",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "INIT STUFF",
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"patching_rect" : [ 1051.738281, 339.424255, 106.0, 23.0 ],
									"id" : "obj-149",
									"fontname" : "Arial Bold",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rkbctrl_gate-open 1;\rkbctrl_arrow-up-speed 100;\rkbctrl_arrow-down-speed 100;\rkbctrl_arrow-left-speed 200;\rkbctrl_arrow-right-speed 200;\r",
									"linecount" : 6,
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1034.016968, 370.061768, 175.0, 87.0 ],
									"id" : "obj-154",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s kbctrl_memorize",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 136.074524, 551.161987, 108.0, 20.0 ],
									"id" : "obj-155",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r kbctrl_gate-data",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 673.372375, 548.060425, 104.0, 20.0 ],
									"id" : "obj-156",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s kbctrl_gate-data",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 702.372314, 275.060425, 106.0, 20.0 ],
									"id" : "obj-157",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 122.916138, 527.351807, 32.5, 20.0 ],
									"id" : "obj-158",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"fontsize" : 12.0,
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"patching_rect" : [ 123.0, 503.0, 50.0, 20.0 ],
									"id" : "obj-159",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s kbctrl_reverse-prob",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 581.813721, 653.060425, 123.0, 20.0 ],
									"id" : "obj-161",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s kbctrl_gain-std",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 535.957336, 606.475464, 98.0, 20.0 ],
									"id" : "obj-163",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s kbctrl_gain",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 489.663086, 630.060425, 78.0, 20.0 ],
									"id" : "obj-166",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s kbctrl_transposition-std",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 444.372375, 685.060425, 143.0, 20.0 ],
									"id" : "obj-168",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s kbctrl_transposition",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 398.372375, 651.060425, 123.0, 20.0 ],
									"id" : "obj-169",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s kbctrl_onset-std",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 353.372375, 626.060425, 105.0, 20.0 ],
									"id" : "obj-170",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s kbctrl_grain-size-std",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 307.372375, 601.060425, 127.0, 20.0 ],
									"id" : "obj-171",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s kbctrl_grain-size",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 261.783875, 653.060425, 107.0, 20.0 ],
									"id" : "obj-172",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s kbctrl_xfade",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 215.372375, 601.060425, 85.0, 20.0 ],
									"id" : "obj-173",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s kbctrl_rate-std",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 169.372375, 625.060425, 96.0, 20.0 ],
									"id" : "obj-174",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s kbctrl_rate",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 123.372375, 601.060425, 76.0, 20.0 ],
									"id" : "obj-175",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 657.0, 167.0, 50.0, 20.0 ],
									"id" : "obj-188",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 749.0, 167.0, 50.0, 20.0 ],
									"id" : "obj-189",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "key",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 677.608398, 93.310913, 59.5, 20.0 ],
									"id" : "obj-190",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "numkey 0.",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 702.0, 141.0, 66.0, 20.0 ],
									"id" : "obj-191",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p arrow_up",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 720.983643, 232.81665, 71.0, 20.0 ],
									"id" : "obj-195",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 347.0, 398.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 347.0, 398.0 ],
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
													"maxclass" : "message",
													"text" : "up",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 76.0, 171.0, 32.5, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 76.476929, 145.0, 20.0, 20.0 ],
													"id" : "obj-32",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r kbctrl_arrow-up-speed",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 122.0, 87.0, 137.0, 20.0 ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 113.078674, 55.0, 32.5, 18.0 ],
													"id" : "obj-138",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 76.476929, 56.241882, 32.5, 18.0 ],
													"id" : "obj-136",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 76.476929, 87.150635, 20.0, 20.0 ],
													"id" : "obj-134",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "metro 100",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 76.476929, 112.987488, 65.0, 20.0 ],
													"id" : "obj-130",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 76.476929, 22.0, 25.0, 25.0 ],
													"id" : "obj-147",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 113.078674, 22.0, 25.0, 25.0 ],
													"id" : "obj-148",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 76.0, 197.987488, 25.0, 25.0 ],
													"id" : "obj-149",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-136", 0 ],
													"destination" : [ "obj-134", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-134", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-134", 0 ],
													"destination" : [ "obj-130", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-136", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-148", 0 ],
													"destination" : [ "obj-138", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-130", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-130", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 28 29 30 31",
									"fontsize" : 12.0,
									"numoutlets" : 5,
									"outlettype" : [ "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 942.563354, 190.0, 93.0, 20.0 ],
									"id" : "obj-196",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 28 29 30 31",
									"fontsize" : 12.0,
									"numoutlets" : 5,
									"outlettype" : [ "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 842.608398, 190.0, 93.0, 20.0 ],
									"id" : "obj-197",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 28 31",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 942.563354, 162.990356, 65.0, 20.0 ],
									"id" : "obj-198",
									"fontname" : "Arial",
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 942.563354, 137.611328, 50.0, 20.0 ],
									"id" : "obj-199",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "keyup",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 942.563354, 111.310913, 59.5, 20.0 ],
									"id" : "obj-200",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "key",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 842.608398, 111.310913, 59.5, 20.0 ],
									"id" : "obj-201",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 93.36084, 193.242798, 20.0, 20.0 ],
									"id" : "obj-202",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "11",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 250.661194, 338.087311, 32.5, 18.0 ],
									"id" : "obj-203",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "10",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 563.481689, 334.642975, 32.5, 18.0 ],
									"id" : "obj-204",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "8",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 518.67749, 336.407837, 32.5, 18.0 ],
									"id" : "obj-205",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "9",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 216.412643, 336.747559, 32.5, 18.0 ],
									"id" : "obj-206",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "7",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 181.543167, 336.649658, 32.5, 18.0 ],
									"id" : "obj-207",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "6",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 485.670776, 333.826263, 32.5, 18.0 ],
									"id" : "obj-208",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "6",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 147.915543, 336.309937, 32.5, 18.0 ],
									"id" : "obj-209",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "4",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 114.248558, 336.309967, 32.5, 18.0 ],
									"id" : "obj-210",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Rate_std, Size_std, Onset_std, Transposition_std, Gain_std",
									"linecount" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 425.618011, 271.960663, 194.0, 34.0 ],
									"id" : "obj-211",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "5",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 450.60553, 335.068115, 32.5, 18.0 ],
									"id" : "obj-212",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "3",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.915543, 336.309937, 32.5, 18.0 ],
									"id" : "obj-213",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 414.592102, 334.447205, 32.5, 18.0 ],
									"id" : "obj-215",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 46.248558, 336.309967, 32.5, 18.0 ],
									"id" : "obj-217",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "select 114 115 111 116 103 110",
									"fontsize" : 12.0,
									"numoutlets" : 7,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 415.343536, 308.483673, 204.0, 20.0 ],
									"id" : "obj-218",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "no shift",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 222.0, 158.0, 49.0, 20.0 ],
									"id" : "obj-219",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 281.0, 183.0, 32.5, 18.0 ],
									"id" : "obj-220",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 205.679459, 184.0979, 32.5, 18.0 ],
									"id" : "obj-221",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 92.599808, 231.660278, 44.0, 20.0 ],
									"id" : "obj-222",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "shift",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 298.0, 158.0, 33.0, 20.0 ],
									"id" : "obj-223",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- ignore caps lock",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 328.0, 126.0, 112.0, 20.0 ],
									"id" : "obj-224",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 118.0, 191.752396, 50.0, 20.0 ],
									"id" : "obj-228",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 281.0, 158.0, 20.0, 20.0 ],
									"id" : "obj-229",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 206.0, 158.0, 20.0, 20.0 ],
									"id" : "obj-230",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 512 1024 1536",
									"fontsize" : 12.0,
									"numoutlets" : 5,
									"outlettype" : [ "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 206.0, 126.0, 119.0, 20.0 ],
									"id" : "obj-231",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "swap",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 118.0, 102.0, 49.0, 20.0 ],
									"id" : "obj-232",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 46.372345, 575.060425, 20.0, 20.0 ],
									"id" : "obj-233",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 69.372375, 575.060425, 50.0, 20.0 ],
									"id" : "obj-234",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Detects shortcuts (mapped 1-13 according to list below)\n\n1 = rate (R) 114\n2 = rate_std (shift+R) \n3 = xfade (X) 120\n4 = grain size (S) 115\n5 = size_std (shift+S)\n6 = onset_std (O) 111\n7 = transposition (T) 116\n8 = transposition_std (shift+T)\n9 = gain (G) 103\n10 = gain_std (shift+G)\n11 = reverse prob (V) 118\n12 = pan?\n13 = pan_std?",
									"linecount" : 16,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 445.379089, 41.0, 174.0, 227.0 ],
									"id" : "obj-236",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s kbctrl_gate-open",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 47.191925, 397.064301, 109.0, 20.0 ],
									"id" : "obj-237",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r kbctrl_gate-open",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 123.372375, 476.060455, 107.0, 20.0 ],
									"id" : "obj-238",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 13",
									"fontsize" : 12.0,
									"numoutlets" : 13,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 123.372375, 575.060425, 569.0, 20.0 ],
									"id" : "obj-239",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 28 31",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 842.608398, 162.990356, 65.0, 20.0 ],
									"id" : "obj-240",
									"fontname" : "Arial",
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 842.608398, 137.611328, 50.0, 20.0 ],
									"id" : "obj-241",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "select 114 120 115 111 116 103 118",
									"fontsize" : 12.0,
									"numoutlets" : 8,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 46.516315, 310.346466, 255.294617, 20.0 ],
									"id" : "obj-242",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Rate, X-fade, Size, Onset_std, Transposition, Gain, reVerse",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 64.902115, 289.692902, 329.0, 20.0 ],
									"id" : "obj-243",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "keyup",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 60.0, 77.0, 106.5, 20.0 ],
									"id" : "obj-244",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"patching_rect" : [ 1022.0, 322.0, 197.0, 376.0 ],
									"id" : "obj-245",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.815686, 0.807843, 0.611765, 1.0 ],
									"patching_rect" : [ 35.0, 38.0, 591.0, 383.0 ],
									"id" : "obj-247",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.815686, 0.807843, 0.611765, 1.0 ],
									"patching_rect" : [ 36.0, 437.0, 758.0, 274.0 ],
									"id" : "obj-249",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.815686, 0.807843, 0.611765, 1.0 ],
									"patching_rect" : [ 639.0, 41.0, 560.0, 267.0 ],
									"id" : "obj-250",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.815686, 0.807843, 0.611765, 1.0 ],
									"patching_rect" : [ 801.0, 408.0, 205.0, 311.0 ],
									"id" : "obj-251",
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-191", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 711.5, 190.5, 652.5, 190.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-218", 5 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-158", 0 ],
									"destination" : [ "obj-239", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 0 ],
									"destination" : [ "obj-239", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-239", 10 ],
									"destination" : [ "obj-161", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-239", 7 ],
									"destination" : [ "obj-168", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-239", 6 ],
									"destination" : [ "obj-169", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-239", 5 ],
									"destination" : [ "obj-170", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-239", 4 ],
									"destination" : [ "obj-171", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-239", 3 ],
									"destination" : [ "obj-172", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-239", 2 ],
									"destination" : [ "obj-173", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-239", 1 ],
									"destination" : [ "obj-174", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-239", 0 ],
									"destination" : [ "obj-175", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-239", 8 ],
									"destination" : [ "obj-166", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-239", 9 ],
									"destination" : [ "obj-163", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-218", 0 ],
									"destination" : [ "obj-215", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-218", 1 ],
									"destination" : [ "obj-212", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-222", 1 ],
									"destination" : [ "obj-218", 0 ],
									"hidden" : 0,
									"midpoints" : [ 127.099808, 279.571991, 424.843536, 279.571991 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-218", 2 ],
									"destination" : [ "obj-208", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-218", 3 ],
									"destination" : [ "obj-205", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-218", 4 ],
									"destination" : [ "obj-204", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-157", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-157", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 0 ],
									"destination" : [ "obj-47", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-197", 3 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-196", 3 ],
									"destination" : [ "obj-54", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-196", 1 ],
									"destination" : [ "obj-50", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-197", 1 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-196", 0 ],
									"destination" : [ "obj-52", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-197", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-157", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-157", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-157", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-159", 0 ],
									"destination" : [ "obj-158", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-158", 1 ],
									"destination" : [ "obj-155", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-191", 0 ],
									"destination" : [ "obj-157", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-238", 0 ],
									"destination" : [ "obj-159", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-238", 0 ],
									"destination" : [ "obj-234", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-238", 0 ],
									"destination" : [ "obj-233", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-217", 0 ],
									"destination" : [ "obj-237", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-215", 0 ],
									"destination" : [ "obj-237", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-213", 0 ],
									"destination" : [ "obj-237", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-210", 0 ],
									"destination" : [ "obj-237", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-209", 0 ],
									"destination" : [ "obj-237", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-212", 0 ],
									"destination" : [ "obj-237", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-205", 0 ],
									"destination" : [ "obj-237", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-206", 0 ],
									"destination" : [ "obj-237", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-207", 0 ],
									"destination" : [ "obj-237", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-204", 0 ],
									"destination" : [ "obj-237", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-203", 0 ],
									"destination" : [ "obj-237", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-208", 0 ],
									"destination" : [ "obj-237", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-191", 0 ],
									"destination" : [ "obj-188", 0 ],
									"hidden" : 0,
									"midpoints" : [ 711.5, 163.5, 666.5, 163.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-191", 1 ],
									"destination" : [ "obj-189", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-196", 2 ],
									"destination" : [ "obj-195", 1 ],
									"hidden" : 0,
									"midpoints" : [ 989.063354, 222.408325, 782.483643, 222.408325 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-197", 2 ],
									"destination" : [ "obj-195", 0 ],
									"hidden" : 0,
									"midpoints" : [ 889.108398, 222.408325, 730.483643, 222.408325 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-198", 0 ],
									"destination" : [ "obj-196", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-240", 0 ],
									"destination" : [ "obj-197", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-200", 0 ],
									"destination" : [ "obj-199", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-199", 0 ],
									"destination" : [ "obj-198", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-201", 0 ],
									"destination" : [ "obj-241", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-232", 0 ],
									"destination" : [ "obj-202", 0 ],
									"hidden" : 0,
									"midpoints" : [ 127.5, 157.121399, 102.86084, 157.121399 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-242", 6 ],
									"destination" : [ "obj-203", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-242", 5 ],
									"destination" : [ "obj-206", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-242", 4 ],
									"destination" : [ "obj-207", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-242", 3 ],
									"destination" : [ "obj-209", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-242", 2 ],
									"destination" : [ "obj-210", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-242", 1 ],
									"destination" : [ "obj-213", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-242", 0 ],
									"destination" : [ "obj-217", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-222", 0 ],
									"destination" : [ "obj-242", 0 ],
									"hidden" : 0,
									"midpoints" : [ 102.099808, 280.503357, 56.016315, 280.503357 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-228", 0 ],
									"destination" : [ "obj-222", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-220", 0 ],
									"destination" : [ "obj-222", 0 ],
									"hidden" : 0,
									"midpoints" : [ 290.5, 221.330139, 102.099808, 221.330139 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-221", 0 ],
									"destination" : [ "obj-222", 0 ],
									"hidden" : 0,
									"midpoints" : [ 215.179459, 221.879089, 102.099808, 221.879089 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-230", 0 ],
									"destination" : [ "obj-221", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-229", 0 ],
									"destination" : [ "obj-220", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-231", 3 ],
									"destination" : [ "obj-229", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-231", 1 ],
									"destination" : [ "obj-229", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-231", 2 ],
									"destination" : [ "obj-230", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-232", 1 ],
									"destination" : [ "obj-231", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-231", 0 ],
									"destination" : [ "obj-230", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-232", 0 ],
									"destination" : [ "obj-228", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-244", 2 ],
									"destination" : [ "obj-232", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-244", 3 ],
									"destination" : [ "obj-232", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-241", 0 ],
									"destination" : [ "obj-240", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-195", 0 ],
									"destination" : [ "obj-157", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-188", 0 ],
									"destination" : [ "obj-134", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-123", 0 ],
									"destination" : [ "obj-122", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-122", 0 ],
									"destination" : [ "obj-118", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-82", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 0 ],
									"destination" : [ "obj-86", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-95", 0 ],
									"destination" : [ "obj-88", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-117", 0 ],
									"destination" : [ "obj-95", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-82", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 1 ],
									"destination" : [ "obj-122", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-123", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-118", 0 ],
									"destination" : [ "obj-87", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-73", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 1 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-86", 1 ],
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
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-190", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 1 ],
									"destination" : [ "obj-191", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p events",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 30.0, 150.0, 56.0, 20.0 ],
					"id" : "obj-88",
					"fontname" : "Arial",
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 712.0, 80.0, 949.0, 552.0 ],
						"bglocked" : 0,
						"defrect" : [ 712.0, 80.0, 949.0, 552.0 ],
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
									"text" : "2",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 211.0, 399.0, 50.0, 18.0 ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rto-presets-coll dump;\r",
									"linecount" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 694.0, 43.0, 123.0, 32.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Events file loaded successfully!",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 319.0, 474.0, 177.0, 18.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print Events",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 319.0, 499.0, 74.0, 20.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- score_recall-preset messages are sent from the qlist above, and get filtered and forwarded in this subpatch",
									"linecount" : 5,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 121.0, 439.0, 150.0, 75.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p recalling-presets",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 9.0, 438.0, 109.0, 20.0 ],
									"id" : "obj-79",
									"fontname" : "Arial",
									"numinlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 1836.0, 166.0, 852.0, 684.0 ],
										"bglocked" : 0,
										"defrect" : [ 1836.0, 166.0, 852.0, 684.0 ],
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
													"maxclass" : "message",
													"text" : "301",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 21.0, 209.0, 50.0, 18.0 ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "d 201",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 23.0, 151.0, 50.0, 18.0 ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "qlist_players.txt is the OLD NAME -- now it is \"mypiece_events.txt\"",
													"linecount" : 2,
													"fontsize" : 14.0,
													"numoutlets" : 0,
													"patching_rect" : [ 43.073883, 11.42926, 233.0, 39.0 ],
													"id" : "obj-3",
													"fontname" : "Trebuchet MS Bold",
													"frgb" : [ 0.047501, 0.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"textcolor" : [ 0.047501, 0.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s player_recall-preset",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 87.0, 188.0, 125.0, 20.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "<- this comes from qlist_players.txt",
													"linecount" : 2,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 198.073883, 115.42926, 115.166321, 34.0 ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p which-player-am-i",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 86.649628, 154.739151, 115.0, 20.0 ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 224.0, 291.0, 1218.0, 384.0 ],
														"bglocked" : 0,
														"defrect" : [ 224.0, 291.0, 1218.0, 384.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 96",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 208.0, 146.0, 32.5, 20.0 ],
																	"id" : "obj-4",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 208.0, 119.0, 50.0, 20.0 ],
																	"id" : "obj-5",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "atoi",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "list" ],
																	"patching_rect" : [ 208.0, 93.0, 46.0, 20.0 ],
																	"id" : "obj-6",
																	"fontname" : "Arial",
																	"numinlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "<- incoming messages to be displayed go out here",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 324.0, 279.0, 289.0, 20.0 ],
																	"id" : "obj-7",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 295.0, 276.0, 25.0, 25.0 ],
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "Which player am I?\n\n(specified during checklist stage, \"load piece\" stuff)",
																	"linecount" : 4,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 30.149231, 63.735596, 172.0, 62.0 ],
																	"id" : "obj-22",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 207.106537, 196.481873, 50.0, 20.0 ],
																	"id" : "obj-25",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "switch 26",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 295.483093, 242.742584, 826.0, 20.0 ],
																	"id" : "obj-29",
																	"fontname" : "Arial",
																	"numinlets" : 27
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r score_identify-player",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 208.275055, 64.271492, 129.0, 20.0 ],
																	"id" : "obj-30",
																	"fontname" : "Arial",
																	"numinlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route a b c d e f g h i j k l m n o p q r s t u v w x y z",
																	"fontsize" : 12.0,
																	"numoutlets" : 27,
																	"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
																	"patching_rect" : [ 326.527405, 208.936005, 826.0, 20.0 ],
																	"id" : "obj-31",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 512.329041, 69.381668, 25.0, 25.0 ],
																	"id" : "obj-1",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "This patch filters messages coming from qlist (with Preset number to be played upon triggering of a new Event)",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 8.250839, 15.0, 650.0, 20.0 ],
																	"id" : "obj-3",
																	"fontname" : "Arial Bold",
																	"numinlets" : 1
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-29", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 1 ],
																	"destination" : [ "obj-29", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 2 ],
																	"destination" : [ "obj-29", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 3 ],
																	"destination" : [ "obj-29", 4 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 4 ],
																	"destination" : [ "obj-29", 5 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 5 ],
																	"destination" : [ "obj-29", 6 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 6 ],
																	"destination" : [ "obj-29", 7 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 7 ],
																	"destination" : [ "obj-29", 8 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 8 ],
																	"destination" : [ "obj-29", 9 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 9 ],
																	"destination" : [ "obj-29", 10 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 10 ],
																	"destination" : [ "obj-29", 11 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 11 ],
																	"destination" : [ "obj-29", 12 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 12 ],
																	"destination" : [ "obj-29", 13 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 13 ],
																	"destination" : [ "obj-29", 14 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 14 ],
																	"destination" : [ "obj-29", 15 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 15 ],
																	"destination" : [ "obj-29", 16 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 16 ],
																	"destination" : [ "obj-29", 17 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 17 ],
																	"destination" : [ "obj-29", 18 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 18 ],
																	"destination" : [ "obj-29", 19 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 19 ],
																	"destination" : [ "obj-29", 20 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 20 ],
																	"destination" : [ "obj-29", 21 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 21 ],
																	"destination" : [ "obj-29", 22 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 22 ],
																	"destination" : [ "obj-29", 23 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 23 ],
																	"destination" : [ "obj-29", 24 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 24 ],
																	"destination" : [ "obj-29", 25 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 25 ],
																	"destination" : [ "obj-29", 26 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"default_fontname" : "Arial",
														"fontsize" : 12.0,
														"default_fontsize" : 12.0,
														"fontname" : "Arial",
														"default_fontface" : 0,
														"globalpatchername" : ""
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r score_call-preset",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 87.166321, 116.392319, 109.0, 20.0 ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Once a preset is recalled, stored values for the following parameters are sent out:\n\n* corpus name\n* trigger method\n* set-descriptors (x y z)\n* rate\n* rate_std\n* size (actual message is \"duration\")\n* size_std (actual message is \"duration_std)\n* xfade\n* transposition\n* transposition_std\n* gain\n* gain_std\n* reverse\n* onset_std\n* radius\n* setpos x y\n* freeze 1\n\nThe player does not see or controls presets. The player simply triggers EVENTS (1, 2, 3, 4...), which a re associated to presets by the composer. In any one Event in the score, different players may be assigned to different presets. This assignment is made in the text file called \"qlist_players.txt\".\n\nIT IS FROM THAT FILE THAT MESSAGES ARE SENT TO \"SCORE_CALL-PRESET\". For example,\n\n------------------------ 0;\nscore_identify-player You are M1;\n0 0;\n------------------------ 1;\nscore_call-preset L1 140;\nscore_call-preset L2 143;\nscore_call-preset L3 147;\nscore_call-preset L4 142;\n\nThese lines show that, in Event 1, player L1 will be playing preset 140, player L2 will  be playing preset 143, etc.\n\nEvent 0 is for initializations purposes. The part that a given laptop will play is defined by the line \"score_identify-player You are M1\".\nThe \"M1\" portion should be edited accordingly for each laptop.\n\nPresets are not player-specific: at any given moment, all players may be playing exactly the same preset OR they may be each playing a different preset.",
													"linecount" : 46,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 339.0, 12.683013, 461.0, 641.0 ],
													"id" : "obj-10",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 137.0, 367.0, 69.0, 20.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "read",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 66.0, 309.0, 35.0, 18.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r score_set-current-event",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 465.0, 328.0, 145.0, 20.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s reset",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 259.0, 323.0, 47.0, 20.0 ],
									"id" : "obj-44",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 636.0, 407.0, 32.5, 20.0 ],
									"id" : "obj-41",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 259.0, 293.0, 36.0, 20.0 ],
									"id" : "obj-40",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s score_event-display",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 259.0, 393.0, 127.0, 20.0 ],
									"id" : "obj-115",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Two methods for triggering score events",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 508.0, 227.0, 243.0, 20.0 ],
									"id" : "obj-37",
									"fontname" : "Arial Bold",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Specific event number is chosen (typed) by player and triggered:",
									"linecount" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 433.0, 265.0, 187.0, 34.0 ],
									"id" : "obj-34",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 428.0, 328.0, 32.5, 20.0 ],
									"id" : "obj-24",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r score_trigger-next-event-by-typing",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 428.0, 303.0, 201.0, 20.0 ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "value current-event",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 0.101961, 1.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 428.0, 356.0, 113.0, 20.0 ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s score_qlist-event",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 428.0, 416.0, 111.0, 20.0 ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "value current-event",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 0.101961, 1.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 636.0, 356.0, 113.0, 20.0 ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 636.0, 382.0, 32.5, 20.0 ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Next sequential event is triggered when the player hits shift+N:",
									"linecount" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 639.0, 265.0, 190.0, 34.0 ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 636.0, 326.0, 20.0, 20.0 ],
									"id" : "obj-39",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r kbctrl_trigger-next-event-by-shortcut",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 636.0, 303.0, 211.0, 20.0 ],
									"id" : "obj-36",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r score_qlist-event",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 137.0, 243.0, 109.0, 20.0 ],
									"id" : "obj-81",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r score_qlist-filename",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 116.0, 214.0, 125.0, 20.0 ],
									"id" : "obj-75",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 137.0, 271.0, 50.0, 20.0 ],
									"id" : "obj-74",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p my_qlist_control",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 137.0, 296.0, 107.0, 20.0 ],
									"id" : "obj-69",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 808.0, 558.0, 677.0, 486.0 ],
										"bglocked" : 0,
										"defrect" : [ 808.0, 558.0, 677.0, 486.0 ],
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
													"maxclass" : "comment",
													"text" : "qlist's direct out",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 248.685181, 22.539442, 150.0, 20.0 ],
													"id" : "obj-38",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "advance as needed without sending qlist messages; then send the last one (which is the desired msg)",
													"linecount" : 4,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 337.340332, 319.308777, 160.0, 62.0 ],
													"id" : "obj-36",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "rewind",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 290.177307, 255.210358, 46.0, 18.0 ],
													"id" : "obj-34",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 276.483826, 228.399689, 34.0, 20.0 ],
													"id" : "obj-33",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "x = new event number minus previous event number",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 270.371155, 147.066864, 290.0, 20.0 ],
													"id" : "obj-32",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "first number is just a formality in this type of qlist; second number is event number just completed;",
													"linecount" : 4,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 271.040558, 56.660412, 161.544708, 62.0 ],
													"id" : "obj-28",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "next 0",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 291.007477, 356.447021, 43.0, 18.0 ],
													"id" : "obj-26",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi",
													"fontsize" : 12.0,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 276.536438, 309.452301, 46.0, 20.0 ],
													"id" : "obj-24",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "next 0",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 236.308044, 202.404968, 43.0, 18.0 ],
													"id" : "obj-23",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 236.059357, 171.86026, 58.539444, 20.0 ],
													"id" : "obj-21",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 39.819672, 114.252434, 32.5, 18.0 ],
													"id" : "obj-20",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "if x = 1, next event is sequential; just send \"next 0\"\nif x ≠ 1, next event is non-sequential (it's either farther ahead or  behind). So just rewind and send \"next 1\" x-1 times, then \"next 0\". ",
													"linecount" : 3,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 299.590515, 174.616806, 364.0, 48.0 ],
													"id" : "obj-18",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "next 1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 276.536438, 334.245667, 43.0, 18.0 ],
													"id" : "obj-15",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "-",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 235.810669, 146.791885, 32.5, 20.0 ],
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 218.530426, 55.157768, 49.0, 20.0 ],
													"id" : "obj-12",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 25.036819, 381.536438, 25.0, 25.0 ],
													"id" : "obj-11",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "dummy variable which should not be removed!",
													"fontsize" : 11.595187,
													"numoutlets" : 0,
													"patching_rect" : [ 162.236664, 420.525909, 248.0, 20.0 ],
													"id" : "obj-31",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r ------------------------",
													"fontsize" : 11.595187,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 26.274979, 421.303528, 135.0, 20.0 ],
													"id" : "obj-30",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "rewind, next",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 24.963181, 309.252441, 75.0, 18.0 ],
													"id" : "obj-10",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "if event number is 0, initialize by sending a 'rewind' message to qlist",
													"linecount" : 4,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 93.005234, 56.712982, 109.429001, 62.0 ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 24.714493, 89.459038, 34.0, 20.0 ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 24.870041, 56.952671, 68.306534, 20.0 ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "events inlet",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 53.663422, 21.49737, 71.0, 20.0 ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 24.663422, 18.49737, 25.0, 25.0 ],
													"id" : "obj-3",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 219.123962, 20.476337, 25.0, 25.0 ],
													"id" : "obj-1",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
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
													"destination" : [ "obj-10", 0 ],
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"color" : [ 0.2, 0.701961, 0.0, 1.0 ],
													"midpoints" : [ 83.676575, 127.901199, 245.310669, 127.901199 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [ 49.319672, 139.022156, 258.810669, 139.022156 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 1 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 1 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 1 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-24", 1 ],
													"hidden" : 0,
													"color" : [ 0.2, 0.701961, 0.0, 1.0 ],
													"midpoints" : [ 83.676575, 298.702484, 313.036438, 298.702484 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlist",
									"fontsize" : 12.0,
									"numoutlets" : 3,
									"outlettype" : [ "", "bang", "bang" ],
									"patching_rect" : [ 137.0, 331.0, 46.0, 20.0 ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"numinlets" : 1,
									"save" : [ "#N", "qlist", ";", "#X", "insert", "------------------------", 0, ";", ";", "#X", "insert", 0, 0, ";", ";", "#X", "insert", "------------------------", 1, ";", ";", "#X", "insert", "score_call-preset", "a", 300, ";", ";", "#X", "insert", "score_call-preset", "b", 100, ";", ";", "#X", "insert", "score_call-preset", "c", 100, ";", ";", "#X", "insert", "score_call-preset", "d", 100, ";", ";", "#X", "insert", 0, 1, ";", ";", "#X", "insert", "------------------------", 2, ";", ";", "#X", "insert", "score_call-preset", "a", 301, ";", ";", "#X", "insert", "score_call-preset", "b", 101, ";", ";", "#X", "insert", "score_call-preset", "c", 200, ";", ";", "#X", "insert", "score_call-preset", "d", 201, ";", ";", "#X", "insert", 0, 2, ";", ";", "#X", "insert", "------------------------", 3, ";", ";", "#X", "insert", "score_call-preset", "a", 200, ";", ";", "#X", "insert", "score_call-preset", "b", 102, ";", ";", "#X", "insert", "score_call-preset", "c", 101, ";", ";", "#X", "insert", "score_call-preset", "d", 102, ";", ";", "#X", "insert", 0, 3, ";", ";", "#X", "insert", "------------------------", 4, ";", ";", "#X", "insert", "score_call-preset", "a", 201, ";", ";", "#X", "insert", "score_call-preset", "b", 103, ";", ";", "#X", "insert", "score_call-preset", "c", 100, ";", ";", "#X", "insert", "score_call-preset", "d", 101, ";", ";", "#X", "insert", 0, 4, ";", ";", "#X", "insert", "------------------------", 5, ";", ";", "#X", "insert", "score_call-preset", "a", 100, ";", ";", "#X", "insert", "score_call-preset", "b", 300, ";", ";", "#X", "insert", "score_call-preset", "c", 200, ";", ";", "#X", "insert", "score_call-preset", "d", 201, ";", ";", "#X", "insert", 0, 5, ";", ";", "#X", "insert", "------------------------", 6, ";", ";", "#X", "insert", "score_call-preset", "a", 101, ";", ";", "#X", "insert", "score_call-preset", "b", 301, ";", ";", "#X", "insert", "score_call-preset", "c", 100, ";", ";", "#X", "insert", "score_call-preset", "d", 300, ";", ";", "#X", "insert", 0, 6, ";", ";", "#X", "insert", "------------------------", 7, ";", ";", "#X", "insert", "score_call-preset", "a", 102, ";", ";", "#X", "insert", "score_call-preset", "b", 200, ";", ";", "#X", "insert", "score_call-preset", "c", 200, ";", ";", "#X", "insert", "score_call-preset", "d", 200, ";", ";", "#X", "insert", 0, 7, ";", ";", "#X", "insert", "------------------------", 8, ";", ";", "#X", "insert", "score_call-preset", "a", 103, ";", ";", "#X", "insert", "score_call-preset", "b", 200, ";", ";", "#X", "insert", "score_call-preset", "c", 200, ";", ";", "#X", "insert", "score_call-preset", "d", 200, ";", ";", "#X", "insert", 0, 8, ";", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Goal of this subpatch:\n\nTrigger Events in order (or in \"goto\" fashion for rehearsal);\nEach triggering of an Event (Shift+N) involves:\n- recalling a certain preset by number;\n- sending event number to display;\n\nA preset includes everything the patch needs to know to reproduce a certain sound & settings (corpus, trigger mode, set-descriptors, grain parameters), radius, setpos (X/Y cursor placement, etc). Presets are defined in the \"composer\" subpatch, stored in the text file my-presets-coll.txt;\n\nA qlist txt file contains all information of events & presets for all players. The only thing unique to each player in this file is the IDENTIFICATION line (\"You are M1\" etc). Part of first-time set-up is to make sure that this line is changed according to the part to be played by each laptop.",
									"linecount" : 14,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 6.742105, 8.306579, 604.0, 200.0 ],
									"id" : "obj-66",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"patching_rect" : [ 406.0, 214.0, 457.0, 234.0 ],
									"id" : "obj-35",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"patching_rect" : [ 3.0, 422.0, 270.0, 104.0 ],
									"id" : "obj-6",
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-25", 2 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 173.5, 416.0, 328.5, 416.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 268.5, 318.5, 268.5, 318.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 645.5, 436.0, 630.5, 436.0, 630.5, 406.0, 437.5, 406.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 659.0, 436.0, 755.25, 436.0, 755.25, 350.0, 645.5, 350.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [ 146.5, 267.0, 268.5, 267.0 ]
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
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-69", 1 ],
									"hidden" : 0,
									"midpoints" : [ 146.5, 360.0, 252.5, 360.0, 252.5, 286.0, 234.5, 286.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 125.5, 321.5, 146.5, 321.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-115", 0 ],
									"hidden" : 0,
									"midpoints" : [ 196.5, 389.5, 268.5, 389.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "130.",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 502.042206, 539.030334, 42.0, 18.0 ],
					"id" : "obj-43",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p init",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 30.0, 83.0, 36.0, 20.0 ],
					"id" : "obj-51",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 504.0, 160.0, 794.0, 843.0 ],
						"bglocked" : 0,
						"defrect" : [ 504.0, 160.0, 794.0, 843.0 ],
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
									"text" : ";\rlcd-controls_open-window bang;\rlcd_open-window bang;\r",
									"linecount" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 97.0, 294.0, 183.0, 46.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r reset",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 287.0, 161.0, 45.0, 20.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r reset",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 377.0, 113.0, 45.0, 20.0 ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rto-presets-gate 1;\rscore_set-current-event 0;\rscore_qlist-event 0;\rcurrent-corpus nocorpus;\rplayer_recall-preset 0;\r",
									"linecount" : 6,
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 27.0, 366.0, 151.0, 87.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "delay 100",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 279.0, 194.0, 63.0, 20.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "default settings after init",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 548.0, 524.0, 150.0, 20.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rcatart-init bang;\rto-dac 0;\r",
									"linecount" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 579.0, 288.0, 93.0, 46.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "INIT to be used at patch start up; afterwards, parameters will be changed via a \"piece section\" mechanism. RESET is a subset of INIT. RESET is called by manually choosing Event #0 (lcd_controls subpatch). RESET keeps previously loaded corpus.",
									"linecount" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 156.0, 17.0, 570.0, 48.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rto-catart-lcd trigger 0;\rto-catart-lcd set-descriptors UnitID UnitID Pitch;\rto-catart-lcd rate 10;\rrate_display 10;\rto-catart-lcd rate_std 0;\rrate-std_display 10;\rto-catart-lcd size 0;\rsize_display 0;\rto-catart-lcd size_std 0;\rsize-std_display 0;\rto-catart-lcd xfade 10;\rxfade_display 10;\rto-catart-lcd transposition 0.;\rtransposition_display 0;\rto-catart-lcd transposition_std 0.;\rtransposition-std_display 0.;\rto-catart-lcd gain -99.;\rgain_display -99;\rto-catart-lcd gain_std 0.;\rgain-std_display 0.;\rto-catart-lcd reverse 0;\rreverse-prob_display 0;\rto-catart-lcd onset_std 0;\ronset-std_display 0;\rto-catart-lcd radius 1.;\rto-catart-lcd setpos 0.5 0.5;\rto-catart-lcd freeze 1;\rinit_pan-std 50;\r",
									"linecount" : 29,
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 279.0, 402.0, 263.0, 405.0 ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b b b",
									"fontsize" : 12.0,
									"numoutlets" : 5,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang" ],
									"patching_rect" : [ 116.0, 78.0, 481.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 116.0, 48.0, 20.0, 20.0 ],
									"id" : "obj-3",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 116.0, 14.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rkbctrl_gate-open 1;\rkbctrl_arrow-up-speed 100;\rkbctrl_arrow-down-speed 100;\rkbctrl_arrow-left-speed 200;\rkbctrl_arrow-right-speed 200;\r",
									"linecount" : 6,
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 347.0, 309.0, 175.0, 87.0 ],
									"id" : "obj-64",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rrate_grid-display 10;\rrate-std_grid-display 10;\rsize_grid-display 10;\rsize-std_grid-display 10;\rtransposition_grid-display 0.1;\rtransposition-std_grid-display 0.1;\rgain_grid-display 3;\rgain-std_grid-display 3;\rtyping-display 0.;\rinit_textdisplay clear;\r",
									"linecount" : 11,
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 389.929932, 140.756378, 190.0, 156.0 ],
									"id" : "obj-40",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-40", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 2 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 3 ],
									"destination" : [ "obj-40", 0 ],
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
									"source" : [ "obj-4", 4 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.101961 ],
					"presentation_rect" : [ 138.0, 161.0, 22.04904, 22.04904 ],
					"outlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.34902 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 30.0, 7.0, 34.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-20",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s lb",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 45.0, 50.0, 29.0, 20.0 ],
					"id" : "obj-16",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "use with seq:",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 499.832642, 41.007233, 81.0, 20.0 ],
					"id" : "obj-19",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmytest play;\r",
					"linecount" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 500.832642, 64.007233, 78.0, 32.0 ],
					"id" : "obj-17",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "lcd_controls",
					"text" : "p lcd-controls",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 30.0, 105.0, 82.0, 20.0 ],
					"id" : "obj-14",
					"fontname" : "Arial",
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 117.0, 44.0, 777.0, 517.0 ],
						"bglocked" : 0,
						"defrect" : [ 117.0, 44.0, 777.0, 517.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set you are voice $1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 612.0, 545.0, 118.0, 18.0 ],
									"id" : "obj-143",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "-99.",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 651.0, 325.0, 50.0, 18.0 ],
									"id" : "obj-148",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r player_recall-preset",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 937.0, 537.484436, 123.0, 20.0 ],
									"id" : "obj-45",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r composer_recall-preset",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 962.658081, 559.484436, 143.0, 20.0 ],
									"id" : "obj-120",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r current-corpus",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 370.0, 31.0, 95.0, 20.0 ],
									"id" : "obj-115",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p report-gain",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 381.568909, 482.214539, 79.0, 20.0 ],
									"id" : "obj-164",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 220.0, 208.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 220.0, 208.0 ],
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
													"text" : "value gain",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.800598, 152.068573, 65.0, 20.0 ],
													"id" : "obj-150",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 50.431091, 124.785461, 32.5, 20.0 ],
													"id" : "obj-149",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r composer_report-value",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 141.0, 20.0 ],
													"id" : "obj-147",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 63.431091, 40.0, 25.0, 25.0 ],
													"id" : "obj-153",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-153", 0 ],
													"destination" : [ "obj-149", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-149", 0 ],
													"destination" : [ "obj-150", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p report-gain-std",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 463.568909, 483.214539, 99.0, 20.0 ],
									"id" : "obj-163",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 262.0, 246.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 262.0, 246.0 ],
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
													"text" : "value gain-std",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.800598, 152.068573, 85.0, 20.0 ],
													"id" : "obj-150",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 50.431091, 124.785461, 32.5, 20.0 ],
													"id" : "obj-149",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r composer_report-value",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 141.0, 20.0 ],
													"id" : "obj-147",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 63.431091, 40.0, 25.0, 25.0 ],
													"id" : "obj-153",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-153", 0 ],
													"destination" : [ "obj-149", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-149", 0 ],
													"destination" : [ "obj-150", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p report-reverse",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 451.568909, 652.214539, 96.0, 20.0 ],
									"id" : "obj-162",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 243.0, 226.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 243.0, 226.0 ],
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
													"text" : "value reverse",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.800598, 152.068573, 83.0, 20.0 ],
													"id" : "obj-150",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.431091, 124.785461, 32.5, 20.0 ],
													"id" : "obj-149",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r composer_report-value",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 141.0, 20.0 ],
													"id" : "obj-147",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 63.431091, 40.0, 25.0, 25.0 ],
													"id" : "obj-153",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-149", 0 ],
													"destination" : [ "obj-150", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-153", 0 ],
													"destination" : [ "obj-149", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p report-x-fade",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 87.568909, 656.214539, 89.0, 20.0 ],
									"id" : "obj-161",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 259.0, 231.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 259.0, 231.0 ],
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
													"text" : "value x-fade",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.800598, 152.068573, 76.0, 20.0 ],
													"id" : "obj-150",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.431091, 124.785461, 32.5, 20.0 ],
													"id" : "obj-149",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r composer_report-value",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 141.0, 20.0 ],
													"id" : "obj-147",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 63.431091, 40.0, 25.0, 25.0 ],
													"id" : "obj-153",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-149", 0 ],
													"destination" : [ "obj-150", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-153", 0 ],
													"destination" : [ "obj-149", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p report-size-std",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 127.568909, 507.214539, 97.0, 20.0 ],
									"id" : "obj-159",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 252.0, 227.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 252.0, 227.0 ],
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
													"text" : "value size-std",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.800598, 152.068573, 84.0, 20.0 ],
													"id" : "obj-150",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.431091, 124.785461, 32.5, 20.0 ],
													"id" : "obj-149",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r composer_report-value",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 141.0, 20.0 ],
													"id" : "obj-147",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 63.431091, 40.0, 25.0, 25.0 ],
													"id" : "obj-153",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-149", 0 ],
													"destination" : [ "obj-150", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-153", 0 ],
													"destination" : [ "obj-149", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p report-size",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 47.568909, 507.214539, 77.0, 20.0 ],
									"id" : "obj-160",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 235.0, 208.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 235.0, 208.0 ],
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
													"text" : "value size",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.800598, 152.068573, 64.0, 20.0 ],
													"id" : "obj-150",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.431091, 124.785461, 32.5, 20.0 ],
													"id" : "obj-149",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r composer_report-value",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 141.0, 20.0 ],
													"id" : "obj-147",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 63.431091, 40.0, 25.0, 25.0 ],
													"id" : "obj-153",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-149", 0 ],
													"destination" : [ "obj-150", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-153", 0 ],
													"destination" : [ "obj-149", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p report-rate-std",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 191.568909, 282.214539, 97.0, 20.0 ],
									"id" : "obj-158",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 252.0, 226.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 252.0, 226.0 ],
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
													"text" : "value rate-std",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.800598, 152.068573, 83.0, 20.0 ],
													"id" : "obj-150",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.431091, 124.785461, 32.5, 20.0 ],
													"id" : "obj-149",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r composer_report-value",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 141.0, 20.0 ],
													"id" : "obj-147",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 63.431091, 40.0, 25.0, 25.0 ],
													"id" : "obj-153",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-149", 0 ],
													"destination" : [ "obj-150", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-153", 0 ],
													"destination" : [ "obj-149", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p report-rate",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 111.568909, 282.214539, 77.0, 20.0 ],
									"id" : "obj-157",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 256.0, 242.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 256.0, 242.0 ],
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
													"text" : "value rate",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.800598, 152.068573, 63.0, 20.0 ],
													"id" : "obj-150",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.431091, 124.785461, 32.5, 20.0 ],
													"id" : "obj-149",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r composer_report-value",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 141.0, 20.0 ],
													"id" : "obj-147",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 63.431091, 40.0, 25.0, 25.0 ],
													"id" : "obj-153",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-149", 0 ],
													"destination" : [ "obj-150", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-153", 0 ],
													"destination" : [ "obj-149", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p report-transp",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 407.568909, 275.214539, 89.0, 20.0 ],
									"id" : "obj-156",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 257.0, 234.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 257.0, 234.0 ],
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
													"text" : "value transp",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.800598, 152.068573, 76.0, 20.0 ],
													"id" : "obj-150",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 50.431091, 124.785461, 32.5, 20.0 ],
													"id" : "obj-149",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r composer_report-value",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 141.0, 20.0 ],
													"id" : "obj-147",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 63.431091, 40.0, 25.0, 25.0 ],
													"id" : "obj-153",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-149", 0 ],
													"destination" : [ "obj-150", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-153", 0 ],
													"destination" : [ "obj-149", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p report-transp-std",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 451.568909, 252.214539, 109.0, 20.0 ],
									"id" : "obj-155",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 797.0, 188.0, 243.0, 253.0 ],
										"bglocked" : 0,
										"defrect" : [ 797.0, 188.0, 243.0, 253.0 ],
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
													"text" : "value transp-std",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 49.800598, 152.068573, 96.0, 20.0 ],
													"id" : "obj-150",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 50.431091, 124.785461, 32.5, 20.0 ],
													"id" : "obj-149",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r composer_report-value",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 141.0, 20.0 ],
													"id" : "obj-147",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 63.431091, 40.0, 25.0, 25.0 ],
													"id" : "obj-153",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-153", 0 ],
													"destination" : [ "obj-149", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-149", 0 ],
													"destination" : [ "obj-150", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p report-onset",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 768.568909, 191.214539, 85.0, 20.0 ],
									"id" : "obj-154",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 1137.0, 547.0, 281.0, 224.0 ],
										"bglocked" : 0,
										"defrect" : [ 1137.0, 547.0, 281.0, 224.0 ],
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
													"text" : "value onset",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 0.254902, 1.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.800598, 152.068573, 72.0, 20.0 ],
													"id" : "obj-150",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.431091, 124.785461, 32.5, 20.0 ],
													"id" : "obj-149",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r composer_report-value",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 141.0, 20.0 ],
													"id" : "obj-147",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 63.431091, 40.0, 25.0, 25.0 ],
													"id" : "obj-153",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-149", 0 ],
													"destination" : [ "obj-150", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-153", 0 ],
													"destination" : [ "obj-149", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "move to Next event at conductor's signal\naccess STD box of corresponding letter\nselected parameter will jump immediately to that number\ncycle through parameter boxes",
									"linecount" : 9,
									"presentation_linecount" : 4,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 417.0, 423.0, 311.0, 62.0 ],
									"patching_rect" : [ 228.0, 584.0, 151.0, 131.0 ],
									"presentation" : 1,
									"id" : "obj-145",
									"fontname" : "Arial",
									"frgb" : [ 0.45098, 0.45098, 0.45098, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.45098, 0.45098, 0.45098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Shift + N:\nShift + [letter]:\n[number] + return:\nTab key:",
									"linecount" : 4,
									"presentation_linecount" : 4,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 309.0, 423.0, 115.0, 62.0 ],
									"patching_rect" : [ 211.0, 723.0, 161.0, 62.0 ],
									"presentation" : 1,
									"id" : "obj-146",
									"fontname" : "Arial Bold",
									"frgb" : [ 0.45098, 0.45098, 0.45098, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.45098, 0.45098, 0.45098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "increment/decrement by 1\nvariable increment/decrement\nchange increment/decrement\naccess parameter boxes\n",
									"linecount" : 6,
									"presentation_linecount" : 4,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 128.0, 423.0, 169.0, 62.0 ],
									"patching_rect" : [ 398.0, 688.0, 151.0, 89.0 ],
									"presentation" : 1,
									"id" : "obj-144",
									"fontname" : "Arial",
									"frgb" : [ 0.45098, 0.45098, 0.45098, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.45098, 0.45098, 0.45098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Arrows up/down:\nArrows left/right:\n+ and - keys:\nR, S, X, T, G, V, O:",
									"linecount" : 4,
									"presentation_linecount" : 4,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 23.0, 423.0, 111.0, 62.0 ],
									"patching_rect" : [ 28.0, 728.0, 161.0, 62.0 ],
									"presentation" : 1,
									"id" : "obj-141",
									"fontname" : "Arial Bold",
									"frgb" : [ 0.45098, 0.45098, 0.45098, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.45098, 0.45098, 0.45098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "instant messages from conductor:",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 439.0, 319.0, 208.0, 20.0 ],
									"patching_rect" : [ 1154.0, 693.0, 216.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-137",
									"fontname" : "Arial Bold",
									"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p change-colors",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 851.0, 442.0, 96.0, 20.0 ],
									"id" : "obj-136",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 271.0, 418.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 271.0, 418.0 ],
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
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 52.0, 100.0, 20.0, 20.0 ],
													"id" : "obj-170",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 3 1",
													"fontsize" : 12.0,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 52.0, 160.0, 54.0, 20.0 ],
													"id" : "obj-166",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "counter 1 3",
													"fontsize" : 12.0,
													"numoutlets" : 4,
													"outlettype" : [ "int", "", "", "int" ],
													"patching_rect" : [ 52.0, 132.0, 73.0, 20.0 ],
													"id" : "obj-164",
													"fontname" : "Arial",
													"numinlets" : 5
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor 0.19 0.5 0.5 0.41",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 234.0, 143.0, 18.0 ],
													"id" : "obj-162",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor 0.19 0.1 0.27 0.25;\r",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 51.0, 210.0, 162.0, 18.0 ],
													"id" : "obj-160",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor 1. 1. 1. 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 52.0, 187.0, 143.0, 18.0 ],
													"id" : "obj-159",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 52.0, 40.0, 25.0, 25.0 ],
													"id" : "obj-131",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 46.0, 312.0, 25.0, 25.0 ],
													"id" : "obj-134",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-164", 0 ],
													"destination" : [ "obj-166", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-170", 0 ],
													"destination" : [ "obj-164", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-166", 1 ],
													"destination" : [ "obj-160", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-166", 2 ],
													"destination" : [ "obj-162", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-170", 0 ],
													"destination" : [ "obj-166", 1 ],
													"hidden" : 0,
													"midpoints" : [ 61.5, 126.5, 96.5, 126.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-131", 0 ],
													"destination" : [ "obj-170", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-162", 0 ],
													"destination" : [ "obj-134", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-160", 0 ],
													"destination" : [ "obj-134", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-159", 0 ],
													"destination" : [ "obj-134", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-166", 0 ],
													"destination" : [ "obj-159", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p change-colors",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1109.0, 429.0, 96.0, 20.0 ],
									"id" : "obj-135",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 102.0, 532.0, 208.0, 363.0 ],
										"bglocked" : 0,
										"defrect" : [ 102.0, 532.0, 208.0, 363.0 ],
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
													"text" : "prepend bgcolor",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 22.0, 258.0, 97.0, 20.0 ],
													"id" : "obj-16",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 52.0, 100.0, 20.0, 20.0 ],
													"id" : "obj-170",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 3 1",
													"fontsize" : 12.0,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 52.0, 160.0, 54.0, 20.0 ],
													"id" : "obj-166",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "counter 1 3",
													"fontsize" : 12.0,
													"numoutlets" : 4,
													"outlettype" : [ "int", "", "", "int" ],
													"patching_rect" : [ 52.0, 132.0, 73.0, 20.0 ],
													"id" : "obj-164",
													"fontname" : "Arial",
													"numinlets" : 5
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.64 0.65 0.42 0.6",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 234.0, 107.0, 18.0 ],
													"id" : "obj-162",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.94 0.74 0.1 0.27",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 51.0, 210.0, 115.0, 18.0 ],
													"id" : "obj-160",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.2 0.9 0.6 0.1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 52.0, 187.0, 87.0, 18.0 ],
													"id" : "obj-159",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 52.0, 40.0, 25.0, 25.0 ],
													"id" : "obj-131",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 300.0, 25.0, 25.0 ],
													"id" : "obj-134",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-131", 0 ],
													"destination" : [ "obj-170", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-170", 0 ],
													"destination" : [ "obj-166", 1 ],
													"hidden" : 0,
													"midpoints" : [ 61.5, 126.5, 96.5, 126.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-166", 0 ],
													"destination" : [ "obj-159", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-170", 0 ],
													"destination" : [ "obj-164", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-164", 0 ],
													"destination" : [ "obj-166", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-166", 1 ],
													"destination" : [ "obj-160", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-166", 2 ],
													"destination" : [ "obj-162", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-134", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-162", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-160", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-159", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 891.0, 404.0, 74.0, 20.0 ],
									"id" : "obj-129",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route inst-msg",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 902.0, 375.0, 87.0, 20.0 ],
									"id" : "obj-127",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"fontface" : 2,
									"fontsize" : 20.0,
									"numoutlets" : 4,
									"presentation_rect" : [ 435.0, 337.0, 291.0, 68.0 ],
									"outlettype" : [ "", "int", "", "" ],
									"patching_rect" : [ 1065.0, 579.0, 255.0, 110.0 ],
									"presentation" : 1,
									"id" : "obj-124",
									"fontname" : "Helvetica",
									"bordercolor" : [ 0.74902, 0.301961, 0.101961, 0.701961 ],
									"readonly" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set 0.",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 949.0, 175.0, 40.0, 18.0 ],
									"id" : "obj-122",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r kbctrl_return",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 949.372314, 151.060425, 85.0, 20.0 ],
									"id" : "obj-92",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "301",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 622.0, 152.0, 38.0, 18.0 ],
									"outlettype" : [ "" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 935.0, 626.0, 52.0, 18.0 ],
									"presentation" : 1,
									"id" : "obj-132",
									"fontname" : "Arial Bold",
									"numinlets" : 2,
									"textcolor" : [ 1.0, 0.476081, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "corpus-bad",
									"fontface" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 620.0, 171.0, 113.0, 18.0 ],
									"outlettype" : [ "" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 303.0, 60.0, 86.0, 18.0 ],
									"presentation" : 1,
									"id" : "obj-119",
									"fontname" : "Arial",
									"bgcolor2" : [ 1.0, 0.988235, 0.988235, 1.0 ],
									"numinlets" : 2,
									"textcolor" : [ 1.0, 0.476081, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r init_textdisplay",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 1090.0, 361.0, 97.0, 20.0 ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 970.0, 398.0, 74.0, 20.0 ],
									"id" : "obj-46",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "fromsymbol",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 902.0, 352.0, 73.0, 20.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "manual number input:",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 434.0, 125.0, 163.0, 20.0 ],
									"patching_rect" : [ 909.0, 252.0, 136.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-140",
									"fontname" : "Arial Bold",
									"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "current event:",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 603.0, 15.0, 163.0, 20.0 ],
									"patching_rect" : [ 686.0, 608.0, 91.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-139",
									"fontname" : "Arial Bold",
									"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "automated messages:",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 434.0, 181.0, 163.0, 20.0 ],
									"patching_rect" : [ 1209.0, 433.0, 163.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-138",
									"fontname" : "Arial Bold",
									"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "catork_osc-player",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 902.0, 329.0, 105.0, 20.0 ],
									"id" : "obj-126",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"fontsize" : 24.0,
									"numoutlets" : 4,
									"bgcolor" : [ 0.2, 0.9, 0.6, 0.1 ],
									"presentation_rect" : [ 434.0, 199.0, 260.0, 119.0 ],
									"outlettype" : [ "", "int", "", "" ],
									"patching_rect" : [ 1090.0, 459.0, 301.0, 110.0 ],
									"presentation" : 1,
									"id" : "obj-125",
									"fontname" : "Arial",
									"bordercolor" : [ 0.74902, 0.301961, 0.101961, 0.701961 ],
									"readonly" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r lcd-controls_open-window",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 720.0, 725.0, 157.0, 20.0 ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 720.0, 749.0, 35.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 720.0, 772.0, 69.0, 20.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r typing-display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 912.0, 222.0, 91.0, 20.0 ],
									"id" : "obj-36",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p WTF?",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 1256.0, 825.0, 53.0, 20.0 ],
									"id" : "obj-152",
									"fontname" : "Arial",
									"numinlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 906.0, 310.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 906.0, 310.0 ],
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
													"maxclass" : "comment",
													"text" : "The point of all this scripting: to be able to DESELECT the damn numbox after the player chooses a new event number by typing in the numbox. Otherwise the player would have to remember to manually click outside the numbox to deselect it before going on changing other parameters of the patch. It would be VERY easy for the player to forget to click outside, and then all of a sudden type a number to change, say, the gain, and insted this number would undesirably change the current event. Bad surprise...\nSince numboxes accept a 'select' message ( but NOT a 'deselect' one), the trick is to create a new numbox, select it (thus deselecting the one we really care about), and then immediately discard it, all through scripting.",
													"linecount" : 10,
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 15.0, 15.0, 865.0, 282.0 ],
													"id" : "obj-127",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
 ],
										"lines" : [  ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "delay 10",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 960.0, 773.0, 56.0, 20.0 ],
									"id" : "obj-142",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script delete var666",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 960.0, 797.0, 115.0, 18.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script send var666 select",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1081.0, 797.0, 143.0, 18.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b",
									"fontsize" : 12.0,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "bang" ],
									"patching_rect" : [ 960.0, 749.0, 295.0, 20.0 ],
									"id" : "obj-128",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script newdefault var666 585 404 number @presentation 1",
									"linecount" : 2,
									"fontsize" : 11.595187,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1236.0, 781.0, 160.0, 31.0 ],
									"id" : "obj-48",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 960.0, 824.0, 69.0, 20.0 ],
									"id" : "obj-130",
									"fontname" : "Arial",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.101961 ],
									"presentation_rect" : [ 707.0, 123.0, 31.04904, 31.04904 ],
									"outlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.34902 ],
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 960.0, 658.0, 34.0, 34.0 ],
									"presentation" : 1,
									"id" : "obj-123",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 893.0, 696.0, 32.5, 20.0 ],
									"id" : "obj-121",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s score_trigger-next-event-by-typing",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 893.0, 720.0, 203.0, 20.0 ],
									"id" : "obj-112",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "...or type it in\nand hit \"bang\":",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 607.0, 102.0, 88.0, 34.0 ],
									"patching_rect" : [ 749.0, 668.0, 163.0, 34.0 ],
									"presentation" : 1,
									"id" : "obj-101",
									"fontname" : "Arial",
									"frgb" : [ 0.45098, 0.45098, 0.45098, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.45098, 0.45098, 0.45098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 13.0,
									"numoutlets" : 2,
									"presentation_rect" : [ 698.0, 103.0, 53.0, 21.0 ],
									"outlettype" : [ "int", "bang" ],
									"htricolor" : [ 0.0, 0.721569, 0.0, 1.0 ],
									"tricolor" : [ 0.74902, 0.301961, 0.101961, 0.301961 ],
									"patching_rect" : [ 907.0, 668.0, 53.0, 21.0 ],
									"presentation" : 1,
									"id" : "obj-58",
									"fontname" : "Arial",
									"bordercolor" : [ 0.74902, 0.301961, 0.101961, 0.701961 ],
									"numinlets" : 1,
									"textcolor" : [ 0.0, 0.466667, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "(shift+N for Next event)",
									"linecount" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 603.0, 72.0, 150.0, 20.0 ],
									"patching_rect" : [ 783.0, 630.0, 126.0, 34.0 ],
									"presentation" : 1,
									"id" : "obj-47",
									"fontname" : "Arial",
									"frgb" : [ 0.45098, 0.45098, 0.45098, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.45098, 0.45098, 0.45098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "Event 2",
									"fontsize" : 36.0,
									"numoutlets" : 4,
									"presentation_rect" : [ 603.0, 29.0, 166.0, 48.0 ],
									"outlettype" : [ "", "int", "", "" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 778.0, 576.0, 151.0, 48.0 ],
									"presentation" : 1,
									"id" : "obj-12",
									"fontname" : "Arial Bold",
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"frgb" : [ 0.74902, 0.301961, 0.101961, 0.654902 ],
									"numinlets" : 1,
									"textcolor" : [ 0.74902, 0.301961, 0.101961, 0.654902 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set Event",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 778.0, 549.0, 108.0, 20.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r score_event-display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 778.0, 521.0, 125.0, 20.0 ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r score_identify-player",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 612.0, 521.0, 129.0, 20.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "you are voice a",
									"fontsize" : 18.0,
									"numoutlets" : 4,
									"presentation_rect" : [ 240.0, 4.0, 152.0, 25.0 ],
									"outlettype" : [ "", "int", "", "" ],
									"patching_rect" : [ 612.0, 574.0, 154.0, 26.0 ],
									"presentation" : 1,
									"id" : "obj-3",
									"fontname" : "Arial Bold",
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"frgb" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "grid:",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 427.0, 34.0, 20.0 ],
									"id" : "obj-37",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r size-std_grid-display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 193.388062, 447.213745, 127.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-38",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 14.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triangle" : 0,
									"presentation_rect" : [ 175.0, 289.0, 48.0, 23.0 ],
									"outlettype" : [ "int", "bang" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 193.0, 472.0, 48.0, 23.0 ],
									"presentation" : 1,
									"id" : "obj-39",
									"fontname" : "Arial Bold",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.776471, 0.294118, 0.078431, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "grid:",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 207.0, 346.0, 34.0, 20.0 ],
									"id" : "obj-41",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r size_grid-display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 201.388062, 366.213745, 107.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-42",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 18.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triangle" : 0,
									"presentation_rect" : [ 175.0, 244.0, 57.0, 27.0 ],
									"outlettype" : [ "int", "bang" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 201.0, 389.0, 57.0, 27.0 ],
									"presentation" : 1,
									"id" : "obj-44",
									"fontname" : "Arial Bold",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.776471, 0.294118, 0.078431, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "grid:",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 559.0, 413.0, 34.0, 20.0 ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r gain-std_grid-display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 553.388062, 433.213745, 129.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-31",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 14.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triangle" : 0,
									"presentation_rect" : [ 370.0, 285.0, 45.0, 23.0 ],
									"outlettype" : [ "float", "bang" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 553.0, 458.0, 45.0, 23.0 ],
									"maximum" : 12.0,
									"presentation" : 1,
									"id" : "obj-32",
									"fontname" : "Arial Bold",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"minimum" : -50.0,
									"numinlets" : 1,
									"textcolor" : [ 0.776471, 0.294118, 0.078431, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "grid:",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 567.0, 332.0, 34.0, 20.0 ],
									"id" : "obj-33",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r gain_grid-display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 561.388062, 352.213745, 109.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-34",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 18.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triangle" : 0,
									"presentation_rect" : [ 370.0, 238.0, 54.0, 27.0 ],
									"outlettype" : [ "float", "bang" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 561.0, 375.0, 54.0, 27.0 ],
									"maximum" : 12.0,
									"presentation" : 1,
									"id" : "obj-35",
									"fontname" : "Arial Bold",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"minimum" : -50.0,
									"numinlets" : 1,
									"textcolor" : [ 0.776471, 0.294118, 0.078431, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "grid:",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 574.0, 233.0, 34.0, 20.0 ],
									"id" : "obj-27",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r transposition-std_grid-display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 568.388062, 253.213745, 174.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-28",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 14.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triangle" : 0,
									"presentation_rect" : [ 370.0, 145.0, 45.0, 23.0 ],
									"outlettype" : [ "float", "bang" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 568.0, 278.0, 45.0, 23.0 ],
									"maximum" : 50.0,
									"presentation" : 1,
									"id" : "obj-29",
									"fontname" : "Arial Bold",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"minimum" : -50.0,
									"numinlets" : 1,
									"textcolor" : [ 0.776471, 0.294118, 0.078431, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "grid:",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 582.0, 122.0, 34.0, 20.0 ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r transposition_grid-display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 576.388062, 142.213745, 154.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-24",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 18.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triangle" : 0,
									"presentation_rect" : [ 370.0, 99.0, 54.0, 27.0 ],
									"outlettype" : [ "float", "bang" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 576.0, 167.0, 54.0, 27.0 ],
									"maximum" : 50.0,
									"presentation" : 1,
									"id" : "obj-25",
									"fontname" : "Arial Bold",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"minimum" : -50.0,
									"numinlets" : 1,
									"textcolor" : [ 0.776471, 0.294118, 0.078431, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "grid:",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 282.0, 200.0, 34.0, 20.0 ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r rate-std_grid-display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 276.388062, 220.213745, 127.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-21",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 14.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triangle" : 0,
									"presentation_rect" : [ 168.0, 146.0, 48.0, 23.0 ],
									"outlettype" : [ "int", "bang" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 276.0, 245.0, 48.0, 23.0 ],
									"presentation" : 1,
									"id" : "obj-22",
									"fontname" : "Arial Bold",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.776471, 0.294118, 0.078431, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "grid:",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 282.0, 122.0, 34.0, 20.0 ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r rate_grid-display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 276.388062, 142.213745, 107.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-15",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 18.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triangle" : 0,
									"presentation_rect" : [ 168.0, 101.0, 57.0, 27.0 ],
									"outlettype" : [ "int", "bang" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 276.0, 165.0, 57.0, 27.0 ],
									"presentation" : 1,
									"id" : "obj-14",
									"fontname" : "Arial Bold",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.776471, 0.294118, 0.078431, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 38.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triangle" : 0,
									"presentation_rect" : [ 434.0, 138.0, 125.0, 50.0 ],
									"outlettype" : [ "float", "bang" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 893.0, 273.0, 147.0, 50.0 ],
									"presentation" : 1,
									"id" : "obj-118",
									"fontname" : "Arial",
									"bordercolor" : [ 0.533333, 0.494118, 0.494118, 0.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.0, 0.717647, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "key",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 846.0, 214.0, 59.5, 20.0 ],
									"hidden" : 1,
									"id" : "obj-117",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "numkey 0.",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 846.0, 238.0, 66.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-116",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "routing",
									"text" : "p routing",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 939.0, 51.0, 57.0, 20.0 ],
									"id" : "obj-113",
									"fontname" : "Arial",
									"numinlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 1765.0, 137.0, 1234.0, 354.0 ],
										"bglocked" : 0,
										"defrect" : [ 1765.0, 137.0, 1234.0, 354.0 ],
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
													"maxclass" : "message",
													"text" : "-99.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 826.0, 288.0, 50.0, 18.0 ],
													"id" : "obj-26",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r init_pan-std",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1124.0, 164.0, 80.0, 20.0 ],
													"id" : "obj-27",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r routing_open-window",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1061.0, 261.0, 132.0, 20.0 ],
													"id" : "obj-24",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "front",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1061.0, 290.0, 35.0, 18.0 ],
													"id" : "obj-19",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "thispatcher",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1061.0, 315.0, 69.0, 20.0 ],
													"id" : "obj-16",
													"fontname" : "Arial",
													"numinlets" : 1,
													"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "rate_mapping[10]",
													"text" : "p reverse-prob_mapping",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 977.0, 163.0, 141.0, 20.0 ],
													"id" : "obj-30",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 59.0, 73.0, 594.0, 373.0 ],
														"bglocked" : 0,
														"defrect" : [ 59.0, 73.0, 594.0, 373.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r reverse-prob_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 218.558044, 174.0, 126.0, 20.0 ],
																	"id" : "obj-11",
																	"fontname" : "Arial",
																	"numinlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "no grid choice\nfor reverse-prob",
																	"linecount" : 3,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 259.0, 109.0, 89.0, 48.0 ],
																	"id" : "obj-3",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 307.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-56",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 260.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-54",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s reverse-prob_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 165.388062, 323.213745, 132.0, 20.0 ],
																	"id" : "obj-39",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 213.842117, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-38",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 168.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-37",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 121.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-36",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 75.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-35",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "4",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 213.842117, 78.0, 32.5, 18.0 ],
																	"id" : "obj-34",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "3",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 168.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-33",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "2",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 121.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-32",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "1",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 75.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-31",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 4",
																	"fontsize" : 12.0,
																	"numoutlets" : 4,
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 76.526306, 191.302643, 74.5, 20.0 ],
																	"id" : "obj-29",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 10.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 151.476929, 231.286987, 38.0, 20.0 ],
																	"id" : "obj-26",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 10.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 113.476929, 231.286987, 35.0, 20.0 ],
																	"id" : "obj-27",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 78.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-25",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "f",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 132.476929, 167.286987, 32.5, 20.0 ],
																	"id" : "obj-20",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 43.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-21",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 132.476929, 143.0, 20.0, 20.0 ],
																	"id" : "obj-24",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 126.513161, 321.75, 25.0, 25.0 ],
																	"id" : "obj-17",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"varname" : "number",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 126.513161, 279.75, 50.0, 20.0 ],
																	"maximum" : 100,
																	"id" : "obj-16",
																	"fontname" : "Arial",
																	"minimum" : 0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "if a number is typed from the keyboard, it gets sent out immediately; if arrows are used, each arrow click (bang) is converted to an incremental step (up, down etc)",
																	"linecount" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 111.0, 14.0, 477.0, 34.0 ],
																	"id" : "obj-6",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route up down left right gridplus gridminus",
																	"fontsize" : 12.0,
																	"numoutlets" : 7,
																	"outlettype" : [ "", "", "", "", "", "", "" ],
																	"patching_rect" : [ 75.0, 53.0, 297.0, 20.0 ],
																	"id" : "obj-4",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 75.0, 17.0, 25.0, 25.0 ],
																	"id" : "obj-2",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 5 ],
																	"destination" : [ "obj-56", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 4 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 6 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 362.5, 265.875, 136.013153, 265.875 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 2 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 3 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 160.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 122.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 87.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 52.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 3 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 2 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 1 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 236.842117, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 191.0, 128.388168, 86.026306, 128.388168 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 144.0, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 98.0, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-29", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"midpoints" : [ 136.013153, 308.75, 195.008209, 308.75, 195.008209, 157.286987, 155.476929, 157.286987 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"default_fontname" : "Arial",
														"fontsize" : 12.0,
														"default_fontsize" : 12.0,
														"fontname" : "Arial",
														"default_fontface" : 0,
														"globalpatchername" : ""
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "rate_mapping[9]",
													"text" : "p gain-std_mapping",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 847.0, 159.0, 116.0, 20.0 ],
													"id" : "obj-29",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 504.0, 412.0, 689.0, 385.0 ],
														"bglocked" : 0,
														"defrect" : [ 504.0, 412.0, 689.0, 385.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r gain-std_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 190.93866, 135.263885, 101.0, 20.0 ],
																	"id" : "obj-7",
																	"fontname" : "Arial",
																	"numinlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p gridstuff-new",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 289.90979, 150.57869, 89.0, 20.0 ],
																	"id" : "obj-66",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 1126.0, 414.0, 384.0, 434.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 1126.0, 414.0, 384.0, 434.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "split 1 6",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "int" ],
																					"patching_rect" : [ 77.385429, 214.124695, 52.0, 20.0 ],
																					"id" : "obj-30",
																					"fontname" : "Arial",
																					"numinlets" : 3
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "2",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 15.085649, 203.226135, 32.5, 18.0 ],
																					"id" : "obj-15",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "r lb",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 14.950045, 178.228012, 27.0, 20.0 ],
																					"id" : "obj-1",
																					"fontname" : "Arial",
																					"numinlets" : 0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "if you change the # of options, please change split max as well",
																					"linecount" : 2,
																					"fontsize" : 12.0,
																					"numoutlets" : 0,
																					"patching_rect" : [ 127.727676, 332.036621, 186.0, 34.0 ],
																					"id" : "obj-62",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b i",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "bang", "int" ],
																					"patching_rect" : [ 76.746582, 279.8685, 38.709213, 20.0 ],
																					"id" : "obj-57",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "zl nth",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 76.609344, 329.993225, 39.0, 20.0 ],
																					"id" : "obj-53",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "1. 2. 3. 6. 9. 12.",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 76.880035, 305.671753, 94.0, 18.0 ],
																					"id" : "obj-51",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 111.54393, 186.586365, 32.5, 20.0 ],
																					"id" : "obj-23",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "i 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 111.54393, 161.586426, 32.5, 20.0 ],
																					"id" : "obj-28",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "number",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "bang" ],
																					"patching_rect" : [ 76.995178, 240.256226, 50.0, 20.0 ],
																					"id" : "obj-11",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 77.036438, 186.867554, 32.5, 20.0 ],
																					"id" : "obj-9",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "i 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 77.036438, 161.867584, 32.5, 20.0 ],
																					"id" : "obj-8",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 77.036438, 51.0, 25.0, 25.0 ],
																					"id" : "obj-63",
																					"numinlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 111.54393, 50.751316, 25.0, 25.0 ],
																					"id" : "obj-64",
																					"numinlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numoutlets" : 0,
																					"patching_rect" : [ 76.609344, 364.993225, 25.0, 25.0 ],
																					"id" : "obj-65",
																					"numinlets" : 1,
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-64", 0 ],
																					"destination" : [ "obj-28", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-28", 0 ],
																					"destination" : [ "obj-23", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-28", 1 ],
																					"hidden" : 0,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"midpoints" : [ 86.495178, 270.578552, 210.833221, 270.578552, 210.833221, 145.115356, 134.54393, 145.115356 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-63", 0 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-8", 1 ],
																					"hidden" : 0,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"midpoints" : [ 86.495178, 270.578552, 62.228996, 270.578552, 62.228996, 152.914917, 100.036438, 152.914917 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-57", 1 ],
																					"destination" : [ "obj-53", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-57", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-53", 0 ],
																					"destination" : [ "obj-65", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-51", 0 ],
																					"destination" : [ "obj-53", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-57", 0 ],
																					"destination" : [ "obj-51", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-30", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-23", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontface" : 0,
																		"default_fontname" : "Arial",
																		"fontsize" : 12.0,
																		"default_fontsize" : 12.0,
																		"fontname" : "Arial",
																		"default_fontface" : 0,
																		"globalpatchername" : ""
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s gain-std_grid-display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 290.388062, 180.213745, 131.0, 20.0 ],
																	"id" : "obj-58",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 337.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-56",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 290.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-54",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s gain-std_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 188.388062, 326.213745, 107.0, 20.0 ],
																	"id" : "obj-39",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 243.842117, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-38",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 198.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-37",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 151.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-36",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 105.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-35",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "4",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 243.842117, 78.0, 32.5, 18.0 ],
																	"id" : "obj-34",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "3",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 198.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-33",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "2",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 151.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-32",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "1",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 105.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-31",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 4",
																	"fontsize" : 12.0,
																	"numoutlets" : 4,
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 106.526306, 191.302643, 74.5, 20.0 ],
																	"id" : "obj-29",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 3.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 181.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-26",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 3.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 143.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-27",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 108.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-25",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "f",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 162.476929, 167.286987, 32.5, 20.0 ],
																	"id" : "obj-20",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 73.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-21",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 162.476929, 143.0, 20.0, 20.0 ],
																	"id" : "obj-24",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 156.513168, 321.75, 25.0, 25.0 ],
																	"id" : "obj-17",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"varname" : "flonum",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "float", "bang" ],
																	"ignoreclick" : 1,
																	"patching_rect" : [ 156.513168, 279.75, 50.0, 20.0 ],
																	"maximum" : 12.0,
																	"id" : "obj-16",
																	"fontname" : "Arial",
																	"minimum" : -99.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "if a number is typed from the keyboard, it gets sent out immediately; if arrows are used, each arrow click (bang) is converted to an incremental step (up, down etc)",
																	"linecount" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 141.0, 14.0, 477.0, 34.0 ],
																	"id" : "obj-6",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route up down left right gridplus gridminus",
																	"fontsize" : 12.0,
																	"numoutlets" : 7,
																	"outlettype" : [ "", "", "", "", "", "", "" ],
																	"patching_rect" : [ 105.0, 53.0, 297.0, 20.0 ],
																	"id" : "obj-4",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 105.0, 17.0, 25.0, 25.0 ],
																	"id" : "obj-2",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-56", 0 ],
																	"destination" : [ "obj-66", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-54", 0 ],
																	"destination" : [ "obj-66", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-66", 0 ],
																	"destination" : [ "obj-58", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-66", 0 ],
																	"destination" : [ "obj-27", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-66", 0 ],
																	"destination" : [ "obj-26", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 3 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 190.976929, 265.018494, 166.013168, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 2 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 152.976929, 265.018494, 166.013168, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 6 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 392.5, 273.774994, 166.013168, 273.774994 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 117.976929, 265.018494, 166.013168, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 82.976929, 265.018494, 166.013168, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"midpoints" : [ 166.013168, 308.75, 225.008209, 308.75, 225.008209, 157.286987, 185.476929, 157.286987 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-29", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 128.0, 128.901321, 116.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 174.0, 128.901321, 116.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 221.0, 128.388168, 116.026306, 128.388168 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 266.842102, 128.901321, 116.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 1 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 3 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 2 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 4 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 5 ],
																	"destination" : [ "obj-56", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"default_fontname" : "Arial",
														"fontsize" : 12.0,
														"default_fontsize" : 12.0,
														"fontname" : "Arial",
														"default_fontface" : 0,
														"globalpatchername" : ""
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "rate_mapping[8]",
													"text" : "p gain_mapping",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 794.0, 131.0, 96.0, 20.0 ],
													"id" : "obj-23",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 787.0, 484.0, 703.0, 380.0 ],
														"bglocked" : 0,
														"defrect" : [ 787.0, 484.0, 703.0, 380.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r gain_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 207.762268, 133.550751, 81.0, 20.0 ],
																	"id" : "obj-12",
																	"fontname" : "Arial",
																	"numinlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p gridstuff-new",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 289.90979, 150.57869, 89.0, 20.0 ],
																	"id" : "obj-66",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 1126.0, 414.0, 384.0, 434.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 1126.0, 414.0, 384.0, 434.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "split 1 6",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "int" ],
																					"patching_rect" : [ 77.385429, 214.124695, 52.0, 20.0 ],
																					"id" : "obj-30",
																					"fontname" : "Arial",
																					"numinlets" : 3
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "2",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 15.085649, 203.226135, 32.5, 18.0 ],
																					"id" : "obj-15",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "r lb",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 14.950045, 178.228012, 27.0, 20.0 ],
																					"id" : "obj-1",
																					"fontname" : "Arial",
																					"numinlets" : 0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "if you change the # of options, please change split max as well",
																					"linecount" : 2,
																					"fontsize" : 12.0,
																					"numoutlets" : 0,
																					"patching_rect" : [ 127.727676, 332.036621, 186.0, 34.0 ],
																					"id" : "obj-62",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b i",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "bang", "int" ],
																					"patching_rect" : [ 76.746582, 279.8685, 38.709213, 20.0 ],
																					"id" : "obj-57",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "zl nth",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 76.609344, 329.993225, 39.0, 20.0 ],
																					"id" : "obj-53",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "1. 2. 3. 6. 9. 12.",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 76.880035, 305.671753, 94.0, 18.0 ],
																					"id" : "obj-51",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 111.54393, 186.586365, 32.5, 20.0 ],
																					"id" : "obj-23",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "i 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 111.54393, 161.586426, 32.5, 20.0 ],
																					"id" : "obj-28",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "number",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "bang" ],
																					"patching_rect" : [ 76.995178, 240.256226, 50.0, 20.0 ],
																					"id" : "obj-11",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 77.036438, 186.867554, 32.5, 20.0 ],
																					"id" : "obj-9",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "i 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 77.036438, 161.867584, 32.5, 20.0 ],
																					"id" : "obj-8",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 77.036438, 51.0, 25.0, 25.0 ],
																					"id" : "obj-63",
																					"numinlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 111.54393, 50.751316, 25.0, 25.0 ],
																					"id" : "obj-64",
																					"numinlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numoutlets" : 0,
																					"patching_rect" : [ 76.609344, 364.993225, 25.0, 25.0 ],
																					"id" : "obj-65",
																					"numinlets" : 1,
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-64", 0 ],
																					"destination" : [ "obj-28", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-28", 0 ],
																					"destination" : [ "obj-23", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-28", 1 ],
																					"hidden" : 0,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"midpoints" : [ 86.495178, 270.578552, 210.833221, 270.578552, 210.833221, 145.115356, 134.54393, 145.115356 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-63", 0 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-8", 1 ],
																					"hidden" : 0,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"midpoints" : [ 86.495178, 270.578552, 62.228996, 270.578552, 62.228996, 152.914917, 100.036438, 152.914917 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-57", 1 ],
																					"destination" : [ "obj-53", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-57", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-53", 0 ],
																					"destination" : [ "obj-65", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-51", 0 ],
																					"destination" : [ "obj-53", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-57", 0 ],
																					"destination" : [ "obj-51", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-30", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-23", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontface" : 0,
																		"default_fontname" : "Arial",
																		"fontsize" : 12.0,
																		"default_fontsize" : 12.0,
																		"fontname" : "Arial",
																		"default_fontface" : 0,
																		"globalpatchername" : ""
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s gain_grid-display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 290.388062, 181.213745, 111.0, 20.0 ],
																	"id" : "obj-58",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 337.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-56",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 290.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-54",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s gain_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 188.388062, 326.213745, 87.0, 20.0 ],
																	"id" : "obj-39",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 243.842117, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-38",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 198.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-37",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 151.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-36",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 105.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-35",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "4",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 243.842117, 78.0, 32.5, 18.0 ],
																	"id" : "obj-34",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "3",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 198.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-33",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "2",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 151.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-32",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "1",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 105.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-31",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 4",
																	"fontsize" : 12.0,
																	"numoutlets" : 4,
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 106.526306, 191.302643, 74.5, 20.0 ],
																	"id" : "obj-29",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 3.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 181.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-26",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 3.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 143.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-27",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 108.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-25",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "f",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 162.476929, 167.286987, 32.5, 20.0 ],
																	"id" : "obj-20",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 73.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-21",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 162.476929, 143.0, 20.0, 20.0 ],
																	"id" : "obj-24",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 156.513168, 321.75, 25.0, 25.0 ],
																	"id" : "obj-17",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"varname" : "flonum",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "float", "bang" ],
																	"ignoreclick" : 1,
																	"patching_rect" : [ 156.513168, 279.75, 50.0, 20.0 ],
																	"maximum" : 12.0,
																	"id" : "obj-16",
																	"fontname" : "Arial",
																	"minimum" : -99.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "if a number is typed from the keyboard, it gets sent out immediately; if arrows are used, each arrow click (bang) is converted to an incremental step (up, down etc)",
																	"linecount" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 141.0, 14.0, 477.0, 34.0 ],
																	"id" : "obj-6",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route up down left right gridplus gridminus",
																	"fontsize" : 12.0,
																	"numoutlets" : 7,
																	"outlettype" : [ "", "", "", "", "", "", "" ],
																	"patching_rect" : [ 105.0, 53.0, 297.0, 20.0 ],
																	"id" : "obj-4",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 105.0, 17.0, 25.0, 25.0 ],
																	"id" : "obj-2",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-54", 0 ],
																	"destination" : [ "obj-66", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-56", 0 ],
																	"destination" : [ "obj-66", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-66", 0 ],
																	"destination" : [ "obj-58", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-66", 0 ],
																	"destination" : [ "obj-27", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-66", 0 ],
																	"destination" : [ "obj-26", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 190.976929, 265.018494, 166.013168, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 3 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 152.976929, 265.018494, 166.013168, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 2 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 5 ],
																	"destination" : [ "obj-56", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 4 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 2 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 3 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 1 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 266.842102, 128.901321, 116.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 221.0, 128.388168, 116.026306, 128.388168 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 174.0, 128.901321, 116.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 128.0, 128.901321, 116.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-29", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"midpoints" : [ 166.013168, 308.75, 225.008209, 308.75, 225.008209, 157.286987, 185.476929, 157.286987 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 82.976929, 265.018494, 166.013168, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 117.976929, 265.018494, 166.013168, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 6 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 392.5, 273.774994, 166.013168, 273.774994 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"default_fontname" : "Arial",
														"fontsize" : 12.0,
														"default_fontsize" : 12.0,
														"fontname" : "Arial",
														"default_fontface" : 0,
														"globalpatchername" : ""
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "rate_mapping[7]",
													"text" : "p transposition-std_mapping",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 638.0, 157.0, 161.0, 20.0 ],
													"id" : "obj-21",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 504.0, 412.0, 701.0, 407.0 ],
														"bglocked" : 0,
														"defrect" : [ 504.0, 412.0, 701.0, 407.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r transposition-std_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 422.715271, 108.311401, 146.0, 20.0 ],
																	"id" : "obj-9",
																	"fontname" : "Arial",
																	"numinlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p gridstuff-new",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 304.90979, 180.57869, 89.0, 20.0 ],
																	"id" : "obj-66",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 1126.0, 414.0, 384.0, 434.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 1126.0, 414.0, 384.0, 434.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "split 1 7",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "int" ],
																					"patching_rect" : [ 77.385429, 214.124695, 52.0, 20.0 ],
																					"id" : "obj-30",
																					"fontname" : "Arial",
																					"numinlets" : 3
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 15.085649, 203.226135, 32.5, 18.0 ],
																					"id" : "obj-15",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "r lb",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 14.950045, 178.228012, 27.0, 20.0 ],
																					"id" : "obj-1",
																					"fontname" : "Arial",
																					"numinlets" : 0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "if you change the # of options, please change split max as well",
																					"linecount" : 2,
																					"fontsize" : 12.0,
																					"numoutlets" : 0,
																					"patching_rect" : [ 127.727676, 332.036621, 186.0, 34.0 ],
																					"id" : "obj-62",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b i",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "bang", "int" ],
																					"patching_rect" : [ 76.746582, 279.8685, 38.709213, 20.0 ],
																					"id" : "obj-57",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "zl nth",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 76.609344, 329.993225, 39.0, 20.0 ],
																					"id" : "obj-53",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "0.1 0.2 0.5 1.5 2. 5. 10.",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 76.880035, 305.671753, 134.0, 18.0 ],
																					"id" : "obj-51",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 111.54393, 186.586365, 32.5, 20.0 ],
																					"id" : "obj-23",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "i 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 111.54393, 161.586426, 32.5, 20.0 ],
																					"id" : "obj-28",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "number",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "bang" ],
																					"patching_rect" : [ 76.995178, 240.256226, 50.0, 20.0 ],
																					"id" : "obj-11",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 77.036438, 186.867554, 32.5, 20.0 ],
																					"id" : "obj-9",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "i 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 77.036438, 161.867584, 32.5, 20.0 ],
																					"id" : "obj-8",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 77.036438, 51.0, 25.0, 25.0 ],
																					"id" : "obj-63",
																					"numinlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 111.54393, 50.751316, 25.0, 25.0 ],
																					"id" : "obj-64",
																					"numinlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numoutlets" : 0,
																					"patching_rect" : [ 76.609344, 364.993225, 25.0, 25.0 ],
																					"id" : "obj-65",
																					"numinlets" : 1,
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-53", 0 ],
																					"destination" : [ "obj-65", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-57", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-57", 1 ],
																					"destination" : [ "obj-53", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-8", 1 ],
																					"hidden" : 0,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"midpoints" : [ 86.495178, 270.578552, 62.228996, 270.578552, 62.228996, 152.914917, 100.036438, 152.914917 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-63", 0 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-28", 1 ],
																					"hidden" : 0,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"midpoints" : [ 86.495178, 270.578552, 210.833221, 270.578552, 210.833221, 145.115356, 134.54393, 145.115356 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-28", 0 ],
																					"destination" : [ "obj-23", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-64", 0 ],
																					"destination" : [ "obj-28", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-51", 0 ],
																					"destination" : [ "obj-53", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-57", 0 ],
																					"destination" : [ "obj-51", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-30", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-23", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontface" : 0,
																		"default_fontname" : "Arial",
																		"fontsize" : 12.0,
																		"default_fontsize" : 12.0,
																		"fontname" : "Arial",
																		"default_fontface" : 0,
																		"globalpatchername" : ""
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s transposition-std_grid-display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 305.388062, 211.213745, 176.0, 20.0 ],
																	"id" : "obj-58",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 352.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-56",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 305.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-54",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s transposition-std_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 203.388062, 326.213745, 152.0, 20.0 ],
																	"id" : "obj-39",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 258.842102, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-38",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 213.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-37",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 166.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-36",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 120.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-35",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "4",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 258.842102, 78.0, 32.5, 18.0 ],
																	"id" : "obj-34",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "3",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 213.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-33",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "2",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 166.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-32",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "1",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 120.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-31",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 4",
																	"fontsize" : 12.0,
																	"numoutlets" : 4,
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 121.526306, 191.302643, 74.5, 20.0 ],
																	"id" : "obj-29",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 0.1",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 196.476929, 231.286987, 38.0, 20.0 ],
																	"id" : "obj-26",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 0.1",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 158.476929, 231.286987, 35.0, 20.0 ],
																	"id" : "obj-27",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 123.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-25",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "f",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 177.476929, 167.286987, 32.5, 20.0 ],
																	"id" : "obj-20",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 88.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-21",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 177.476929, 143.0, 20.0, 20.0 ],
																	"id" : "obj-24",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 171.513168, 321.75, 25.0, 25.0 ],
																	"id" : "obj-17",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"varname" : "flonum[1]",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "float", "bang" ],
																	"ignoreclick" : 1,
																	"patching_rect" : [ 171.513168, 279.75, 50.0, 20.0 ],
																	"maximum" : 50.0,
																	"id" : "obj-16",
																	"fontname" : "Arial",
																	"minimum" : 0.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "if a number is typed from the keyboard, it gets sent out immediately; if arrows are used, each arrow click (bang) is converted to an incremental step (up, down etc)",
																	"linecount" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 156.0, 14.0, 477.0, 34.0 ],
																	"id" : "obj-6",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route up down left right gridplus gridminus",
																	"fontsize" : 12.0,
																	"numoutlets" : 7,
																	"outlettype" : [ "", "", "", "", "", "", "" ],
																	"patching_rect" : [ 120.0, 53.0, 297.0, 20.0 ],
																	"id" : "obj-4",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 120.0, 17.0, 25.0, 25.0 ],
																	"id" : "obj-2",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-66", 0 ],
																	"destination" : [ "obj-26", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-66", 0 ],
																	"destination" : [ "obj-27", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-66", 0 ],
																	"destination" : [ "obj-58", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-56", 0 ],
																	"destination" : [ "obj-66", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-54", 0 ],
																	"destination" : [ "obj-66", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"midpoints" : [ 181.013168, 308.75, 240.008209, 308.75, 240.008209, 157.286987, 200.476929, 157.286987 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 97.976929, 265.018494, 181.013168, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 132.976929, 265.018494, 181.013168, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 6 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 407.5, 273.774994, 181.013168, 273.774994 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 5 ],
																	"destination" : [ "obj-56", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 4 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 2 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 3 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 1 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 281.842102, 128.901321, 131.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 236.0, 128.388168, 131.026306, 128.388168 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 189.0, 128.901321, 131.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 143.0, 128.901321, 131.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-29", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 2 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 167.976929, 265.018494, 181.013168, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 3 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 205.976929, 265.018494, 181.013168, 265.018494 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"default_fontname" : "Arial",
														"fontsize" : 12.0,
														"default_fontsize" : 12.0,
														"fontname" : "Arial",
														"default_fontface" : 0,
														"globalpatchername" : ""
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "rate_mapping[6]",
													"text" : "p transposition_mapping",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 538.0, 91.0, 141.0, 20.0 ],
													"id" : "obj-20",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 504.0, 412.0, 662.0, 403.0 ],
														"bglocked" : 0,
														"defrect" : [ 504.0, 412.0, 662.0, 403.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r transposition_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 229.0, 136.554199, 126.0, 20.0 ],
																	"id" : "obj-15",
																	"fontname" : "Arial",
																	"numinlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p gridstuff-new",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 290.90979, 172.57869, 89.0, 20.0 ],
																	"id" : "obj-66",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 1126.0, 414.0, 384.0, 434.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 1126.0, 414.0, 384.0, 434.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "split 1 7",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "int" ],
																					"patching_rect" : [ 77.385429, 214.124695, 52.0, 20.0 ],
																					"id" : "obj-30",
																					"fontname" : "Arial",
																					"numinlets" : 3
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 15.085649, 203.226135, 32.5, 18.0 ],
																					"id" : "obj-15",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "r lb",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 14.950045, 178.228012, 27.0, 20.0 ],
																					"id" : "obj-1",
																					"fontname" : "Arial",
																					"numinlets" : 0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "if you change the # of options, please change split max as well",
																					"linecount" : 2,
																					"fontsize" : 12.0,
																					"numoutlets" : 0,
																					"patching_rect" : [ 127.727676, 332.036621, 186.0, 34.0 ],
																					"id" : "obj-62",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b i",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "bang", "int" ],
																					"patching_rect" : [ 76.746582, 279.8685, 38.709213, 20.0 ],
																					"id" : "obj-57",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "zl nth",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 76.609344, 329.993225, 39.0, 20.0 ],
																					"id" : "obj-53",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "0.1 0.2 0.5 1.5 2. 5. 10.",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 76.880035, 305.671753, 134.0, 18.0 ],
																					"id" : "obj-51",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 111.54393, 186.586365, 32.5, 20.0 ],
																					"id" : "obj-23",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "i 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 111.54393, 161.586426, 32.5, 20.0 ],
																					"id" : "obj-28",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "number",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "bang" ],
																					"patching_rect" : [ 76.995178, 240.256226, 50.0, 20.0 ],
																					"id" : "obj-11",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 77.036438, 186.867554, 32.5, 20.0 ],
																					"id" : "obj-9",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "i 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 77.036438, 161.867584, 32.5, 20.0 ],
																					"id" : "obj-8",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 77.036438, 51.0, 25.0, 25.0 ],
																					"id" : "obj-63",
																					"numinlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 111.54393, 50.751316, 25.0, 25.0 ],
																					"id" : "obj-64",
																					"numinlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numoutlets" : 0,
																					"patching_rect" : [ 76.609344, 364.993225, 25.0, 25.0 ],
																					"id" : "obj-65",
																					"numinlets" : 1,
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-53", 0 ],
																					"destination" : [ "obj-65", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-57", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-57", 1 ],
																					"destination" : [ "obj-53", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-8", 1 ],
																					"hidden" : 0,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"midpoints" : [ 86.495178, 270.578552, 62.228996, 270.578552, 62.228996, 152.914917, 100.036438, 152.914917 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-63", 0 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-28", 1 ],
																					"hidden" : 0,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"midpoints" : [ 86.495178, 270.578552, 210.833221, 270.578552, 210.833221, 145.115356, 134.54393, 145.115356 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-28", 0 ],
																					"destination" : [ "obj-23", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-64", 0 ],
																					"destination" : [ "obj-28", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-51", 0 ],
																					"destination" : [ "obj-53", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-57", 0 ],
																					"destination" : [ "obj-51", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-30", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-23", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontface" : 0,
																		"default_fontname" : "Arial",
																		"fontsize" : 12.0,
																		"default_fontsize" : 12.0,
																		"fontname" : "Arial",
																		"default_fontface" : 0,
																		"globalpatchername" : ""
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s transposition_grid-display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 291.388062, 203.213745, 156.0, 20.0 ],
																	"id" : "obj-58",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 337.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-56",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 290.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-54",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s transposition_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 188.388062, 326.213745, 132.0, 20.0 ],
																	"id" : "obj-39",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 243.842117, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-38",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 198.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-37",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 151.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-36",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 105.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-35",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "4",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 243.842117, 78.0, 32.5, 18.0 ],
																	"id" : "obj-34",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "3",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 198.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-33",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "2",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 151.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-32",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "1",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 105.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-31",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 4",
																	"fontsize" : 12.0,
																	"numoutlets" : 4,
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 106.526306, 191.302643, 74.5, 20.0 ],
																	"id" : "obj-29",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 0.1",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 181.476929, 231.286987, 38.0, 20.0 ],
																	"id" : "obj-26",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 0.1",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 143.476929, 231.286987, 35.0, 20.0 ],
																	"id" : "obj-27",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 108.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-25",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "f",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 162.476929, 167.286987, 32.5, 20.0 ],
																	"id" : "obj-20",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 73.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-21",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 162.476929, 143.0, 20.0, 20.0 ],
																	"id" : "obj-24",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 156.513168, 321.75, 25.0, 25.0 ],
																	"id" : "obj-17",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"varname" : "flonum",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "float", "bang" ],
																	"ignoreclick" : 1,
																	"patching_rect" : [ 156.513168, 279.75, 50.0, 20.0 ],
																	"maximum" : 50.0,
																	"id" : "obj-16",
																	"fontname" : "Arial",
																	"minimum" : -50.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "if a number is typed from the keyboard, it gets sent out immediately; if arrows are used, each arrow click (bang) is converted to an incremental step (up, down etc)",
																	"linecount" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 141.0, 14.0, 477.0, 34.0 ],
																	"id" : "obj-6",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route up down left right gridplus gridminus",
																	"fontsize" : 12.0,
																	"numoutlets" : 7,
																	"outlettype" : [ "", "", "", "", "", "", "" ],
																	"patching_rect" : [ 105.0, 53.0, 297.0, 20.0 ],
																	"id" : "obj-4",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 105.0, 17.0, 25.0, 25.0 ],
																	"id" : "obj-2",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-66", 0 ],
																	"destination" : [ "obj-26", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-66", 0 ],
																	"destination" : [ "obj-27", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-56", 0 ],
																	"destination" : [ "obj-66", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-54", 0 ],
																	"destination" : [ "obj-66", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-66", 0 ],
																	"destination" : [ "obj-58", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 6 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 392.5, 273.774994, 166.013168, 273.774994 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 117.976929, 265.018494, 166.013168, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 82.976929, 265.018494, 166.013168, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"midpoints" : [ 166.013168, 308.75, 225.008209, 308.75, 225.008209, 157.286987, 185.476929, 157.286987 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-29", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 128.0, 128.901321, 116.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 174.0, 128.901321, 116.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 221.0, 128.388168, 116.026306, 128.388168 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 266.842102, 128.901321, 116.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 1 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 3 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 2 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 4 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 5 ],
																	"destination" : [ "obj-56", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 2 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 152.976929, 265.018494, 166.013168, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 3 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 190.976929, 265.018494, 166.013168, 265.018494 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"default_fontname" : "Arial",
														"fontsize" : 12.0,
														"default_fontsize" : 12.0,
														"fontname" : "Arial",
														"default_fontface" : 0,
														"globalpatchername" : ""
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "rate_mapping[5]",
													"text" : "p onset-std_mapping",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 455.0, 158.0, 123.0, 20.0 ],
													"id" : "obj-17",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 504.0, 412.0, 603.0, 379.0 ],
														"bglocked" : 0,
														"defrect" : [ 504.0, 412.0, 603.0, 379.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r onset-std_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 200.772766, 157.27713, 107.0, 20.0 ],
																	"id" : "obj-10",
																	"fontname" : "Arial",
																	"numinlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "no grid choice",
																	"linecount" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 274.0, 109.0, 52.0, 34.0 ],
																	"id" : "obj-3",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 307.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-56",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 260.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-54",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s onset-std_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 158.388062, 326.213745, 113.0, 20.0 ],
																	"id" : "obj-39",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 213.842117, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-38",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 168.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-37",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 121.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-36",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 75.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-35",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "4",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 213.842117, 78.0, 32.5, 18.0 ],
																	"id" : "obj-34",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "3",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 168.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-33",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "2",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 121.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-32",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "1",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 75.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-31",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 4",
																	"fontsize" : 12.0,
																	"numoutlets" : 4,
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 76.526306, 191.302643, 74.5, 20.0 ],
																	"id" : "obj-29",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 10.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 151.476929, 231.286987, 38.0, 20.0 ],
																	"id" : "obj-26",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 10.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 113.476929, 231.286987, 35.0, 20.0 ],
																	"id" : "obj-27",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 78.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-25",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "f",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 132.476929, 167.286987, 32.5, 20.0 ],
																	"id" : "obj-20",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 43.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-21",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 132.476929, 143.0, 20.0, 20.0 ],
																	"id" : "obj-24",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 126.513161, 321.75, 25.0, 25.0 ],
																	"id" : "obj-17",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"varname" : "number",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 126.513161, 279.75, 50.0, 20.0 ],
																	"id" : "obj-16",
																	"fontname" : "Arial",
																	"minimum" : 0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "if a number is typed from the keyboard, it gets sent out immediately; if arrows are used, each arrow click (bang) is converted to an incremental step (up, down etc)",
																	"linecount" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 111.0, 14.0, 477.0, 34.0 ],
																	"id" : "obj-6",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route up down left right gridplus gridminus",
																	"fontsize" : 12.0,
																	"numoutlets" : 7,
																	"outlettype" : [ "", "", "", "", "", "", "" ],
																	"patching_rect" : [ 75.0, 53.0, 297.0, 20.0 ],
																	"id" : "obj-4",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 75.0, 17.0, 25.0, 25.0 ],
																	"id" : "obj-2",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 5 ],
																	"destination" : [ "obj-56", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 4 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 6 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 362.5, 273.774994, 136.013153, 273.774994 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 2 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 3 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 160.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 122.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 87.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 52.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 3 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 2 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 1 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 236.842117, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 191.0, 128.388168, 86.026306, 128.388168 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 144.0, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 98.0, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-29", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"midpoints" : [ 136.013153, 308.75, 195.008209, 308.75, 195.008209, 157.286987, 155.476929, 157.286987 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"default_fontname" : "Arial",
														"fontsize" : 12.0,
														"default_fontsize" : 12.0,
														"fontname" : "Arial",
														"default_fontface" : 0,
														"globalpatchername" : ""
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "rate_mapping[4]",
													"text" : "p size-std_mapping",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 353.0, 102.0, 115.0, 20.0 ],
													"id" : "obj-15",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 55.0, 365.0, 606.0, 407.0 ],
														"bglocked" : 0,
														"defrect" : [ 55.0, 365.0, 606.0, 407.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r size-std_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 158.035919, 138.967743, 99.0, 20.0 ],
																	"id" : "obj-8",
																	"fontname" : "Arial",
																	"numinlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p gridstuff-new",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 259.90979, 150.57869, 89.0, 20.0 ],
																	"id" : "obj-66",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 1126.0, 414.0, 384.0, 434.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 1126.0, 414.0, 384.0, 434.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "split 1 4",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "int" ],
																					"patching_rect" : [ 77.385429, 214.124695, 52.0, 20.0 ],
																					"id" : "obj-30",
																					"fontname" : "Arial",
																					"numinlets" : 3
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 15.085649, 203.226135, 32.5, 18.0 ],
																					"id" : "obj-15",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "r lb",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 14.950045, 178.228012, 27.0, 20.0 ],
																					"id" : "obj-1",
																					"fontname" : "Arial",
																					"numinlets" : 0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "if you change the # of options, please change split max as well",
																					"linecount" : 2,
																					"fontsize" : 12.0,
																					"numoutlets" : 0,
																					"patching_rect" : [ 127.727676, 332.036621, 186.0, 34.0 ],
																					"id" : "obj-62",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b i",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "bang", "int" ],
																					"patching_rect" : [ 76.746582, 279.8685, 38.709213, 20.0 ],
																					"id" : "obj-57",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "zl nth",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 76.609344, 329.993225, 39.0, 20.0 ],
																					"id" : "obj-53",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "10 20 50 100",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 76.880035, 305.671753, 81.0, 18.0 ],
																					"id" : "obj-51",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 111.54393, 186.586365, 32.5, 20.0 ],
																					"id" : "obj-23",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "i 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 111.54393, 161.586426, 32.5, 20.0 ],
																					"id" : "obj-28",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "number",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "bang" ],
																					"patching_rect" : [ 76.995178, 240.256226, 50.0, 20.0 ],
																					"id" : "obj-11",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 77.036438, 186.867554, 32.5, 20.0 ],
																					"id" : "obj-9",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "i 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 77.036438, 161.867584, 32.5, 20.0 ],
																					"id" : "obj-8",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 77.036438, 51.0, 25.0, 25.0 ],
																					"id" : "obj-63",
																					"numinlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 111.54393, 50.751316, 25.0, 25.0 ],
																					"id" : "obj-64",
																					"numinlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numoutlets" : 0,
																					"patching_rect" : [ 76.609344, 364.993225, 25.0, 25.0 ],
																					"id" : "obj-65",
																					"numinlets" : 1,
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-64", 0 ],
																					"destination" : [ "obj-28", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-28", 0 ],
																					"destination" : [ "obj-23", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-28", 1 ],
																					"hidden" : 0,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"midpoints" : [ 86.495178, 270.578552, 210.833221, 270.578552, 210.833221, 145.115356, 134.54393, 145.115356 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-30", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-23", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-63", 0 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-8", 1 ],
																					"hidden" : 0,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"midpoints" : [ 86.495178, 270.578552, 62.228996, 270.578552, 62.228996, 152.914917, 100.036438, 152.914917 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-51", 0 ],
																					"destination" : [ "obj-53", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-57", 1 ],
																					"destination" : [ "obj-53", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-57", 0 ],
																					"destination" : [ "obj-51", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-57", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-53", 0 ],
																					"destination" : [ "obj-65", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontface" : 0,
																		"default_fontname" : "Arial",
																		"fontsize" : 12.0,
																		"default_fontsize" : 12.0,
																		"fontname" : "Arial",
																		"default_fontface" : 0,
																		"globalpatchername" : ""
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s size-std_grid-display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 260.388062, 181.213745, 129.0, 20.0 ],
																	"id" : "obj-58",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 307.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-56",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 260.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-54",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s size-std_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 159.388062, 329.213745, 105.0, 20.0 ],
																	"id" : "obj-39",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 213.842117, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-38",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 168.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-37",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 121.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-36",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 75.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-35",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "4",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 213.842117, 78.0, 32.5, 18.0 ],
																	"id" : "obj-34",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "3",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 168.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-33",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "2",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 121.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-32",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "1",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 75.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-31",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 4",
																	"fontsize" : 12.0,
																	"numoutlets" : 4,
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 76.526306, 191.302643, 74.5, 20.0 ],
																	"id" : "obj-29",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 10.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 151.476929, 231.286987, 38.0, 20.0 ],
																	"id" : "obj-26",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 10.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 113.476929, 231.286987, 35.0, 20.0 ],
																	"id" : "obj-27",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 78.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-25",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "f",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 132.476929, 167.286987, 32.5, 20.0 ],
																	"id" : "obj-20",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 43.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-21",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 132.476929, 143.0, 20.0, 20.0 ],
																	"id" : "obj-24",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 126.513161, 321.75, 25.0, 25.0 ],
																	"id" : "obj-17",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"varname" : "number",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 126.513161, 279.75, 50.0, 20.0 ],
																	"id" : "obj-16",
																	"fontname" : "Arial",
																	"minimum" : 0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "if a number is typed from the keyboard, it gets sent out immediately; if arrows are used, each arrow click (bang) is converted to an incremental step (up, down etc)",
																	"linecount" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 111.0, 14.0, 477.0, 34.0 ],
																	"id" : "obj-6",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route up down left right gridplus gridminus",
																	"fontsize" : 12.0,
																	"numoutlets" : 7,
																	"outlettype" : [ "", "", "", "", "", "", "" ],
																	"patching_rect" : [ 75.0, 53.0, 297.0, 20.0 ],
																	"id" : "obj-4",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 75.0, 17.0, 25.0, 25.0 ],
																	"id" : "obj-2",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-66", 0 ],
																	"destination" : [ "obj-26", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-66", 0 ],
																	"destination" : [ "obj-27", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-56", 0 ],
																	"destination" : [ "obj-66", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-54", 0 ],
																	"destination" : [ "obj-66", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-66", 0 ],
																	"destination" : [ "obj-58", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"midpoints" : [ 136.013153, 308.75, 195.008209, 308.75, 195.008209, 161.286987, 155.476929, 161.286987 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-29", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 98.0, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 144.0, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 191.0, 128.388168, 86.026306, 128.388168 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 236.842117, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 1 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 2 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 3 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 52.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 87.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 122.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 160.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 3 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 2 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 6 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 362.5, 273.774994, 136.013153, 273.774994 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 4 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 5 ],
																	"destination" : [ "obj-56", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"default_fontname" : "Arial",
														"fontsize" : 12.0,
														"default_fontsize" : 12.0,
														"fontname" : "Arial",
														"default_fontface" : 0,
														"globalpatchername" : ""
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "rate_mapping[3]",
													"text" : "p size_mapping",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 262.0, 160.0, 95.0, 20.0 ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 55.0, 365.0, 631.0, 387.0 ],
														"bglocked" : 0,
														"defrect" : [ 55.0, 365.0, 631.0, 387.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r size_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 181.506195, 131.910156, 79.0, 20.0 ],
																	"id" : "obj-14",
																	"fontname" : "Arial",
																	"numinlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p gridstuff-new",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 259.90979, 150.57869, 89.0, 20.0 ],
																	"id" : "obj-66",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 1126.0, 414.0, 384.0, 434.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 1126.0, 414.0, 384.0, 434.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "split 1 4",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "int" ],
																					"patching_rect" : [ 77.385429, 214.124695, 52.0, 20.0 ],
																					"id" : "obj-30",
																					"fontname" : "Arial",
																					"numinlets" : 3
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 15.085649, 203.226135, 32.5, 18.0 ],
																					"id" : "obj-15",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "r lb",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 14.950045, 178.228012, 27.0, 20.0 ],
																					"id" : "obj-1",
																					"fontname" : "Arial",
																					"numinlets" : 0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "if you change the # of options, please change split max as well",
																					"linecount" : 2,
																					"fontsize" : 12.0,
																					"numoutlets" : 0,
																					"patching_rect" : [ 127.727676, 332.036621, 186.0, 34.0 ],
																					"id" : "obj-62",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b i",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "bang", "int" ],
																					"patching_rect" : [ 76.746582, 279.8685, 38.709213, 20.0 ],
																					"id" : "obj-57",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "zl nth",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 76.609344, 329.993225, 39.0, 20.0 ],
																					"id" : "obj-53",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "10 20 50 100",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 76.880035, 305.671753, 81.0, 18.0 ],
																					"id" : "obj-51",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 111.54393, 186.586365, 32.5, 20.0 ],
																					"id" : "obj-23",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "i 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 111.54393, 161.586426, 32.5, 20.0 ],
																					"id" : "obj-28",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "number",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "bang" ],
																					"patching_rect" : [ 76.995178, 240.256226, 50.0, 20.0 ],
																					"id" : "obj-11",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 77.036438, 186.867554, 32.5, 20.0 ],
																					"id" : "obj-9",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "i 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 77.036438, 161.867584, 32.5, 20.0 ],
																					"id" : "obj-8",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 77.036438, 51.0, 25.0, 25.0 ],
																					"id" : "obj-63",
																					"numinlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 111.54393, 50.751316, 25.0, 25.0 ],
																					"id" : "obj-64",
																					"numinlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numoutlets" : 0,
																					"patching_rect" : [ 76.609344, 364.993225, 25.0, 25.0 ],
																					"id" : "obj-65",
																					"numinlets" : 1,
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-64", 0 ],
																					"destination" : [ "obj-28", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-28", 0 ],
																					"destination" : [ "obj-23", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-28", 1 ],
																					"hidden" : 0,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"midpoints" : [ 86.495178, 270.578552, 210.833221, 270.578552, 210.833221, 145.115356, 134.54393, 145.115356 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-30", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-23", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-63", 0 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-8", 1 ],
																					"hidden" : 0,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"midpoints" : [ 86.495178, 270.578552, 62.228996, 270.578552, 62.228996, 152.914917, 100.036438, 152.914917 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-51", 0 ],
																					"destination" : [ "obj-53", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-57", 1 ],
																					"destination" : [ "obj-53", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-57", 0 ],
																					"destination" : [ "obj-51", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-57", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-53", 0 ],
																					"destination" : [ "obj-65", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontface" : 0,
																		"default_fontname" : "Arial",
																		"fontsize" : 12.0,
																		"default_fontsize" : 12.0,
																		"fontname" : "Arial",
																		"default_fontface" : 0,
																		"globalpatchername" : ""
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s size_grid-display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 260.388062, 181.213745, 109.0, 20.0 ],
																	"id" : "obj-58",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 307.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-56",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 260.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-54",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s size_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 37.388062, 325.213745, 85.0, 20.0 ],
																	"id" : "obj-39",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 213.842117, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-38",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 168.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-37",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 121.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-36",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 75.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-35",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "4",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 213.842117, 78.0, 32.5, 18.0 ],
																	"id" : "obj-34",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "3",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 168.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-33",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "2",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 121.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-32",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "1",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 75.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-31",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 4",
																	"fontsize" : 12.0,
																	"numoutlets" : 4,
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 76.526306, 191.302643, 74.5, 20.0 ],
																	"id" : "obj-29",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 10.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 151.476929, 231.286987, 38.0, 20.0 ],
																	"id" : "obj-26",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 10.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 113.476929, 231.286987, 35.0, 20.0 ],
																	"id" : "obj-27",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 78.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-25",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "f",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 132.476929, 167.286987, 32.5, 20.0 ],
																	"id" : "obj-20",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 43.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-21",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 132.476929, 143.0, 20.0, 20.0 ],
																	"id" : "obj-24",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 126.513161, 321.75, 25.0, 25.0 ],
																	"id" : "obj-17",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"varname" : "number",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 126.513161, 279.75, 50.0, 20.0 ],
																	"id" : "obj-16",
																	"fontname" : "Arial",
																	"minimum" : 0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "if a number is typed from the keyboard, it gets sent out immediately; if arrows are used, each arrow click (bang) is converted to an incremental step (up, down etc)",
																	"linecount" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 111.0, 14.0, 477.0, 34.0 ],
																	"id" : "obj-6",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route up down left right gridplus gridminus",
																	"fontsize" : 12.0,
																	"numoutlets" : 7,
																	"outlettype" : [ "", "", "", "", "", "", "" ],
																	"patching_rect" : [ 75.0, 53.0, 297.0, 20.0 ],
																	"id" : "obj-4",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 75.0, 17.0, 25.0, 25.0 ],
																	"id" : "obj-2",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-54", 0 ],
																	"destination" : [ "obj-66", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-56", 0 ],
																	"destination" : [ "obj-66", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-66", 0 ],
																	"destination" : [ "obj-27", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-66", 0 ],
																	"destination" : [ "obj-26", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-66", 0 ],
																	"destination" : [ "obj-58", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 5 ],
																	"destination" : [ "obj-56", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 4 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 6 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 362.5, 273.774994, 136.013153, 273.774994 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 2 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 3 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 160.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 122.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 87.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 52.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 3 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 2 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 1 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 236.842117, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 191.0, 128.388168, 86.026306, 128.388168 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 144.0, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 98.0, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-29", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"midpoints" : [ 136.013153, 308.75, 195.008209, 308.75, 195.008209, 157.286987, 155.476929, 157.286987 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"default_fontname" : "Arial",
														"fontsize" : 12.0,
														"default_fontsize" : 12.0,
														"fontname" : "Arial",
														"default_fontface" : 0,
														"globalpatchername" : ""
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "rate_mapping[2]",
													"text" : "p xfade_mapping",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 198.0, 104.0, 103.0, 20.0 ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 59.0, 73.0, 612.0, 382.0 ],
														"bglocked" : 0,
														"defrect" : [ 59.0, 73.0, 612.0, 382.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r xfade_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 209.178314, 141.460907, 87.0, 20.0 ],
																	"id" : "obj-13",
																	"fontname" : "Arial",
																	"numinlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "no grid choice\nfor xfade",
																	"linecount" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 259.0, 104.0, 89.0, 34.0 ],
																	"id" : "obj-3",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 307.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-56",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 260.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-54",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s xfade_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 7.388062, 325.213745, 93.0, 20.0 ],
																	"id" : "obj-39",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 213.842117, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-38",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 168.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-37",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 121.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-36",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 75.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-35",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "4",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 213.842117, 78.0, 32.5, 18.0 ],
																	"id" : "obj-34",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "3",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 168.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-33",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "2",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 121.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-32",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "1",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 75.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-31",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 4",
																	"fontsize" : 12.0,
																	"numoutlets" : 4,
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 76.526306, 191.302643, 74.5, 20.0 ],
																	"id" : "obj-29",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 10.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 151.476929, 231.286987, 38.0, 20.0 ],
																	"id" : "obj-26",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 10.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 113.476929, 231.286987, 35.0, 20.0 ],
																	"id" : "obj-27",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 78.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-25",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "f",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 132.476929, 167.286987, 61.5, 20.0 ],
																	"id" : "obj-20",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 43.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-21",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 132.476929, 143.0, 20.0, 20.0 ],
																	"id" : "obj-24",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 126.513161, 321.75, 25.0, 25.0 ],
																	"id" : "obj-17",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"varname" : "number",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 126.513161, 279.75, 50.0, 20.0 ],
																	"id" : "obj-16",
																	"fontname" : "Arial",
																	"minimum" : 10,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "if a number is typed from the keyboard, it gets sent out immediately; if arrows are used, each arrow click (bang) is converted to an incremental step (up, down etc)",
																	"linecount" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 111.0, 14.0, 477.0, 34.0 ],
																	"id" : "obj-6",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route up down left right gridplus gridminus",
																	"fontsize" : 12.0,
																	"numoutlets" : 7,
																	"outlettype" : [ "", "", "", "", "", "", "" ],
																	"patching_rect" : [ 75.0, 53.0, 297.0, 20.0 ],
																	"id" : "obj-4",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 75.0, 17.0, 25.0, 25.0 ],
																	"id" : "obj-2",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"midpoints" : [ 136.013153, 308.75, 202.008209, 308.75, 202.008209, 157.286987, 184.476929, 157.286987 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-29", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 98.0, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 144.0, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 191.0, 128.388168, 86.026306, 128.388168 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 236.842117, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 1 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 2 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 3 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 52.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 87.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 122.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 160.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 3 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 2 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 6 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 362.5, 265.875, 136.013153, 265.875 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 4 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 5 ],
																	"destination" : [ "obj-56", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"default_fontname" : "Arial",
														"fontsize" : 12.0,
														"default_fontsize" : 12.0,
														"fontname" : "Arial",
														"default_fontface" : 0,
														"globalpatchername" : ""
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "rate_mapping[1]",
													"text" : "p rate-std_mapping",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 102.0, 157.0, 114.0, 20.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 59.0, 73.0, 647.0, 383.0 ],
														"bglocked" : 0,
														"defrect" : [ 59.0, 73.0, 647.0, 383.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r rate-std_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 155.24324, 137.428375, 99.0, 20.0 ],
																	"id" : "obj-3",
																	"fontname" : "Arial",
																	"numinlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p gridstuff-new",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 248.90979, 163.57869, 89.0, 20.0 ],
																	"id" : "obj-67",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 1126.0, 414.0, 384.0, 434.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 1126.0, 414.0, 384.0, 434.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "split 1 4",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "int" ],
																					"patching_rect" : [ 77.385429, 214.124695, 52.0, 20.0 ],
																					"id" : "obj-30",
																					"fontname" : "Arial",
																					"numinlets" : 3
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 15.085649, 203.226135, 32.5, 18.0 ],
																					"id" : "obj-15",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "r lb",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 14.950045, 178.228012, 27.0, 20.0 ],
																					"id" : "obj-1",
																					"fontname" : "Arial",
																					"numinlets" : 0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "if you change the # of options, please change split max as well",
																					"linecount" : 2,
																					"fontsize" : 12.0,
																					"numoutlets" : 0,
																					"patching_rect" : [ 127.727676, 332.036621, 186.0, 34.0 ],
																					"id" : "obj-62",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b i",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "bang", "int" ],
																					"patching_rect" : [ 76.746582, 279.8685, 38.709213, 20.0 ],
																					"id" : "obj-57",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "zl nth",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 76.609344, 329.993225, 39.0, 20.0 ],
																					"id" : "obj-53",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "10 20 50 100",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 76.880035, 305.671753, 81.0, 18.0 ],
																					"id" : "obj-51",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 111.54393, 186.586365, 32.5, 20.0 ],
																					"id" : "obj-23",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "i 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 111.54393, 161.586426, 32.5, 20.0 ],
																					"id" : "obj-28",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "number",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "bang" ],
																					"patching_rect" : [ 76.995178, 240.256226, 50.0, 20.0 ],
																					"id" : "obj-11",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 77.036438, 186.867554, 32.5, 20.0 ],
																					"id" : "obj-9",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "i 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 77.036438, 161.867584, 32.5, 20.0 ],
																					"id" : "obj-8",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 77.036438, 51.0, 25.0, 25.0 ],
																					"id" : "obj-63",
																					"numinlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 111.54393, 50.751316, 25.0, 25.0 ],
																					"id" : "obj-64",
																					"numinlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numoutlets" : 0,
																					"patching_rect" : [ 76.609344, 364.993225, 25.0, 25.0 ],
																					"id" : "obj-65",
																					"numinlets" : 1,
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-53", 0 ],
																					"destination" : [ "obj-65", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-57", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-57", 0 ],
																					"destination" : [ "obj-51", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-57", 1 ],
																					"destination" : [ "obj-53", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-51", 0 ],
																					"destination" : [ "obj-53", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-8", 1 ],
																					"hidden" : 0,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"midpoints" : [ 86.495178, 270.578552, 62.228996, 270.578552, 62.228996, 152.914917, 100.036438, 152.914917 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-63", 0 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-23", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-30", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-28", 1 ],
																					"hidden" : 0,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"midpoints" : [ 86.495178, 270.578552, 210.833221, 270.578552, 210.833221, 145.115356, 134.54393, 145.115356 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-28", 0 ],
																					"destination" : [ "obj-23", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-64", 0 ],
																					"destination" : [ "obj-28", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontface" : 0,
																		"default_fontname" : "Arial",
																		"fontsize" : 12.0,
																		"default_fontsize" : 12.0,
																		"fontname" : "Arial",
																		"default_fontface" : 0,
																		"globalpatchername" : ""
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s rate-std_grid-display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 244.388062, 228.213745, 129.0, 20.0 ],
																	"id" : "obj-58",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 307.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-56",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 260.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-54",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s rate-std_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 7.388062, 325.213745, 105.0, 20.0 ],
																	"id" : "obj-39",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 213.842117, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-38",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 168.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-37",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 121.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-36",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 75.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-35",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "4",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 213.842117, 78.0, 32.5, 18.0 ],
																	"id" : "obj-34",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "3",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 168.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-33",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "2",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 121.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-32",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "1",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 75.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-31",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 4",
																	"fontsize" : 12.0,
																	"numoutlets" : 4,
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 76.526306, 191.302643, 74.5, 20.0 ],
																	"id" : "obj-29",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 10.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 151.476929, 231.286987, 38.0, 20.0 ],
																	"id" : "obj-26",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 10.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 113.476929, 231.286987, 35.0, 20.0 ],
																	"id" : "obj-27",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 78.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-25",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "f",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 132.476929, 167.286987, 41.5, 20.0 ],
																	"id" : "obj-20",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 43.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-21",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 132.476929, 143.0, 20.0, 20.0 ],
																	"id" : "obj-24",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 126.513161, 321.75, 25.0, 25.0 ],
																	"id" : "obj-17",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"varname" : "number",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 126.513161, 279.75, 50.0, 20.0 ],
																	"id" : "obj-16",
																	"fontname" : "Arial",
																	"minimum" : 0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "if a number is typed from the keyboard, it gets sent out immediately; if arrows are used, each arrow click (bang) is converted to an incremental step (up, down etc)",
																	"linecount" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 111.0, 14.0, 477.0, 34.0 ],
																	"id" : "obj-6",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route up down left right gridplus gridminus",
																	"fontsize" : 12.0,
																	"numoutlets" : 7,
																	"outlettype" : [ "", "", "", "", "", "", "" ],
																	"patching_rect" : [ 75.0, 53.0, 297.0, 20.0 ],
																	"id" : "obj-4",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 75.0, 17.0, 25.0, 25.0 ],
																	"id" : "obj-2",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-54", 0 ],
																	"destination" : [ "obj-67", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 269.5, 131.789337, 258.40979, 131.789337 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-56", 0 ],
																	"destination" : [ "obj-67", 1 ],
																	"hidden" : 0,
																	"midpoints" : [ 316.5, 131.789337, 328.40979, 131.789337 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-67", 0 ],
																	"destination" : [ "obj-58", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-67", 0 ],
																	"destination" : [ "obj-27", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-67", 0 ],
																	"destination" : [ "obj-26", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 5 ],
																	"destination" : [ "obj-56", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 4 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 6 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 362.5, 265.875, 136.013153, 265.875 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 2 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 3 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 160.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 122.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 87.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 52.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 3 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 2 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 1 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 236.842117, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 191.0, 128.388168, 86.026306, 128.388168 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 144.0, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 98.0, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-29", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"midpoints" : [ 136.013153, 308.75, 195.008209, 308.75, 195.008209, 161.286987, 164.476929, 161.286987 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"default_fontname" : "Arial",
														"fontsize" : 12.0,
														"default_fontsize" : 12.0,
														"fontname" : "Arial",
														"default_fontface" : 0,
														"globalpatchername" : ""
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "rate_mapping",
													"text" : "p rate_mapping",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 107.0, 94.0, 20.0 ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 693.0, 383.0, 631.0, 389.0 ],
														"bglocked" : 0,
														"defrect" : [ 693.0, 383.0, 631.0, 389.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r rate_preset",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 160.523972, 138.219635, 79.0, 20.0 ],
																	"id" : "obj-5",
																	"fontname" : "Arial",
																	"numinlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p gridstuff-new",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 247.90979, 150.57869, 89.0, 20.0 ],
																	"id" : "obj-67",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 1126.0, 414.0, 384.0, 434.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 1126.0, 414.0, 384.0, 434.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "split 1 4",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "int" ],
																					"patching_rect" : [ 77.385429, 214.124695, 52.0, 20.0 ],
																					"id" : "obj-30",
																					"fontname" : "Arial",
																					"numinlets" : 3
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 15.085649, 203.226135, 32.5, 18.0 ],
																					"id" : "obj-15",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "r lb",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 14.950045, 178.228012, 27.0, 20.0 ],
																					"id" : "obj-1",
																					"fontname" : "Arial",
																					"numinlets" : 0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "if you change the # of options, please change split max as well",
																					"linecount" : 2,
																					"fontsize" : 12.0,
																					"numoutlets" : 0,
																					"patching_rect" : [ 127.727676, 332.036621, 186.0, 34.0 ],
																					"id" : "obj-62",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b i",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "bang", "int" ],
																					"patching_rect" : [ 76.746582, 279.8685, 38.709213, 20.0 ],
																					"id" : "obj-57",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "zl nth",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 76.609344, 329.993225, 39.0, 20.0 ],
																					"id" : "obj-53",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "10 20 50 100",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 76.880035, 305.671753, 81.0, 18.0 ],
																					"id" : "obj-51",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 111.54393, 186.586365, 32.5, 20.0 ],
																					"id" : "obj-23",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "i 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 111.54393, 161.586426, 32.5, 20.0 ],
																					"id" : "obj-28",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "number",
																					"fontsize" : 12.0,
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "bang" ],
																					"patching_rect" : [ 76.995178, 240.256226, 50.0, 20.0 ],
																					"id" : "obj-11",
																					"fontname" : "Arial",
																					"numinlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 77.036438, 186.867554, 32.5, 20.0 ],
																					"id" : "obj-9",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "i 1",
																					"fontsize" : 12.0,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 77.036438, 161.867584, 32.5, 20.0 ],
																					"id" : "obj-8",
																					"fontname" : "Arial",
																					"numinlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 77.036438, 51.0, 25.0, 25.0 ],
																					"id" : "obj-63",
																					"numinlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 111.54393, 50.751316, 25.0, 25.0 ],
																					"id" : "obj-64",
																					"numinlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numoutlets" : 0,
																					"patching_rect" : [ 76.609344, 364.993225, 25.0, 25.0 ],
																					"id" : "obj-65",
																					"numinlets" : 1,
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-64", 0 ],
																					"destination" : [ "obj-28", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-28", 0 ],
																					"destination" : [ "obj-23", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-28", 1 ],
																					"hidden" : 0,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"midpoints" : [ 86.495178, 270.578552, 210.833221, 270.578552, 210.833221, 145.115356, 134.54393, 145.115356 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-30", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-23", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-63", 0 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-8", 1 ],
																					"hidden" : 0,
																					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																					"midpoints" : [ 86.495178, 270.578552, 62.228996, 270.578552, 62.228996, 152.914917, 100.036438, 152.914917 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-51", 0 ],
																					"destination" : [ "obj-53", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-57", 1 ],
																					"destination" : [ "obj-53", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-57", 0 ],
																					"destination" : [ "obj-51", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-57", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-53", 0 ],
																					"destination" : [ "obj-65", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontface" : 0,
																		"default_fontname" : "Arial",
																		"fontsize" : 12.0,
																		"default_fontsize" : 12.0,
																		"fontname" : "Arial",
																		"default_fontface" : 0,
																		"globalpatchername" : ""
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s rate_grid-display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 248.388062, 183.213745, 109.0, 20.0 ],
																	"id" : "obj-58",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 307.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-56",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 260.0, 81.0, 20.0, 20.0 ],
																	"id" : "obj-54",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s rate_display",
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"patching_rect" : [ 37.388062, 325.213745, 85.0, 20.0 ],
																	"id" : "obj-39",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 213.842117, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-38",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 168.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-37",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 121.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-36",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 75.0, 99.842148, 32.5, 20.0 ],
																	"id" : "obj-35",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "4",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 213.842117, 78.0, 32.5, 18.0 ],
																	"id" : "obj-34",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "3",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 168.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-33",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "2",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 121.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-32",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "1",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 75.0, 78.0, 32.5, 18.0 ],
																	"id" : "obj-31",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 4",
																	"fontsize" : 12.0,
																	"numoutlets" : 4,
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 76.526306, 191.302643, 74.5, 20.0 ],
																	"id" : "obj-29",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 10.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 151.476929, 231.286987, 38.0, 20.0 ],
																	"id" : "obj-26",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 10.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 113.476929, 231.286987, 35.0, 20.0 ],
																	"id" : "obj-27",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 78.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-25",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "f",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 132.476929, 167.286987, 32.5, 20.0 ],
																	"id" : "obj-20",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1.",
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 43.476929, 231.286987, 32.5, 20.0 ],
																	"id" : "obj-21",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 132.476929, 143.0, 20.0, 20.0 ],
																	"id" : "obj-24",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 126.513161, 321.75, 25.0, 25.0 ],
																	"id" : "obj-17",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"varname" : "number",
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 126.513161, 279.75, 50.0, 20.0 ],
																	"id" : "obj-16",
																	"fontname" : "Arial",
																	"minimum" : 10,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "if a number is typed from the keyboard, it gets sent out immediately; if arrows are used, each arrow click (bang) is converted to an incremental step (up, down etc)",
																	"linecount" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 111.0, 14.0, 477.0, 34.0 ],
																	"id" : "obj-6",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route up down left right gridplus gridminus",
																	"fontsize" : 12.0,
																	"numoutlets" : 7,
																	"outlettype" : [ "", "", "", "", "", "", "" ],
																	"patching_rect" : [ 75.0, 53.0, 297.0, 20.0 ],
																	"id" : "obj-4",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 75.0, 17.0, 25.0, 25.0 ],
																	"id" : "obj-2",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-67", 0 ],
																	"destination" : [ "obj-26", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-67", 0 ],
																	"destination" : [ "obj-27", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-67", 0 ],
																	"destination" : [ "obj-58", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-56", 0 ],
																	"destination" : [ "obj-67", 1 ],
																	"hidden" : 0,
																	"midpoints" : [ 316.5, 125.289345, 327.40979, 125.289345 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-54", 0 ],
																	"destination" : [ "obj-67", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 269.5, 125.289345, 257.40979, 125.289345 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"color" : [ 1.0, 0.0, 0.0, 1.0 ],
																	"midpoints" : [ 136.013153, 308.75, 195.008209, 308.75, 195.008209, 162.546188, 155.476929, 162.546188 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-29", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 98.0, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 144.0, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 191.0, 128.388168, 86.026306, 128.388168 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 236.842117, 128.901321, 86.026306, 128.901321 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 1 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 2 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 3 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 52.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 87.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 122.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 160.976929, 265.018494, 136.013153, 265.018494 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 3 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 2 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 6 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 362.5, 265.875, 136.013153, 265.875 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 4 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 5 ],
																	"destination" : [ "obj-56", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"default_fontname" : "Arial",
														"fontsize" : 12.0,
														"default_fontsize" : 12.0,
														"fontname" : "Arial",
														"default_fontface" : 0,
														"globalpatchername" : ""
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r kbctrl_reverse-prob",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 977.0, 132.0, 121.0, 20.0 ],
													"id" : "obj-188",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r kbctrl_gain-std",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 847.0, 77.0, 96.0, 20.0 ],
													"id" : "obj-189",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r kbctrl_gain",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 794.0, 104.0, 76.0, 20.0 ],
													"id" : "obj-190",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r kbctrl_transposition-std",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 638.0, 130.0, 141.0, 20.0 ],
													"id" : "obj-191",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r kbctrl_transposition",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 538.0, 64.0, 121.0, 20.0 ],
													"id" : "obj-192",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r kbctrl_onset-std",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 455.0, 133.0, 103.0, 20.0 ],
													"id" : "obj-193",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r kbctrl_grain-size-std",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 353.0, 76.0, 125.0, 20.0 ],
													"id" : "obj-194",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r kbctrl_grain-size",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 262.0, 135.0, 105.0, 20.0 ],
													"id" : "obj-195",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r kbctrl_xfade",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 198.0, 78.0, 83.0, 20.0 ],
													"id" : "obj-196",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r kbctrl_rate-std",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 102.0, 132.0, 94.0, 20.0 ],
													"id" : "obj-197",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r kbctrl_rate",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 81.0, 74.0, 20.0 ],
													"id" : "obj-198",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "rate_std $1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 102.0, 182.0, 71.0, 18.0 ],
													"id" : "obj-25",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "rate $1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 182.0, 48.0, 18.0 ],
													"id" : "obj-22",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "pan_std $1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1124.0, 192.0, 70.0, 18.0 ],
													"id" : "obj-14",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "reverse $1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 977.0, 190.0, 67.0, 18.0 ],
													"id" : "obj-12",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "gain $1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 794.0, 184.0, 50.0, 18.0 ],
													"id" : "obj-11",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "gain_std $1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 847.0, 184.0, 73.0, 18.0 ],
													"id" : "obj-10",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "transposition_std $1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 638.0, 183.0, 118.0, 18.0 ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "transposition $1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 538.0, 186.0, 95.0, 18.0 ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "xfade $1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 197.0, 182.0, 57.0, 18.0 ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "onset_std $1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 455.0, 184.0, 79.0, 18.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "duration_std $1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 353.0, 183.0, 93.0, 18.0 ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "duration $1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 262.0, 185.0, 71.0, 18.0 ],
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 514.333374, 285.0, 25.0, 25.0 ],
													"id" : "obj-112",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-188", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-189", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-190", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-191", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-192", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-193", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-194", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-195", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-196", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-197", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-112", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-112", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-112", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-112", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-112", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-112", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-112", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-112", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-112", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-112", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-112", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-112", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-198", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-190", 0 ],
													"destination" : [ "obj-26", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r gain-std_display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 285.0, 399.0, 105.0, 20.0 ],
									"id" : "obj-111",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 24.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triangle" : 0,
									"presentation_rect" : [ 287.248596, 267.137238, 66.0, 34.0 ],
									"outlettype" : [ "float", "bang" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 464.248596, 437.137238, 66.0, 34.0 ],
									"maximum" : 12.0,
									"presentation" : 1,
									"id" : "obj-107",
									"fontname" : "Arial",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "STD",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 218.0, 271.0, 48.0, 27.0 ],
									"patching_rect" : [ 395.0, 441.0, 48.0, 27.0 ],
									"presentation" : 1,
									"id" : "obj-108",
									"fontname" : "Arial Bold",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"numoutlets" : 4,
									"presentation_rect" : [ 211.0, 265.0, 156.0, 40.0 ],
									"outlettype" : [ "bang", "bang", "", "int" ],
									"ignoreclick" : 1,
									"stay" : 10,
									"patching_rect" : [ 358.0, 435.0, 156.0, 40.0 ],
									"presentation" : 1,
									"id" : "obj-109",
									"handoff" : "",
									"hltcolor" : [ 0.156863, 1.0, 0.368627, 0.501961 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.647059 ],
									"presentation_rect" : [ 211.0, 265.0, 156.0, 40.0 ],
									"patching_rect" : [ 388.0, 435.0, 156.0, 40.0 ],
									"presentation" : 1,
									"id" : "obj-110",
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
									"numinlets" : 1,
									"rounded" : 12
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r size-std_display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 77.0, 483.0, 103.0, 20.0 ],
									"id" : "obj-102",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 24.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triangle" : 0,
									"presentation_rect" : [ 79.0, 270.0, 85.0, 34.0 ],
									"outlettype" : [ "int", "bang" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 100.248566, 439.137238, 60.0, 34.0 ],
									"presentation" : 1,
									"id" : "obj-103",
									"fontname" : "Arial",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"minimum" : 0,
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "STD",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 14.751434, 273.862762, 48.0, 27.0 ],
									"patching_rect" : [ 31.0, 443.0, 48.0, 27.0 ],
									"presentation" : 1,
									"id" : "obj-104",
									"fontname" : "Arial Bold",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"numoutlets" : 4,
									"presentation_rect" : [ 7.751434, 267.862762, 167.0, 40.0 ],
									"outlettype" : [ "bang", "bang", "", "int" ],
									"ignoreclick" : 1,
									"stay" : 5,
									"patching_rect" : [ -6.0, 437.0, 167.0, 40.0 ],
									"presentation" : 1,
									"id" : "obj-105",
									"handoff" : "",
									"hltcolor" : [ 0.156863, 1.0, 0.368627, 0.501961 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.647059 ],
									"presentation_rect" : [ 7.751434, 267.862762, 167.0, 40.0 ],
									"patching_rect" : [ 24.0, 437.0, 167.0, 40.0 ],
									"presentation" : 1,
									"id" : "obj-106",
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
									"numinlets" : 1,
									"rounded" : 12
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r transposition-std_display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 571.0, 210.0, 150.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-96",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 24.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triangle" : 0,
									"presentation_rect" : [ 287.248596, 129.137238, 66.0, 34.0 ],
									"outlettype" : [ "float", "bang" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 488.248596, 206.137238, 58.0, 34.0 ],
									"maximum" : 50.0,
									"presentation" : 1,
									"id" : "obj-97",
									"fontname" : "Arial",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "STD",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 218.0, 133.0, 48.0, 27.0 ],
									"patching_rect" : [ 419.0, 210.0, 48.0, 27.0 ],
									"presentation" : 1,
									"id" : "obj-98",
									"fontname" : "Arial Bold",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"numoutlets" : 4,
									"presentation_rect" : [ 211.0, 127.0, 156.0, 40.0 ],
									"outlettype" : [ "bang", "bang", "", "int" ],
									"ignoreclick" : 1,
									"stay" : 8,
									"patching_rect" : [ 382.0, 204.0, 156.0, 40.0 ],
									"presentation" : 1,
									"id" : "obj-99",
									"handoff" : "",
									"hltcolor" : [ 0.156863, 1.0, 0.368627, 0.501961 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.647059 ],
									"presentation_rect" : [ 211.0, 127.0, 156.0, 40.0 ],
									"patching_rect" : [ 412.0, 204.0, 156.0, 40.0 ],
									"presentation" : 1,
									"id" : "obj-100",
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
									"numinlets" : 1,
									"rounded" : 12
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r rate-std_display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 198.0, 103.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-90",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 24.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triangle" : 0,
									"presentation_rect" : [ 81.248566, 130.137238, 72.0, 34.0 ],
									"outlettype" : [ "int", "bang" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 188.248566, 235.137238, 69.0, 34.0 ],
									"presentation" : 1,
									"id" : "obj-91",
									"fontname" : "Arial",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"minimum" : 0,
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "STD",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 16.0, 134.0, 48.0, 27.0 ],
									"patching_rect" : [ 119.0, 239.0, 48.0, 27.0 ],
									"presentation" : 1,
									"id" : "obj-93",
									"fontname" : "Arial Bold",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"numoutlets" : 4,
									"presentation_rect" : [ 9.0, 128.0, 160.0, 40.0 ],
									"outlettype" : [ "bang", "bang", "", "int" ],
									"ignoreclick" : 1,
									"stay" : 2,
									"patching_rect" : [ 82.0, 233.0, 160.0, 40.0 ],
									"presentation" : 1,
									"id" : "obj-94",
									"handoff" : "",
									"hltcolor" : [ 0.156863, 1.0, 0.368627, 0.501961 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.647059 ],
									"presentation_rect" : [ 9.0, 128.0, 160.0, 40.0 ],
									"patching_rect" : [ 112.0, 233.0, 160.0, 40.0 ],
									"presentation" : 1,
									"id" : "obj-95",
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
									"numinlets" : 1,
									"rounded" : 12
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r onset-std_display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 766.0, 77.0, 111.0, 20.0 ],
									"id" : "obj-84",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 38.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triangle" : 0,
									"presentation_rect" : [ 501.0, 50.0, 80.0, 50.0 ],
									"outlettype" : [ "int", "bang" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 769.0, 115.0, 80.0, 50.0 ],
									"presentation" : 1,
									"id" : "obj-85",
									"fontname" : "Arial",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"minimum" : 0,
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "O",
									"fontsize" : 54.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 445.0, 41.0, 56.0, 69.0 ],
									"patching_rect" : [ 713.0, 106.0, 56.0, 69.0 ],
									"presentation" : 1,
									"id" : "obj-86",
									"fontname" : "Arial Bold",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Onset",
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 438.0, 97.0, 82.0, 23.0 ],
									"patching_rect" : [ 706.0, 162.0, 82.0, 23.0 ],
									"presentation" : 1,
									"id" : "obj-87",
									"fontname" : "Arial Bold",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"numoutlets" : 4,
									"presentation_rect" : [ 438.0, 39.0, 139.0, 80.0 ],
									"outlettype" : [ "bang", "bang", "", "int" ],
									"ignoreclick" : 1,
									"stay" : 6,
									"patching_rect" : [ 676.0, 104.0, 139.0, 80.0 ],
									"presentation" : 1,
									"id" : "obj-88",
									"handoff" : "",
									"hltcolor" : [ 0.156863, 1.0, 0.368627, 0.501961 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.654902 ],
									"presentation_rect" : [ 438.0, 39.0, 139.0, 80.0 ],
									"patching_rect" : [ 706.0, 104.0, 139.0, 80.0 ],
									"presentation" : 1,
									"id" : "obj-89",
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numinlets" : 1,
									"rounded" : 12
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r reverse-prob_display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 457.0, 534.0, 130.0, 20.0 ],
									"id" : "obj-78",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 38.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triangle" : 0,
									"presentation_rect" : [ 279.0, 335.0, 80.0, 50.0 ],
									"outlettype" : [ "int", "bang" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 452.0, 578.0, 80.0, 50.0 ],
									"maximum" : 100,
									"presentation" : 1,
									"id" : "obj-79",
									"fontname" : "Arial",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"minimum" : 0,
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "V",
									"fontsize" : 54.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 233.0, 323.0, 56.0, 69.0 ],
									"patching_rect" : [ 406.0, 566.0, 56.0, 69.0 ],
									"presentation" : 1,
									"id" : "obj-80",
									"fontname" : "Arial Bold",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "reVerse",
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 227.0, 379.0, 62.0, 23.0 ],
									"patching_rect" : [ 400.0, 622.0, 62.0, 23.0 ],
									"presentation" : 1,
									"id" : "obj-81",
									"fontname" : "Arial Bold",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"numoutlets" : 4,
									"presentation_rect" : [ 224.0, 318.0, 131.0, 85.0 ],
									"outlettype" : [ "bang", "bang", "", "int" ],
									"ignoreclick" : 1,
									"stay" : 11,
									"patching_rect" : [ 367.0, 561.0, 131.0, 85.0 ],
									"presentation" : 1,
									"id" : "obj-82",
									"handoff" : "",
									"hltcolor" : [ 0.156863, 1.0, 0.368627, 0.501961 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.647059 ],
									"presentation_rect" : [ 224.0, 318.0, 131.0, 85.0 ],
									"patching_rect" : [ 397.0, 561.0, 131.0, 85.0 ],
									"presentation" : 1,
									"id" : "obj-83",
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
									"numinlets" : 1,
									"rounded" : 12
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r gain_display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 480.0, 322.0, 85.0, 20.0 ],
									"id" : "obj-71",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 38.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triangle" : 0,
									"presentation_rect" : [ 266.0, 195.0, 97.0, 50.0 ],
									"outlettype" : [ "float", "bang" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 443.0, 365.0, 97.0, 50.0 ],
									"maximum" : 12.0,
									"presentation" : 1,
									"id" : "obj-72",
									"fontname" : "Arial",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"minimum" : -99.0,
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "G",
									"fontsize" : 54.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 213.0, 183.0, 56.0, 69.0 ],
									"patching_rect" : [ 390.0, 353.0, 56.0, 69.0 ],
									"presentation" : 1,
									"id" : "obj-74",
									"fontname" : "Arial Bold",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Gain",
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 220.0, 239.0, 42.0, 23.0 ],
									"patching_rect" : [ 397.0, 409.0, 42.0, 23.0 ],
									"presentation" : 1,
									"id" : "obj-75",
									"fontname" : "Arial Bold",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"numoutlets" : 4,
									"presentation_rect" : [ 211.0, 178.0, 156.0, 85.0 ],
									"outlettype" : [ "bang", "bang", "", "int" ],
									"ignoreclick" : 1,
									"stay" : 9,
									"patching_rect" : [ 358.0, 348.0, 156.0, 85.0 ],
									"presentation" : 1,
									"id" : "obj-76",
									"handoff" : "",
									"hltcolor" : [ 0.156863, 1.0, 0.168627, 0.501961 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.647059 ],
									"presentation_rect" : [ 211.0, 178.0, 156.0, 85.0 ],
									"patching_rect" : [ 388.0, 348.0, 156.0, 85.0 ],
									"presentation" : 1,
									"id" : "obj-77",
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
									"numinlets" : 1,
									"rounded" : 12
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r xfade_display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 97.0, 534.0, 91.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-65",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 38.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triangle" : 0,
									"presentation_rect" : [ 74.0, 336.0, 80.0, 50.0 ],
									"outlettype" : [ "int", "bang" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 92.0, 578.0, 80.0, 50.0 ],
									"presentation" : 1,
									"id" : "obj-66",
									"fontname" : "Arial",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"minimum" : 10,
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "X",
									"fontsize" : 54.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 26.0, 325.0, 56.0, 69.0 ],
									"patching_rect" : [ 44.0, 567.0, 56.0, 69.0 ],
									"presentation" : 1,
									"id" : "obj-67",
									"fontname" : "Arial Bold",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "X-fade",
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 24.0, 380.0, 53.0, 23.0 ],
									"patching_rect" : [ 42.0, 622.0, 53.0, 23.0 ],
									"presentation" : 1,
									"id" : "obj-68",
									"fontname" : "Arial Bold",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"numoutlets" : 4,
									"presentation_rect" : [ 19.0, 319.0, 138.0, 85.0 ],
									"outlettype" : [ "bang", "bang", "", "int" ],
									"ignoreclick" : 1,
									"stay" : 3,
									"patching_rect" : [ 7.0, 561.0, 138.0, 85.0 ],
									"presentation" : 1,
									"id" : "obj-69",
									"handoff" : "",
									"hltcolor" : [ 0.156863, 1.0, 0.368627, 0.501961 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.647059 ],
									"presentation_rect" : [ 19.0, 319.0, 138.0, 85.0 ],
									"patching_rect" : [ 37.0, 561.0, 138.0, 85.0 ],
									"presentation" : 1,
									"id" : "obj-70",
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
									"numinlets" : 1,
									"rounded" : 12
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r size_display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 84.0, 323.0, 83.0, 20.0 ],
									"id" : "obj-59",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 38.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triangle" : 0,
									"presentation_rect" : [ 62.751434, 197.862762, 95.0, 50.0 ],
									"outlettype" : [ "int", "bang" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 79.0, 367.0, 95.0, 50.0 ],
									"presentation" : 1,
									"id" : "obj-60",
									"fontname" : "Arial",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"minimum" : 0,
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "S",
									"fontsize" : 54.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 10.751434, 186.862762, 56.0, 69.0 ],
									"patching_rect" : [ 27.0, 356.0, 56.0, 69.0 ],
									"presentation" : 1,
									"id" : "obj-61",
									"fontname" : "Arial Bold",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Size",
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 15.751434, 241.862762, 41.0, 23.0 ],
									"patching_rect" : [ 32.0, 411.0, 41.0, 23.0 ],
									"presentation" : 1,
									"id" : "obj-62",
									"fontname" : "Arial Bold",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"numoutlets" : 4,
									"presentation_rect" : [ 7.751434, 180.862762, 167.0, 85.0 ],
									"outlettype" : [ "bang", "bang", "", "int" ],
									"ignoreclick" : 1,
									"stay" : 4,
									"patching_rect" : [ -6.0, 350.0, 167.0, 85.0 ],
									"presentation" : 1,
									"id" : "obj-63",
									"handoff" : "",
									"hltcolor" : [ 0.156863, 1.0, 0.368627, 0.501961 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.647059 ],
									"presentation_rect" : [ 7.751434, 180.862762, 167.0, 85.0 ],
									"patching_rect" : [ 24.0, 350.0, 167.0, 85.0 ],
									"presentation" : 1,
									"id" : "obj-64",
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
									"numinlets" : 1,
									"rounded" : 12
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r transposition_display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 469.0, 75.0, 130.0, 20.0 ],
									"id" : "obj-52",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 38.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triangle" : 0,
									"presentation_rect" : [ 264.0, 57.0, 100.0, 50.0 ],
									"outlettype" : [ "float", "bang" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 469.0, 134.0, 90.0, 50.0 ],
									"maximum" : 50.0,
									"presentation" : 1,
									"id" : "obj-53",
									"fontname" : "Arial",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"minimum" : -50.0,
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "T",
									"fontsize" : 54.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 218.0, 44.0, 56.0, 69.0 ],
									"patching_rect" : [ 419.0, 121.0, 56.0, 69.0 ],
									"presentation" : 1,
									"id" : "obj-54",
									"fontname" : "Arial Bold",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Transp.",
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 215.0, 99.0, 61.0, 23.0 ],
									"patching_rect" : [ 416.0, 176.0, 61.0, 23.0 ],
									"presentation" : 1,
									"id" : "obj-55",
									"fontname" : "Arial Bold",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"numoutlets" : 4,
									"presentation_rect" : [ 211.0, 40.0, 156.0, 85.0 ],
									"outlettype" : [ "bang", "bang", "", "int" ],
									"ignoreclick" : 1,
									"stay" : 7,
									"patching_rect" : [ 382.0, 117.0, 156.0, 85.0 ],
									"presentation" : 1,
									"id" : "obj-56",
									"handoff" : "",
									"hltcolor" : [ 0.156863, 1.0, 0.368627, 0.501961 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.647059 ],
									"presentation_rect" : [ 211.0, 40.0, 156.0, 85.0 ],
									"patching_rect" : [ 412.0, 117.0, 156.0, 85.0 ],
									"presentation" : 1,
									"id" : "obj-57",
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
									"numinlets" : 1,
									"rounded" : 12
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r rate_display",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 171.0, 90.0, 83.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-51",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 38.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triangle" : 0,
									"presentation_rect" : [ 64.0, 59.0, 95.0, 50.0 ],
									"outlettype" : [ "int", "bang" ],
									"ignoreclick" : 1,
									"patching_rect" : [ 167.0, 164.0, 95.0, 50.0 ],
									"presentation" : 1,
									"id" : "obj-49",
									"fontname" : "Arial",
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"minimum" : 10,
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "R",
									"fontsize" : 54.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 12.0, 46.0, 56.0, 69.0 ],
									"patching_rect" : [ 115.0, 151.0, 56.0, 69.0 ],
									"presentation" : 1,
									"id" : "obj-43",
									"fontname" : "Arial Bold",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Rate",
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 17.0, 101.0, 41.0, 23.0 ],
									"patching_rect" : [ 120.0, 206.0, 41.0, 23.0 ],
									"presentation" : 1,
									"id" : "obj-40",
									"fontname" : "Arial Bold",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 30.0, 38.0, 50.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-26",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"numoutlets" : 4,
									"presentation_rect" : [ 9.0, 42.0, 160.0, 85.0 ],
									"outlettype" : [ "bang", "bang", "", "int" ],
									"ignoreclick" : 1,
									"stay" : 1,
									"patching_rect" : [ 82.0, 147.0, 160.0, 85.0 ],
									"presentation" : 1,
									"id" : "obj-18",
									"handoff" : "",
									"hltcolor" : [ 0.156863, 1.0, 0.368627, 0.501961 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r kbctrl_gate-open",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 14.0, 107.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-73",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s to-catart-lcd",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 939.0, 77.0, 83.0, 20.0 ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.647059 ],
									"presentation_rect" : [ 9.0, 42.0, 160.0, 84.0 ],
									"patching_rect" : [ 112.0, 147.0, 160.0, 84.0 ],
									"presentation" : 1,
									"id" : "obj-50",
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
									"numinlets" : 1,
									"rounded" : 12
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"patching_rect" : [ 906.0, 38.0, 140.0, 70.0 ],
									"id" : "obj-114",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"patching_rect" : [ 952.0, 743.0, 451.0, 108.0 ],
									"id" : "obj-151",
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-132", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-120", 0 ],
									"destination" : [ "obj-132", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-164", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-107", 0 ],
									"destination" : [ "obj-163", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-162", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-161", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-103", 0 ],
									"destination" : [ "obj-159", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-160", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 0 ],
									"destination" : [ "obj-158", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-157", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-156", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 0 ],
									"destination" : [ "obj-155", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-85", 0 ],
									"destination" : [ "obj-154", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-113", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-122", 0 ],
									"destination" : [ "obj-118", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-92", 0 ],
									"destination" : [ "obj-122", 0 ],
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
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-128", 2 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-142", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-128", 0 ],
									"destination" : [ "obj-142", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-128", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1107.5, 782.5, 1090.5, 782.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-130", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1245.5, 819.0, 969.5, 819.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-130", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1090.5, 819.0, 969.5, 819.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-130", 0 ],
									"hidden" : 0,
									"midpoints" : [ 969.5, 819.0, 969.5, 819.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-121", 0 ],
									"destination" : [ "obj-112", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-121", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-90", 0 ],
									"destination" : [ "obj-91", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-117", 0 ],
									"destination" : [ "obj-116", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-116", 1 ],
									"destination" : [ "obj-118", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-109", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-105", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-99", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-94", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-88", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-82", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-96", 0 ],
									"destination" : [ "obj-97", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-111", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-60", 0 ],
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
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-118", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-125", 0 ],
									"hidden" : 0,
									"midpoints" : [ 979.5, 441.0, 1099.5, 441.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-127", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-127", 1 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-127", 0 ],
									"destination" : [ "obj-129", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-129", 0 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-135", 0 ],
									"destination" : [ "obj-125", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-135", 0 ],
									"hidden" : 0,
									"midpoints" : [ 979.5, 426.0, 1118.5, 426.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-129", 0 ],
									"destination" : [ "obj-136", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-136", 0 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-125", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1099.5, 453.5, 1099.5, 453.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1099.5, 388.5, 1074.5, 388.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-115", 0 ],
									"destination" : [ "obj-119", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-148", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-123", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 0,
									"midpoints" : [ 969.5, 691.0, 902.5, 691.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-123", 0 ],
									"destination" : [ "obj-128", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-126", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-143", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2 3 4 5 6",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 582.429016, 670.872498, 97.0, 20.0 ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"numinlets" : 6
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.vecdisplay",
					"numoutlets" : 6,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"view1" : 2,
					"fgcolor1" : [ 0.235294, 0.603922, 0.352941, 1.0 ],
					"outlettype" : [ "", "", "", "", "", "" ],
					"ftm_scope" : 3,
					"patching_rect" : [ 702.683167, 484.696259, 151.561859, 26.257896 ],
					"fgcolor5" : [ 1.0, 1.0, 0.0, 1.0 ],
					"id" : "obj-63",
					"fgcolor4" : [ 1.0, 0.0, 1.0, 1.0 ],
					"numinlets" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"ongradcolor1" : [ 0.901961, 0.345098, 0.345098, 1.0 ],
					"numoutlets" : 0,
					"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.301961 ],
					"ongradcolor2" : [ 0.941176, 0.898039, 0.047059, 1.0 ],
					"offgradcolor2" : [ 0.843137, 0.843137, 0.87451, 0.501961 ],
					"presentation_rect" : [ 136.0, 279.0, 28.036097, 28.036097 ],
					"patching_rect" : [ 435.0, 63.5, 45.0, 45.0 ],
					"presentation" : 1,
					"id" : "obj-29",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"numoutlets" : 2,
					"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.25098 ],
					"presentation_rect" : [ 250.427856, 193.486725, 24.747133, 93.0 ],
					"outlettype" : [ "signal", "int" ],
					"stripecolor" : [ 1.0, 1.0, 1.0, 0.698039 ],
					"patching_rect" : [ 607.586914, 580.627686, 22.0, 65.0 ],
					"presentation" : 1,
					"id" : "obj-30",
					"knobcolor" : [ 0.6, 0.6, 0.6, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"orientation" : 2,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 203.493652, 193.486725, 17.06699, 94.0 ],
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 566.586975, 580.627686, 13.0, 66.0 ],
					"presentation" : 1,
					"id" : "obj-55",
					"bordercolor" : [ 0.74902, 0.301961, 0.101961, 0.34902 ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"interval" : 500,
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 277.735046, 193.486725, 17.06699, 94.0 ],
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"patching_rect" : [ 632.586914, 580.627686, 13.0, 66.0 ],
					"presentation" : 1,
					"id" : "obj-56",
					"bordercolor" : [ 0.74902, 0.301961, 0.101961, 0.34902 ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"interval" : 500,
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"numoutlets" : 2,
					"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.25098 ],
					"presentation_rect" : [ 223.120697, 193.486725, 24.747133, 93.0 ],
					"outlettype" : [ "signal", "int" ],
					"stripecolor" : [ 1.0, 1.0, 1.0, 0.698039 ],
					"patching_rect" : [ 582.586975, 580.627686, 22.0, 65.0 ],
					"presentation" : 1,
					"id" : "obj-57",
					"knobcolor" : [ 0.6, 0.6, 0.6, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"orientation" : 2,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
					"presentation_rect" : [ 15.0, 90.562187, 165.41861, 44.156166 ],
					"patching_rect" : [ 822.0, 101.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-75",
					"bordercolor" : [ 0.74902, 0.301961, 0.101961, 0.698039 ],
					"border" : 2,
					"numinlets" : 1,
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
					"presentation_rect" : [ 15.0, 151.0, 165.41861, 44.156166 ],
					"patching_rect" : [ 837.0, 116.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-45",
					"bordercolor" : [ 0.74902, 0.301961, 0.101961, 0.698039 ],
					"border" : 2,
					"numinlets" : 1,
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
					"presentation_rect" : [ 15.0, 271.0, 165.41861, 44.156166 ],
					"patching_rect" : [ 852.0, 131.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-46",
					"bordercolor" : [ 0.74902, 0.301961, 0.101961, 0.698039 ],
					"border" : 2,
					"numinlets" : 1,
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
					"presentation_rect" : [ 195.0, 90.562187, 107.317238, 225.24585 ],
					"patching_rect" : [ 882.0, 161.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-52",
					"bordercolor" : [ 0.74902, 0.301961, 0.101961, 0.698039 ],
					"border" : 2,
					"numinlets" : 1,
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel[1]",
					"numoutlets" : 0,
					"grad1" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"background" : 1,
					"presentation_rect" : [ 15.0, 15.0, 288.0, 52.0 ],
					"grad2" : [ 0.85, 0.85, 0.85, 1.0 ],
					"patching_rect" : [ 21.0, 367.0, 495.0, 52.0 ],
					"presentation" : 1,
					"id" : "obj-28",
					"mode" : 1,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-7", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-7", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 508.917084, 477.269867, 585.105469, 477.269867 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [ 624.105469, 480.890198, 712.183167, 480.890198 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-7", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-7", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-95", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 1 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 564.639587, 405.212616, 585.105469, 405.212616 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 667.842346, 267.865173, 654.258118, 267.865173 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 2 ],
					"destination" : [ "obj-96", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ],
		"parameters" : 		{

		}

	}

}
