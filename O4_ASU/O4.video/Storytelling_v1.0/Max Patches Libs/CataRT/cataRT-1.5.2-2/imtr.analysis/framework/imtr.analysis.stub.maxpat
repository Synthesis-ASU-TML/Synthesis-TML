{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 635.0, 45.0, 641.0, 719.0 ],
		"bglocked" : 0,
		"defrect" : [ 635.0, 45.0, 641.0, 719.0 ],
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
					"maxclass" : "newobj",
					"text" : "gate 1 1",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 345.0, 620.0, 49.0, 19.0 ],
					"id" : "obj-74",
					"fontname" : "Geneva",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-enable",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 395.0, 570.0, 71.0, 19.0 ],
					"id" : "obj-71",
					"fontname" : "Geneva",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "send wanted descriptor's out ref = input vector data (but protect it from next route by usting 'list' prefix)",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 380.0, 530.0, 244.0, 31.0 ],
					"id" : "obj-73",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"presentation_rect" : [ 550.0, 645.0, 50.216309, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"#init" : "",
					"ftm_scope" : 1,
					"patching_rect" : [ 550.0, 645.0, 50.216309, 17.0 ],
					"#loadbang" : 0,
					"ftm_objref_conv" : 0,
					"#triggerall" : 0,
					"id" : "obj-69",
					"text" : [ "_enable $1" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"color" : [ 0.501961, 0.360784, 0.262745, 1.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 210.0, 32.5, 19.0 ],
					"id" : "obj-55",
					"fontname" : "Geneva",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"presentation_rect" : [ 451.0, 288.0, 116.25293, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"#init" : "",
					"ftm_scope" : 0,
					"patching_rect" : [ 451.0, 288.0, 116.25293, 17.0 ],
					"#loadbang" : 0,
					"ftm_objref_conv" : 0,
					"#triggerall" : 0,
					"id" : "obj-59",
					"text" : [ "_(print $*2 from alg: $*1)" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-name",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 560.0, 250.0, 72.0, 19.0 ],
					"id" : "obj-60",
					"fontname" : "Geneva",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p post-file",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 140.0, 645.0, 54.0, 19.0 ],
					"id" : "obj-72",
					"fontname" : "Geneva",
					"numinlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 546.0, 539.0, 288.0, 330.0 ],
						"bglocked" : 0,
						"defrect" : [ 546.0, 539.0, 288.0, 330.0 ],
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
									"maxclass" : "newobj",
									"text" : "mnm.submat",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 190.0, 100.0, 20.0 ],
									"id" : "obj-1",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"saved_object_attributes" : 									{
										"ftm_scope" : 0,
										"ftm_objref_conv" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"numoutlets" : 1,
									"presentation_rect" : [ 50.0, 100.0, 134.0, 32.0 ],
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"#init" : "",
									"ftm_scope" : 0,
									"patching_rect" : [ 50.0, 100.0, 134.0, 32.0 ],
									"#loadbang" : 0,
									"numins" : 4,
									"ftm_objref_conv" : 0,
									"#triggerall" : 0,
									"id" : "obj-59",
									"text" : [ "_(($*4 onset $2) size $3);", "_($*4 fmat)" ],
									"fontname" : "Arial",
									"numinlets" : 4,
									"#untuple" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-60",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 159.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-69",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 290.0, 25.0, 25.0 ],
									"id" : "obj-71",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-59", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-71", 0 ],
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
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Geneva",
						"default_fontsize" : 10.0,
						"fontname" : "Geneva"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 2 1",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 160.0, 615.0, 48.0, 19.0 ],
					"id" : "obj-57",
					"fontname" : "Geneva",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p enable&wanted",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 210.0, 590.0, 90.0, 19.0 ],
					"id" : "obj-83",
					"fontname" : "Geneva",
					"numinlets" : 3,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 8.0, 446.0, 693.0, 334.0 ],
						"bglocked" : 0,
						"defrect" : [ 8.0, 446.0, 693.0, 334.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
									"maxclass" : "message",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 180.0, 240.0, 110.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 360.0, 250.0, 50.0, 19.0 ],
									"id" : "obj-5",
									"fontname" : "Geneva",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 300.0, 90.0, 20.0, 20.0 ],
									"id" : "obj-10",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "name",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 80.0, 10.0, 34.0, 19.0 ],
									"id" : "obj-7",
									"fontname" : "Geneva",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 10.0, 25.0, 25.0 ],
									"id" : "obj-8",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"numoutlets" : 1,
									"presentation_rect" : [ 300.0, 60.0, 171.855469, 18.0 ],
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"#init" : "0 0 0",
									"ftm_scope" : 0,
									"patching_rect" : [ 300.0, 60.0, 171.855469, 18.0 ],
									"#loadbang" : 0,
									"ftm_objref_conv" : 0,
									"#triggerall" : 0,
									"id" : "obj-6",
									"text" : [ "_(if (($1 == all) | ($1 == $*2)) $2)" ],
									"fontname" : "Arial",
									"numinlets" : 2,
									"#untuple" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "wanted index",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 160.0, 10.0, 68.0, 19.0 ],
									"id" : "obj-4",
									"fontname" : "Geneva",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "route flag: 0 = disable, 1 = all descr., 2 = wanted descr. only",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 390.0, 270.0, 274.0, 19.0 ],
									"id" : "obj-3",
									"fontname" : "Geneva",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "list of wanted indices",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 180.0, 270.0, 103.0, 19.0 ],
									"id" : "obj-2",
									"fontname" : "Geneva",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "enable <name> <flag>",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 330.0, 10.0, 108.0, 19.0 ],
									"id" : "obj-1",
									"fontname" : "Geneva",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "on enable off, recall previous routing setting",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 310.0, 140.0, 89.0, 43.0 ],
									"id" : "obj-75",
									"fontname" : "Geneva",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int 1",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 300.0, 220.0, 32.5, 19.0 ],
									"id" : "obj-74",
									"fontname" : "Geneva",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 300.0, 120.0, 79.0, 19.0 ],
									"id" : "obj-73",
									"fontname" : "Geneva",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"numoutlets" : 1,
									"presentation_rect" : [ 440.0, 120.0, 13.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"#init" : "",
									"ftm_scope" : 0,
									"patching_rect" : [ 440.0, 120.0, 13.0, 17.0 ],
									"#loadbang" : 1,
									"ftm_objref_conv" : 0,
									"#triggerall" : 0,
									"id" : "obj-69",
									"text" : [ "_1" ],
									"fontname" : "Geneva",
									"numinlets" : 2,
									"#untuple" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 2 l",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "" ],
									"patching_rect" : [ 130.0, 120.0, 39.0, 19.0 ],
									"id" : "obj-55",
									"fontname" : "Geneva",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 130.0, 10.0, 25.0, 25.0 ],
									"id" : "obj-79",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 10.0, 25.0, 25.0 ],
									"id" : "obj-80",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 360.0, 270.0, 25.0, 25.0 ],
									"id" : "obj-81",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 150.0, 270.0, 25.0, 25.0 ],
									"id" : "obj-82",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-55", 1 ],
									"destination" : [ "obj-82", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 1 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 47.0, 462.355469, 47.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 369.5, 194.0, 369.5, 194.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-73", 0 ],
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
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 1 1",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 445.0, 620.0, 48.0, 19.0 ],
					"id" : "obj-76",
					"fontname" : "Geneva",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 395.0, 590.0, 20.0, 20.0 ],
					"id" : "obj-77",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 1 1",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 395.0, 620.0, 48.0, 19.0 ],
					"id" : "obj-78",
					"fontname" : "Geneva",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0-enable",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 260.0, 620.0, 72.0, 19.0 ],
					"id" : "obj-70",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"presentation_rect" : [ 105.0, 645.0, 28.019531, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"#init" : "",
					"ftm_scope" : 0,
					"patching_rect" : [ 105.0, 645.0, 28.019531, 17.0 ],
					"#loadbang" : 0,
					"numins" : 3,
					"ftm_objref_conv" : 0,
					"#triggerall" : 0,
					"id" : "obj-68",
					"text" : [ "_$3" ],
					"fontname" : "Geneva",
					"numinlets" : 3,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"presentation_rect" : [ 46.0, 645.0, 26.019531, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"#init" : "",
					"ftm_scope" : 0,
					"patching_rect" : [ 46.0, 645.0, 26.019531, 17.0 ],
					"#loadbang" : 0,
					"ftm_objref_conv" : 0,
					"#triggerall" : 0,
					"id" : "obj-67",
					"text" : [ "_$2" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend analyse-seg",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 445.0, 645.0, 100.0, 19.0 ],
					"id" : "obj-66",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"presentation_rect" : [ 395.0, 645.0, 41.352539, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"#init" : "",
					"ftm_scope" : 0,
					"patching_rect" : [ 395.0, 645.0, 41.352539, 17.0 ],
					"#loadbang" : 0,
					"ftm_objref_conv" : 0,
					"#triggerall" : 0,
					"id" : "obj-65",
					"text" : [ "_time $1" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t l l",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 105.0, 668.0, 156.0, 19.0 ],
					"id" : "obj-64",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"color" : [ 0.501961, 0.360784, 0.262745, 1.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 510.0, 210.0, 32.5, 19.0 ],
					"id" : "obj-62",
					"fontname" : "Geneva",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"presentation_rect" : [ 450.0, 270.0, 105.209473, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"#init" : "",
					"ftm_scope" : 0,
					"patching_rect" : [ 450.0, 270.0, 105.209473, 17.0 ],
					"#loadbang" : 0,
					"ftm_objref_conv" : 0,
					"#triggerall" : 0,
					"id" : "obj-61",
					"text" : [ "_(print $*2 to alg: $*1)" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-name",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 550.0, 230.0, 72.0, 19.0 ],
					"id" : "obj-58",
					"fontname" : "Geneva",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-name",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 105.0, 72.0, 19.0 ],
					"id" : "obj-56",
					"fontname" : "Geneva",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"presentation_rect" : [ 90.0, 128.0, 35.775879, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"#init" : "",
					"ftm_scope" : 0,
					"patching_rect" : [ 90.0, 128.0, 35.775879, 17.0 ],
					"#loadbang" : 0,
					"ftm_objref_conv" : 0,
					"#triggerall" : 0,
					"id" : "obj-54",
					"text" : [ "_set $1" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 2 1",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 105.0, 615.0, 48.0, 19.0 ],
					"id" : "obj-49",
					"fontname" : "Geneva",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0-enable",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 580.0, 71.0, 19.0 ],
					"id" : "obj-18",
					"fontname" : "Geneva",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "filter out unspecified abstraction args (they appear as 0)",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 45.0, 500.0, 258.0, 19.0 ],
					"id" : "obj-47",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 15.0, 500.0, 31.0, 19.0 ],
					"id" : "obj-44",
					"fontname" : "Geneva",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b b l",
					"numoutlets" : 4,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "bang", "bang", "" ],
					"patching_rect" : [ 15.0, 255.0, 87.0, 19.0 ],
					"id" : "obj-63",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p pick-wanted",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 200.0, 645.0, 70.0, 19.0 ],
					"id" : "obj-51",
					"fontname" : "Geneva",
					"numinlets" : 5,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 697.0, 575.0, 519.0, 181.0 ],
						"bglocked" : 0,
						"defrect" : [ 697.0, 575.0, 519.0, 181.0 ],
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
									"maxclass" : "comment",
									"text" : "out fvec",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 375.0, 0.0, 37.0, 31.0 ],
									"id" : "obj-10",
									"fontname" : "Geneva",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 360.0, 15.0, 15.0, 15.0 ],
									"id" : "obj-11",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"numoutlets" : 1,
									"presentation_rect" : [ 240.0, 90.0, 144.0, 32.0 ],
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"#init" : "",
									"ftm_scope" : 0,
									"patching_rect" : [ 240.0, 90.0, 144.0, 32.0 ],
									"#loadbang" : 0,
									"numins" : 5,
									"ftm_objref_conv" : 0,
									"#triggerall" : 0,
									"id" : "obj-9",
									"text" : [ "_(($4 onset $2) size $3);", "_(($4 fmat) colref $5 $2 $3)" ],
									"fontname" : "Arial",
									"numinlets" : 5,
									"#untuple" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "postfile: <filename> <start row> <num rows>",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 255.0, 0.0, 97.0, 43.0 ],
									"id" : "obj-4",
									"fontname" : "Geneva",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 240.0, 15.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p pick-wanted-cols",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 105.0, 90.0, 110.0, 20.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 739.0, 419.0, 525.0, 361.0 ],
										"bglocked" : 0,
										"defrect" : [ 739.0, 419.0, 525.0, 361.0 ],
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
													"text" : "todo: use mnm.submat",
													"numoutlets" : 0,
													"fontsize" : 12.0,
													"patching_rect" : [ 120.0, 30.0, 150.0, 20.0 ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"numoutlets" : 1,
													"presentation_rect" : [ 240.0, 210.0, 84.679688, 18.0 ],
													"fontsize" : 12.0,
													"outlettype" : [ "" ],
													"#init" : "",
													"ftm_scope" : 0,
													"patching_rect" : [ 240.0, 210.0, 84.679688, 18.0 ],
													"#loadbang" : 0,
													"numins" : 3,
													"ftm_objref_conv" : 0,
													"#triggerall" : 0,
													"id" : "obj-12",
													"text" : [ "_rows ($3 rows)" ],
													"fontname" : "Arial",
													"numinlets" : 3,
													"#untuple" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"numoutlets" : 1,
													"presentation_rect" : [ 300.0, 270.0, 29.34375, 18.0 ],
													"fontsize" : 12.0,
													"outlettype" : [ "" ],
													"#init" : "",
													"ftm_scope" : 0,
													"patching_rect" : [ 300.0, 270.0, 29.34375, 18.0 ],
													"#loadbang" : 0,
													"ftm_objref_conv" : 0,
													"#triggerall" : 0,
													"id" : "obj-8",
													"text" : [ "_print" ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"#untuple" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"numoutlets" : 1,
													"presentation_rect" : [ 15.0, 270.0, 29.34375, 18.0 ],
													"fontsize" : 12.0,
													"outlettype" : [ "" ],
													"#init" : "",
													"ftm_scope" : 0,
													"patching_rect" : [ 15.0, 270.0, 29.34375, 18.0 ],
													"#loadbang" : 0,
													"ftm_objref_conv" : 0,
													"#triggerall" : 0,
													"id" : "obj-3",
													"text" : [ "_print" ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"#untuple" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"linecount" : 2,
													"presentation_linecount" : 2,
													"numoutlets" : 1,
													"presentation_rect" : [ 75.0, 195.0, 142.0, 32.0 ],
													"fontsize" : 12.0,
													"outlettype" : [ "" ],
													"#init" : "",
													"ftm_scope" : 0,
													"patching_rect" : [ 75.0, 195.0, 142.0, 32.0 ],
													"#loadbang" : 0,
													"numins" : 5,
													"ftm_objref_conv" : 0,
													"#triggerall" : 0,
													"id" : "obj-16",
													"text" : [ "_($pick refer $5 col $1)", "_($submat setcol $2 $pick)" ],
													"fontname" : "Arial",
													"numinlets" : 5,
													"#untuple" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.object",
													"text" : "fvec col",
													"numoutlets" : 2,
													"editor_interface" : "",
													"presentation_rect" : [ 330.0, 270.0, 83.140625, 19.0 ],
													"fontsize" : 12.0,
													"outlettype" : [ "", "" ],
													"scope" : 0,
													"ftm_scope" : 0,
													"patching_rect" : [ 330.0, 270.0, 83.140625, 19.0 ],
													"ftm_objref_conv" : 0,
													"description" : "fvec col",
													"name" : "pick",
													"id" : "obj-15",
													"fontname" : "Arial",
													"numinlets" : 1,
													"persistence" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b l",
													"numoutlets" : 3,
													"fontsize" : 12.0,
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 45.0, 75.0, 214.0, 20.0 ],
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ftm.iter",
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 75.0, 150.0, 51.0, 20.0 ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 1,
													"saved_object_attributes" : 													{
														"ftm_scope" : 0,
														"ftm_objref_conv" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"numoutlets" : 1,
													"presentation_rect" : [ 75.0, 120.0, 38.701172, 18.0 ],
													"fontsize" : 12.0,
													"outlettype" : [ "" ],
													"#init" : "",
													"ftm_scope" : 0,
													"patching_rect" : [ 75.0, 120.0, 38.701172, 18.0 ],
													"#loadbang" : 0,
													"ftm_objref_conv" : 0,
													"#triggerall" : 0,
													"id" : "obj-6",
													"text" : [ "_{ $*2 }" ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"#untuple" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"numoutlets" : 1,
													"presentation_rect" : [ 330.0, 225.0, 78.697266, 18.0 ],
													"fontsize" : 12.0,
													"outlettype" : [ "" ],
													"#init" : "",
													"ftm_scope" : 0,
													"patching_rect" : [ 330.0, 225.0, 78.697266, 18.0 ],
													"#loadbang" : 0,
													"ftm_objref_conv" : 0,
													"#triggerall" : 0,
													"id" : "obj-5",
													"text" : [ "_cols (llen $*1)" ],
													"fontname" : "Arial",
													"numinlets" : 2,
													"#untuple" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.object",
													"text" : "fmat 1000 50, rows 0",
													"numoutlets" : 2,
													"editor_interface" : "",
													"presentation_rect" : [ 45.0, 270.0, 172.53125, 19.0 ],
													"fontsize" : 12.0,
													"outlettype" : [ "", "" ],
													"scope" : 0,
													"ftm_scope" : 0,
													"patching_rect" : [ 45.0, 270.0, 172.53125, 19.0 ],
													"ftm_objref_conv" : 0,
													"description" : "fmat 1000 50, rows 0",
													"name" : "submat",
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 1,
													"persistence" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 45.0, 30.0, 25.0, 25.0 ],
													"id" : "obj-9",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 330.0, 30.0, 25.0, 25.0 ],
													"id" : "obj-10",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 45.0, 315.0, 25.0, 25.0 ],
													"id" : "obj-11",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-16", 1 ],
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
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [ 152.0, 107.0, 84.5, 107.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 2 ],
													"destination" : [ "obj-16", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 2 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [ 339.5, 114.0, 104.201172, 114.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
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
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "tempmod: incoming <segment start time> <segment end time> <fmat: inst>",
									"linecount" : 4,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 120.0, 0.0, 108.0, 55.0 ],
									"id" : "obj-6",
									"fontname" : "Geneva",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "descr. index list to pick",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 435.0, 0.0, 70.0, 31.0 ],
									"id" : "obj-5",
									"fontname" : "Geneva",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 105.0, 15.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 420.0, 15.0, 15.0, 15.0 ],
									"id" : "obj-18",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"numoutlets" : 1,
									"presentation_rect" : [ 0.0, 90.0, 44.033203, 18.0 ],
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"#init" : "",
									"ftm_scope" : 0,
									"patching_rect" : [ 0.0, 90.0, 44.033203, 18.0 ],
									"#loadbang" : 0,
									"numins" : 3,
									"ftm_objref_conv" : 0,
									"#triggerall" : 0,
									"id" : "obj-15",
									"text" : [ "_$2[$*3]" ],
									"fontname" : "Arial",
									"numinlets" : 3,
									"#untuple" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "inst: incoming <frame or segment time> <frow: inst>",
									"linecount" : 4,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 15.0, 0.0, 85.0, 55.0 ],
									"id" : "obj-7",
									"fontname" : "Geneva",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 150.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 0.0, 15.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-9", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-15", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-9", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-15", 0 ],
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
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 2 1",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 46.0, 615.0, 48.0, 19.0 ],
					"id" : "obj-50",
					"fontname" : "Geneva",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ask for descriptor index in inst. fmat to be sent",
					"linecount" : 3,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 420.0, 410.0, 90.0, 43.0 ],
					"id" : "obj-48",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"presentation_rect" : [ 105.0, 300.0, 78.675293, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"#init" : "",
					"ftm_scope" : 0,
					"patching_rect" : [ 105.0, 300.0, 78.675293, 17.0 ],
					"#loadbang" : 0,
					"ftm_objref_conv" : 0,
					"#triggerall" : 0,
					"id" : "obj-46",
					"text" : [ "_(print $myclass)" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "var",
					"numoutlets" : 2,
					"editor_interface" : "",
					"presentation_rect" : [ 105.0, 276.0, 70.022461, 18.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"scope" : 0,
					"ftm_scope" : 0,
					"patching_rect" : [ 105.0, 276.0, 70.022461, 18.0 ],
					"ftm_objref_conv" : 0,
					"description" : "var",
					"name" : "myclass",
					"id" : "obj-45",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"persistence" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"presentation_rect" : [ 105.0, 255.0, 35.775879, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"#init" : "",
					"ftm_scope" : 0,
					"patching_rect" : [ 105.0, 255.0, 35.775879, 17.0 ],
					"#loadbang" : 0,
					"ftm_objref_conv" : 0,
					"#triggerall" : 0,
					"id" : "obj-42",
					"text" : [ "_set $1" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "send on but protect fvec reference from next route by usting 'list' prefix",
					"linecount" : 3,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 335.0, 285.0, 133.0, 43.0 ],
					"id" : "obj-17",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 690.0, 15.0, 15.0 ],
					"id" : "obj-43",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"color" : [ 0.501961, 0.360784, 0.262745, 1.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 480.0, 210.0, 32.5, 19.0 ],
					"id" : "obj-38",
					"fontname" : "Geneva",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"presentation_rect" : [ 450.0, 253.0, 94.87793, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"#init" : "",
					"ftm_scope" : 0,
					"patching_rect" : [ 450.0, 253.0, 94.87793, 17.0 ],
					"#loadbang" : 0,
					"ftm_objref_conv" : 0,
					"#triggerall" : 0,
					"id" : "obj-36",
					"text" : [ "_(print $*2 out: $*1)" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 450.0, 90.0, 15.0, 15.0 ],
					"id" : "obj-11",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 60.0, 150.0, 20.0, 20.0 ],
					"id" : "obj-19",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "vecsize and defmat can be lists or scalars (which are repeated for all declared descriptors)",
					"linecount" : 3,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 390.0, 480.0, 160.0, 43.0 ],
					"id" : "obj-53",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"presentation_rect" : [ 300.0, 480.0, 37.705078, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"#init" : "",
					"ftm_scope" : 0,
					"patching_rect" : [ 300.0, 480.0, 37.705078, 17.0 ],
					"#loadbang" : 0,
					"ftm_objref_conv" : 0,
					"#triggerall" : 0,
					"id" : "obj-52",
					"text" : [ "_{ $*1 }" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"presentation_rect" : [ 345.0, 480.0, 37.705078, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"#init" : "",
					"ftm_scope" : 0,
					"patching_rect" : [ 345.0, 480.0, 37.705078, 17.0 ],
					"#loadbang" : 0,
					"ftm_objref_conv" : 0,
					"#triggerall" : 0,
					"id" : "obj-41",
					"text" : [ "_{ $*1 }" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"presentation_rect" : [ 15.0, 440.0, 60.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"#init" : "",
					"ftm_scope" : 0,
					"patching_rect" : [ 15.0, 440.0, 60.0, 17.0 ],
					"#loadbang" : 0,
					"ftm_objref_conv" : 0,
					"#triggerall" : 0,
					"id" : "obj-40",
					"text" : [ "_{ $*2 }" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"bgcolor" : [ 0.501961, 0.360784, 0.262745, 1.0 ],
					"patching_rect" : [ 450.0, 180.0, 20.0, 20.0 ],
					"id" : "obj-39",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"presentation_rect" : [ 450.0, 235.0, 87.547852, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"#init" : "",
					"ftm_scope" : 0,
					"patching_rect" : [ 450.0, 235.0, 87.547852, 17.0 ],
					"#loadbang" : 0,
					"ftm_objref_conv" : 0,
					"#triggerall" : 0,
					"id" : "obj-37",
					"text" : [ "_(print $*2 in: $*1)" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r catart.import.debug",
					"color" : [ 0.501961, 0.360784, 0.262745, 1.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.0, 150.0, 107.0, 19.0 ],
					"id" : "obj-34",
					"fontname" : "Geneva",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"color" : [ 0.501961, 0.360784, 0.262745, 1.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 450.0, 210.0, 32.5, 19.0 ],
					"id" : "obj-35",
					"fontname" : "Geneva",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "data obj out to algorithm",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 120.0, 690.0, 120.0, 19.0 ],
					"id" : "obj-32",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 690.0, 15.0, 15.0 ],
					"id" : "obj-33",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"presentation_rect" : [ 285.0, 285.0, 57.089355, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"#init" : "",
					"ftm_scope" : 0,
					"patching_rect" : [ 285.0, 285.0, 57.089355, 17.0 ],
					"#loadbang" : 0,
					"ftm_objref_conv" : 0,
					"#triggerall" : 0,
					"id" : "obj-31",
					"text" : [ "_out list $*1" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"presentation_rect" : [ 200.0, 415.0, 102.351074, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"#init" : "",
					"ftm_scope" : 0,
					"patching_rect" : [ 200.0, 415.0, 102.351074, 17.0 ],
					"#loadbang" : 0,
					"ftm_objref_conv" : 0,
					"#triggerall" : 0,
					"id" : "obj-1",
					"text" : [ "_(cat  1011- $1)" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<descr name> <descr group> <type (int, float, symbol, vector)> <vector size> <default max value> [\"hidden\"]",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 30.0, 544.0, 257.0, 31.0 ],
					"id" : "obj-2",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0-name",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 200.0, 440.0, 72.0, 19.0 ],
					"id" : "obj-3",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "default name,  group and descriptor params",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 390.0, 330.0, 148.0, 31.0 ],
					"id" : "obj-4",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route name group type vecsize defmax wanted",
					"numoutlets" : 7,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "", "", "" ],
					"patching_rect" : [ 210.0, 390.0, 261.0, 19.0 ],
					"id" : "obj-5",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "attributes: @name <name of module> @group <descriptor group> @type <descriptor type: float|int|symbol|vector> @wanted <descriptor name to output>",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 15.0, 45.0, 550.0, 31.0 ],
					"id" : "obj-6",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "loop over descriptors to declare",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 60.0, 470.0, 150.0, 19.0 ],
					"id" : "obj-7",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ftm.iter",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 15.0, 470.0, 48.0, 19.0 ],
					"id" : "obj-8",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"saved_object_attributes" : 					{
						"ftm_scope" : 0,
						"ftm_objref_conv" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ftm.absargs @name (cat (aa (#1 != @name) #1 unnamed) -analyser) @group no_group @type symbol float @vecsize 1 @defmax 1",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 60.0, 330.0, 324.0, 31.0 ],
					"id" : "obj-9",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"saved_object_attributes" : 					{
						"ftm_scope" : 0,
						"ftm_objref_conv" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "arguments: <list of descriptor names...>",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 15.0, 30.0, 549.0, 19.0 ],
					"id" : "obj-10",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "store data in current row of instantaneous descriptors or unit descriptors",
					"linecount" : 3,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 195.0, 240.0, 149.0, 43.0 ],
					"id" : "obj-12",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t l l",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 75.0, 179.0, 45.0, 19.0 ],
					"id" : "obj-13",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 205.0, 90.0, 15.0, 15.0 ],
					"id" : "obj-14",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "all other messages are forwarded to stub-including module, if enabled",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 395.0, 665.0, 170.0, 31.0 ],
					"id" : "obj-15",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 345.0, 680.0, 15.0, 15.0 ],
					"id" : "obj-16",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "out to importer",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 30.0, 690.0, 79.0, 19.0 ],
					"id" : "obj-20",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "receive",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 150.0, 44.0, 19.0 ],
					"id" : "obj-21",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 75.0, 90.0, 15.0, 15.0 ],
					"id" : "obj-22",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "data input from including analyser module: list of descriptor values (as many as declared)",
					"linecount" : 3,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 220.0, 90.0, 159.0, 43.0 ],
					"id" : "obj-23",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t l l",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 15.0, 668.0, 45.0, 19.0 ],
					"id" : "obj-24",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route analyse analyse-seg whosthere out wanted debug enable analyse-postfile",
					"linecount" : 2,
					"numoutlets" : 9,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 75.0, 210.0, 319.0, 31.0 ],
					"id" : "obj-25",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Stub for catart descriptor analyser module that handles most messages and puts the analysed data in the right place. The module including this stub receives commands and vectors of sound from imtr.analysis.",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 15.0, 0.0, 551.0, 31.0 ],
					"id" : "obj-26",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "every analyser is called via a unique receive that it declares to the importer via the register-analyser message (with its name and followed by the descriptors it produces)",
					"linecount" : 4,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 135.0, 150.0, 235.0, 55.0 ],
					"id" : "obj-27",
					"fontname" : "Geneva",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"presentation_rect" : [ 205.0, 285.0, 76.957031, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"#init" : "",
					"ftm_scope" : 0,
					"patching_rect" : [ 205.0, 285.0, 76.957031, 17.0 ],
					"#loadbang" : 0,
					"ftm_objref_conv" : 0,
					"#triggerall" : 0,
					"id" : "obj-28",
					"text" : [ "_($*2 set 0 $*1)" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"presentation_rect" : [ 15.0, 530.0, 166.113281, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"#init" : "",
					"ftm_scope" : 0,
					"patching_rect" : [ 15.0, 530.0, 166.113281, 17.0 ],
					"#loadbang" : 0,
					"numins" : 6,
					"ftm_objref_conv" : 0,
					"#triggerall" : 0,
					"id" : "obj-29",
					"text" : [ "_descriptor $1 $3 $4 $5[$2] $6[$2]" ],
					"fontname" : "Geneva",
					"numinlets" : 6,
					"#untuple" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"presentation_rect" : [ 90.0, 440.0, 104.194336, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"#init" : "",
					"ftm_scope" : 2,
					"patching_rect" : [ 90.0, 440.0, 104.194336, 17.0 ],
					"#loadbang" : 0,
					"numins" : 4,
					"ftm_objref_conv" : 0,
					"#triggerall" : 0,
					"id" : "obj-30",
					"text" : [ "_register $2 $3 { $*4 }" ],
					"fontname" : "Geneva",
					"numinlets" : 4,
					"#untuple" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 2 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 374.5, 374.0, 219.5, 374.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-40", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 1 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-51", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 1 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [ 251.5, 699.0, 572.0, 699.0, 572.0, 207.0, 533.0, 207.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 2 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 3 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 47.166668, 422.5, 99.5, 422.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-59", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-61", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 1 ],
					"destination" : [ "obj-51", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-29", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 1 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 3 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 4 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-30", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 5 ],
					"destination" : [ "obj-30", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-29", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 2 ],
					"destination" : [ "obj-29", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 1 ],
					"destination" : [ "obj-51", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 1 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-29", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"color" : [ 0.501961, 0.360784, 0.262745, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"color" : [ 0.501961, 0.360784, 0.262745, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"color" : [ 0.501961, 0.360784, 0.262745, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"color" : [ 0.501961, 0.360784, 0.262745, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"color" : [ 0.501961, 0.360784, 0.262745, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-74", 1 ],
					"hidden" : 0,
					"midpoints" : [ 294.5, 319.5, 384.5, 319.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 4 ],
					"destination" : [ "obj-83", 1 ],
					"hidden" : 0,
					"midpoints" : [ 234.5, 582.0, 255.0, 582.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 6 ],
					"destination" : [ "obj-83", 2 ],
					"hidden" : 0,
					"midpoints" : [ 309.5, 580.0, 290.5, 580.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-78", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-76", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 8 ],
					"destination" : [ "obj-74", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 3 ],
					"destination" : [ "obj-72", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 2 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [ 159.5, 249.5, 24.5, 249.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 7 ],
					"destination" : [ "obj-57", 1 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 3 ],
					"destination" : [ "obj-51", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-50", 1 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 84.5, 595.0, 84.5, 595.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-49", 1 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 122.0, 578.5, 143.5, 578.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 5 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 3 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 3 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-38", 1 ],
					"hidden" : 0,
					"color" : [ 0.501961, 0.360784, 0.262745, 1.0 ],
					"midpoints" : [ 50.5, 711.0, 580.0, 711.0, 580.0, 200.0, 503.0, 200.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-55", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-35", 1 ],
					"hidden" : 0,
					"color" : [ 0.501961, 0.360784, 0.262745, 1.0 ],
					"midpoints" : [ 110.5, 203.0, 473.0, 203.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"color" : [ 0.501961, 0.360784, 0.262745, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-30", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
