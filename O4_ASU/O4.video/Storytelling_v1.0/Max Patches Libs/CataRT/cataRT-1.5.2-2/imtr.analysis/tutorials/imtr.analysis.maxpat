{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ -1.0, 44.0, 1242.0, 752.0 ],
		"bglocked" : 0,
		"defrect" : [ -1.0, 44.0, 1242.0, 752.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 9.0,
		"default_fontface" : 0,
		"default_fontname" : "Geneva",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
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
					"text" : "See Schwarz Diemo, Schnell Norbert, A Modular Sound Descriptor Analysis Framework for Relaxed-real-time Applications. International Computer Music Conference (ICMC). New York : June 2010",
					"linecount" : 3,
					"fontsize" : 9.0,
					"presentation_rect" : [ 886.0, 26.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 900.0, 60.0, 319.0, 43.0 ],
					"id" : "obj-160",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "http://articles.ircam.fr/index.php?Action=ShowArticle&IdArticle=3612&ViewType=1&Lang=tog",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"presentation_rect" : [ 916.0, 123.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 900.0, 100.0, 317.0, 29.0 ],
					"id" : "obj-158",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser $1",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"presentation_rect" : [ 1062.0, 261.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 900.0, 135.0, 109.0, 29.0 ],
					"id" : "obj-156",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "IMTR.Analysis is an experimental modular framework for prototyping of new audio descriptors. \nThis example is linked to CataRT version 1.5.",
					"linecount" : 3,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 900.0, 5.0, 317.0, 55.0 ],
					"id" : "obj-134",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "show soundfiles",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 870.0, 270.0, 84.0, 17.0 ],
					"id" : "obj-167",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 650.0, 700.0, 19.0, 19.0 ],
					"id" : "obj-166",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"patching_rect" : [ 800.0, 690.0, 15.0, 15.0 ],
					"id" : "obj-162",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"patching_rect" : [ 921.0, 690.0, 15.0, 15.0 ],
					"id" : "obj-161",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"patching_rect" : [ 861.0, 690.0, 15.0, 15.0 ],
					"id" : "obj-159",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "switch on live recording",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 350.0, 10.0, 113.0, 19.0 ],
					"id" : "obj-157",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "template for a new descriptor module",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 415.0, 530.0, 99.0, 31.0 ],
					"id" : "obj-155",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p attack-count",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 285.0, 585.0, 75.0, 19.0 ],
					"id" : "obj-151",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 810.0, 44.0, 352.0, 253.0 ],
						"bglocked" : 0,
						"defrect" : [ 810.0, 44.0, 352.0, 253.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
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
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"patching_rect" : [ 210.0, 105.0, 20.0, 20.0 ],
									"id" : "obj-19",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 105.0, 195.0, 50.0, 19.0 ],
									"id" : "obj-17",
									"fontname" : "Geneva",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"patching_rect" : [ 180.0, 105.0, 20.0, 20.0 ],
									"id" : "obj-15",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"outlettype" : [ "bang", "bang" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 30.0, 105.0, 44.0, 19.0 ],
									"id" : "obj-13",
									"fontname" : "Geneva",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"outlettype" : [ "int" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 45.0, 180.0, 51.5, 19.0 ],
									"id" : "obj-1",
									"fontname" : "Geneva",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter",
									"outlettype" : [ "int", "", "", "int" ],
									"fontsize" : 9.0,
									"numinlets" : 5,
									"patching_rect" : [ 75.0, 150.0, 100.0, 19.0 ],
									"id" : "obj-8",
									"fontname" : "Geneva",
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 15.0, 15.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"patching_rect" : [ 225.0, 30.0, 20.0, 20.0 ],
									"id" : "obj-11",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "imtr.analysis.stub AttackCount @type int @name attack-count",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 3,
									"patching_rect" : [ 15.0, 61.0, 238.0, 31.0 ],
									"id" : "obj-2",
									"fontname" : "Geneva",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 225.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "list" ],
									"numinlets" : 0,
									"patching_rect" : [ 75.0, 15.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-8", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-8", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-2", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [ 54.5, 221.0, 327.0, 221.0, 327.0, 15.0, 134.0, 15.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "show unitdata",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 870.0, 250.0, 84.0, 17.0 ],
					"id" : "obj-149",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tempmod.ambitus NoteNumber",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 490.0, 147.0, 19.0 ],
					"id" : "obj-35",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p myowndescr",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 405.0, 560.0, 73.0, 19.0 ],
					"id" : "obj-98",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 749.0, 443.0, 445.0, 268.0 ],
						"bglocked" : 0,
						"defrect" : [ 749.0, 443.0, 445.0, 268.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
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
									"text" : "switch on for debug output of all messages going in and out of this descriptor module",
									"linecount" : 3,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 240.0, 75.0, 148.0, 43.0 ],
									"id" : "obj-2",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.print my",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 210.0, 120.0, 65.0, 19.0 ],
									"id" : "obj-1",
									"fontname" : "Geneva",
									"numoutlets" : 0,
									"saved_object_attributes" : 									{
										"ftm_objref_conv" : 0,
										"ftm_scope" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 120.0, 195.0, 50.0, 19.0 ],
									"id" : "obj-8",
									"fontname" : "Geneva",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"patching_rect" : [ 219.0, 75.0, 20.0, 20.0 ],
									"id" : "obj-6",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 120.0, 120.0, 67.123535, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_((unique) * 2)" ],
									"patching_rect" : [ 120.0, 120.0, 67.123535, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-4",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "imtr.analysis.stub Mydescr @type symbol float @name manual",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 3,
									"patching_rect" : [ 45.0, 75.0, 169.0, 31.0 ],
									"id" : "obj-7",
									"fontname" : "Geneva",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 45.0, 195.0, 17.0, 17.0 ],
									"id" : "obj-9",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 45.0, 39.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "add your own descr.",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 45.0, 15.0, 193.0, 19.0 ],
									"id" : "obj-11",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [ 129.5, 156.0, 298.0, 156.0, 298.0, 60.0, 129.5, 60.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "file.rank PeakAmp_max",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 205.0, 700.0, 112.0, 19.0 ],
					"id" : "obj-165",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tempmod.max PeakAmp",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 230.0, 470.0, 116.0, 19.0 ],
					"id" : "obj-164",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p peak",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 405.0, 145.0, 39.0, 19.0 ],
					"id" : "obj-163",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 81.0, 369.0, 559.0, 388.0 ],
						"bglocked" : 0,
						"defrect" : [ 81.0, 369.0, 559.0, 388.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"gridonopen" : 0,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 140.0, 210.0, 50.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Geneva",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 30.0, 160.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 20.0, 10.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 10.0,
									"#untuple" : 0,
									"presentation_rect" : [ 140.0, 150.0, 68.099609, 18.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_($1 absmax)" ],
									"patching_rect" : [ 140.0, 150.0, 68.099609, 18.0 ],
									"ftm_scope" : 0,
									"id" : "obj-149",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "fmat with one frame of signal",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 150.0, 130.0, 139.0, 19.0 ],
									"id" : "obj-156",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"patching_rect" : [ 236.0, 63.0, 20.0, 20.0 ],
									"id" : "obj-157",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "imtr.analysis.stub PeakAmp @type symbol float @name peak @group signal",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 3,
									"patching_rect" : [ 40.0, 90.0, 235.0, 31.0 ],
									"id" : "obj-159",
									"fontname" : "Geneva",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sig in",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 60.0, 10.0, 32.0, 19.0 ],
									"id" : "obj-162",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-159", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-159", 1 ],
									"destination" : [ "obj-149", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-157", 0 ],
									"destination" : [ "obj-159", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-149", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-149", 0 ],
									"destination" : [ "obj-159", 1 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 195.607788, 339.615479, 195.607788, 339.615479, 80.0, 157.5, 80.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-159", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"fontname" : "Geneva",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "special temporal modeling modules ",
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 370.0, 480.0, 166.0, 19.0 ],
					"id" : "obj-154",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "temporal modeling modules with arguments are applied to given inst. descriptors only",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 130.0, 420.0, 208.0, 31.0 ],
					"id" : "obj-153",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "temporal modeling modules without arguments are applied to ALL inst. descriptors",
					"linecount" : 3,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 355.0, 410.0, 144.0, 43.0 ],
					"id" : "obj-152",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"outlettype" : [ "" ],
					"#triggerall" : 0,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 265.0, 10.0, 54.219727, 17.0 ],
					"#init" : "",
					"numinlets" : 2,
					"text" : [ "_sweep.wav" ],
					"patching_rect" : [ 265.0, 10.0, 54.219727, 17.0 ],
					"ftm_scope" : 0,
					"id" : "obj-150",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"#loadbang" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"patching_rect" : [ 205.0, 320.0, 15.0, 15.0 ],
					"id" : "obj-147",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "segment.none",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 195.0, 300.0, 72.0, 19.0 ],
					"id" : "obj-148",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tempmod.slope Pitch",
					"outlettype" : [ "", "float" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 470.0, 102.0, 19.0 ],
					"id" : "obj-146",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"patching_rect" : [ 290.0, 360.0, 15.0, 15.0 ],
					"id" : "obj-144",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "segment.flux",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 280.0, 340.0, 66.0, 19.0 ],
					"id" : "obj-145",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "descr.mel-flux",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 226.0, 210.0, 92.0, 19.0 ],
					"id" : "obj-143",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "descr.spectral-flux",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 250.0, 190.0, 96.0, 19.0 ],
					"id" : "obj-142",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "descr.band-energy HighFrequencyEnergy 50 1000",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 160.0, 130.0, 230.0, 19.0 ],
					"id" : "obj-141",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "descr.band-energy MidFrequencyEnergy 5000 10000",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 150.0, 150.0, 243.0, 19.0 ],
					"id" : "obj-88",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "descr.band-energy Cleanness 20 100",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 140.0, 170.0, 173.0, 19.0 ],
					"id" : "obj-45",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "drop files here",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 20.0, 194.0, 23.0 ],
					"id" : "obj-80",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p descr.mfcc",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 470.0, 300.0, 67.0, 19.0 ],
					"id" : "obj-138",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 975.0, 1072.0, 460.0, 287.0 ],
						"bglocked" : 0,
						"defrect" : [ 975.0, 1072.0, 460.0, 287.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"gridonopen" : 0,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 110.0, 130.0, 22.567383, 17.0 ],
									"#init" : "0 21.5332",
									"numinlets" : 2,
									"text" : [ "_$*2" ],
									"patching_rect" : [ 110.0, 130.0, 22.567383, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-6",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"patching_rect" : [ 260.0, 50.0, 20.0, 20.0 ],
									"id" : "obj-3",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "frame time triggers segmentation output, not descriptors!!!",
									"linecount" : 2,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 90.0, 220.0, 161.0, 27.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "13",
									"description" : "13",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"persistence" : 0,
									"presentation_rect" : [ 300.0, 210.0, 58.967773, 18.0 ],
									"numinlets" : 1,
									"editor_interface" : "",
									"patching_rect" : [ 300.0, 210.0, 58.967773, 18.0 ],
									"ftm_scope" : 0,
									"id" : "obj-2",
									"fontname" : "Geneva",
									"numoutlets" : 2,
									"scope" : 0,
									"name" : "Nmfcc"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route in out",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 220.0, 90.0, 62.0, 19.0 ],
									"id" : "obj-15",
									"fontname" : "Geneva",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 110.0, 190.0, 57.793945, 17.0 ],
									"#init" : "0 21.5332",
									"numinlets" : 2,
									"text" : [ "_($2 set $1)" ],
									"patching_rect" : [ 110.0, 190.0, 57.793945, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-21",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "20",
									"description" : "20",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"persistence" : 0,
									"presentation_rect" : [ 300.0, 190.0, 86.020508, 18.0 ],
									"numinlets" : 1,
									"editor_interface" : "",
									"patching_rect" : [ 300.0, 190.0, 86.020508, 18.0 ],
									"ftm_scope" : 0,
									"id" : "obj-16",
									"fontname" : "Geneva",
									"numoutlets" : 2,
									"scope" : 0,
									"name" : "Nmelbandsin"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "calculation from gbr.analysis example by Jean-Philippe Lambert",
									"linecount" : 5,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 20.0, 80.0, 88.0, 58.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "out to importer",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ -2.25, 233.0, 79.0, 19.0 ],
									"id" : "obj-20",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "imtr.analysis.stub MFCC @name mfcc @group spectrum @vecsize $Nmfcc @defmax 1 @wanted MelBands",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 3,
									"patching_rect" : [ 0.0, 45.0, 253.0, 31.0 ],
									"id" : "obj-5",
									"fontname" : "Geneva",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 0.0, 0.0, 16.0, 16.0 ],
									"id" : "obj-10",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 0.0, 218.0, 15.0, 15.0 ],
									"id" : "obj-13",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Example for catart FFT descriptor analyser module. It receives commands and vectors of sound from catart.importer and writes instantaneous descriptor values into the given row of raw instantaneous descriptor data or final unitdata.",
									"linecount" : 3,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 0.0, 389.0, 43.0 ],
									"id" : "obj-17",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gbr.dct $Nmelbandsin $Nmfcc",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 110.0, 160.0, 135.0, 17.0 ],
									"id" : "obj-80",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"saved_object_attributes" : 									{
										"ftm_objref_conv" : 0,
										"ftm_scope" : 0
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 2 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 2 ],
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
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-21", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
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
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"fontname" : "Geneva",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p descr.melbands",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 210.0, 86.0, 19.0 ],
					"id" : "obj-135",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 975.0, 744.0, 460.0, 287.0 ],
						"bglocked" : 0,
						"defrect" : [ 975.0, 744.0, 460.0, 287.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"gridonopen" : 0,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 240.0, 130.0, 29.058105, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_sr $1" ],
									"patching_rect" : [ 240.0, 130.0, 29.058105, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-1",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 130.0, 130.0, 93.561035, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_insize (($1 / 2) - 1)" ],
									"patching_rect" : [ 130.0, 130.0, 93.561035, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-28",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route out winsize sr",
									"outlettype" : [ "", "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 220.0, 90.0, 160.0, 19.0 ],
									"id" : "obj-15",
									"fontname" : "Geneva",
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "20",
									"description" : "20",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"persistence" : 0,
									"presentation_rect" : [ 300.0, 220.0, 78.655273, 18.0 ],
									"numinlets" : 1,
									"editor_interface" : "",
									"patching_rect" : [ 300.0, 220.0, 78.655273, 18.0 ],
									"ftm_scope" : 0,
									"id" : "obj-16",
									"fontname" : "Geneva",
									"numoutlets" : 2,
									"scope" : 0,
									"name" : "Nmelbands"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "calculation from gbr.analysis example by Jean-Philippe Lambert",
									"linecount" : 5,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 20.0, 80.0, 88.0, 58.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "out to importer",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ -2.25, 233.0, 79.0, 19.0 ],
									"id" : "obj-20",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "imtr.analysis.stub MelBands @name mel-bands @group spectrum @vecsize $Nmelbands @defmax 1",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 3,
									"patching_rect" : [ 0.0, 45.0, 238.0, 31.0 ],
									"id" : "obj-5",
									"fontname" : "Geneva",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 0.0, 0.0, 16.0, 16.0 ],
									"id" : "obj-10",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 0.0, 218.0, 15.0, 15.0 ],
									"id" : "obj-13",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Example for catart FFT descriptor analyser module. It receives commands and vectors of sound from catart.importer and writes instantaneous descriptor values into the given row of raw instantaneous descriptor data or final unitdata.",
									"linecount" : 3,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 0.0, 389.0, 43.0 ],
									"id" : "obj-17",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 110.0, 220.0, 81.893555, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_($2 set ($1 log))" ],
									"patching_rect" : [ 110.0, 220.0, 81.893555, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-67",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gbr.bands 513 $Nmelbands @mode mel @sr $FTM.audio.sr",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 110.0, 190.0, 251.0, 17.0 ],
									"id" : "obj-80",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"saved_object_attributes" : 									{
										"ftm_objref_conv" : 0,
										"ftm_scope" : 0
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 2 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-67", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 2 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"fontname" : "Geneva",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p pitch-to-midi",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 387.0, 300.0, 78.0, 19.0 ],
					"id" : "obj-140",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 858.0, 482.0, 370.0, 274.0 ],
						"bglocked" : 0,
						"defrect" : [ 858.0, 482.0, 370.0, 274.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
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
									"numinlets" : 1,
									"patching_rect" : [ 240.0, 60.0, 20.0, 20.0 ],
									"id" : "obj-11",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "parameter: reference A 440Hz",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 45.0, 225.0, 193.0, 19.0 ],
									"id" : "obj-7",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "with the option @wanted, only the value of that descriptor is output",
									"linecount" : 4,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 255.0, 90.0, 96.0, 55.0 ],
									"id" : "obj-1",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "imtr.analysis.stub NoteNumber NoteNumberInt NoteNumberDetune @type symbol float int float @wanted Pitch @name pitch-to-midi",
									"linecount" : 4,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 3,
									"patching_rect" : [ 45.0, 91.0, 184.0, 55.0 ],
									"id" : "obj-2",
									"fontname" : "Geneva",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 45.0, 198.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 45.0, 56.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "convert pitch in Hz to midi",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 44.0, 27.0, 193.0, 19.0 ],
									"id" : "obj-5",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 3,
									"presentation_linecount" : 3,
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 124.0, 162.0, 97.0, 41.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_($1 = (hz2midi $1));", "_($2 = (round $1));", "_$1 $2 ($1 - $2)" ],
									"patching_rect" : [ 124.0, 162.0, 97.0, 41.0 ],
									"ftm_scope" : 0,
									"id" : "obj-6",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [ 133.5, 215.0, 230.0, 215.0, 230.0, 76.0, 137.0, 76.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-2", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "real time",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 500.0, 680.0, 49.0, 19.0 ],
					"id" : "obj-139",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 405.0, 700.0, 85.0, 17.0 ],
					"id" : "obj-137",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"outlettype" : [ "" ],
					"#triggerall" : 0,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 430.0, 670.0, 121.161621, 17.0 ],
					"#init" : "",
					"numinlets" : 2,
					"text" : [ "_(int ($2 / $1)) x real time" ],
					"patching_rect" : [ 430.0, 670.0, 121.161621, 17.0 ],
					"ftm_scope" : 0,
					"id" : "obj-136",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"#loadbang" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 494.0, 700.0, 63.0, 19.0 ],
					"id" : "obj-119",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 450.0, 750.0, 20.0, 20.0 ],
					"id" : "obj-99",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 430.0, 750.0, 20.0, 20.0 ],
					"id" : "obj-78",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "timer",
					"outlettype" : [ "float", "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 430.0, 780.0, 41.0, 19.0 ],
					"id" : "obj-61",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 500.0, 740.0, 16.0, 17.0 ],
					"id" : "obj-132",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 520.0, 740.0, 16.0, 17.0 ],
					"id" : "obj-129",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 500.0, 760.0, 30.0, 19.0 ],
					"id" : "obj-112",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel file live",
					"outlettype" : [ "bang", "bang", "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 500.0, 720.0, 56.0, 19.0 ],
					"id" : "obj-106",
					"fontname" : "Geneva",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 140.0, 300.0, 50.0, 19.0 ],
					"id" : "obj-63",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"outlettype" : [ "" ],
					"#triggerall" : 0,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 50.0, 35.0, 25.018066, 17.0 ],
					"#init" : "",
					"numinlets" : 2,
					"text" : [ "_242" ],
					"patching_rect" : [ 50.0, 35.0, 25.018066, 17.0 ],
					"ftm_scope" : 0,
					"id" : "obj-60",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"#loadbang" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "show descriptors",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 870.0, 230.0, 84.0, 17.0 ],
					"id" : "obj-52",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"outlettype" : [ "" ],
					"#triggerall" : 0,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 500.0, 785.0, 73.35791, 17.0 ],
					"#init" : "",
					"numinlets" : 2,
					"text" : [ "_($1 / ($2 - 1))" ],
					"patching_rect" : [ 500.0, 785.0, 73.35791, 17.0 ],
					"ftm_scope" : 0,
					"id" : "obj-49",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"#loadbang" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"setstyle" : 1,
					"setminmax" : [ 0.0, 1.0 ],
					"numinlets" : 1,
					"slidercolor" : [ 0.133333, 0.643137, 0.262745, 1.0 ],
					"patching_rect" : [ 140.0, 60.0, 178.0, 20.0 ],
					"id" : "obj-44",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 1107.0, 190.0, 20.0, 20.0 ],
					"id" : "obj-107",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 1070.0, 190.0, 35.0, 19.0 ],
					"id" : "obj-1",
					"fontname" : "Geneva",
					"numoutlets" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 1050.0, 189.0, 15.0, 15.0 ],
					"id" : "obj-71",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s catart.import.debug",
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 1050.0, 210.0, 107.0, 19.0 ],
					"id" : "obj-72",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "debug on/off",
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 949.0, 190.0, 67.0, 19.0 ],
					"id" : "obj-83",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 930.0, 190.0, 15.0, 15.0 ],
					"id" : "obj-84",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s ftm.mdispatch.debug",
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 930.0, 210.0, 110.0, 19.0 ],
					"id" : "obj-85",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"outlettype" : [ "signal", "int" ],
					"numinlets" : 2,
					"patching_rect" : [ 580.0, 75.0, 17.0, 102.0 ],
					"id" : "obj-133",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"outlettype" : [ "" ],
					"#triggerall" : 0,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 540.0, 430.0, 35.775879, 17.0 ],
					"#init" : "",
					"numinlets" : 2,
					"text" : [ "_set $1" ],
					"patching_rect" : [ 540.0, 430.0, 35.775879, 17.0 ],
					"ftm_scope" : 0,
					"id" : "obj-131",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"#loadbang" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"outlettype" : [ "" ],
					"#triggerall" : 0,
					"fontsize" : 11.0,
					"#untuple" : 0,
					"presentation_rect" : [ 720.0, 60.0, 31.249512, 19.0 ],
					"#init" : "",
					"numinlets" : 2,
					"text" : [ "_clear" ],
					"patching_rect" : [ 720.0, 60.0, 31.249512, 19.0 ],
					"ftm_scope" : 0,
					"id" : "obj-130",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"#loadbang" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"outlettype" : [ "" ],
					"#triggerall" : 0,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 0.0, 80.0, 71.749512, 17.0 ],
					"#init" : "",
					"numinlets" : 2,
					"text" : [ "_set chop, bang" ],
					"patching_rect" : [ 0.0, 80.0, 71.749512, 17.0 ],
					"ftm_scope" : 0,
					"id" : "obj-128",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"#loadbang" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"ftm_objref_conv" : 0,
					"outlettype" : [ "" ],
					"#triggerall" : 0,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 940.0, 260.0, 82.384277, 29.0 ],
					"#init" : "",
					"numinlets" : 2,
					"text" : [ "_toolbar visible 0,", "_scrollbar visible 0" ],
					"patching_rect" : [ 940.0, 260.0, 82.384277, 29.0 ],
					"ftm_scope" : 0,
					"id" : "obj-109",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"#loadbang" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"patching_rect" : [ 130.0, 360.0, 15.0, 15.0 ],
					"id" : "obj-126",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"patching_rect" : [ 360.0, 360.0, 15.0, 15.0 ],
					"id" : "obj-127",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"patching_rect" : [ 205.0, 360.0, 15.0, 15.0 ],
					"id" : "obj-125",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"patching_rect" : [ 430.0, 360.0, 15.0, 15.0 ],
					"id" : "obj-117",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route analyse",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 560.0, 210.0, 94.0, 19.0 ],
					"id" : "obj-120",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"outlettype" : [ "" ],
					"#triggerall" : 0,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 560.0, 230.0, 150.060059, 17.0 ],
					"#init" : "",
					"numinlets" : 2,
					"text" : [ "_($instrow set $2); set $instcopy" ],
					"patching_rect" : [ 560.0, 230.0, 150.060059, 17.0 ],
					"ftm_scope" : 0,
					"id" : "obj-115",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"#loadbang" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"outlettype" : [ "" ],
					"#triggerall" : 0,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 720.0, 230.0, 320.383301, 17.0 ],
					"#init" : "",
					"numinlets" : 2,
					"text" : [ "_(($instcopy cols ($1 cols)) schema col ($1 schema col)); set $instcopy" ],
					"patching_rect" : [ 720.0, 230.0, 320.383301, 17.0 ],
					"ftm_scope" : 0,
					"id" : "obj-124",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"#loadbang" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r corpus1_imtr.analysis.condense.inst",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 0,
					"patching_rect" : [ 720.0, 210.0, 186.0, 19.0 ],
					"id" : "obj-123",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "get-soundfiles",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 680.0, 250.0, 72.0, 17.0 ],
					"id" : "obj-47",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 560.0, 700.0, 63.0, 19.0 ],
					"id" : "obj-116",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"patching_rect" : [ 330.0, 10.0, 18.0, 18.0 ],
					"id" : "obj-122",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "fmat 1 50",
					"description" : "fmat 1 50",
					"ftm_objref_conv" : 0,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"persistence" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 1050.0, 260.0, 103.022461, 18.0 ],
					"numinlets" : 1,
					"editor_interface" : "",
					"patching_rect" : [ 1050.0, 260.0, 103.022461, 18.0 ],
					"ftm_scope" : 0,
					"id" : "obj-121",
					"fontname" : "Geneva",
					"numoutlets" : 2,
					"scope" : 0,
					"name" : "instcopy"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "fvec $instcopy row",
					"description" : "fvec $instcopy row",
					"ftm_objref_conv" : 0,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"persistence" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 1050.0, 240.0, 137.022461, 18.0 ],
					"numinlets" : 1,
					"editor_interface" : "",
					"patching_rect" : [ 1050.0, 240.0, 137.022461, 18.0 ],
					"ftm_scope" : 0,
					"id" : "obj-118",
					"fontname" : "Geneva",
					"numoutlets" : 2,
					"scope" : 0,
					"name" : "instrow"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"patching_rect" : [ 560.0, 253.0, 40.0, 40.0 ],
					"id" : "obj-46",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 560.0, 190.0, 32.5, 19.0 ],
					"id" : "obj-42",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.editor",
					"windresize" : 0,
					"outputvalues" : 0,
					"domainruler_fgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tabs_visible" : 1,
					"ftm_objref_conv" : 0,
					"orientation" : 0,
					"region_end" : 0.0,
					"autoupdate" : 120.0,
					"outlettype" : [ "" ],
					"cursor_visible" : 1,
					"region_begin" : 0.0,
					"rangeruler_size" : 35,
					"domainscrollbar_size" : 10,
					"toolbar_position" : 1,
					"rangeruler_visible" : 0,
					"domainruler_size" : 15,
					"tabs_size" : 20,
					"domainscrollbar_color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"layout" : 0,
					"domainruler_unit" : 0,
					"opacity" : 0.0,
					"alignviewbounds" : 0,
					"region_color" : [ 0.8, 0.7, 0.7, 1.0 ],
					"domainruler_visible" : 0,
					"cursor_color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"split_size" : 2,
					"domainscrollbar_visible" : 1,
					"toolbar_size" : 30,
					"cursor_position" : -1.0,
					"split_color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"rangeruler_grid" : 0,
					"cursor_size" : 3,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"outputmouse" : 0,
					"domainruler_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 560.0, 300.0, 604.0, 85.0 ],
					"domainruler_position" : 0,
					"split_visible" : 1,
					"outputkeys" : 0,
					"domain_bounds" : [ 0.0, 0.0 ],
					"ftm_scope" : 0,
					"tabs_position" : 0,
					"id" : "obj-28",
					"toolbar_visible" : 0,
					"numoutlets" : 1,
					"domainruler_grid" : 0,
					"toolbar_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.editor",
					"windresize" : 0,
					"outputvalues" : 0,
					"domainruler_fgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tabs_visible" : 1,
					"ftm_objref_conv" : 0,
					"orientation" : 0,
					"region_end" : 0.0,
					"autoupdate" : 120.0,
					"outlettype" : [ "" ],
					"cursor_visible" : 1,
					"region_begin" : 0.0,
					"rangeruler_size" : 35,
					"domainscrollbar_size" : 10,
					"toolbar_position" : 1,
					"rangeruler_visible" : 0,
					"domainruler_size" : 15,
					"tabs_size" : 20,
					"domainscrollbar_color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"layout" : 0,
					"domainruler_unit" : 0,
					"opacity" : 0.0,
					"alignviewbounds" : 0,
					"region_color" : [ 0.8, 0.7, 0.7, 1.0 ],
					"domainruler_visible" : 0,
					"cursor_color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"split_size" : 2,
					"domainscrollbar_visible" : 1,
					"toolbar_size" : 30,
					"cursor_position" : -1.0,
					"split_color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"rangeruler_grid" : 0,
					"cursor_size" : 3,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"outputmouse" : 0,
					"domainruler_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 560.0, 390.0, 604.0, 275.0 ],
					"domainruler_position" : 0,
					"split_visible" : 1,
					"outputkeys" : 0,
					"domain_bounds" : [ 0.0, 0.0 ],
					"ftm_scope" : 0,
					"tabs_position" : 0,
					"id" : "obj-27",
					"toolbar_visible" : 0,
					"numoutlets" : 1,
					"domainruler_grid" : 0,
					"toolbar_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"numinlets" : 1,
					"patching_rect" : [ 610.0, 35.0, 100.0, 20.0 ],
					"id" : "obj-62",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezadc~",
					"outlettype" : [ "signal", "signal" ],
					"numinlets" : 1,
					"patching_rect" : [ 560.0, 10.0, 45.0, 45.0 ],
					"id" : "obj-59",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p signal-segmenter~",
					"outlettype" : [ "", "list" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 420.0, 340.0, 99.0, 19.0 ],
					"id" : "obj-58",
					"fontname" : "Geneva",
					"numoutlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 890.0, 49.0, 352.0, 253.0 ],
						"bglocked" : 0,
						"defrect" : [ 890.0, 49.0, 352.0, 253.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
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
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 60.0, 210.0, 15.0, 15.0 ],
									"id" : "obj-5",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate~",
									"outlettype" : [ "signal" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 30.0, 90.0, 38.0, 19.0 ],
									"id" : "obj-14",
									"fontname" : "Geneva",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"patching_rect" : [ 255.0, 120.0, 20.0, 20.0 ],
									"id" : "obj-13",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 30.0, 165.0, 67.721191, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_segment $2 1" ],
									"patching_rect" : [ 30.0, 165.0, 67.721191, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-10",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route time enable",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 225.0, 90.0, 87.0, 19.0 ],
									"id" : "obj-9",
									"fontname" : "Geneva",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bonk~",
									"outlettype" : [ "list", "list" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 30.0, 120.0, 38.0, 19.0 ],
									"id" : "obj-8",
									"fontname" : "Geneva",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 15.0, 15.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"patching_rect" : [ 225.0, 30.0, 20.0, 20.0 ],
									"id" : "obj-11",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "todo: calculate sub-signal-vector time",
									"linecount" : 3,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 105.0, 165.0, 96.0, 43.0 ],
									"id" : "obj-1",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "imtr.analysis.stub @name bonk-segmentation",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 3,
									"patching_rect" : [ 15.0, 61.0, 222.0, 19.0 ],
									"id" : "obj-2",
									"fontname" : "Geneva",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 210.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "signal" ],
									"numinlets" : 0,
									"patching_rect" : [ 75.0, 15.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-9", 0 ],
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
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-2", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "segment.silence",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 195.0, 340.0, 80.0, 19.0 ],
					"id" : "obj-37",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "file-rate descriptor processing",
					"linecount" : 3,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 3.0, 670.0, 81.0, 48.0 ],
					"id" : "obj-103",
					"fontname" : "Arial Bold",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"border" : 1,
					"bgcolor" : [ 0.870588, 0.690196, 0.078431, 0.8 ],
					"numinlets" : 1,
					"patching_rect" : [ 3.0, 670.0, 90.0, 60.0 ],
					"id" : "obj-114",
					"numoutlets" : 0,
					"rounded" : 25
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "file.rank Pitch",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 700.0, 69.0, 19.0 ],
					"id" : "obj-64",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "file unit data generators or converters ",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 130.0, 677.0, 196.0, 19.0 ],
					"id" : "obj-65",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "imtr.analysis.postfile corpus1",
					"color" : [ 1.0, 0.843137, 0.035294, 1.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 650.0, 225.0, 23.0 ],
					"id" : "obj-66",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "stored unit frow",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 130.0, 745.0, 81.0, 19.0 ],
					"id" : "obj-57",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"outlettype" : [ "" ],
					"#triggerall" : 0,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 410.0, 650.0, 150.859863, 17.0 ],
					"#init" : "",
					"numinlets" : 2,
					"text" : [ "_enable seg all 0, enable seg $1 1" ],
					"patching_rect" : [ 410.0, 650.0, 150.859863, 17.0 ],
					"ftm_scope" : 0,
					"id" : "obj-56",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"#loadbang" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "choose active  segmenter",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 400.0, 376.0, 123.0, 19.0 ],
					"id" : "obj-55",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "inst descr to converters",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 340.0, 280.0, 121.0, 19.0 ],
					"id" : "obj-54",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend append",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 435.0, 600.0, 92.0, 19.0 ],
					"id" : "obj-53",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1 l clear",
					"outlettype" : [ "int", "", "clear" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 375.0, 580.0, 59.0, 19.0 ],
					"id" : "obj-41",
					"fontname" : "Geneva",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "get segmenters",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 375.0, 560.0, 79.0, 17.0 ],
					"id" : "obj-40",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "umenu_seg",
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 9.0,
					"items" : [ "bonk-segmentation", ",", "yinseg", ",", "spectral-flux-segmentation", ",", "silence", ",", "none", ",", "chop" ],
					"numinlets" : 1,
					"types" : [  ],
					"patching_rect" : [ 400.0, 390.0, 100.0, 19.0 ],
					"id" : "obj-39",
					"fontname" : "Geneva",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar umenu_seg 2",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 435.0, 620.0, 92.0, 19.0 ],
					"id" : "obj-38",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route segmenters",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 435.0, 580.0, 88.0, 19.0 ],
					"id" : "obj-36",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"numinlets" : 1,
					"patching_rect" : [ 610.0, 205.0, 100.0, 20.0 ],
					"id" : "obj-34",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"outlettype" : [ "signal", "int" ],
					"numinlets" : 2,
					"patching_rect" : [ 560.0, 75.0, 17.0, 102.0 ],
					"id" : "obj-32",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"patching_rect" : [ 560.0, 185.0, 40.0, 40.0 ],
					"id" : "obj-26",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.synthesis~ corpus1",
					"color" : [ 0.215686, 0.313726, 0.827451, 1.0 ],
					"outlettype" : [ "signal", "signal", "", "int" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 720.0, 170.0, 160.0, 23.0 ],
					"id" : "obj-25",
					"fontname" : "Geneva",
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart.lcd3",
					"text" : "catart.lcd5 corpus1",
					"color" : [ 0.827451, 0.258824, 0.215686, 1.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 720.0, 140.0, 160.0, 23.0 ],
					"id" : "obj-14",
					"fontname" : "Geneva",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "imtr.analysis.analyse corpus1",
					"color" : [ 1.0, 0.843137, 0.035294, 1.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 90.0, 219.0, 23.0 ],
					"id" : "obj-113",
					"fontname" : "Geneva",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p pitch-to-midi",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 285.0, 560.0, 78.0, 19.0 ],
					"id" : "obj-93",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 497.0, 470.0, 370.0, 274.0 ],
						"bglocked" : 0,
						"defrect" : [ 497.0, 470.0, 370.0, 274.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
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
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 240.0, 165.0, 50.0, 19.0 ],
									"id" : "obj-13",
									"fontname" : "Geneva",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 240.0, 210.0, 50.0, 19.0 ],
									"id" : "obj-8",
									"fontname" : "Geneva",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"patching_rect" : [ 240.0, 60.0, 20.0, 20.0 ],
									"id" : "obj-11",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "parameter: reference A 440Hz",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 45.0, 225.0, 193.0, 19.0 ],
									"id" : "obj-7",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "with the option @wanted, only the value of that descriptor is output",
									"linecount" : 4,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 255.0, 90.0, 96.0, 55.0 ],
									"id" : "obj-1",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "imtr.analysis.stub NoteNumber NoteNumberInt NoteNumberDetune @type symbol float int float @wanted Pitch @name pitch-to-midi",
									"linecount" : 4,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 3,
									"patching_rect" : [ 45.0, 91.0, 184.0, 55.0 ],
									"id" : "obj-2",
									"fontname" : "Geneva",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 45.0, 198.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 45.0, 56.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "convert pitch in Hz to midi",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 44.0, 27.0, 193.0, 19.0 ],
									"id" : "obj-5",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 3,
									"presentation_linecount" : 3,
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 124.0, 162.0, 97.0, 41.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_($1 = (hz2midi $1));", "_($2 = (round $1));", "_$1 $2 ($1 - $2)" ],
									"patching_rect" : [ 124.0, 162.0, 97.0, 41.0 ],
									"ftm_scope" : 0,
									"id" : "obj-6",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [ 133.5, 215.0, 230.0, 215.0, 230.0, 76.0, 137.0, 76.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-2", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tempmod.mean",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 345.0, 450.0, 92.0, 19.0 ],
					"id" : "obj-111",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tempmod.std NoteNumber Loudness Centroid",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 450.0, 210.0, 19.0 ],
					"id" : "obj-108",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 80.0, 730.0, 32.5, 17.0 ],
					"id" : "obj-105",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "raw unit descr",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 131.0, 402.0, 85.0, 19.0 ],
					"id" : "obj-2",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "const unit descr",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 125.0, 551.0, 57.0, 31.0 ],
					"id" : "obj-3",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "imtr.analysis.convert corpus1",
					"color" : [ 1.0, 0.843137, 0.035294, 1.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 525.0, 225.0, 23.0 ],
					"id" : "obj-4",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "unit-rate descriptor processing",
					"linecount" : 3,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 3.0, 550.0, 81.0, 48.0 ],
					"id" : "obj-5",
					"fontname" : "Arial Bold",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"border" : 1,
					"bgcolor" : [ 1.0, 0.282353, 0.031373, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 3.0, 550.0, 90.0, 100.0 ],
					"id" : "obj-6",
					"numoutlets" : 0,
					"rounded" : 25
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "imtr.analysis.condense corpus1",
					"color" : [ 1.0, 0.843137, 0.035294, 1.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 383.0, 225.0, 23.0 ],
					"id" : "obj-7",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "frame-rate descriptor processing and segmentation",
					"linecount" : 5,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 3.0, 290.0, 88.0, 75.0 ],
					"id" : "obj-8",
					"fontname" : "Arial Bold",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"border" : 1,
					"bgcolor" : [ 0.972549, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 3.0, 290.0, 90.0, 90.0 ],
					"id" : "obj-9",
					"numoutlets" : 0,
					"rounded" : 25
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "inst descr to segmenters",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 130.0, 280.0, 119.0, 19.0 ],
					"id" : "obj-10",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p ext-inst-descriptor-loader",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 180.0, 240.0, 140.0, 19.0 ],
					"id" : "obj-11",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 334.0, 524.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 334.0, 524.0, 600.0, 426.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
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
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 143.0, 244.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 143.0, 179.0, 113.701172, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_add-descriptor SoundSet" ],
									"patching_rect" : [ 143.0, 179.0, 113.701172, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-2",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "load external descriptor files, e.g. IrcamExtractor SDIF, and get data on demand",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 138.0, 147.0, 371.0, 19.0 ],
									"id" : "obj-3",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "signal frames",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 230.0, 110.0, 71.0, 19.0 ],
					"id" : "obj-12",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "fft frames",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 130.0, 110.0, 57.0, 19.0 ],
					"id" : "obj-13",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "unit-rate temporal modeling",
					"linecount" : 3,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 3.0, 410.0, 79.0, 48.0 ],
					"id" : "obj-15",
					"fontname" : "Arial Bold",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "frame-rate signal processing",
					"linecount" : 3,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 3.0, 130.0, 73.0, 48.0 ],
					"id" : "obj-16",
					"fontname" : "Arial Bold",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.importer.store corpus1",
					"color" : [ 1.0, 0.843137, 0.035294, 1.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 725.0, 225.0, 23.0 ],
					"id" : "obj-17",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "imtr.analysis.collect corpus1",
					"color" : [ 1.0, 0.843137, 0.035294, 1.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 260.0, 225.0, 23.0 ],
					"id" : "obj-18",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.importer.live~ corpus1",
					"color" : [ 1.0, 0.843137, 0.035294, 1.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 330.0, 30.0, 182.0, 23.0 ],
					"id" : "obj-19",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p loudness-to-dB",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 300.0, 615.0, 84.0, 19.0 ],
					"id" : "obj-20",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 942.0, 44.0, 370.0, 274.0 ],
						"bglocked" : 0,
						"defrect" : [ 942.0, 44.0, 370.0, 274.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
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
									"numinlets" : 1,
									"patching_rect" : [ 210.0, 60.0, 20.0, 20.0 ],
									"id" : "obj-11",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "with the option @wanted, only the value of that descriptor is output",
									"linecount" : 4,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 270.0, 90.0, 96.0, 55.0 ],
									"id" : "obj-1",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "imtr.analysis.stub Level @unit dB @type symbol float @wanted Loudness @name loudness-to-dB",
									"linecount" : 3,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 3,
									"patching_rect" : [ 45.0, 91.0, 189.0, 43.0 ],
									"id" : "obj-2",
									"fontname" : "Geneva",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 45.0, 198.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 45.0, 56.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "convert pitch in Hz to midi",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 44.0, 27.0, 193.0, 19.0 ],
									"id" : "obj-5",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 124.0, 162.0, 55.425293, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_(lin2db $1)" ],
									"patching_rect" : [ 124.0, 162.0, 55.425293, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-6",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [ 133.5, 198.0, 255.0, 198.0, 255.0, 51.0, 139.5, 51.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-2", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "get-descriptor-mat",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 760.0, 250.0, 93.0, 17.0 ],
					"id" : "obj-21",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "get-unitdata",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 610.0, 250.0, 65.0, 17.0 ],
					"id" : "obj-22",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart[2]",
					"text" : "catart.data.proxy corpus1",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 610.0, 271.0, 129.0, 19.0 ],
					"id" : "obj-23",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"patching_rect" : [ 720.0, 0.0, 26.0, 26.0 ],
					"id" : "obj-24",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"outlettype" : [ "" ],
					"#triggerall" : 0,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 990.0, 735.0, 137.0, 17.0 ],
					"#init" : "",
					"numinlets" : 2,
					"text" : [ "_set finished analysing $1 $2" ],
					"patching_rect" : [ 990.0, 735.0, 137.0, 17.0 ],
					"ftm_scope" : 0,
					"id" : "obj-29",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"#loadbang" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"outlettype" : [ "" ],
					"#triggerall" : 0,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"hidden" : 1,
					"presentation_rect" : [ 990.0, 710.0, 99.0, 17.0 ],
					"#init" : "",
					"numinlets" : 2,
					"text" : [ "_set analysing $1 $2" ],
					"patching_rect" : [ 990.0, 710.0, 99.0, 17.0 ],
					"ftm_scope" : 0,
					"id" : "obj-30",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"#loadbang" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "finished analysing live notfound",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 405.0, 720.0, 534.0, 17.0 ],
					"id" : "obj-31",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "descr.spectral.moments",
					"outlettype" : [ "", "float", "float", "float", "float" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 130.0, 190.0, 115.0, 19.0 ],
					"id" : "obj-33",
					"fontname" : "Geneva",
					"numoutlets" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "status and setup messages",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 330.0, 110.0, 129.0, 19.0 ],
					"id" : "obj-43",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart.lcd[1]",
					"text" : "catart.unitviewer corpus1",
					"color" : [ 0.670588, 0.215686, 0.827451, 1.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 720.0, 110.0, 160.0, 23.0 ],
					"id" : "obj-48",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 440.0, 220.0, 58.0, 19.0 ],
					"id" : "obj-50",
					"fontname" : "Geneva",
					"numoutlets" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 380.0, 220.0, 58.0, 19.0 ],
					"id" : "obj-51",
					"fontname" : "Geneva",
					"numoutlets" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p ext-descr",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 195.0, 580.0, 85.0, 19.0 ],
					"id" : "obj-68",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 414.0, 403.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 414.0, 403.0, 600.0, 426.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
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
									"text" : "p add-external-descriptors",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 134.0, 96.0, 133.0, 19.0 ],
									"id" : "obj-1",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 161.0, 582.0, 264.0, 232.0 ],
										"bglocked" : 0,
										"defrect" : [ 161.0, 582.0, 264.0, 232.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Geneva",
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
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"patching_rect" : [ 205.0, 45.0, 15.0, 15.0 ],
													"id" : "obj-1",
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "extend unitdata fmat by external descriptors, if there are any",
													"linecount" : 3,
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 55.0, 30.0, 135.0, 43.0 ],
													"id" : "obj-2",
													"fontname" : "Geneva",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"outlettype" : [ "" ],
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"presentation_rect" : [ 29.0, 73.0, 77.564941, 17.0 ],
													"#init" : "",
													"numins" : 4,
													"numinlets" : 4,
													"text" : [ "_(if ($4 size) $4)" ],
													"patching_rect" : [ 29.0, 73.0, 77.564941, 17.0 ],
													"ftm_scope" : 0,
													"id" : "obj-3",
													"fontname" : "Geneva",
													"numoutlets" : 1,
													"#loadbang" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ftm.iter",
													"outlettype" : [ "", "" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 29.0, 101.0, 46.0, 19.0 ],
													"id" : "obj-4",
													"fontname" : "Geneva",
													"numoutlets" : 2,
													"saved_object_attributes" : 													{
														"ftm_objref_conv" : 0,
														"ftm_scope" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"patching_rect" : [ 29.0, 45.0, 15.0, 15.0 ],
													"id" : "obj-5",
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 29.0, 157.0, 15.0, 15.0 ],
													"id" : "obj-6",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"outlettype" : [ "" ],
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"presentation_rect" : [ 29.0, 129.0, 64.750488, 17.0 ],
													"#init" : "",
													"numins" : 3,
													"numinlets" : 3,
													"text" : [ "_set $3 $2 $1" ],
													"patching_rect" : [ 29.0, 129.0, 64.750488, 17.0 ],
													"ftm_scope" : 0,
													"id" : "obj-7",
													"fontname" : "Geneva",
													"numoutlets" : 1,
													"#loadbang" : 0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 0 ],
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
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-7", 1 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-7", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Geneva",
										"fontname" : "Geneva",
										"default_fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 143.0, 244.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 143.0, 179.0, 112.901367, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_use-descriptor SoundSet" ],
									"patching_rect" : [ 143.0, 179.0, 112.901367, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-3",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "--> get frow on already existing descriptor",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 273.0, 179.0, 206.0, 19.0 ],
									"id" : "obj-4",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"outlettype" : [ "" ],
					"#triggerall" : 0,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"presentation_rect" : [ 140.0, 320.0, 59.910645, 17.0 ],
					"#init" : "",
					"numinlets" : 2,
					"text" : [ "_chopsize $1" ],
					"patching_rect" : [ 140.0, 320.0, 59.910645, 17.0 ],
					"ftm_scope" : 0,
					"id" : "obj-69",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"#loadbang" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p soundset-here!",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 195.0, 600.0, 85.0, 19.0 ],
					"id" : "obj-70",
					"fontname" : "Geneva",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 107.0, 240.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 107.0, 240.0, 600.0, 426.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
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
									"text" : "p soundset",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 3,
									"patching_rect" : [ 397.0, 248.0, 57.0, 19.0 ],
									"id" : "obj-10",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 826.0, 514.0, 444.0, 365.0 ],
										"bglocked" : 0,
										"defrect" : [ 826.0, 514.0, 444.0, 365.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Geneva",
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
													"text" : "given soundset",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 160.0, 43.0, 76.0, 19.0 ],
													"id" : "obj-1",
													"fontname" : "Geneva",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "default: no soundset (index 0)",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 275.0, 38.0, 144.0, 19.0 ],
													"id" : "obj-2",
													"fontname" : "Geneva",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"outlettype" : [ "" ],
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"presentation_rect" : [ 255.0, 85.0, 36.379395, 17.0 ],
													"#init" : "",
													"numinlets" : 2,
													"text" : [ "_(cat '')" ],
													"patching_rect" : [ 255.0, 85.0, 36.379395, 17.0 ],
													"ftm_scope" : 0,
													"id" : "obj-3",
													"fontname" : "Geneva",
													"numoutlets" : 1,
													"#loadbang" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "use dir name as soundset",
													"linecount" : 2,
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 48.0, 44.0, 70.0, 31.0 ],
													"id" : "obj-4",
													"fontname" : "Geneva",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"outlettype" : [ "" ],
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"presentation_rect" : [ 23.0, 149.0, 115.239258, 17.0 ],
													"#init" : "",
													"numinlets" : 2,
													"text" : [ "_(basename $1[dirname])" ],
													"patching_rect" : [ 23.0, 149.0, 115.239258, 17.0 ],
													"ftm_scope" : 0,
													"id" : "obj-5",
													"fontname" : "Geneva",
													"numoutlets" : 1,
													"#loadbang" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"outlettype" : [ "" ],
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"presentation_rect" : [ 13.0, 105.0, 81.788086, 17.0 ],
													"#init" : "",
													"numinlets" : 2,
													"text" : [ "_get-last-soundfile" ],
													"patching_rect" : [ 13.0, 105.0, 81.788086, 17.0 ],
													"ftm_scope" : 0,
													"id" : "obj-6",
													"fontname" : "Geneva",
													"numoutlets" : 1,
													"#loadbang" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "catart.data.proxy #1",
													"outlettype" : [ "", "" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 13.0, 126.0, 122.0, 19.0 ],
													"id" : "obj-7",
													"fontname" : "Geneva",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"outlettype" : [ "int" ],
													"numinlets" : 1,
													"patching_rect" : [ 13.0, 63.0, 15.0, 15.0 ],
													"id" : "obj-8",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_auto-soundset",
													"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"numinlets" : 0,
													"patching_rect" : [ 13.0, 21.0, 115.0, 19.0 ],
													"id" : "obj-9",
													"fontname" : "Geneva",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"outlettype" : [ "" ],
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"presentation_rect" : [ 143.0, 180.0, 117.150879, 17.0 ],
													"#init" : "",
													"numinlets" : 2,
													"text" : [ "_new-symbol SoundSet $1" ],
													"patching_rect" : [ 143.0, 180.0, 117.150879, 17.0 ],
													"ftm_scope" : 0,
													"id" : "obj-10",
													"fontname" : "Geneva",
													"numoutlets" : 1,
													"#loadbang" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"outlettype" : [ "" ],
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"presentation_rect" : [ 143.0, 232.0, 77.876953, 17.0 ],
													"#init" : "",
													"numinlets" : 2,
													"text" : [ "_set-soundset $1" ],
													"patching_rect" : [ 143.0, 232.0, 77.876953, 17.0 ],
													"ftm_scope" : 0,
													"id" : "obj-11",
													"fontname" : "Geneva",
													"numoutlets" : 1,
													"#loadbang" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "catart.data.proxy #1",
													"outlettype" : [ "", "" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 143.0, 206.0, 122.0, 19.0 ],
													"id" : "obj-12",
													"fontname" : "Geneva",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 13.0, 84.0, 29.0, 19.0 ],
													"id" : "obj-13",
													"fontname" : "Geneva",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"outlettype" : [ "" ],
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"presentation_rect" : [ 143.0, 90.0, 65.752441, 17.0 ],
													"#init" : "",
													"numinlets" : 2,
													"text" : [ "_$1[soundset]" ],
													"patching_rect" : [ 143.0, 90.0, 65.752441, 17.0 ],
													"ftm_scope" : 0,
													"id" : "obj-14",
													"fontname" : "Geneva",
													"numoutlets" : 1,
													"#loadbang" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"patching_rect" : [ 255.0, 42.0, 15.0, 15.0 ],
													"id" : "obj-15",
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"patching_rect" : [ 143.0, 42.0, 15.0, 15.0 ],
													"id" : "obj-16",
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "bang" ],
													"numinlets" : 0,
													"patching_rect" : [ 32.0, 44.0, 15.0, 15.0 ],
													"id" : "obj-17",
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 143.0, 252.0, 15.0, 15.0 ],
													"id" : "obj-18",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "todo: move to external analyser",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 14.0, 181.0, 147.0, 19.0 ],
													"id" : "obj-19",
													"fontname" : "Geneva",
													"numoutlets" : 0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-13", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [ 32.5, 171.0, 152.5, 171.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [ 264.5, 155.0, 152.5, 155.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Geneva",
										"fontname" : "Geneva",
										"default_fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_init",
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 0,
									"patching_rect" : [ 435.0, 210.0, 65.0, 19.0 ],
									"id" : "obj-30",
									"fontname" : "Geneva",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "to corpus",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 449.0, 513.0, 54.0, 19.0 ],
									"id" : "obj-44",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l b l l l",
									"outlettype" : [ "", "bang", "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 255.0, 210.0, 166.0, 19.0 ],
									"id" : "obj-55",
									"fontname" : "Geneva",
									"numoutlets" : 5
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1_catart.data",
									"color" : [ 0.8, 0.54902, 0.54902, 1.0 ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 450.0, 495.0, 106.0, 19.0 ],
									"id" : "obj-59",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-55", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 4 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-10", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"color" : [ 0.8, 0.54902, 0.54902, 1.0 ],
									"midpoints" : [ 406.5, 406.0, 459.5, 406.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p add-label",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 195.0, 620.0, 59.0, 19.0 ],
					"id" : "obj-73",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 117.0, 414.0, 352.0, 388.0 ],
						"bglocked" : 0,
						"defrect" : [ 117.0, 414.0, 352.0, 388.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
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
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 149.0, 291.0, 13.0, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_0" ],
									"patching_rect" : [ 149.0, 291.0, 13.0, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-1",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 l",
									"outlettype" : [ "int", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 91.0, 290.0, 47.0, 19.0 ],
									"id" : "obj-2",
									"fontname" : "Geneva",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 0",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 91.0, 318.0, 47.0, 19.0 ],
									"id" : "obj-3",
									"fontname" : "Geneva",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "suppress first marker (that only starts a unit)",
									"linecount" : 3,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 143.0, 304.0, 88.0, 43.0 ],
									"id" : "obj-4",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "default label when none given: empty string",
									"linecount" : 2,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 64.0, 45.0, 137.0, 31.0 ],
									"id" : "obj-5",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 49.0, 78.0, 36.379395, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_(cat '')" ],
									"patching_rect" : [ 49.0, 78.0, 36.379395, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-6",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l b",
									"outlettype" : [ "", "bang" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 9.0, 52.0, 50.0, 19.0 ],
									"id" : "obj-7",
									"fontname" : "Geneva",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 132.0, 78.0, 29.523926, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_begin" ],
									"patching_rect" : [ 132.0, 78.0, 29.523926, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-8",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 9.0, 166.0, 17.99707, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_$2" ],
									"patching_rect" : [ 9.0, 166.0, 17.99707, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-9",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l b",
									"outlettype" : [ "", "bang" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 9.0, 127.0, 50.0, 19.0 ],
									"id" : "obj-10",
									"fontname" : "Geneva",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 197.0, 230.0, 69.351562, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_(($1 size) - 1)" ],
									"patching_rect" : [ 197.0, 230.0, 69.351562, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-11",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 197.0, 30.0, 15.0, 15.0 ],
									"id" : "obj-12",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 9.0, 105.0, 17.99707, 17.0 ],
									"#init" : "",
									"numins" : 3,
									"numinlets" : 3,
									"text" : [ "_$3" ],
									"patching_rect" : [ 9.0, 105.0, 17.99707, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-13",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "catart.data.proxy #1",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 9.0, 230.0, 123.0, 19.0 ],
									"id" : "obj-14",
									"fontname" : "Geneva",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 9.0, 200.0, 98.711426, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_new-symbol Label $1" ],
									"patching_rect" : [ 9.0, 200.0, 98.711426, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-15",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 9.0, 304.0, 15.0, 15.0 ],
									"id" : "obj-16",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 9.0, 28.0, 15.0, 15.0 ],
									"id" : "obj-17",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 9.0, 263.0, 58.751953, 17.0 ],
									"#init" : "",
									"numins" : 3,
									"numinlets" : 3,
									"text" : [ "_set 0 $3 $1" ],
									"patching_rect" : [ 9.0, 263.0, 58.751953, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-18",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "last unit vector column (NOT descriptor index!!!)",
									"linecount" : 2,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 205.0, 251.0, 122.0, 31.0 ],
									"id" : "obj-19",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "delay label by one marker",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 65.0, 166.0, 137.0, 19.0 ],
									"id" : "obj-20",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "constant descriptor module: add labels from marker file",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 12.0, 9.0, 262.0, 19.0 ],
									"id" : "obj-21",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-13", 2 ],
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
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-3", 1 ],
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
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-18", 0 ],
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-18", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-9", 0 ],
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
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "segment.chop",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 340.0, 70.0, 19.0 ],
					"id" : "obj-74",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"cantchange" : 1,
					"triangle" : 0,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 660.0, 700.0, 44.0, 19.0 ],
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"id" : "obj-75",
					"fontname" : "Geneva",
					"numoutlets" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "frames",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 700.0, 700.0, 40.0, 19.0 ],
					"id" : "obj-76",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"cantchange" : 1,
					"triangle" : 0,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 620.0, 700.0, 43.0, 19.0 ],
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"id" : "obj-77",
					"fontname" : "Geneva",
					"numoutlets" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"cantchange" : 1,
					"triangle" : 0,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 740.0, 700.0, 31.0, 19.0 ],
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"id" : "obj-79",
					"fontname" : "Geneva",
					"numoutlets" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p status corpus1",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 800.0, 770.0, 95.0, 19.0 ],
					"id" : "obj-81",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 98.0, 718.0, 412.0, 259.0 ],
						"bglocked" : 0,
						"defrect" : [ 98.0, 718.0, 412.0, 259.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
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
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 282.0, 146.0, 82.631836, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_set empty corpus" ],
									"patching_rect" : [ 282.0, 146.0, 82.631836, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-1",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 34.0, 93.0, 127.45166, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_append \\, $1 files to import" ],
									"patching_rect" : [ 34.0, 93.0, 127.45166, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-2",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "finished or init",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 240.0, 38.0, 76.0, 19.0 ],
									"id" : "obj-3",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 214.0, 119.0, 33.325195, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_set $*" ],
									"patching_rect" : [ 214.0, 119.0, 33.325195, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-4",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "catart.data.proxy corpus1",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 214.0, 92.0, 129.0, 19.0 ],
									"id" : "obj-5",
									"fontname" : "Geneva",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 214.0, 66.0, 63.599121, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_get-summary" ],
									"patching_rect" : [ 214.0, 66.0, 63.599121, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-6",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 34.0, 64.0, 75.706055, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_(if ($1 > 0) $1)" ],
									"patching_rect" : [ 34.0, 64.0, 75.706055, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-7",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 214.0, 37.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 34.0, 162.0, 15.0, 15.0 ],
									"id" : "obj-9",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 34.0, 36.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "queue length",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 56.0, 37.0, 65.0, 19.0 ],
									"id" : "obj-11",
									"fontname" : "Geneva",
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 223.5, 148.0, 43.0, 148.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p pitch-histogram-modeling",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 365.0, 495.0, 130.0, 19.0 ],
					"id" : "obj-82",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 909.0, 731.0, 455.0, 268.0 ],
						"bglocked" : 0,
						"defrect" : [ 909.0, 731.0, 455.0, 268.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
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
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 47.0, 179.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 352.0, 62.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 45.0, 56.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 60.0, 15.0, 15.0 ],
					"id" : "obj-86",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart[1]",
					"text" : "catart.init1.5",
					"color" : [ 0.215686, 0.313726, 0.827451, 1.0 ],
					"outlettype" : [ "bang", "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 720.0, 30.0, 85.0, 23.0 ],
					"id" : "obj-87",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart",
					"text" : "catart.data1.5 corpus1",
					"color" : [ 0.215686, 0.313726, 0.827451, 1.0 ],
					"outlettype" : [ "", "bang" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 720.0, 80.0, 160.0, 23.0 ],
					"id" : "obj-89",
					"fontname" : "Geneva",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p pitch-to-chroma",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 195.0, 560.0, 90.0, 19.0 ],
					"id" : "obj-90",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 791.0, 239.0, 485.0, 277.0 ],
						"bglocked" : 0,
						"defrect" : [ 791.0, 239.0, 485.0, 277.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
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
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 180.0, 255.0, 50.0, 19.0 ],
									"id" : "obj-14",
									"fontname" : "Geneva",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 180.0, 195.0, 50.0, 19.0 ],
									"id" : "obj-13",
									"fontname" : "Geneva",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 180.0, 225.0, 50.0, 19.0 ],
									"id" : "obj-8",
									"fontname" : "Geneva",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"patching_rect" : [ 225.0, 75.0, 20.0, 20.0 ],
									"id" : "obj-6",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "todo: at init, declare note names as symbols",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 240.0, 30.0, 209.0, 19.0 ],
									"id" : "obj-1",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "calculate chroma (note-in-octave) and octave height",
									"linecount" : 2,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 280.0, 161.0, 163.0, 31.0 ],
									"id" : "obj-2",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 120.0, 165.0, 143.922363, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_($1 % 12) ((int ($1 / 12)) - 1)" ],
									"patching_rect" : [ 120.0, 165.0, 143.922363, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-3",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 120.0, 138.0, 53.891602, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_(round $1)" ],
									"patching_rect" : [ 120.0, 138.0, 53.891602, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-4",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "imtr.analysis.stub Chroma Octave @name pitch-to-chroma @type symbol int @wanted NoteNumber",
									"linecount" : 3,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 3,
									"patching_rect" : [ 45.0, 75.0, 169.0, 43.0 ],
									"id" : "obj-7",
									"fontname" : "Geneva",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 45.0, 195.0, 17.0, 17.0 ],
									"id" : "obj-9",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 45.0, 39.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "convert pitch in midi to chroma + octave",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 45.0, 15.0, 193.0, 19.0 ],
									"id" : "obj-11",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "get note number unit data",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 208.0, 138.0, 124.0, 19.0 ],
									"id" : "obj-12",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [ 129.5, 216.0, 448.0, 216.0, 448.0, 46.0, 129.5, 46.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p special-temporal-modeling",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 365.0, 525.0, 138.0, 19.0 ],
					"id" : "obj-91",
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 528.0, 768.0, 492.0, 275.0 ],
						"bglocked" : 0,
						"defrect" : [ 528.0, 768.0, 492.0, 275.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
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
									"text" : "get whole inst. descriptor fmat: can do attack time, etc.",
									"linecount" : 2,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 66.0, 139.0, 141.0, 31.0 ],
									"id" : "obj-1",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.absargs",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 199.0, 56.0, 64.0, 19.0 ],
									"id" : "obj-2",
									"fontname" : "Geneva",
									"numoutlets" : 3,
									"saved_object_attributes" : 									{
										"ftm_objref_conv" : 0,
										"ftm_scope" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 112.0, 119.0, 49.686035, 17.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_outstd $1" ],
									"patching_rect" : [ 112.0, 119.0, 49.686035, 17.0 ],
									"ftm_scope" : 0,
									"id" : "obj-3",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route analyse out whosthere",
									"outlettype" : [ "", "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 48.0, 88.0, 234.0, 19.0 ],
									"id" : "obj-4",
									"fontname" : "Geneva",
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-special",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 0,
									"patching_rect" : [ 84.0, 56.0, 64.0, 19.0 ],
									"id" : "obj-5",
									"fontname" : "Geneva",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 4,
									"presentation_linecount" : 4,
									"ftm_objref_conv" : 0,
									"outlettype" : [ "" ],
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 210.0, 128.0, 167.0, 53.0 ],
									"#init" : "",
									"numinlets" : 2,
									"text" : [ "_register special-tempmod #0-special,", "_add-descriptor specialdescr,", "_add-descriptor derived,", "_add-descriptor (cat $1 _std)" ],
									"patching_rect" : [ 210.0, 128.0, 167.0, 53.0 ],
									"ftm_scope" : 0,
									"id" : "obj-6",
									"fontname" : "Geneva",
									"numoutlets" : 1,
									"#loadbang" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 210.0, 201.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 352.0, 62.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 48.0, 56.0, 15.0, 15.0 ],
									"id" : "obj-9",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "args: inst. descriptors to work on, exclude list",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 85.0, 31.0, 222.0, 19.0 ],
									"id" : "obj-10",
									"fontname" : "Geneva",
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 2 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "segment.yin2",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 4,
					"patching_rect" : [ 350.0, 340.0, 70.0, 19.0 ],
					"id" : "obj-92",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "descr.yin",
					"outlettype" : [ "", "", "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 350.0, 190.0, 70.0, 19.0 ],
					"id" : "obj-94",
					"fontname" : "Geneva",
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.importer.files corpus1",
					"color" : [ 1.0, 0.843137, 0.035294, 1.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 120.0, 30.0, 200.0, 23.0 ],
					"id" : "obj-95",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route cur-time cur-frame num-frames queue-length end-import start end",
					"outlettype" : [ "", "", "", "", "", "", "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 560.0, 670.0, 439.0, 19.0 ],
					"id" : "obj-96",
					"fontname" : "Geneva",
					"numoutlets" : 8
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "files remaining to import",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 770.0, 700.0, 122.0, 19.0 ],
					"id" : "obj-97",
					"fontname" : "Geneva",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ftm.print corpus1",
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 610.0, 182.0, 94.0, 19.0 ],
					"id" : "obj-100",
					"fontname" : "Geneva",
					"numoutlets" : 0,
					"saved_object_attributes" : 					{
						"ftm_objref_conv" : 0,
						"ftm_scope" : 2
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"border" : 1,
					"bgcolor" : [ 1.0, 0.282353, 0.031373, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 3.0, 408.0, 87.0, 112.0 ],
					"id" : "obj-101",
					"numoutlets" : 0,
					"rounded" : 25
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"border" : 1,
					"bgcolor" : [ 0.972549, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 3.0, 128.0, 87.0, 122.0 ],
					"id" : "obj-102",
					"numoutlets" : 0,
					"rounded" : 25
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "init",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 50.0, 730.0, 23.0, 17.0 ],
					"id" : "obj-104",
					"fontname" : "Geneva",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"outlettype" : [ "", "" ],
					"numinlets" : 1,
					"types" : [  ],
					"patching_rect" : [ 10.0, 10.0, 316.0, 73.0 ],
					"id" : "obj-67",
					"numoutlets" : 2
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-158", 0 ],
					"destination" : [ "obj-156", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-151", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-151", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 1 ],
					"destination" : [ "obj-151", 1 ],
					"hidden" : 0,
					"midpoints" : [ 509.5, 580.5, 350.5, 580.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-108", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-143", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-143", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 0 ],
					"destination" : [ "obj-61", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 4 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 3 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 1 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 2 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [ 689.5, 694.0, 669.5, 694.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 2 ],
					"destination" : [ "obj-49", 1 ],
					"hidden" : 1,
					"midpoints" : [ 689.5, 734.0, 563.85791, 734.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 6 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 0 ],
					"destination" : [ "obj-116", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 1 ],
					"destination" : [ "obj-112", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 5 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 1 ],
					"destination" : [ "obj-92", 1 ],
					"hidden" : 0,
					"color" : [ 0.05098, 0.721569, 0.113725, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 2 ],
					"destination" : [ "obj-92", 2 ],
					"hidden" : 0,
					"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 3 ],
					"destination" : [ "obj-92", 3 ],
					"hidden" : 0,
					"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-82", 1 ],
					"hidden" : 1,
					"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [ 359.5, 325.0, 485.5, 325.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 1 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 3 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [ 374.5, 519.0, 129.5, 519.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1,
					"midpoints" : [ 29.0, 84.0, 44.25, 84.0, 44.25, 20.0, 59.5, 20.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [ 29.0, 554.0, 384.5, 554.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-128", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 1,
					"midpoints" : [ 29.0, 2.0, 89.5, 2.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [ 374.5, 519.0, 129.5, 519.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-126", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 149.5, 341.0, 129.5, 341.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-95", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-165", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-119", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 569.5, 57.0, 606.0, 57.0, 606.0, 30.0, 619.5, 30.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 1 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 1,
					"midpoints" : [ 595.5, 32.0, 619.5, 32.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-58", 1 ],
					"hidden" : 0,
					"midpoints" : [ 569.5, 65.0, 509.5, 65.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-117", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [ 419.5, 769.0, 117.0, 769.0, 117.0, 695.0, 129.5, 695.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-99", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
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
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-120", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 2 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [ 404.5, 692.0, 129.5, 692.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 554.5, 414.5, 554.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 554.0, 309.5, 554.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 1 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [ 517.5, 644.0, 419.5, 644.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-125", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 1 ],
					"destination" : [ "obj-133", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 729.5, 198.5, 619.5, 198.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-133", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 1,
					"midpoints" : [ 619.5, 329.5, 549.5, 329.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
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
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [ 309.5, 642.5, 129.5, 642.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 337.0, 359.5, 337.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 337.0, 429.5, 337.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 1,
					"midpoints" : [ 129.5, 253.0, 465.25, 253.0, 465.25, 147.0, 583.0, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 337.0, 204.5, 337.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-148", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-145", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 337.0, 289.5, 337.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [ 335.5, 294.0, 396.5, 294.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [ 335.5, 758.0, 409.5, 758.0, 409.5, 577.0, 444.5, 577.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-165", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-164", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-163", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-150", 0 ],
					"destination" : [ "obj-95", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-148", 0 ],
					"destination" : [ "obj-147", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-146", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-145", 0 ],
					"destination" : [ "obj-144", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-142", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-142", 1 ],
					"destination" : [ "obj-145", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-141", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 800.0, 165.0, 729.5, 165.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-136", 0 ],
					"destination" : [ "obj-137", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-135", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-133", 0 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-132", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-132", 0 ],
					"destination" : [ "obj-112", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 0 ],
					"destination" : [ "obj-112", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-128", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-124", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [ 729.5, 298.0, 569.5, 298.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-123", 0 ],
					"destination" : [ "obj-124", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-120", 0 ],
					"destination" : [ "obj-115", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-119", 0 ],
					"destination" : [ "obj-136", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-116", 0 ],
					"destination" : [ "obj-136", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-115", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 2 ],
					"destination" : [ "obj-96", 0 ],
					"hidden" : 0,
					"midpoints" : [ 329.5, 124.0, 569.5, 124.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 1 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 0,
					"midpoints" : [ 229.5, 126.0, 359.5, 126.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 1 ],
					"destination" : [ "obj-163", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-142", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-141", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-111", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 354.5, 519.0, 129.5, 519.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-109", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-109", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-107", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-132", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 1 ],
					"destination" : [ "obj-129", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 6 ],
					"destination" : [ "obj-161", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 5 ],
					"destination" : [ "obj-159", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 4 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 5 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0,
					"midpoints" : [ 569.5, 54.0, 532.0, 54.0, 532.0, 20.0, 502.5, 20.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 1 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 1,
					"midpoints" : [ 595.5, 27.0, 502.5, 27.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"midpoints" : [ 339.5, 85.0, 129.5, 85.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-122", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-149", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-130", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 448.5, 129.5, 448.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 359.5, 377.5, 129.5, 377.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-164", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-146", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-111", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 418.0, 354.5, 418.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 429.5, 377.5, 129.5, 377.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 204.5, 377.5, 129.5, 377.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-148", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 204.5, 337.5, 129.5, 337.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-145", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 289.5, 377.5, 129.5, 377.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-140", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 396.5, 377.5, 129.5, 377.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-138", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 479.5, 377.5, 129.5, 377.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 0 ],
					"destination" : [ "obj-137", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-167", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
