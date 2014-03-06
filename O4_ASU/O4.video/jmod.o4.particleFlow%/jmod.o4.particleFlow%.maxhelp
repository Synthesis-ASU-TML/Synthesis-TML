{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 6,
			"architecture" : "x86"
		}
,
		"rect" : [ 0.0, 46.0, 1279.0, 706.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"showrootpatcherontab" : 0,
		"showontab" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 6,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 26.0, 1279.0, 680.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 13.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-10",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 250.0, 220.0, 268.0, 108.0 ],
									"text" : "Some draw modes such as line_loop will attempt to connect all of the vertices in the mesh together. When the initialization position is set to [grid] this is relatively simple, since each vertex is connected to an adjacent vertex. When it is set to [noise], however, "
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-8",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 210.0, 150.0, 79.0 ],
									"text" : "noise and draw_modes - crashing/freezing because too many calculations trying to connect all the vertices"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-6",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 305.0, 156.0, 50.0 ],
									"text" : "multiples of 20 to avoid lines across the screen - wrapping connections"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-4",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 160.0, 251.0, 36.0 ],
									"text" : "polygons and vertices - black screen or overlap"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-2",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 95.0, 276.0, 50.0 ],
									"text" : "Try setting draw_mode to points or lines, setting the dimensions to a low value, and then turning up the size parameter."
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@name", "jmod.o4.fluids%", "@description", "Four-species particle system" ],
									"bgmode" : 1,
									"id" : "obj-21",
									"maxclass" : "bpatcher",
									"name" : "jcom.maxhelpui.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 0.0, 1280.0, 70.0 ]
								}

							}
 ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 270.0, 180.0, 39.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 13.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 13.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p tips",
					"varname" : "basic_tab[9]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 6,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 26.0, 1279.0, 680.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 13.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-14",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 735.0, 210.0, 75.0, 36.0 ],
									"text" : "particle id number"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1110.0, 585.0, 30.0, 21.0 ],
									"presentation_rect" : [ 1079.0, 578.0, 0.0, 0.0 ],
									"text" : "age"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1110.0, 405.0, 75.0, 21.0 ],
									"presentation_rect" : [ 1077.0, 407.0, 0.0, 0.0 ],
									"text" : "y position"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 885.0, 405.0, 75.0, 21.0 ],
									"text" : "x position"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1110.0, 90.0, 64.0, 21.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 420.0, 555.0, 162.0, 21.0 ],
									"text" : "jcom.oscroute /destination"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 420.0, 585.0, 114.0, 21.0 ],
									"text" : "s particles_osc_in"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-57",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1050.0, 585.0, 50.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-56",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1050.0, 405.0, 50.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-55",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 825.0, 405.0, 50.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-48",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 735.0, 255.0, 50.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1050.0, 480.0, 42.0, 21.0 ],
									"text" : "zl nth"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1050.0, 300.0, 42.0, 21.0 ],
									"text" : "zl nth"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 825.0, 300.0, 42.0, 21.0 ],
									"text" : "zl nth"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.780392, 0.941176, 0.741176, 1.0 ],
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"id" : "obj-32",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1050.0, 510.0, 157.0, 65.0 ],
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"setminmax" : [ 0.0, 200.0 ],
									"setstyle" : 5,
									"slidercolor" : [ 0.690196, 0.023529, 0.101961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.780392, 0.941176, 0.741176, 1.0 ],
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"id" : "obj-31",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1050.0, 330.0, 157.0, 65.0 ],
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"setminmax" : [ -100.0, 100.0 ],
									"setstyle" : 5,
									"signed" : 1,
									"slidercolor" : [ 0.690196, 0.023529, 0.101961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.780392, 0.941176, 0.741176, 1.0 ],
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"id" : "obj-23",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 825.0, 330.0, 157.0, 65.0 ],
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"setminmax" : [ -100.0, 100.0 ],
									"setstyle" : 5,
									"signed" : 1,
									"slidercolor" : [ 0.690196, 0.023529, 0.101961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1050.0, 435.0, 105.0, 21.0 ],
									"text" : "jit.spill @plane 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1050.0, 255.0, 105.0, 21.0 ],
									"text" : "jit.spill @plane 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 825.0, 255.0, 105.0, 21.0 ],
									"text" : "jit.spill @plane 0"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.0, 0.188903, 0.839216, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 870.0, 75.0, 112.0, 21.0 ],
									"text" : "r species_1_stats"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 825.0, 90.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 825.0, 120.0, 47.0, 21.0 ],
									"text" : "gate 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1110.0, 120.0, 57.0, 19.0 ],
									"text" : "plane -1"
								}

							}
