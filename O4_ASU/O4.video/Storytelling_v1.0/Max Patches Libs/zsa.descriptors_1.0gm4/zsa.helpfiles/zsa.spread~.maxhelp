{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 306.0, 64.0, 714.0, 701.0 ],
		"bgcolor" : [ 0.27451, 0.368627, 0.45098, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 306.0, 64.0, 714.0, 701.0 ],
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
					"maxclass" : "bpatcher",
					"varname" : "zsa_open",
					"patching_rect" : [ 476.0, 16.0, 196.0, 51.0 ],
					"id" : "obj-25",
					"args" : [  ],
					"numinlets" : 0,
					"name" : "zsa.open.maxpat",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 12.0,
					"patching_rect" : [ 352.0, 569.0, 65.0, 20.0 ],
					"id" : "obj-27",
					"numinlets" : 1,
					"minimum" : 0,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Hz",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 11.0,
					"patching_rect" : [ 158.0, 390.0, 24.0, 19.0 ],
					"id" : "obj-22",
					"numinlets" : 1,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[4]",
					"text" : "standard deviation",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 11.0,
					"patching_rect" : [ 350.0, 643.0, 105.0, 19.0 ],
					"id" : "obj-17",
					"numinlets" : 1,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"setminmax" : [ 0.0, 1331.0 ],
					"patching_rect" : [ 42.0, 618.0, 301.0, 69.0 ],
					"setstyle" : 3,
					"id" : "obj-13",
					"numinlets" : 1,
					"numoutlets" : 2,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "recall a preset",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 11.0,
					"patching_rect" : [ 229.0, 88.0, 207.0, 19.0 ],
					"id" : "obj-8",
					"numinlets" : 1,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "preset",
					"bordercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"patching_rect" : [ 139.0, 90.0, 85.0, 17.0 ],
					"margin" : 4,
					"id" : "obj-31",
					"numinlets" : 1,
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"stored1" : [ 0.27451, 0.368627, 0.45098, 1.0 ],
					"spacing" : 4,
					"numoutlets" : 4,
					"active1" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"emptycolor" : [ 0.27451, 0.368627, 0.45098, 1.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-81", "filtergraph~", "nfilters", 1, 9, "obj-81", "filtergraph~", "setoptions", 0, 3, 0, 0, 0, 8, "obj-81", "filtergraph~", "params", 0, 8717.441406, 1.0, 5.333333, 5, "obj-43", "umenu", "int", 1 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-81", "filtergraph~", "nfilters", 1, 9, "obj-81", "filtergraph~", "setoptions", 0, 3, 0, 0, 0, 8, "obj-81", "filtergraph~", "params", 0, 8717.441406, 1.0, 0.54902, 5, "obj-43", "umenu", "int", 1 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-81", "filtergraph~", "nfilters", 1, 9, "obj-81", "filtergraph~", "setoptions", 0, 3, 0, 0, 0, 8, "obj-81", "filtergraph~", "params", 0, 2490.697754, 1.0, 5.333333, 5, "obj-43", "umenu", "int", 1 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-81", "filtergraph~", "nfilters", 1, 9, "obj-81", "filtergraph~", "setoptions", 0, 3, 0, 0, 0, 8, "obj-81", "filtergraph~", "params", 0, 17581.394531, 1.0, 5.333333, 5, "obj-43", "umenu", "int", 1 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-81", "filtergraph~", "nfilters", 1, 9, "obj-81", "filtergraph~", "setoptions", 0, 3, 0, 0, 0, 8, "obj-81", "filtergraph~", "params", 0, 8790.697266, 1.0, 25.0, 5, "obj-43", "umenu", "int", 1 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[2]",
					"text" : "spectral baricenter",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 11.0,
					"patching_rect" : [ 354.0, 330.0, 113.0, 19.0 ],
					"id" : "obj-30",
					"numinlets" : 1,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 0.",
					"fontsize" : 12.0,
					"patching_rect" : [ 122.0, 470.0, 32.5, 20.0 ],
					"id" : "obj-24",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 0.",
					"fontsize" : 12.0,
					"patching_rect" : [ 229.0, 470.0, 32.5, 20.0 ],
					"id" : "obj-23",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Hz",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 11.0,
					"patching_rect" : [ 329.0, 330.0, 24.0, 19.0 ],
					"id" : "obj-18",
					"numinlets" : 1,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"mode" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 239.0, 330.0, 86.0, 20.0 ],
					"sig" : 0.0,
					"id" : "obj-2",
					"numinlets" : 2,
					"interval" : 20.0,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p smoothing",
					"fontsize" : 11.59518,
					"patching_rect" : [ 229.0, 417.0, 74.0, 20.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 166.0, 280.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 166.0, 280.0 ],
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
									"text" : "zl stream 5",
									"fontsize" : 11.595187,
									"patching_rect" : [ 55.0, 100.0, 67.0, 20.0 ],
									"id" : "obj-30",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl median",
									"fontsize" : 11.595187,
									"patching_rect" : [ 55.0, 133.0, 60.0, 20.0 ],
									"id" : "obj-32",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-37",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 55.0, 213.0, 25.0, 25.0 ],
									"id" : "obj-38",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zsa.easy_centroid~ 1024 8",
					"fontsize" : 12.0,
					"patching_rect" : [ 239.0, 302.0, 155.0, 20.0 ],
					"id" : "obj-21",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"bordercolor" : [ 0.85098, 0.533333, 0.254902, 0.0 ],
					"patching_rect" : [ 42.0, 498.0, 300.0, 103.0 ],
					"id" : "obj-15",
					"numinlets" : 2,
					"numoutlets" : 2,
					"size" : 22051.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "", "" ],
					"ignoreclick" : 1,
					"fgcolor" : [ 0.85098, 0.533333, 0.254902, 0.560784 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"bordercolor" : [ 0.85098, 0.533333, 0.254902, 0.0 ],
					"setminmax" : [ 0.0, 22050.0 ],
					"patching_rect" : [ 42.0, 500.0, 300.0, 100.0 ],
					"id" : "obj-35",
					"thickness" : 3,
					"numinlets" : 1,
					"orientation" : 0,
					"numoutlets" : 2,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"outlettype" : [ "", "" ],
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "spectroscope~",
					"bordercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"patching_rect" : [ 42.0, 500.0, 300.0, 100.0 ],
					"curvecolor" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"id" : "obj-1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 1,
					"fgcolor" : [ 0.27451, 0.368627, 0.45098, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"mode" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 53.0, 390.0, 102.0, 20.0 ],
					"sig" : 0.0,
					"id" : "obj-11",
					"numinlets" : 2,
					"interval" : 20.0,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sqrt~",
					"fontsize" : 12.0,
					"patching_rect" : [ 53.0, 364.0, 38.0, 20.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[1]",
					"text" : "standard deviation",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 11.0,
					"patching_rect" : [ 94.0, 365.0, 105.0, 19.0 ],
					"id" : "obj-6",
					"numinlets" : 1,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p smoothing",
					"fontsize" : 11.59518,
					"patching_rect" : [ 136.0, 418.0, 74.0, 20.0 ],
					"id" : "obj-39",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
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
									"text" : "zl stream 5",
									"fontsize" : 11.595187,
									"patching_rect" : [ 55.0, 100.0, 67.0, 20.0 ],
									"id" : "obj-30",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl median",
									"fontsize" : 11.595187,
									"patching_rect" : [ 55.0, 133.0, 60.0, 20.0 ],
									"id" : "obj-32",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-37",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 55.0, 213.0, 25.0, 25.0 ],
									"id" : "obj-38",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[3]",
					"text" : "spread",
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 11.0,
					"patching_rect" : [ 156.0, 327.0, 46.0, 19.0 ],
					"id" : "obj-9",
					"numinlets" : 1,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"mode" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 53.0, 327.0, 102.0, 20.0 ],
					"sig" : 0.0,
					"id" : "obj-5",
					"numinlets" : 2,
					"interval" : 20.0,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "zsa_seealso",
					"patching_rect" : [ 558.0, 632.0, 141.0, 51.0 ],
					"id" : "obj-14",
					"args" : [  ],
					"numinlets" : 0,
					"name" : "zsa.seealso.maxpat",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"fontsize" : 12.0,
					"patching_rect" : [ 483.0, 493.0, 32.5, 20.0 ],
					"id" : "obj-47",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 528.0, 134.0, 20.0, 20.0 ],
					"id" : "obj-44",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 505.0, 134.0, 20.0, 20.0 ],
					"id" : "obj-45",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "loop $1",
					"fontsize" : 12.0,
					"patching_rect" : [ 528.0, 159.0, 50.0, 18.0 ],
					"id" : "obj-48",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfplay~",
					"fontsize" : 12.0,
					"patching_rect" : [ 465.0, 185.0, 49.0, 20.0 ],
					"id" : "obj-49",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"fontname" : "Arial",
					"save" : [ "#N", "sfplay~", "", 1, 120960, 0, "", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"fontsize" : 12.0,
					"patching_rect" : [ 465.0, 134.0, 37.0, 18.0 ],
					"id" : "obj-50",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"types" : [  ],
					"fontsize" : 12.0,
					"patching_rect" : [ 53.0, 152.0, 79.0, 20.0 ],
					"id" : "obj-43",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Arial",
					"items" : [ "(Source)", ",", "noise", ",", "sound", "file" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "biquad~",
					"fontsize" : 12.0,
					"patching_rect" : [ 84.0, 227.0, 86.5, 20.0 ],
					"id" : "obj-36",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noise~",
					"fontsize" : 12.0,
					"patching_rect" : [ 84.0, 191.0, 46.0, 20.0 ],
					"id" : "obj-68",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "selector~ 2 1",
					"fontsize" : 12.0,
					"patching_rect" : [ 53.0, 256.769226, 80.0, 20.0 ],
					"id" : "obj-69",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "filtergraph~",
					"fontsize" : 10.0,
					"domain" : [ 0.0, 22050.0 ],
					"patching_rect" : [ 139.0, 115.0, 301.0, 103.0 ],
					"id" : "obj-81",
					"numinlets" : 8,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"logfreq" : 0,
					"markercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
					"hbwidthcolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"hcurvecolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"numoutlets" : 7,
					"autoout" : 1,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"bwidthcolor" : [ 0.462745, 0.47451, 0.65098, 1.0 ],
					"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
					"fontname" : "Arial",
					"fgcolor" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"nfilters" : 1,
					"setfilter" : [ 0, 3, 0, 0, 0, 8790.697266, 1.0, 25.0, 0.0001, 22050.0, 0.0001, 16.0, 0.5, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_dac_text",
					"text" : "start audio",
					"linecount" : 2,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 11.595187,
					"patching_rect" : [ 442.0, 556.0, 38.0, 33.0 ],
					"id" : "obj-12",
					"numinlets" : 1,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"varname" : "autohelp_dac",
					"patching_rect" : [ 483.0, 550.0, 45.0, 45.0 ],
					"id" : "obj-38",
					"numinlets" : 2,
					"local" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "startwinwdow_panel",
					"bordercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"border" : 2,
					"patching_rect" : [ 435.0, 545.0, 100.0, 55.0 ],
					"id" : "obj-19",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zsa.easy_spread~ 1024 8",
					"fontsize" : 12.0,
					"patching_rect" : [ 53.0, 299.0, 148.0, 20.0 ],
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_description",
					"text" : "Spectral spread is the second moment, i.e., the variance around the spectral baricenter.",
					"linecount" : 2,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"fontsize" : 12.754705,
					"patching_rect" : [ 7.0, 40.0, 453.0, 36.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_title",
					"text" : "zsa.spread~",
					"frgb" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338,
					"patching_rect" : [ 7.0, 9.0, 455.0, 30.0 ],
					"id" : "obj-7",
					"numinlets" : 1,
					"textcolor" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"mode" : 1,
					"grad1" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"patching_rect" : [ 7.0, 8.0, 457.0, 70.0 ],
					"id" : "obj-37",
					"numinlets" : 1,
					"grad2" : [ 0.27451, 0.368627, 0.45098, 1.0 ],
					"background" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"angle" : -88.349983
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 12.0,
					"patching_rect" : [ 496.5, 463.0, 50.0, 20.0 ],
					"id" : "obj-51",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "setmax $1",
					"fontsize" : 12.0,
					"patching_rect" : [ 352.0, 594.0, 64.0, 18.0 ],
					"id" : "obj-16",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 62.5, 324.0, 213.0, 324.0, 213.0, 357.0, 62.5, 357.0 ]
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
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [ 62.5, 275.0, 62.5, 286.0, 492.5, 286.0 ]
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
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 492.5, 531.0, 492.5, 531.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-38", 1 ],
					"hidden" : 0,
					"midpoints" : [ 492.5, 534.0, 518.5, 534.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-69", 2 ],
					"hidden" : 0,
					"midpoints" : [ 474.5, 252.0, 125.0, 252.0, 125.0, 252.0, 123.5, 252.0 ]
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
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-69", 1 ],
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
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 514.5, 165.0, 474.5, 165.0 ]
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
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 537.5, 181.0, 474.5, 181.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 315.5, 354.0, 238.5, 354.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 62.5, 286.0, 248.5, 286.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 238.5, 445.0, 51.5, 445.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 62.5, 286.0, 29.0, 286.0, 29.0, 450.0, 51.5, 450.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [ 238.5, 492.0, 332.5, 492.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 131.5, 492.0, 51.5, 492.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 145.5, 456.0, 27.0, 456.0, 27.0, 613.0, 51.5, 613.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 361.5, 614.5, 51.5, 614.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
