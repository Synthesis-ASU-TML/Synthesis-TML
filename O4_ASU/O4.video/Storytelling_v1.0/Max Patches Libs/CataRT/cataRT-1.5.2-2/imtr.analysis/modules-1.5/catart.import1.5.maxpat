{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 538.0, 44.0, 581.0, 919.0 ],
		"bglocked" : 0,
		"defrect" : [ 538.0, 44.0, 581.0, 919.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 9.0,
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 305.0, 380.0, 15.0, 15.0 ],
					"id" : "obj-144",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "segment.flux",
					"patching_rect" : [ 295.0, 360.0, 66.0, 19.0 ],
					"id" : "obj-145",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "descr.spectral-flux",
					"patching_rect" : [ 120.0, 220.0, 96.0, 19.0 ],
					"id" : "obj-50",
					"outlettype" : [ "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 50.0, 80.0, 25.018066, 17.0 ],
					"#triggerall" : 0,
					"id" : "obj-49",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"fontname" : "Geneva",
					"ftm_scope" : 1,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 50.0, 80.0, 25.018066, 17.0 ],
					"numinlets" : 2,
					"text" : [ "_242" ],
					"#loadbang" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart[6]",
					"text" : "r #0_store",
					"patching_rect" : [ 100.0, 20.0, 88.0, 19.0 ],
					"color" : [ 0.988235, 0.011765, 0.011765, 1.0 ],
					"id" : "obj-47",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 100.0, 60.0, 43.683105, 17.0 ],
					"#triggerall" : 0,
					"id" : "obj-44",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"fontname" : "Geneva",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 100.0, 60.0, 43.683105, 17.0 ],
					"numinlets" : 2,
					"text" : [ "_store $1" ],
					"#loadbang" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 100.0, 40.0, 18.0, 18.0 ],
					"id" : "obj-46",
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "unit frow",
					"patching_rect" : [ 440.0, 870.0, 45.0, 17.0 ],
					"id" : "obj-32",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 420.0, 870.0, 20.0, 20.0 ],
					"id" : "obj-42",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<time> <inst. descr. row>",
					"linecount" : 2,
					"patching_rect" : [ 350.0, 870.0, 70.0, 27.0 ],
					"id" : "obj-31",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route analyse",
					"patching_rect" : [ 370.0, 410.0, 76.0, 19.0 ],
					"id" : "obj-48",
					"outlettype" : [ "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 330.0, 870.0, 20.0, 20.0 ],
					"id" : "obj-34",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "build menu",
					"linecount" : 2,
					"patching_rect" : [ 520.0, 870.0, 36.0, 27.0 ],
					"id" : "obj-25",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "lcd",
					"patching_rect" : [ 20.0, 890.0, 22.0, 17.0 ],
					"id" : "obj-23",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 50.0, 260.0, 50.0, 19.0 ],
					"id" : "obj-24",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p attack-count",
					"patching_rect" : [ 370.0, 580.0, 99.0, 19.0 ],
					"id" : "obj-52",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"fontsize" : 9.0,
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
									"patching_rect" : [ 210.0, 105.0, 20.0, 20.0 ],
									"id" : "obj-19",
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 105.0, 195.0, 50.0, 19.0 ],
									"id" : "obj-17",
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 180.0, 105.0, 20.0, 20.0 ],
									"id" : "obj-15",
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"patching_rect" : [ 30.0, 105.0, 44.0, 19.0 ],
									"id" : "obj-13",
									"outlettype" : [ "bang", "bang" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"patching_rect" : [ 45.0, 180.0, 51.5, 19.0 ],
									"id" : "obj-1",
									"outlettype" : [ "int" ],
									"fontname" : "Geneva",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter",
									"patching_rect" : [ 75.0, 150.0, 100.0, 19.0 ],
									"id" : "obj-8",
									"outlettype" : [ "int", "", "", "int" ],
									"fontname" : "Geneva",
									"numinlets" : 5,
									"fontsize" : 9.0,
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 15.0, 15.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 225.0, 30.0, 20.0, 20.0 ],
									"id" : "obj-11",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "imtr.analysis.stub AttackCount @type int @name attack-count",
									"linecount" : 2,
									"patching_rect" : [ 15.0, 61.0, 238.0, 31.0 ],
									"id" : "obj-2",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Geneva",
									"numinlets" : 3,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 15.0, 225.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 75.0, 15.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"outlettype" : [ "list" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [ 54.5, 221.0, 327.0, 221.0, 327.0, 15.0, 134.0, 15.0 ]
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
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-13", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"globalpatchername" : "",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0,
						"fontface" : 0,
						"fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "to status bar",
					"patching_rect" : [ 230.0, 870.0, 72.0, 17.0 ],
					"id" : "obj-28",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "to statusbar",
					"patching_rect" : [ 100.0, 970.0, 65.0, 17.0 ],
					"id" : "obj-26",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 210.0, 870.0, 20.0, 20.0 ],
					"id" : "obj-27",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 50.0, 870.0, 20.0, 20.0 ],
					"id" : "obj-22",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p ftm.waitbar",
					"patching_rect" : [ 50.0, 850.0, 72.0, 17.0 ],
					"id" : "obj-14",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 410.0, 103.0, 354.0, 224.0 ],
						"bglocked" : 0,
						"defrect" : [ 410.0, 103.0, 354.0, 224.0 ],
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
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 215.0, 102.0, 43.397461, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 215.0, 102.0, 43.397461, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_view 0 2" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 25.0, 54.0, 79.691895, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 25.0, 54.0, 79.691895, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_set $1 0 1, bang" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 135.0, 54.0, 98.614746, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 135.0, 54.0, 98.614746, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_size $1 1, zero, bang" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "fmat",
									"patching_rect" : [ 135.0, 100.0, 63.850098, 18.0 ],
									"id" : "obj-4",
									"outlettype" : [ "", "" ],
									"name" : "wait1",
									"fontname" : "Geneva",
									"editor_interface" : "",
									"ftm_scope" : 0,
									"description" : "fmat",
									"scope" : 0,
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 135.0, 100.0, 63.850098, 18.0 ],
									"numinlets" : 1,
									"persistence" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 135.0, 29.0, 15.0, 15.0 ],
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 25.0, 29.0, 15.0, 15.0 ],
									"id" : "obj-6",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 135.0, 141.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
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
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "drive waitbar",
					"patching_rect" : [ 70.0, 870.0, 72.0, 17.0 ],
					"id" : "obj-21",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 20.0, 820.0, 50.0, 19.0 ],
					"id" : "obj-116",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 310.0, 850.0, 137.0, 17.0 ],
					"#triggerall" : 0,
					"id" : "obj-29",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"fontname" : "Geneva",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 310.0, 850.0, 137.0, 17.0 ],
					"numinlets" : 2,
					"text" : [ "_set finished analysing $1 $2" ],
					"#loadbang" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 210.0, 850.0, 99.0, 17.0 ],
					"#triggerall" : 0,
					"id" : "obj-30",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"fontname" : "Geneva",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 210.0, 850.0, 99.0, 17.0 ],
					"numinlets" : 2,
					"text" : [ "_set analysing $1 $2" ],
					"#loadbang" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 170.0, 820.0, 44.0, 19.0 ],
					"id" : "obj-75",
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9,
					"triangle" : 0,
					"cantchange" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Geneva",
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "frames of",
					"patching_rect" : [ 120.0, 820.0, 54.0, 19.0 ],
					"id" : "obj-76",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 80.0, 820.0, 43.0, 19.0 ],
					"id" : "obj-77",
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9,
					"triangle" : 0,
					"cantchange" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Geneva",
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 210.0, 820.0, 31.0, 19.0 ],
					"id" : "obj-79",
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9,
					"triangle" : 0,
					"cantchange" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Geneva",
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p status corpus1",
					"patching_rect" : [ 120.0, 850.0, 84.0, 19.0 ],
					"id" : "obj-81",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 1020.0, 725.0, 412.0, 259.0 ],
						"bglocked" : 0,
						"defrect" : [ 1020.0, 725.0, 412.0, 259.0 ],
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
									"patching_rect" : [ 282.0, 146.0, 82.631836, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 282.0, 146.0, 82.631836, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_set empty corpus" ],
									"#loadbang" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 34.0, 93.0, 127.45166, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 34.0, 93.0, 127.45166, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_append \\, $1 files to import" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "finished or init",
									"patching_rect" : [ 240.0, 38.0, 76.0, 19.0 ],
									"id" : "obj-3",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 214.0, 119.0, 33.325195, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 214.0, 119.0, 33.325195, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_set $*" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "catart.data.proxy corpus1",
									"patching_rect" : [ 214.0, 92.0, 129.0, 19.0 ],
									"id" : "obj-5",
									"outlettype" : [ "", "" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 214.0, 66.0, 63.599121, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-6",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 214.0, 66.0, 63.599121, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_get-summary" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 34.0, 64.0, 75.706055, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-7",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 34.0, 64.0, 75.706055, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_(if ($1 > 0) $1)" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 214.0, 37.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 34.0, 162.0, 15.0, 15.0 ],
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 34.0, 36.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "queue length",
									"patching_rect" : [ 56.0, 37.0, 65.0, 19.0 ],
									"id" : "obj-11",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-9", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-2", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"globalpatchername" : "",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0,
						"fontface" : 0,
						"fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route cur-time cur-frame num-frames queue-length end-import start end",
					"patching_rect" : [ 20.0, 800.0, 439.0, 19.0 ],
					"id" : "obj-96",
					"outlettype" : [ "", "", "", "", "", "", "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 8
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "files remaining to import",
					"patching_rect" : [ 236.0, 820.0, 122.0, 19.0 ],
					"id" : "obj-97",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 20.0, 80.0, 20.491699, 17.0 ],
					"#triggerall" : 0,
					"id" : "obj-143",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"fontname" : "Geneva",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 20.0, 80.0, 20.491699, 17.0 ],
					"numinlets" : 2,
					"text" : [ "_init" ],
					"#loadbang" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart[5]",
					"text" : "r #0_int",
					"patching_rect" : [ 350.0, 60.0, 66.0, 19.0 ],
					"color" : [ 0.988235, 0.011765, 0.011765, 1.0 ],
					"id" : "obj-142",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 330.0, 0.0, 19.0, 19.0 ],
					"id" : "obj-137",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart[4]",
					"text" : "r #0_rec",
					"patching_rect" : [ 420.0, 60.0, 66.0, 19.0 ],
					"color" : [ 0.988235, 0.011765, 0.011765, 1.0 ],
					"id" : "obj-136",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 360.0, 0.0, 19.0, 19.0 ],
					"id" : "obj-135",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar umenu_seg 2",
					"patching_rect" : [ 410.0, 730.0, 92.0, 19.0 ],
					"id" : "obj-134",
					"outlettype" : [ "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 20.0, 870.0, 20.0, 20.0 ],
					"id" : "obj-133",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 500.0, 870.0, 20.0, 20.0 ],
					"id" : "obj-132",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 390.0, 0.0, 19.0, 19.0 ],
					"id" : "obj-131",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 0.0, 0.0, 17.0, 17.0 ],
					"id" : "obj-130",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart[3]",
					"text" : "r #1_catart.import",
					"patching_rect" : [ 110.0, 0.0, 120.0, 19.0 ],
					"color" : [ 0.988235, 0.011765, 0.011765, 1.0 ],
					"id" : "obj-129",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart[2]",
					"text" : "r catart.import",
					"patching_rect" : [ 30.0, 0.0, 75.0, 19.0 ],
					"color" : [ 0.988235, 0.011765, 0.011765, 1.0 ],
					"id" : "obj-128",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 490.0, 380.0, 15.0, 15.0 ],
					"id" : "obj-126",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 220.0, 380.0, 15.0, 15.0 ],
					"id" : "obj-127",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 120.0, 380.0, 15.0, 15.0 ],
					"id" : "obj-125",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 370.0, 380.0, 15.0, 15.0 ],
					"id" : "obj-117",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 350.0, 130.0, 20.0, 20.0 ],
					"id" : "obj-45",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 350.0, 80.0, 18.0, 18.0 ],
					"id" : "obj-122",
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p signal-segmenter~",
					"patching_rect" : [ 370.0, 360.0, 99.0, 19.0 ],
					"id" : "obj-58",
					"outlettype" : [ "", "list" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 942.0, 44.0, 352.0, 253.0 ],
						"bglocked" : 0,
						"defrect" : [ 942.0, 44.0, 352.0, 253.0 ],
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
									"patching_rect" : [ 60.0, 210.0, 15.0, 15.0 ],
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 30.0, 165.0, 67.721191, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-10",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 30.0, 165.0, 67.721191, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_segment $2 1" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route time",
									"patching_rect" : [ 90.0, 120.0, 56.0, 19.0 ],
									"id" : "obj-9",
									"outlettype" : [ "", "" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bonk~",
									"patching_rect" : [ 30.0, 120.0, 38.0, 19.0 ],
									"id" : "obj-8",
									"outlettype" : [ "list", "list" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 15.0, 15.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 225.0, 30.0, 20.0, 20.0 ],
									"id" : "obj-11",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "todo: calculate sub-signal-vector time",
									"linecount" : 3,
									"patching_rect" : [ 105.0, 165.0, 96.0, 43.0 ],
									"id" : "obj-1",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "imtr.analysis.stub @name bonk-segmentation",
									"patching_rect" : [ 15.0, 61.0, 222.0, 19.0 ],
									"id" : "obj-2",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Geneva",
									"numinlets" : 3,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 15.0, 210.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 75.0, 15.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
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
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-9", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-5", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"globalpatchername" : "",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0,
						"fontface" : 0,
						"fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p signal-segmenter",
					"patching_rect" : [ 120.0, 360.0, 93.0, 19.0 ],
					"id" : "obj-37",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"fontsize" : 9.0,
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
									"maxclass" : "comment",
									"text" : "signal fvec input",
									"patching_rect" : [ 165.0, 30.0, 150.0, 19.0 ],
									"id" : "obj-6",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 135.0, 30.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 210.0, 60.0, 20.0, 20.0 ],
									"id" : "obj-11",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "imtr.analysis.stub @name signal-segmentation",
									"linecount" : 2,
									"patching_rect" : [ 45.0, 91.0, 189.0, 31.0 ],
									"id" : "obj-2",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Geneva",
									"numinlets" : 3,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 45.0, 198.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 45.0, 30.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-2", 2 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"globalpatchername" : "",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0,
						"fontface" : 0,
						"fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "file-rate descriptor processing",
					"linecount" : 3,
					"patching_rect" : [ 15.0, 690.0, 81.0, 48.0 ],
					"id" : "obj-103",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 10.0, 690.0, 90.0, 60.0 ],
					"id" : "obj-114",
					"rounded" : 25,
					"bgcolor" : [ 0.870588, 0.690196, 0.078431, 0.8 ],
					"border" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "file.rank Pitch",
					"patching_rect" : [ 120.0, 720.0, 69.0, 19.0 ],
					"id" : "obj-64",
					"outlettype" : [ "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "file unit data generators or converters ",
					"patching_rect" : [ 130.0, 697.0, 196.0, 19.0 ],
					"id" : "obj-65",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "imtr.analysis.postfile #1",
					"patching_rect" : [ 120.0, 670.0, 225.0, 23.0 ],
					"color" : [ 1.0, 0.843137, 0.035294, 1.0 ],
					"id" : "obj-66",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "stored unit frow",
					"patching_rect" : [ 130.0, 770.0, 81.0, 19.0 ],
					"id" : "obj-57",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 390.0, 760.0, 150.859863, 17.0 ],
					"#triggerall" : 0,
					"id" : "obj-56",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"fontname" : "Geneva",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 390.0, 760.0, 150.859863, 17.0 ],
					"numinlets" : 2,
					"text" : [ "_enable seg all 0, enable seg $1 1" ],
					"#loadbang" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "choose active  segmenter",
					"patching_rect" : [ 420.0, 0.0, 123.0, 19.0 ],
					"id" : "obj-55",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "inst descr to converters",
					"patching_rect" : [ 340.0, 300.0, 121.0, 19.0 ],
					"id" : "obj-54",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend append",
					"patching_rect" : [ 410.0, 690.0, 92.0, 19.0 ],
					"id" : "obj-53",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 0 l clear",
					"patching_rect" : [ 340.0, 630.0, 59.0, 19.0 ],
					"id" : "obj-41",
					"outlettype" : [ "int", "", "clear" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "get segmenters",
					"patching_rect" : [ 340.0, 610.0, 79.0, 17.0 ],
					"id" : "obj-40",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "umenu_seg",
					"patching_rect" : [ 420.0, 20.0, 123.0, 19.0 ],
					"id" : "obj-39",
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Geneva",
					"items" : [ "chop", ",", "bonk-segmentation", ",", "yinseg", ",", "signal-segmentation" ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t l l",
					"patching_rect" : [ 410.0, 710.0, 109.0, 19.0 ],
					"id" : "obj-38",
					"outlettype" : [ "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route segmenters",
					"patching_rect" : [ 410.0, 670.0, 88.0, 19.0 ],
					"id" : "obj-36",
					"outlettype" : [ "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "imtr.analysis.analyse #1",
					"patching_rect" : [ 120.0, 140.0, 219.0, 23.0 ],
					"color" : [ 1.0, 0.843137, 0.035294, 1.0 ],
					"id" : "obj-113",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p protocol-doc",
					"patching_rect" : [ 20.0, 120.0, 74.0, 19.0 ],
					"id" : "obj-112",
					"fontname" : "Geneva",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 248.0, 76.0, 951.0, 865.0 ],
						"bglocked" : 0,
						"defrect" : [ 248.0, 76.0, 951.0, 865.0 ],
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
									"text" : "file-rate descriptor processing",
									"linecount" : 3,
									"patching_rect" : [ 45.0, 770.0, 81.0, 48.0 ],
									"id" : "obj-1",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 40.0, 770.0, 90.0, 60.0 ],
									"id" : "obj-114",
									"rounded" : 25,
									"bgcolor" : [ 0.870588, 0.690196, 0.078431, 0.8 ],
									"border" : 1,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "unit-rate descriptor processing",
									"linecount" : 3,
									"patching_rect" : [ 45.0, 650.0, 81.0, 48.0 ],
									"id" : "obj-5",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 40.0, 650.0, 90.0, 100.0 ],
									"id" : "obj-6",
									"rounded" : 25,
									"bgcolor" : [ 1.0, 0.282353, 0.031373, 1.0 ],
									"border" : 1,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "frame-rate descriptor processing and segmentation",
									"linecount" : 5,
									"patching_rect" : [ 40.0, 390.0, 88.0, 75.0 ],
									"id" : "obj-8",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 40.0, 390.0, 90.0, 90.0 ],
									"id" : "obj-9",
									"rounded" : 25,
									"bgcolor" : [ 0.972549, 0.0, 0.0, 1.0 ],
									"border" : 1,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "unit-rate temporal modeling",
									"linecount" : 3,
									"patching_rect" : [ 45.0, 510.0, 79.0, 48.0 ],
									"id" : "obj-15",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "frame-rate signal processing",
									"linecount" : 3,
									"patching_rect" : [ 45.0, 240.0, 73.0, 48.0 ],
									"id" : "obj-16",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 43.0, 508.0, 87.0, 112.0 ],
									"id" : "obj-101",
									"rounded" : 25,
									"bgcolor" : [ 1.0, 0.282353, 0.031373, 1.0 ],
									"border" : 1,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 43.0, 238.0, 87.0, 122.0 ],
									"id" : "obj-102",
									"rounded" : 25,
									"bgcolor" : [ 0.972549, 0.0, 0.0, 1.0 ],
									"border" : 1,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "There are two kinds of temporal modeling results: those that exists for ALL instantaneous descriptors, like mean, std, and those that are specific to a descriptor, like pitch histogram or pitch geometric mean. The first one registers like any module but declares no descriptors, the specific ones register and add descriptors like a const analyser with the message 'descriptor'.",
									"linecount" : 4,
									"patching_rect" : [ 150.0, 555.0, 490.0, 55.0 ],
									"id" : "obj-27",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "11. specific segmenters, converters, or temporal modeling modules can directly use the output of a specific analysis module, but must send their data only when they are called",
									"linecount" : 3,
									"patching_rect" : [ 150.0, 390.0, 330.0, 43.0 ],
									"id" : "obj-28",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "10. meta-analysers receive 'analyse <frow: unit descriptors> They can be e.g. label producers, external descr. loader, converters",
									"linecount" : 2,
									"patching_rect" : [ 150.0, 630.0, 338.0, 31.0 ],
									"id" : "obj-42",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "9. temporal modeling modules receive 'analyse-seg <float: segment start time> <float: segment end time> <fmat: raw instantaneous descriptor data for the current segment>, they produce either temporal modeling for ALL dyamic descriptors, or values for descriptors they declared:",
									"linecount" : 3,
									"patching_rect" : [ 150.0, 510.0, 487.0, 43.0 ],
									"id" : "obj-44",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "8. segmenters and converters receive 'analyse <float: frame time> <frow: instantaneous descriptors>. Converters write their produced values into the out row, segmenters send the message 'segment <float: time>' to imtr.analysis.condense.",
									"linecount" : 3,
									"patching_rect" : [ 150.0, 435.0, 407.0, 43.0 ],
									"id" : "obj-45",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "7. fft analysers receive 'analyse <fmat: frame of fft spectrum (magnitude, phase)>'",
									"patching_rect" : [ 150.0, 315.0, 398.0, 19.0 ],
									"id" : "obj-46",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "6. signal analysers receive the message 'analyse <fmat: frame of sound>' and write the instantaneous descriptor value into the output",
									"linecount" : 2,
									"patching_rect" : [ 150.0, 240.0, 398.0, 31.0 ],
									"id" : "obj-47",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "• any number of messages 'descriptor <descriptor group> <descriptor name> ...' to declare the descriptors this module will output. You can leave this to imtr.analysis.stub that does all of this for you if you include it in an analysis module.",
									"linecount" : 2,
									"patching_rect" : [ 164.0, 56.0, 605.0, 31.0 ],
									"id" : "obj-14",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "PHASE IIc: finishing the analysis of a file",
									"patching_rect" : [ 149.0, 176.0, 620.0, 19.0 ],
									"id" : "obj-25",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "PHASE IIb: analysing the frames",
									"patching_rect" : [ 149.0, 133.0, 620.0, 19.0 ],
									"id" : "obj-26",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "99. at the end of the sound file, imtr.analysis.* sends the message 'end file <filename>' or 'end live <timestamp>' to all connected analysers.",
									"patching_rect" : [ 149.0, 192.0, 663.0, 19.0 ],
									"id" : "obj-32",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3. imtr.analysis.* sends the message 'out <frow: reference into output matrix>' to all analysers to tell them where to write their results.",
									"patching_rect" : [ 149.0, 82.0, 696.0, 19.0 ],
									"id" : "obj-34",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "6.-11. then the imtr.analysis.* modules send specific analysis messages to each type of analysers repeatedly, until the file is analysed. The analysers must write the result into the output matrix given by the 'row' message in step 3, or send specific messages.",
									"linecount" : 2,
									"patching_rect" : [ 149.0, 146.0, 647.0, 31.0 ],
									"id" : "obj-36",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "4. imtr.analysis.files sends the message 'start file <filename>' to all connected analysers (right to left), or catart.import.live~ sends 'start live <timestamp>'.",
									"patching_rect" : [ 149.0, 116.0, 751.0, 19.0 ],
									"id" : "obj-37",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "PHASE IIa: analysing a file",
									"patching_rect" : [ 149.0, 101.0, 620.0, 19.0 ],
									"id" : "obj-38",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "PHASE I: registration",
									"patching_rect" : [ 150.0, 0.0, 671.0, 19.0 ],
									"id" : "obj-39",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2. the analyser modules send back the following messages to exactly one imtr.analysis.* module:",
									"patching_rect" : [ 150.0, 26.0, 821.0, 19.0 ],
									"id" : "obj-40",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1. the imtr.analysis.* modules first send the message 'whosthere' to all connected analysers (and all analysers MUST be reachable from exactly one module)",
									"patching_rect" : [ 150.0, 13.0, 764.0, 19.0 ],
									"id" : "obj-41",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "• one message 'register <type> <module name> <local receive>' to register the module with the importer",
									"patching_rect" : [ 164.0, 42.0, 600.0, 19.0 ],
									"id" : "obj-103",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
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
					"text" : "p pitch-to-midi",
					"patching_rect" : [ 285.0, 580.0, 78.0, 19.0 ],
					"id" : "obj-93",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 945.0, 556.0, 370.0, 274.0 ],
						"bglocked" : 0,
						"defrect" : [ 945.0, 556.0, 370.0, 274.0 ],
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
									"patching_rect" : [ 240.0, 165.0, 50.0, 19.0 ],
									"id" : "obj-13",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 240.0, 210.0, 50.0, 19.0 ],
									"id" : "obj-8",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 240.0, 60.0, 20.0, 20.0 ],
									"id" : "obj-11",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "parameter: reference A 440Hz",
									"patching_rect" : [ 45.0, 225.0, 193.0, 19.0 ],
									"id" : "obj-7",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "with the option @wanted, only the value of that descriptor is output",
									"linecount" : 4,
									"patching_rect" : [ 255.0, 90.0, 96.0, 55.0 ],
									"id" : "obj-1",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "imtr.analysis.stub NoteNumber NoteNumberInt NoteNumberDetune @type symbol int float @wanted Pitch_mean @name pitch-to-midi",
									"linecount" : 4,
									"patching_rect" : [ 45.0, 91.0, 176.0, 55.0 ],
									"id" : "obj-2",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Geneva",
									"numinlets" : 3,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 45.0, 198.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 45.0, 56.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "convert pitch in Hz to midi",
									"patching_rect" : [ 44.0, 27.0, 193.0, 19.0 ],
									"id" : "obj-5",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 3,
									"presentation_linecount" : 3,
									"patching_rect" : [ 124.0, 162.0, 97.0, 41.0 ],
									"#triggerall" : 0,
									"id" : "obj-6",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 124.0, 162.0, 97.0, 41.0 ],
									"numinlets" : 2,
									"text" : [ "_($1 = (hz2midi $1));", "_($2 = (round $1));", "_$1 $2 ($1 - $2)" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-2", 2 ],
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [ 133.5, 198.0, 230.0, 198.0, 230.0, 76.0, 133.0, 76.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"globalpatchername" : "",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0,
						"fontface" : 0,
						"fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tempmod.mean",
					"patching_rect" : [ 340.0, 485.0, 92.0, 19.0 ],
					"id" : "obj-111",
					"outlettype" : [ "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gswitch2",
					"patching_rect" : [ 340.0, 440.0, 34.0, 32.0 ],
					"id" : "obj-110",
					"outlettype" : [ "", "" ],
					"numinlets" : 2,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tempmod.std Pitch Loudness Centroid",
					"patching_rect" : [ 120.0, 450.0, 177.0, 19.0 ],
					"id" : "obj-108",
					"outlettype" : [ "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 160.0, 80.0, 222.732422, 17.0 ],
					"#triggerall" : 0,
					"id" : "obj-106",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"fontname" : "Geneva",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 160.0, 80.0, 222.732422, 17.0 ],
					"numinlets" : 2,
					"text" : [ "_import-fmat noise ((new fmat 15000 1) random)" ],
					"#loadbang" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 297.0, 0.0, 20.0, 20.0 ],
					"id" : "obj-107",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print",
					"patching_rect" : [ 80.0, 750.0, 32.5, 17.0 ],
					"id" : "obj-105",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 260.0, 0.0, 35.0, 19.0 ],
					"id" : "obj-1",
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Geneva",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "raw unit descr",
					"patching_rect" : [ 131.0, 422.0, 85.0, 19.0 ],
					"id" : "obj-2",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "const unit descr",
					"linecount" : 2,
					"patching_rect" : [ 125.0, 571.0, 57.0, 31.0 ],
					"id" : "obj-3",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "imtr.analysis.convert #1",
					"patching_rect" : [ 120.0, 545.0, 225.0, 23.0 ],
					"color" : [ 1.0, 0.843137, 0.035294, 1.0 ],
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "unit-rate descriptor processing",
					"linecount" : 3,
					"patching_rect" : [ 15.0, 570.0, 81.0, 48.0 ],
					"id" : "obj-5",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 10.0, 570.0, 90.0, 100.0 ],
					"id" : "obj-6",
					"rounded" : 25,
					"bgcolor" : [ 1.0, 0.282353, 0.031373, 1.0 ],
					"border" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "imtr.analysis.condense #1",
					"patching_rect" : [ 120.0, 403.0, 225.0, 23.0 ],
					"color" : [ 1.0, 0.843137, 0.035294, 1.0 ],
					"id" : "obj-7",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "frame-rate descriptor processing and segmentation",
					"linecount" : 5,
					"patching_rect" : [ 10.0, 310.0, 88.0, 75.0 ],
					"id" : "obj-8",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 10.0, 310.0, 90.0, 90.0 ],
					"id" : "obj-9",
					"rounded" : 25,
					"bgcolor" : [ 0.972549, 0.0, 0.0, 1.0 ],
					"border" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "inst descr to segmenters",
					"linecount" : 2,
					"patching_rect" : [ 130.0, 300.0, 77.0, 31.0 ],
					"id" : "obj-10",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p ext-inst-descriptor-loader",
					"patching_rect" : [ 180.0, 260.0, 140.0, 19.0 ],
					"id" : "obj-11",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 0,
					"fontsize" : 9.0,
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
									"patching_rect" : [ 143.0, 244.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 143.0, 179.0, 113.701172, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 143.0, 179.0, 113.701172, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_add-descriptor SoundSet" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "load external descriptor files, e.g. IrcamExtractor SDIF, and get data on demand",
									"patching_rect" : [ 138.0, 147.0, 371.0, 19.0 ],
									"id" : "obj-3",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
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
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"globalpatchername" : "",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0,
						"fontface" : 0,
						"fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "signal frames",
					"patching_rect" : [ 230.0, 160.0, 71.0, 19.0 ],
					"id" : "obj-12",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "fft frames",
					"patching_rect" : [ 130.0, 160.0, 57.0, 19.0 ],
					"id" : "obj-13",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "unit-rate temporal modeling",
					"linecount" : 3,
					"patching_rect" : [ 15.0, 430.0, 79.0, 48.0 ],
					"id" : "obj-15",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "frame-rate signal processing",
					"linecount" : 3,
					"patching_rect" : [ 15.0, 160.0, 73.0, 48.0 ],
					"id" : "obj-16",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.importer.store #1",
					"patching_rect" : [ 120.0, 750.0, 225.0, 23.0 ],
					"color" : [ 1.0, 0.843137, 0.035294, 1.0 ],
					"id" : "obj-17",
					"outlettype" : [ "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "imtr.analysis.collect #1",
					"patching_rect" : [ 120.0, 280.0, 225.0, 23.0 ],
					"color" : [ 1.0, 0.843137, 0.035294, 1.0 ],
					"id" : "obj-18",
					"outlettype" : [ "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.importer.live~ #1",
					"patching_rect" : [ 350.0, 100.0, 190.0, 23.0 ],
					"color" : [ 1.0, 0.843137, 0.035294, 1.0 ],
					"id" : "obj-19",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p loudness-to-dB",
					"patching_rect" : [ 290.0, 320.0, 84.0, 19.0 ],
					"id" : "obj-20",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
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
									"patching_rect" : [ 210.0, 60.0, 20.0, 20.0 ],
									"id" : "obj-11",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "with the option @wanted, only the value of that descriptor is output",
									"linecount" : 4,
									"patching_rect" : [ 270.0, 90.0, 96.0, 55.0 ],
									"id" : "obj-1",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "imtr.analysis.stub Level @unit dB @type symbol float @wanted Loudness @name loudness-to-dB",
									"linecount" : 3,
									"patching_rect" : [ 45.0, 91.0, 189.0, 43.0 ],
									"id" : "obj-2",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Geneva",
									"numinlets" : 3,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 45.0, 198.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 45.0, 56.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "convert pitch in Hz to midi",
									"patching_rect" : [ 44.0, 27.0, 193.0, 19.0 ],
									"id" : "obj-5",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 124.0, 162.0, 55.425293, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-6",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 124.0, 162.0, 55.425293, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_(lin2db $1)" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-2", 2 ],
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
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [ 133.5, 198.0, 255.0, 198.0, 255.0, 51.0, 139.5, 51.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"globalpatchername" : "",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0,
						"fontface" : 0,
						"fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "descr.spectral.moments",
					"patching_rect" : [ 130.0, 190.0, 115.0, 19.0 ],
					"id" : "obj-33",
					"outlettype" : [ "", "float", "float", "float", "float" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p pitch-specific-tempmod",
					"patching_rect" : [ 150.0, 470.0, 121.0, 19.0 ],
					"id" : "obj-35",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"fontsize" : 9.0,
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
									"maxclass" : "comment",
									"text" : "filename, unitdata frow",
									"patching_rect" : [ 70.0, 62.0, 116.0, 19.0 ],
									"id" : "obj-1",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 47.0, 179.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 352.0, 62.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 45.0, 56.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"globalpatchername" : "",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0,
						"fontface" : 0,
						"fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "status and setup messages",
					"patching_rect" : [ 330.0, 160.0, 129.0, 19.0 ],
					"id" : "obj-43",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "const.external-descriptors",
					"patching_rect" : [ 120.0, 640.0, 124.0, 19.0 ],
					"id" : "obj-68",
					"outlettype" : [ "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 0.0, 290.0, 59.910645, 17.0 ],
					"#triggerall" : 0,
					"id" : "obj-69",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"fontname" : "Geneva",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 0.0, 290.0, 59.910645, 17.0 ],
					"numinlets" : 2,
					"text" : [ "_chopsize $2" ],
					"#loadbang" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p soundset-here!",
					"patching_rect" : [ 190.0, 600.0, 85.0, 19.0 ],
					"id" : "obj-70",
					"fontname" : "Geneva",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 62.0, 515.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 62.0, 515.0, 600.0, 426.0 ],
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
									"patching_rect" : [ 397.0, 248.0, 57.0, 19.0 ],
									"id" : "obj-10",
									"outlettype" : [ "" ],
									"fontname" : "Geneva",
									"numinlets" : 3,
									"fontsize" : 9.0,
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
													"patching_rect" : [ 160.0, 43.0, 76.0, 19.0 ],
													"id" : "obj-1",
													"fontname" : "Geneva",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "default: no soundset (index 0)",
													"patching_rect" : [ 275.0, 38.0, 144.0, 19.0 ],
													"id" : "obj-2",
													"fontname" : "Geneva",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"patching_rect" : [ 255.0, 85.0, 36.379395, 17.0 ],
													"#triggerall" : 0,
													"id" : "obj-3",
													"outlettype" : [ "" ],
													"#untuple" : 0,
													"fontname" : "Geneva",
													"ftm_scope" : 0,
													"#init" : "",
													"ftm_objref_conv" : 0,
													"presentation_rect" : [ 255.0, 85.0, 36.379395, 17.0 ],
													"numinlets" : 2,
													"text" : [ "_(cat '')" ],
													"#loadbang" : 0,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "use dir name as soundset",
													"linecount" : 2,
													"patching_rect" : [ 48.0, 44.0, 70.0, 31.0 ],
													"id" : "obj-4",
													"fontname" : "Geneva",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"patching_rect" : [ 23.0, 149.0, 115.239258, 17.0 ],
													"#triggerall" : 0,
													"id" : "obj-5",
													"outlettype" : [ "" ],
													"#untuple" : 0,
													"fontname" : "Geneva",
													"ftm_scope" : 0,
													"#init" : "",
													"ftm_objref_conv" : 0,
													"presentation_rect" : [ 23.0, 149.0, 115.239258, 17.0 ],
													"numinlets" : 2,
													"text" : [ "_(basename $1[dirname])" ],
													"#loadbang" : 0,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"patching_rect" : [ 13.0, 105.0, 81.788086, 17.0 ],
													"#triggerall" : 0,
													"id" : "obj-6",
													"outlettype" : [ "" ],
													"#untuple" : 0,
													"fontname" : "Geneva",
													"ftm_scope" : 0,
													"#init" : "",
													"ftm_objref_conv" : 0,
													"presentation_rect" : [ 13.0, 105.0, 81.788086, 17.0 ],
													"numinlets" : 2,
													"text" : [ "_get-last-soundfile" ],
													"#loadbang" : 0,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "catart.data.proxy #1",
													"patching_rect" : [ 13.0, 126.0, 122.0, 19.0 ],
													"id" : "obj-7",
													"outlettype" : [ "", "" ],
													"fontname" : "Geneva",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"patching_rect" : [ 13.0, 63.0, 15.0, 15.0 ],
													"id" : "obj-8",
													"outlettype" : [ "int" ],
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_auto-soundset",
													"patching_rect" : [ 13.0, 21.0, 115.0, 19.0 ],
													"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
													"id" : "obj-9",
													"outlettype" : [ "" ],
													"fontname" : "Geneva",
													"numinlets" : 0,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"patching_rect" : [ 143.0, 180.0, 117.150879, 17.0 ],
													"#triggerall" : 0,
													"id" : "obj-10",
													"outlettype" : [ "" ],
													"#untuple" : 0,
													"fontname" : "Geneva",
													"ftm_scope" : 0,
													"#init" : "",
													"ftm_objref_conv" : 0,
													"presentation_rect" : [ 143.0, 180.0, 117.150879, 17.0 ],
													"numinlets" : 2,
													"text" : [ "_new-symbol SoundSet $1" ],
													"#loadbang" : 0,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"patching_rect" : [ 143.0, 232.0, 77.876953, 17.0 ],
													"#triggerall" : 0,
													"id" : "obj-11",
													"outlettype" : [ "" ],
													"#untuple" : 0,
													"fontname" : "Geneva",
													"ftm_scope" : 0,
													"#init" : "",
													"ftm_objref_conv" : 0,
													"presentation_rect" : [ 143.0, 232.0, 77.876953, 17.0 ],
													"numinlets" : 2,
													"text" : [ "_set-soundset $1" ],
													"#loadbang" : 0,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "catart.data.proxy #1",
													"patching_rect" : [ 143.0, 206.0, 122.0, 19.0 ],
													"id" : "obj-12",
													"outlettype" : [ "", "" ],
													"fontname" : "Geneva",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"patching_rect" : [ 13.0, 84.0, 29.0, 19.0 ],
													"id" : "obj-13",
													"outlettype" : [ "" ],
													"fontname" : "Geneva",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"patching_rect" : [ 143.0, 90.0, 65.752441, 17.0 ],
													"#triggerall" : 0,
													"id" : "obj-14",
													"outlettype" : [ "" ],
													"#untuple" : 0,
													"fontname" : "Geneva",
													"ftm_scope" : 0,
													"#init" : "",
													"ftm_objref_conv" : 0,
													"presentation_rect" : [ 143.0, 90.0, 65.752441, 17.0 ],
													"numinlets" : 2,
													"text" : [ "_$1[soundset]" ],
													"#loadbang" : 0,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 255.0, 42.0, 15.0, 15.0 ],
													"id" : "obj-15",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 143.0, 42.0, 15.0, 15.0 ],
													"id" : "obj-16",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 32.0, 44.0, 15.0, 15.0 ],
													"id" : "obj-17",
													"outlettype" : [ "bang" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 143.0, 252.0, 15.0, 15.0 ],
													"id" : "obj-18",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "todo: move to external analyser",
													"patching_rect" : [ 14.0, 181.0, 147.0, 19.0 ],
													"id" : "obj-19",
													"fontname" : "Geneva",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-12", 0 ],
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
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
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
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
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
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [ 264.5, 155.0, 152.5, 155.0 ]
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Geneva",
										"globalpatchername" : "",
										"fontname" : "Geneva",
										"default_fontsize" : 9.0,
										"fontface" : 0,
										"fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_init",
									"patching_rect" : [ 435.0, 210.0, 65.0, 19.0 ],
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"id" : "obj-30",
									"outlettype" : [ "" ],
									"fontname" : "Geneva",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "to corpus",
									"patching_rect" : [ 449.0, 513.0, 54.0, 19.0 ],
									"id" : "obj-44",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l b l l l",
									"patching_rect" : [ 255.0, 210.0, 166.0, 19.0 ],
									"id" : "obj-55",
									"outlettype" : [ "", "bang", "", "", "" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 5
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1_catart.data",
									"patching_rect" : [ 450.0, 495.0, 106.0, 19.0 ],
									"color" : [ 0.8, 0.54902, 0.54902, 1.0 ],
									"id" : "obj-59",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"color" : [ 0.8, 0.54902, 0.54902, 1.0 ],
									"midpoints" : [ 406.5, 406.0, 459.5, 406.0 ]
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
									"source" : [ "obj-55", 4 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"globalpatchername" : "",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0,
						"fontface" : 0,
						"fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 240.0, 0.0, 15.0, 15.0 ],
					"id" : "obj-71",
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s catart.import.debug",
					"patching_rect" : [ 240.0, 20.0, 107.0, 19.0 ],
					"id" : "obj-72",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p add-label",
					"patching_rect" : [ 190.0, 620.0, 59.0, 19.0 ],
					"id" : "obj-73",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"fontsize" : 9.0,
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
									"patching_rect" : [ 149.0, 291.0, 13.0, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 149.0, 291.0, 13.0, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_0" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 l",
									"patching_rect" : [ 91.0, 290.0, 47.0, 19.0 ],
									"id" : "obj-2",
									"outlettype" : [ "int", "" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 0",
									"patching_rect" : [ 91.0, 318.0, 47.0, 19.0 ],
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"fontname" : "Geneva",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "suppress first marker (that only starts a unit)",
									"linecount" : 3,
									"patching_rect" : [ 143.0, 304.0, 88.0, 43.0 ],
									"id" : "obj-4",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "default label when none given: empty string",
									"linecount" : 2,
									"patching_rect" : [ 64.0, 45.0, 137.0, 31.0 ],
									"id" : "obj-5",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 49.0, 78.0, 36.379395, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-6",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 49.0, 78.0, 36.379395, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_(cat '')" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l b",
									"patching_rect" : [ 9.0, 52.0, 50.0, 19.0 ],
									"id" : "obj-7",
									"outlettype" : [ "", "bang" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 132.0, 78.0, 29.523926, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-8",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 132.0, 78.0, 29.523926, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_begin" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 9.0, 166.0, 17.99707, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-9",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 9.0, 166.0, 17.99707, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_$2" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l b",
									"patching_rect" : [ 9.0, 127.0, 50.0, 19.0 ],
									"id" : "obj-10",
									"outlettype" : [ "", "bang" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 197.0, 230.0, 69.351562, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-11",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 197.0, 230.0, 69.351562, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_(($1 size) - 1)" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 197.0, 30.0, 15.0, 15.0 ],
									"id" : "obj-12",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 9.0, 105.0, 17.99707, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-13",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"numins" : 3,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 9.0, 105.0, 17.99707, 17.0 ],
									"numinlets" : 3,
									"text" : [ "_$3" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "catart.data.proxy #1",
									"patching_rect" : [ 9.0, 230.0, 123.0, 19.0 ],
									"id" : "obj-14",
									"outlettype" : [ "", "" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 9.0, 200.0, 98.711426, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-15",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 9.0, 200.0, 98.711426, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_new-symbol Label $1" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 9.0, 304.0, 15.0, 15.0 ],
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 9.0, 28.0, 15.0, 15.0 ],
									"id" : "obj-17",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 9.0, 263.0, 58.751953, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-18",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"numins" : 3,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 9.0, 263.0, 58.751953, 17.0 ],
									"numinlets" : 3,
									"text" : [ "_set 0 $3 $1" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "last unit vector column (NOT descriptor index!!!)",
									"linecount" : 2,
									"patching_rect" : [ 205.0, 251.0, 122.0, 31.0 ],
									"id" : "obj-19",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "delay label by one marker",
									"patching_rect" : [ 65.0, 166.0, 137.0, 19.0 ],
									"id" : "obj-20",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "constant descriptor module: add labels from marker file",
									"patching_rect" : [ 12.0, 9.0, 262.0, 19.0 ],
									"id" : "obj-21",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 1 ],
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
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
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
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
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 0 ],
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-13", 0 ],
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"globalpatchername" : "",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0,
						"fontface" : 0,
						"fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "segment.chop",
					"patching_rect" : [ 480.0, 360.0, 70.0, 19.0 ],
					"id" : "obj-74",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p pitch-histogram-modeling",
					"patching_rect" : [ 190.0, 510.0, 130.0, 19.0 ],
					"id" : "obj-82",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"fontsize" : 9.0,
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
									"patching_rect" : [ 47.0, 179.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 352.0, 62.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 45.0, 56.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"globalpatchername" : "",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0,
						"fontface" : 0,
						"fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ftm.mdispatch #0_",
					"patching_rect" : [ 0.0, 30.0, 110.0, 19.0 ],
					"id" : "obj-85",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 0.0, 80.0, 15.0, 15.0 ],
					"id" : "obj-86",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart[1]",
					"text" : "r #0_init",
					"patching_rect" : [ 0.0, 60.0, 66.0, 19.0 ],
					"color" : [ 0.988235, 0.011765, 0.011765, 1.0 ],
					"id" : "obj-87",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 150.0, 60.0, 50.519531, 17.0 ],
					"#triggerall" : 0,
					"id" : "obj-88",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"fontname" : "Geneva",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 150.0, 60.0, 50.519531, 17.0 ],
					"numinlets" : 2,
					"text" : [ "_import $1" ],
					"#loadbang" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p pitch-to-chroma",
					"patching_rect" : [ 190.0, 580.0, 90.0, 19.0 ],
					"id" : "obj-90",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 941.0, 374.0, 485.0, 277.0 ],
						"bglocked" : 0,
						"defrect" : [ 941.0, 374.0, 485.0, 277.0 ],
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
									"patching_rect" : [ 180.0, 255.0, 50.0, 19.0 ],
									"id" : "obj-14",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 180.0, 195.0, 50.0, 19.0 ],
									"id" : "obj-13",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 180.0, 225.0, 50.0, 19.0 ],
									"id" : "obj-8",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 225.0, 75.0, 20.0, 20.0 ],
									"id" : "obj-6",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "todo: at init, declare note names as symbols",
									"patching_rect" : [ 240.0, 30.0, 209.0, 19.0 ],
									"id" : "obj-1",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "calculate chroma (note-in-octave) and octave height",
									"linecount" : 2,
									"patching_rect" : [ 280.0, 161.0, 163.0, 31.0 ],
									"id" : "obj-2",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 120.0, 165.0, 143.922363, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 120.0, 165.0, 143.922363, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_($1 % 12) ((int ($1 / 12)) - 1)" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 120.0, 138.0, 53.891602, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 120.0, 138.0, 53.891602, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_(round $1)" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "catart.analyser.stub Chroma Octave @name pitch-to-chroma @type symbol int @wanted NoteNumber",
									"linecount" : 3,
									"patching_rect" : [ 45.0, 75.0, 169.0, 43.0 ],
									"id" : "obj-7",
									"outlettype" : [ "", "" ],
									"fontname" : "Geneva",
									"numinlets" : 3,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 45.0, 195.0, 17.0, 17.0 ],
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 45.0, 39.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "convert pitch in midi to chroma + octave",
									"patching_rect" : [ 45.0, 15.0, 193.0, 19.0 ],
									"id" : "obj-11",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "get note number unit data",
									"patching_rect" : [ 208.0, 138.0, 124.0, 19.0 ],
									"id" : "obj-12",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [ 129.5, 216.0, 448.0, 216.0, 448.0, 46.0, 129.5, 46.0 ]
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-13", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"globalpatchername" : "",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0,
						"fontface" : 0,
						"fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p special-temporal-modeling",
					"patching_rect" : [ 170.0, 490.0, 138.0, 19.0 ],
					"id" : "obj-91",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"fontsize" : 9.0,
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
									"patching_rect" : [ 66.0, 139.0, 141.0, 31.0 ],
									"id" : "obj-1",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.absargs",
									"patching_rect" : [ 199.0, 56.0, 64.0, 19.0 ],
									"id" : "obj-2",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"saved_object_attributes" : 									{
										"ftm_scope" : 0,
										"ftm_objref_conv" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 112.0, 119.0, 49.686035, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 112.0, 119.0, 49.686035, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_outstd $1" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route analyse out whosthere",
									"patching_rect" : [ 48.0, 88.0, 234.0, 19.0 ],
									"id" : "obj-4",
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-special",
									"patching_rect" : [ 84.0, 56.0, 72.0, 19.0 ],
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"fontname" : "Geneva",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 4,
									"presentation_linecount" : 4,
									"patching_rect" : [ 210.0, 128.0, 179.0, 53.0 ],
									"#triggerall" : 0,
									"id" : "obj-6",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 2,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 210.0, 128.0, 179.0, 53.0 ],
									"numinlets" : 2,
									"text" : [ "_register special-tempmod 1204-special,", "_add-descriptor specialdescr,", "_add-descriptor derived,", "_add-descriptor (cat $1 _std)" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 210.0, 201.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 352.0, 62.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 48.0, 56.0, 15.0, 15.0 ],
									"id" : "obj-9",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "args: inst. descriptors to work on, exclude list",
									"patching_rect" : [ 85.0, 31.0, 222.0, 19.0 ],
									"id" : "obj-10",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-5", 0 ],
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
						"globalpatchername" : "",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0,
						"fontface" : 0,
						"fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "segment.yin2",
					"patching_rect" : [ 220.0, 360.0, 70.0, 19.0 ],
					"id" : "obj-92",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 4,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "descr.yin",
					"patching_rect" : [ 220.0, 220.0, 70.0, 19.0 ],
					"id" : "obj-94",
					"outlettype" : [ "", "", "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.importer.files #1",
					"patching_rect" : [ 120.0, 100.0, 220.0, 23.0 ],
					"color" : [ 1.0, 0.843137, 0.035294, 1.0 ],
					"id" : "obj-95",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tempmod.meanstd",
					"patching_rect" : [ 355.0, 508.0, 92.0, 19.0 ],
					"id" : "obj-98",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 13.0, 428.0, 87.0, 112.0 ],
					"id" : "obj-101",
					"rounded" : 25,
					"bgcolor" : [ 1.0, 0.282353, 0.031373, 1.0 ],
					"border" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 13.0, 158.0, 87.0, 122.0 ],
					"id" : "obj-102",
					"rounded" : 25,
					"bgcolor" : [ 0.972549, 0.0, 0.0, 1.0 ],
					"border" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "init",
					"patching_rect" : [ 50.0, 750.0, 23.0, 17.0 ],
					"id" : "obj-104",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-95", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-107", 0 ],
					"destination" : [ "obj-1", 0 ],
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
					"source" : [ "obj-110", 0 ],
					"destination" : [ "obj-111", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-110", 1 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-111", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-113", 1 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 0,
					"midpoints" : [ 229.5, 184.0, 203.5, 184.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 1 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 2 ],
					"destination" : [ "obj-96", 0 ],
					"hidden" : 0,
					"midpoints" : [ 329.5, 793.0, 29.5, 793.0 ]
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
					"source" : [ "obj-128", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-130", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [ 399.5, 752.0, 399.5, 752.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-134", 1 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [ 492.5, 754.0, 399.5, 754.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-135", 0 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-135", 0 ],
					"destination" : [ "obj-58", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-136", 0 ],
					"destination" : [ "obj-122", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-137", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-142", 0 ],
					"destination" : [ "obj-122", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-143", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 29.5, 98.0, 359.5, 98.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-143", 0 ],
					"destination" : [ "obj-95", 0 ],
					"hidden" : 0,
					"midpoints" : [ 29.5, 98.0, 129.5, 98.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 335.5, 777.0, 385.5, 777.0, 385.5, 660.0, 419.5, 660.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 335.5, 314.0, 299.5, 314.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 357.0, 129.5, 357.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 357.0, 379.5, 357.0 ]
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
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 357.0, 229.5, 357.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-69", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-27", 0 ],
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
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 1 ],
					"destination" : [ "obj-132", 0 ],
					"hidden" : 0,
					"midpoints" : [ 509.5, 794.0, 509.5, 794.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-134", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"destination" : [ "obj-93", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 369.5, 742.0, 129.5, 742.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 2 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 743.5, 129.5, 743.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 399.5, 784.0, 117.0, 784.0, 117.0, 745.0, 129.5, 745.0 ]
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
					"source" : [ "obj-58", 1 ],
					"destination" : [ "obj-52", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-7", 0 ],
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
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 9.5, 349.0, 489.5, 349.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 440.5, 129.5, 440.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-110", 1 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 436.5, 364.5, 436.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-1", 0 ],
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
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-126", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [ 9.0, 747.0, 59.5, 747.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 1,
					"midpoints" : [ 9.0, 107.0, 89.5, 107.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-143", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [ 9.0, 602.0, 349.5, 602.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [ 9.0, 107.0, 9.5, 107.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-95", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-4", 0 ],
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
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-7", 0 ],
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
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 1 ],
					"destination" : [ "obj-35", 1 ],
					"hidden" : 0,
					"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-82", 1 ],
					"hidden" : 0,
					"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [ 229.5, 345.0, 310.5, 345.0 ]
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
					"source" : [ "obj-94", 2 ],
					"destination" : [ "obj-92", 2 ],
					"hidden" : 0,
					"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
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
					"source" : [ "obj-96", 0 ],
					"destination" : [ "obj-116", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 7 ],
					"destination" : [ "obj-133", 0 ],
					"hidden" : 0,
					"midpoints" : [ 449.5, 900.0, 45.0, 900.0, 45.0, 867.0, 29.5, 867.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 2 ],
					"destination" : [ "obj-14", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 6 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 5 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 2 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 1,
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
					"source" : [ "obj-96", 3 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 4 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
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
					"source" : [ "obj-50", 1 ],
					"destination" : [ "obj-145", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-145", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-145", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