, 							{
								"box" : 								{
									"cols" : 36862,
									"colwidth" : 200,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-1",
									"maxclass" : "jit.cellblock",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "list", "", "", "" ],
									"patching_rect" : [ 855.0, 165.0, 375.0, 50.0 ],
									"rows" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 420.0, 120.0, 60.0, 21.0 ],
									"text" : "r gui_init"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "particleFlow%_control1" ],
									"id" : "obj-6",
									"maxclass" : "bpatcher",
									"name" : "jmod.o4.particleFlow%.maxpat",
									"numinlets" : 3,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 420.0, 150.0, 300.0, 385.0 ],
									"presentation_rect" : [ 90.0, 90.0, 300.0, 385.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-62",
									"linecount" : 9,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 135.0, 360.0, 225.0, 116.0 ],
									"text" : "Each species has an individual outlet. The output is a one dimensional, 3 plane float32 matrix. Each cell in the matrix represents an individual particle. The 3 values given for each cell/particle are x position, y position and age. The x positions run from 0. (left) to 256. (right) and the y positions from 0. (top) to 144. (bottom)."
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@name", "jmod.o4.fluids%", "@description", "Four-species particle system" ],
									"bgmode" : 1,
									"id" : "obj-21",
									"maxclass" : "bpatcher",
									"name" : "jcom.maxhelpui.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 0.0, 1280.0, 70.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 879.5, 107.5, 862.5, 107.5 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1059.5, 579.5, 1059.5, 579.5 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 744.5, 287.5, 857.5, 287.5 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 744.5, 287.5, 1082.5, 287.5 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 744.5, 467.5, 1082.5, 467.5 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1119.5, 151.5, 864.5, 151.5 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-58", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 485.700012, 544.0, 728.099976, 544.0, 728.099976, 78.0, 862.5, 78.0 ],
									"source" : [ "obj-6", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 834.5, 162.0, 864.5, 162.0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 834.5, 141.0, 834.5, 141.0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 834.5, 240.0, 1059.5, 240.0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 834.5, 240.0, 1035.0, 240.0, 1035.0, 432.0, 1059.5, 432.0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 255.0, 150.0, 86.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 13.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 13.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p stats_output",
					"varname" : "basic_tab[8]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 6,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 26.0, 1279.0, 680.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 13.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 360.0, 570.0, 162.0, 21.0 ],
									"text" : "jcom.oscroute /destination"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 360.0, 600.0, 114.0, 21.0 ],
									"text" : "s particles_osc_in"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 360.0, 135.0, 60.0, 21.0 ],
									"text" : "r gui_init"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "particleFlow%_control1" ],
									"id" : "obj-6",
									"maxclass" : "bpatcher",
									"name" : "jmod.o4.particleFlow%.maxpat",
									"numinlets" : 3,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 360.0, 165.0, 300.0, 385.0 ],
									"presentation_rect" : [ 90.0, 90.0, 300.0, 385.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@name", "jmod.o4.fluids%", "@description", "Four-species particle system" ],
									"bgmode" : 1,
									"id" : "obj-21",
									"maxclass" : "bpatcher",
									"name" : "jcom.maxhelpui.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 0.0, 1280.0, 70.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 240.0, 120.0, 91.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 13.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 13.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p visual_output",
					"varname" : "basic_tab[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 6,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 26.0, 1279.0, 680.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 13.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 15.0, 570.0, 162.0, 21.0 ],
									"text" : "jcom.oscroute /destination"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 600.0, 114.0, 21.0 ],
									"text" : "s particles_osc_in"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 720.0, 360.0, 39.0, 19.0 ],
									"text" : "reset"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 720.0, 390.0, 194.0, 21.0 ],
									"text" : "jit.gl.handle test @auto_rotate 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 690.0, 195.0, 141.0, 21.0 ],
									"text" : "r particles_renderbang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-7",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 690.0, 420.0, 225.0, 31.0 ],
									"text" : "jit.gl.videoplane test @transform_reset 2 @blend_enable 1 @blend_mode 4 8"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 690.0, 240.0, 235.0, 21.0 ],
									"text" : "jit.gl.texture test @name particles_out1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-18",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 450.0, 120.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 195.0, 90.0, 75.0, 21.0 ],
									"text" : "layer 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 345.0, 240.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 90.0, 210.0, 75.0, 21.0 ],
									"text" : "line width"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 345.0, 540.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 90.0, 510.0, 90.0, 21.0 ],
									"text" : "texture out"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-19",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 345.0, 510.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 90.0, 480.0, 93.0, 21.0 ],
									"text" : "texture warp"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-20",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 345.0, 480.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 90.0, 450.0, 90.0, 21.0 ],
									"text" : "texture"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 345.0, 450.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 90.0, 420.0, 90.0, 21.0 ],
									"text" : "dimensions"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 345.0, 420.0, 105.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 90.0, 390.0, 105.0, 21.0 ],
									"text" : "initial positions"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "layer0" ],
									"clickthrough" : 1,
									"id" : "obj-1",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jmod.o4.particleFlow%.ui.panel.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 450.0, 150.0, 135.0, 420.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 195.0, 120.0, 135.0, 420.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-101",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 345.0, 150.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 90.0, 120.0, 75.0, 21.0 ],
									"text" : "enable"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-99",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 345.0, 180.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 90.0, 150.0, 90.0, 21.0 ],
									"text" : "draw mode"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-96",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 345.0, 210.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 90.0, 180.0, 75.0, 21.0 ],
									"text" : "point size"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-94",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 345.0, 270.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 90.0, 240.0, 75.0, 21.0 ],
									"text" : "color"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-92",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 345.0, 390.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 90.0, 360.0, 75.0, 21.0 ],
									"text" : "position"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-90",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 345.0, 360.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 90.0, 330.0, 75.0, 21.0 ],
									"text" : "scale"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 135.0, 60.0, 21.0 ],
									"text" : "r gui_init"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "particleFlow%_control1" ],
									"id" : "obj-6",
									"maxclass" : "bpatcher",
									"name" : "jmod.o4.particleFlow%.maxpat",
									"numinlets" : 3,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 15.0, 165.0, 300.0, 385.0 ],
									"presentation_rect" : [ 90.0, 90.0, 300.0, 385.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@name", "jmod.o4.fluids%", "@description", "Four-species particle system" ],
									"bgmode" : 1,
									"id" : "obj-21",
									"maxclass" : "bpatcher",
									"name" : "jcom.maxhelpui.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 0.0, 1280.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"id" : "obj-24",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 450.0, 120.0, 135.0, 450.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 195.0, 90.0, 135.0, 450.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 729.5, 384.0, 729.5, 384.0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 225.0, 90.0, 195.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 13.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 13.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p capturing_particles_to_a_texture",
					"varname" : "basic_tab[7]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 6,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 26.0, 1279.0, 680.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 13.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 360.0, 555.0, 162.0, 21.0 ],
									"text" : "jcom.oscroute /destination"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 360.0, 585.0, 114.0, 21.0 ],
									"text" : "s particles_osc_in"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-18",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 840.0, 120.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 180.0, 75.0, 75.0, 21.0 ],
									"text" : "layer 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 735.0, 240.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 75.0, 195.0, 75.0, 21.0 ],
									"text" : "line width"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 735.0, 540.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 75.0, 495.0, 90.0, 21.0 ],
									"text" : "texture out"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-19",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 735.0, 510.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 75.0, 465.0, 93.0, 21.0 ],
									"text" : "texture warp"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-20",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 735.0, 480.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 75.0, 435.0, 90.0, 21.0 ],
									"text" : "texture"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 735.0, 450.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 75.0, 405.0, 90.0, 21.0 ],
									"text" : "dimensions"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 735.0, 420.0, 105.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 75.0, 375.0, 105.0, 21.0 ],
									"text" : "initial positions"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "layer0" ],
									"clickthrough" : 1,
									"id" : "obj-1",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jmod.o4.particleFlow%.ui.panel.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 840.0, 150.0, 135.0, 420.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 180.0, 105.0, 135.0, 420.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-101",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 735.0, 150.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 75.0, 105.0, 75.0, 21.0 ],
									"text" : "enable"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-99",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 735.0, 180.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 75.0, 135.0, 90.0, 21.0 ],
									"text" : "draw mode"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-96",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 735.0, 210.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 75.0, 165.0, 75.0, 21.0 ],
									"text" : "point size"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-94",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 735.0, 270.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 75.0, 225.0, 75.0, 21.0 ],
									"text" : "color"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-92",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 735.0, 390.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 75.0, 345.0, 75.0, 21.0 ],
									"text" : "position"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-90",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 735.0, 360.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 75.0, 315.0, 75.0, 21.0 ],
									"text" : "scale"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 60.0, 210.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 240.0, 57.0, 21.0 ],
									"text" : "gate 1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "jit.pwindow",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 60.0, 270.0, 80.0, 60.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 15.0, 345.0, 201.0, 21.0 ],
									"text" : "jit.gl.texture test @name texture1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 165.0, 120.0, 96.0, 19.0 ],
									"text" : "read bball.mov"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 105.0, 120.0, 37.0, 19.0 ],
									"text" : "read"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 15.0, 120.0, 69.0, 21.0 ],
									"text" : "qmetro 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 15.0, 90.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 15.0, 165.0, 73.0, 21.0 ],
									"text" : "jit.qt.movie"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 360.0, 120.0, 60.0, 21.0 ],
									"text" : "r gui_init"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "particleFlow%_control1" ],
									"id" : "obj-6",
									"maxclass" : "bpatcher",
									"name" : "jmod.o4.particleFlow%.maxpat",
									"numinlets" : 3,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 360.0, 150.0, 300.0, 385.0 ],
									"presentation_rect" : [ 90.0, 90.0, 300.0, 385.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@name", "jmod.o4.fluids%", "@description", "Four-species particle system" ],
									"bgmode" : 1,
									"id" : "obj-21",
									"maxclass" : "bpatcher",
									"name" : "jcom.maxhelpui.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 0.0, 1280.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"id" : "obj-24",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 840.0, 120.0, 135.0, 450.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 180.0, 75.0, 135.0, 450.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 114.5, 151.5, 24.5, 151.5 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 174.5, 151.5, 24.5, 151.5 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 24.5, 197.5, 107.5, 197.5 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-25", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 90.0, 240.0, 118.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 13.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 13.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p texturing_particles",
					"varname" : "basic_tab[6]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 6,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 26.0, 1279.0, 680.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 13.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 20.0,
									"frgb" : 0.0,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 75.0, 187.0, 29.0 ],
									"text" : "Position modulation"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 15.0, 585.0, 162.0, 21.0 ],
									"text" : "jcom.oscroute /destination"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 615.0, 114.0, 21.0 ],
									"text" : "s particles_osc_in"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-40",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 510.0, 525.0, 184.0, 40.0 ],
									"text" : "Set the number of vertices in the mesh (x/y values)."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-38",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 960.0, 375.0, 364.0, 127.0 ],
									"text" : "Choose the initialization positions for the particles. These are the positions the vertices start at when the mesh is reset or the dimensions are changed. They're also the positions towards which the particles are pushed back by the attraction and attractionVel forces.\n\n\"grid\" sets the particles in a grid. \"noise\" sets the particles in random positions."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-37",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 525.0, 360.0, 165.0, 40.0 ],
									"text" : "Set the color and opacity of the mesh."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-36",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 510.0, 405.0, 180.0, 40.0 ],
									"text" : "Scale the mesh in 3d space (xyz coordinates)."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-35",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 525.0, 450.0, 180.0, 40.0 ],
									"text" : "Position the mesh in 3d space (xyz coordinates)."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-33",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 510.0, 315.0, 180.0, 40.0 ],
									"text" : "Set the size of the lines in the \"lines\" draw mode."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-32",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 495.0, 270.0, 195.0, 40.0 ],
									"text" : "Set the size of dots in the \"points\" draw mode."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-31",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 480.0, 225.0, 210.0, 40.0 ],
									"text" : "Select the basic shape used to draw the vertices of the mesh."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-29",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 555.0, 75.0, 390.0, 94.0 ],
									"text" : "The visualization parameters of each species can be set independently. Here, we're looking at only one species.\n\nThe majority of the controls found in the panel are simply exposed GUI versions of drawing parameters for the [jit.gl.mesh] object, since [jit.gl.mesh] is used to draw the particles."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.93,
									"bubbleside" : 2,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-27",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 150.0, 135.0, 165.0, 55.0 ],
									"text" : "The visualization controls are in the (+) panel."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-16",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 810.0, 195.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 150.0, 45.0, 75.0, 21.0 ],
									"text" : "layer 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 705.0, 315.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 45.0, 165.0, 75.0, 21.0 ],
									"text" : "line width"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 705.0, 615.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 45.0, 465.0, 90.0, 21.0 ],
									"text" : "texture out"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 705.0, 585.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 45.0, 435.0, 93.0, 21.0 ],
									"text" : "texture warp"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 705.0, 555.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 45.0, 405.0, 90.0, 21.0 ],
									"text" : "texture"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 705.0, 525.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 45.0, 375.0, 90.0, 21.0 ],
									"text" : "dimensions"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 705.0, 495.0, 105.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 45.0, 345.0, 105.0, 21.0 ],
									"text" : "initial positions"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "layer0" ],
									"clickthrough" : 1,
									"id" : "obj-1",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jmod.o4.particleFlow%.ui.panel.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 810.0, 225.0, 135.0, 420.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 150.0, 75.0, 135.0, 420.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-101",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 705.0, 225.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 45.0, 75.0, 75.0, 21.0 ],
									"text" : "enable"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-99",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 705.0, 255.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 45.0, 105.0, 90.0, 21.0 ],
									"text" : "draw mode"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-96",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 705.0, 285.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 45.0, 135.0, 75.0, 21.0 ],
									"text" : "point size"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-94",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 705.0, 360.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 45.0, 195.0, 75.0, 21.0 ],
									"text" : "color"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-92",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 705.0, 465.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 45.0, 315.0, 75.0, 21.0 ],
									"text" : "position"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-90",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 705.0, 435.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 45.0, 285.0, 75.0, 21.0 ],
									"text" : "scale"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 165.0, 60.0, 21.0 ],
									"text" : "r gui_init"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "particleFlow%_control1" ],
									"id" : "obj-6",
									"maxclass" : "bpatcher",
									"name" : "jmod.o4.particleFlow%.maxpat",
									"numinlets" : 3,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 15.0, 195.0, 300.0, 385.0 ],
									"presentation_rect" : [ 90.0, 90.0, 300.0, 385.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@name", "jmod.o4.fluids%", "@description", "Four-species particle system" ],
									"bgmode" : 1,
									"id" : "obj-21",
									"maxclass" : "bpatcher",
									"name" : "jcom.maxhelpui.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 0.0, 1280.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"id" : "obj-11",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 810.0, 195.0, 135.0, 450.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 150.0, 45.0, 135.0, 450.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-41", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 75.0, 210.0, 86.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 13.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 13.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p visualization",
					"varname" : "basic_tab[5]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 6,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 26.0, 1279.0, 680.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 13.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 20.0,
									"frgb" : 0.0,
									"id" : "obj-16",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 75.0, 187.0, 29.0 ],
									"text" : "Position matrix"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-14",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 765.0, 135.0, 195.0, 35.0 ],
									"presentation_rect" : [ 762.0, 120.0, 0.0, 0.0 ],
									"text" : "Open the [gate] to view the position matrix in the [pwindow]."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.97,
									"bubbleside" : 2,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-4",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 455.0, 125.0, 225.0, 50.0 ],
									"presentation_rect" : [ 405.0, 171.0, 0.0, 0.0 ],
									"text" : "The position matrix is attached to the third inlet of the [o4.particleFlow] module."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 390.0, 585.0, 162.0, 21.0 ],
									"text" : "jcom.oscroute /destination"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 390.0, 615.0, 114.0, 21.0 ],
									"text" : "s particles_osc_in"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 705.0, 135.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 705.0, 165.0, 57.0, 21.0 ],
									"text" : "gate 1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "jit.pwindow",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 705.0, 195.0, 120.0, 90.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.839216, 0.000832, 0.559571, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 675.0, 90.0, 106.0, 21.0 ],
									"text" : "r position_matrix"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-5",
									"linecount" : 11,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 120.0, 328.0, 140.0 ],
									"text" : "The position matrix is a 2-plane float32 video stream that provides the basic movement in the particle system, displaying the particles from their initial positions..\n\nIn order to run correctly, the particle system must receive a position matrix input containing information representing the location, direction and velocity of movement. The velocity field output of the [o4.fluids] module contains all this data and is a good source for the position matrix. Experimenting with other 2-plane float32 matrices may, however, yield interesting results."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 150.0, 60.0, 21.0 ],
									"text" : "r gui_init"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "particleFlow%_control1" ],
									"id" : "obj-6",
									"maxclass" : "bpatcher",
									"name" : "jmod.o4.particleFlow%.maxpat",
									"numinlets" : 3,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 390.0, 180.0, 300.0, 385.0 ],
									"presentation_rect" : [ 75.0, 75.0, 300.0, 385.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@name", "jmod.o4.fluids%", "@description", "Four-species particle system" ],
									"bgmode" : 1,
									"id" : "obj-21",
									"maxclass" : "bpatcher",
									"name" : "jcom.maxhelpui.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 0.0, 1280.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.03,
									"bubbleside" : 3,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-34",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.0, 345.0, 330.0, 71.0 ],
									"text" : "The position matrix (modified by the {gain} and {slide} settings) provides the basic movement source for all four species of particles. The way that each species responds to this control input, however, can be specified independently using the physics parameters (see physics_controls tab)."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-12",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 695.0, 300.0, 300.0, 35.0 ],
									"text" : "{slide up} and {slide down} can be used to perform temporal interpolation on the position matrix stream."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-1",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 160.0, 300.0, 225.0, 35.0 ],
									"text" : "The values in the position matrix can be amplified or attenuated with {gain}."
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 684.5, 167.5, 680.5, 167.5 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 684.5, 122.5, 752.5, 122.5 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 30.0, 120.0, 101.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 13.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 13.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p position_matrix",
					"varname" : "basic_tab[4]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 6,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 26.0, 1279.0, 680.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 13.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.08,
									"bubbleside" : 3,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-8",
									"linecount" : 12,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 495.0, 345.0, 156.0 ],
									"presentation_rect" : [ 178.0, 497.0, 0.0, 0.0 ],
									"text" : "{op} - the position modulation effect is acheived by combining the position modulation matrix with the basic position matrix using [jit.op]. The {op} parameter selects the operation used to combine the two streams of matrices.\n\n/ is the default and gives the \"silhouette\" effect, but other operations give different results. Modulus (%), for example, creates an effect that looks like the image is being repeatedly sucked away into various drains.\n\nNot all of the available operations have been tested, and not all will work, but experimentation may yield interesting results."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.91,
									"bubbleside" : 3,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-7",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 435.0, 345.0, 47.0 ],
									"presentation_rect" : [ 185.0, 453.0, 0.0, 0.0 ],
									"text" : "{amount}: controls the degree to which the position modulation matrix is blended into the standard position matrix, and thus the intensity of the position modulation effect."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 20.0,
									"frgb" : 0.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 75.0, 187.0, 29.0 ],
									"text" : "Position modulation"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 390.0, 585.0, 162.0, 21.0 ],
									"text" : "jcom.oscroute /destination"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 390.0, 615.0, 114.0, 21.0 ],
									"text" : "s particles_osc_in"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 150.0, 60.0, 21.0 ],
									"text" : "r gui_init"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "particleFlow%_control2" ],
									"id" : "obj-6",
									"maxclass" : "bpatcher",
									"name" : "jmod.o4.particleFlow%.maxpat",
									"numinlets" : 3,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 390.0, 180.0, 300.0, 385.0 ],
									"presentation_rect" : [ 90.0, 90.0, 300.0, 385.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@name", "jmod.o4.fluids%", "@description", "Four-species particle system" ],
									"bgmode" : 1,
									"id" : "obj-21",
									"maxclass" : "bpatcher",
									"name" : "jcom.maxhelpui.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 0.0, 1280.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-67",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 120.0, 345.0, 92.0 ],
									"text" : "The {position modulation matrix} input accepts standard video matrices (4 plane 2-dimensional char). Depending on the settings in the position modulation section, the particles can be set to \"stick\" to light or dark parts of the image. This can be useful for working with figures - the particles can be made to cling to a person's body, forming a silhouette, or to surround and avoid them."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.09,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-66",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 695.0, 495.0, 346.0, 71.0 ],
									"text" : "{invert}: inverts the colors of the modulation input. If using the camera as a modulation input, values closer to 0. will cause the particles to cluster into brighter areas of the image and avoid darker areas. Values closer to 1. will cause particles to cluster in dark areas and avoid bright ones."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.85,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-28",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 695.0, 450.0, 315.0, 35.0 ],
									"text" : "{threshold}: uses [jit.op @op >] to do simple noise filtering on the modulation input."
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 399.5, 574.5, 399.5, 574.5 ],
									"source" : [ "obj-6", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 45.0, 150.0, 127.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 13.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 13.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p position_modulation",
					"varname" : "basic_tab[3]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 6,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 26.0, 1279.0, 680.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 13.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 20.0,
									"frgb" : 0.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 75.0, 187.0, 29.0 ],
									"text" : "Position modulation"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-67",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 120.0, 270.0, 104.0 ],
									"text" : "The {position modulation matrix} input accepts standard video matrices (4 plane 2-dimensional char). Depending on the settings in the position modulation section, the particles can be set to \"stick\" to light or dark parts of the image. This can be useful for working with figures - the particles can be made to cling to a person's body, forming a silhouette, or to surround and avoid them."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 345.0, 600.0, 162.0, 21.0 ],
									"text" : "jcom.oscroute /destination"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 345.0, 630.0, 114.0, 21.0 ],
									"text" : "s particles_osc_in"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 345.0, 165.0, 60.0, 21.0 ],
									"text" : "r gui_init"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "particleFlow%_control3" ],
									"id" : "obj-6",
									"maxclass" : "bpatcher",
									"name" : "jmod.o4.particleFlow%.maxpat",
									"numinlets" : 3,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 345.0, 195.0, 300.0, 385.0 ],
									"presentation_rect" : [ 90.0, 90.0, 300.0, 385.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@name", "jmod.o4.fluids%", "@description", "Four-species particle system" ],
									"bgmode" : 1,
									"id" : "obj-21",
									"maxclass" : "bpatcher",
									"name" : "jcom.maxhelpui.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 0.0, 1280.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-53",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 660.0, 135.0, 150.0, 19.0 ],
									"text" : "reread:"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-51",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 660.0, 240.0, 315.0, 67.0 ],
									"text" : "minDamping/maxDamping: sets the damping factor applied to the particles, which determines how they retain energy. The higher the damping factor, the more quickly a particle will lose energy/decelerate. Values within the range set by these parameters are distributed across the particles."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-50",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 660.0, 165.0, 324.0, 67.0 ],
									"text" : "minMass/maxMass: sets the mass of the particles, which determines how they respond to stimulation from the incoming position matrix. The more mass a particle has, the more energy it takes to accelerate it. Values within the range set by these parameters are distributed across the particles."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-48",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 660.0, 75.0, 419.0, 55.0 ],
									"text" : "respawn: when the particles either die or are blown out of the visible region, they are reset to their initial positions. The respawn value determines how many particles are reset at each step. Higher values mean that the particle field will regenerate more quickly."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.04,
									"bubbleside" : 3,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-30",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 435.0, 180.0, 71.0 ],
									"text" : "{speed}: sets the speed of particle movement. Values above 1. tend to make the particles accelerate away to infinity. "
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-26",
									"linecount" : 11,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 645.0, 345.0, 304.0, 144.0 ],
									"text" : "{attraction}: at each frame, the system checks the distance and direction  from every particle to its initialization position. It then \"teleports\" each particle back towards its initial position.\n\nThe telportation range is scaled by the attraction value: e.g., if attraction is set to 0.1, a particle will be teleported 10% of the distance to its initial position.\n\nThe teleportation overrides the forces in the simulation."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.86,
									"bubbleside" : 3,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-11",
									"linecount" : 13,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 255.0, 323.0, 168.0 ],
									"text" : "{attractionVel}: at each frame, the system checks the distance and direction from every particle to its initialization position. It then applies a force pushing each particle back towards its initial position.\n\nThis force is scaled by the attracionVel value: e.g., if attractionVel is set to 0.1, a particle will be pushed with 10% of the force that would be needed to return it to its initial position.\n\nThis force is calculated together with the other forces in the simulation (e.g., displacements from the position matrix stream)."
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 60.0, 180.0, 109.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 13.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 13.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p physics_controls",
					"varname" : "basic_tab[2]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 270.0, 215.0, 20.0 ],
					"saved_object_attributes" : 					{
						"filename" : "helpstarter.js",
						"parameter_enable" : 0
					}
,
					"text" : "js helpstarter.js jmod.o4.particleFlow%"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 6,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 72.0, 1279.0, 680.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 13.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"color" : [ 0.0, 0.188903, 0.839216, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 570.0, 555.0, 114.0, 21.0 ],
									"text" : "s species_1_stats"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 50.0,
									"frgb" : 0.0,
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 345.0, 0.0, 541.0, 62.0 ],
									"text" : "IN PROGRESS"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 195.0, 195.0, 63.0, 21.0 ],
									"text" : "s cam_in"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.182613, 0.693763, 0.0, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 720.0, 555.0, 109.0, 21.0 ],
									"text" : "s collision_matrix"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.839216, 0.000832, 0.559571, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 315.0, 525.0, 108.0, 21.0 ],
									"text" : "s position_matrix"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 6,
											"architecture" : "x86"
										}
,
										"rect" : [ 478.0, 112.0, 260.0, 137.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 15.0, 105.0, 62.0, 21.0 ],
													"text" : "s gui_init"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 15.0, 15.0, 212.0, 19.0 ],
													"text" : "jcom.initialized /particleFlow%_control1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-10",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 15.0, 60.0, 101.0, 19.0 ],
													"text" : "/video/bypass 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-7",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 135.0, 60.0, 115.0, 19.0 ],
													"text" : "/destination null"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 24.5, 46.5, 144.5, 46.5 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 144.5, 91.5, 24.5, 91.5 ],
													"source" : [ "obj-7", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 870.0, 300.0, 38.0, 21.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Arial",
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p init"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 885.0, 345.0, 180.0, 21.0 ],
									"text" : "rendering and output window"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-23",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 870.0, 165.0, 270.0, 114.0 ],
									"text" : "The particle system comprises four distinct species of particles. All of the species are driven by the same input (usually the output of the fluid simulation). Each species can be given distinct physical parameters that determine how it responds to this input. Each species can also be visualized distinctly via attributes such as color, drawing primitive and scale."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-20",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 540.0, 645.0, 233.0, 54.0 ],
									"text" : "The output of the fluid simulation is used to texture a videoplane, which is drawn to the 3d render context."
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.0, 0.770131, 0.839216, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 525.0, 105.0, 112.0, 21.0 ],
									"text" : "r particles_osc_in"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-97",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 870.0, 90.0, 270.0, 74.0 ],
									"text" : "[tml.jit.particleFlow] object: Michael Fortin\nMXR framework implementation: J-S Rousseau\nJamoma implementation: Evan Montpellier\n\nTopological Media Lab, 20xx-2014"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 330.0, 570.0, 97.0, 21.0 ],
									"text" : "r fluids_opacity"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 450.0, 570.0, 95.0, 21.0 ],
									"text" : "r enable_fluids"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 945.0, 465.0, 143.0, 21.0 ],
									"text" : "s particles_renderbang"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 1.0,
									"bubbleside" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-64",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 510.0, 141.0, 98.0 ],
									"text" : "The input of the particle system comes from the Navier-Stokes fluid simulation. For info on this module, please see its help file."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-58",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 450.0, 630.0, 60.0, 17.0 ],
									"text" : "enable $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 450.0, 600.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-39",
									"maxclass" : "flonum",
									"maximum" : 1.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 330.0, 600.0, 50.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-37",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 330.0, 630.0, 101.0, 17.0 ],
									"text" : "color $1 $1 $1 $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 165.0, 165.0, 127.0, 19.0 ],
									"text" : "jit.dimmap @invert 1 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-22",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 300.0, 660.0, 225.0, 31.0 ],
									"text" : "jit.gl.videoplane test @transform_reset 2 @blend_enable 1 @blend_mode 4 8"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 885.0, 405.0, 116.0, 19.0 ],
									"text" : "qmetro 16 @active 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "erase" ],
									"patching_rect" : [ 885.0, 435.0, 240.0, 19.0 ],
									"text" : "t b b erase"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 885.0, 510.0, 203.0, 19.0 ],
									"text" : "jit.gl.render test @erase_color 0 0 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 885.0, 375.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "particleFlow%" ],
									"id" : "obj-6",
									"maxclass" : "bpatcher",
									"name" : "jmod.o4.particleFlow%.maxpat",
									"numinlets" : 3,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 525.0, 135.0, 300.0, 385.0 ],
									"presentation_rect" : [ 15.0, 15.0, 300.0, 385.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 960.0, 600.0, 87.0, 19.0 ],
									"text" : "fullscreen $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 960.0, 570.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 6,
											"architecture" : "x86"
										}
,
										"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-8",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 284.0, 224.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 284.0, 137.0, 43.0, 20.0 ],
													"text" : "sel 27"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 4,
													"outlettype" : [ "int", "int", "int", "int" ],
													"patching_rect" : [ 284.0, 110.0, 59.5, 20.0 ],
													"text" : "key"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 960.0, 540.0, 42.0, 21.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Arial",
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p esc"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 885.0, 600.0, 64.0, 17.0 ],
									"text" : "floating $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 885.0, 570.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 885.0, 645.0, 222.0, 19.0 ],
									"text" : "jit.window test @floating 1 @fsmenubar 0"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "myModule" ],
									"id" : "obj-10",
									"maxclass" : "bpatcher",
									"name" : "jmod.input%.maxpat",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 165.0, 75.0, 300.0, 70.0 ],
									"presentation_rect" : [ 15.0, 15.0, 300.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@name", "jmod.o4.fluids%", "@description", "Four-species particle system" ],
									"bgmode" : 1,
									"id" : "obj-21",
									"maxclass" : "bpatcher",
									"name" : "jcom.maxhelpui.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 0.0, 1280.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "o4.fluids" ],
									"id" : "obj-8",
									"maxclass" : "bpatcher",
									"name" : "jmod.o4.fluids%.maxpat",
									"numinlets" : 4,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 165.0, 255.0, 300.0, 245.0 ],
									"presentation_rect" : [ 15.0, 15.0, 300.0, 245.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 870.0, 330.0, 270.0, 345.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 455.5, 154.5, 174.5, 154.5 ],
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 894.5, 630.5, 894.5, 630.5 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 969.5, 631.5, 894.5, 631.5 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 174.5, 189.0, 204.5, 189.0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 174.5, 225.0, 480.0, 225.0, 480.0, 74.0, 675.0, 74.0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 3 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 174.5, 244.5, 455.5, 244.5 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 174.5, 244.5, 361.833344, 244.5 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 815.5, 537.0, 729.5, 537.0 ],
									"source" : [ "obj-6", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 590.700012, 537.0, 579.5, 537.0 ],
									"source" : [ "obj-6", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 455.5, 557.5, 309.5, 557.5 ],
									"source" : [ "obj-8", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 315.0, 510.0, 495.0, 510.0, 495.0, 90.0, 815.5, 90.0 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1115.5, 507.0, 894.5, 507.0 ],
									"source" : [ "obj-9", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 15.0, 90.0, 50.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 13.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 13.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p basic",
					"varname" : "basic_tab"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"filename" : "helpname.js",
					"id" : "obj-4",
					"ignoreclick" : 1,
					"jsarguments" : [ "jmod.o4.particleFlow%" ],
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 10.0, 487.859375, 53.625 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 6,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 26.0, 1279.0, 680.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"showontab" : 1,
						"boxes" : [  ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 285.0, 210.0, 50.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p ?",
					"varname" : "q_tab"
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [ 			{
				"name" : "helpname.js",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/help-resources",
				"patcherrelativepath" : "../../../../../../../Applications/Max 6.1/Cycling '74/help-resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.o4.fluids%.maxpat",
				"bootpath" : "/Users/aa/Github/Synthesis/O4_ASU/O4.video/jmod.o4.fluids%",
				"patcherrelativepath" : "../jmod.o4.fluids%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.o4.fluids%.ui.panel.maxpat",
				"bootpath" : "/Users/aa/Github/Synthesis/O4_ASU/O4.video/jmod.o4.fluids%",
				"patcherrelativepath" : "../jmod.o4.fluids%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.list2parameter.maxpat",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/Jamoma/library/components/list2parameter",
				"patcherrelativepath" : "../../../../../../../Applications/Max 6.1/Cycling '74/Jamoma/library/components/list2parameter",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "tml.ejm.bilogscaler.maxpat",
				"bootpath" : "/Users/aa/Github/Synthesis/O4_ASU/O4.video/jmod.o4.fluids%",
				"patcherrelativepath" : "../jmod.o4.fluids%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.o4.fluids%.maxpat",
				"bootpath" : "/Users/aa/Github/Synthesis/O4_ASU/O4.video/jmod.o4.fluids%",
				"patcherrelativepath" : "../jmod.o4.fluids%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.maxhelpui.maxpat",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/Jamoma/library/components/maxhelpui",
				"patcherrelativepath" : "../../../../../../../Applications/Max 6.1/Cycling '74/Jamoma/library/components/maxhelpui",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.maxhelpuiButton.png",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/Jamoma/library/components/maxhelpui",
				"patcherrelativepath" : "../../../../../../../Applications/Max 6.1/Cycling '74/Jamoma/library/components/maxhelpui",
				"type" : "PNG ",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.maxhelpuiResize.js",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/Jamoma/library/components/maxhelpui",
				"patcherrelativepath" : "../../../../../../../Applications/Max 6.1/Cycling '74/Jamoma/library/components/maxhelpui",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.jamomaPath.maxpat",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/Jamoma/library/components/jamomaPath",
				"patcherrelativepath" : "../../../../../../../Applications/Max 6.1/Cycling '74/Jamoma/library/components/jamomaPath",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.thru.maxpat",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/Jamoma/library/components/thru",
				"patcherrelativepath" : "../../../../../../../Applications/Max 6.1/Cycling '74/Jamoma/library/components/thru",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.input%.maxpat",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/Jamoma/modules/video/input%",
				"patcherrelativepath" : "../../../../../../../Applications/Max 6.1/Cycling '74/Jamoma/modules/video/input%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.input%.maxpat",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/Jamoma/modules/video/input%",
				"patcherrelativepath" : "../../../../../../../Applications/Max 6.1/Cycling '74/Jamoma/modules/video/input%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.input%.ui.maxpat",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/Jamoma/modules/video/input%",
				"patcherrelativepath" : "../../../../../../../Applications/Max 6.1/Cycling '74/Jamoma/modules/video/input%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.o4.particleFlow%.maxpat",
				"bootpath" : "/Users/aa/Github/Synthesis/O4_ASU/O4.video/jmod.o4.particleFlow%",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.o4.particleFlow%.ui.panel.maxpat",
				"bootpath" : "/Users/aa/Github/Synthesis/O4_ASU/O4.video/jmod.o4.particleFlow%",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.o4.particleFlow%.maxpat",
				"bootpath" : "/Users/aa/Github/Synthesis/O4_ASU/O4.video/jmod.o4.particleFlow%",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.o4.particleFlow%.particlemesh.maxpat",
				"bootpath" : "/Users/aa/Github/Synthesis/O4_ASU/O4.video/jmod.o4.particleFlow%",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.o4.particleFlow%.initialPositions.maxpat",
				"bootpath" : "/Users/aa/Github/Synthesis/O4_ASU/O4.video/jmod.o4.particleFlow%",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.o4.particleFlow%.noisefield.maxpat",
				"bootpath" : "/Users/aa/Github/Synthesis/O4_ASU/O4.video/jmod.o4.particleFlow%",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.o4.particleFlow%.normals.maxpat",
				"bootpath" : "/Users/aa/Github/Synthesis/O4_ASU/O4.video/jmod.o4.particleFlow%",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.o4.fluids%.scalewrap.maxpat",
				"bootpath" : "/Users/aa/Github/Synthesis/O4_ASU/O4.video/jmod.o4.fluids%",
				"patcherrelativepath" : "../jmod.o4.fluids%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.o4.particleFlow%.figurative.maxpat",
				"bootpath" : "/Users/aa/Github/Synthesis/O4_ASU/O4.video/jmod.o4.particleFlow%",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mxr.v.scalewrap.maxpat",
				"bootpath" : "/Applications/Max 6.1/externals/MaxLibraries/MXR/Abstractions/visuals/others",
				"patcherrelativepath" : "../../../../../../../Applications/Max 6.1/externals/MaxLibraries/MXR/Abstractions/visuals/others",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.initialized.maxpat",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/Jamoma/library/components/initialized",
				"patcherrelativepath" : "../../../../../../../Applications/Max 6.1/Cycling '74/Jamoma/library/components/initialized",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "helpstarter.js",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/help-resources",
				"patcherrelativepath" : "../../../../../../../Applications/Max 6.1/Cycling '74/help-resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.ui.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.parameter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.hub.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.in.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.oscroute.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.out.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "tml.jit.fluid2.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.pass.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "cv.jit.resize.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "cv.jit.HSflow.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.loader.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.loader.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.dataspace.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.textslider.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.message.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "tml.jit.particleFlow.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
