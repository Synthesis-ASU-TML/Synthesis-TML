{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 805.0, 107.0, 468.0, 379.0 ],
		"bglocked" : 0,
		"defrect" : [ 805.0, 107.0, 468.0, 379.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 190.0, 270.0, 231.552246, 17.0 ],
					"#triggerall" : 0,
					"id" : "obj-5",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"fontname" : "Geneva",
					"ftm_scope" : 1,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 190.0, 270.0, 231.552246, 17.0 ],
					"numinlets" : 2,
					"text" : [ "_(print ambitus ($2 - $1)[0]  max $2[0] min $1[0])" ],
					"#loadbang" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "max is used to calculate ambitus in place ->  unit vector",
					"linecount" : 2,
					"patching_rect" : [ 270.0, 150.0, 146.0, 31.0 ],
					"id" : "obj-3",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 120.0, 300.0, 60.385254, 17.0 ],
					"#triggerall" : 0,
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"fontname" : "Geneva",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 120.0, 300.0, 60.385254, 17.0 ],
					"numinlets" : 2,
					"text" : [ "_($2 sub $1)" ],
					"#loadbang" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p descriptor-specific?",
					"linecount" : 3,
					"patching_rect" : [ 30.0, 190.0, 60.0, 43.0 ],
					"id" : "obj-20",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 386.0, 409.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 386.0, 409.0 ],
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
									"text" : "specific use of temporal modeling for just some descriptor, given as argument: Declare tempmod of these descr. only",
									"linecount" : 3,
									"patching_rect" : [ 90.0, 45.0, 201.0, 43.0 ],
									"id" : "obj-33",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.iter",
									"patching_rect" : [ 45.0, 255.0, 46.0, 19.0 ],
									"id" : "obj-12",
									"outlettype" : [ "", "" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"saved_object_attributes" : 									{
										"ftm_scope" : 0,
										"ftm_objref_conv" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 45.0, 225.0, 124.256836, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-39",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 45.0, 225.0, 124.256836, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_(if ($2 != _none_) { $*2 })" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 45.0, 285.0, 113.938477, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-35",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 45.0, 285.0, 113.938477, 17.0 ],
									"numinlets" : 2,
									"text" : [ "_descriptor (cat $1 _ $2)" ],
									"#loadbang" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.absargs _none_",
									"patching_rect" : [ 90.0, 195.0, 98.0, 19.0 ],
									"id" : "obj-30",
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
									"maxclass" : "newobj",
									"text" : "t b b l",
									"patching_rect" : [ 45.0, 168.0, 109.0, 19.0 ],
									"id" : "obj-29",
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"patching_rect" : [ 45.0, 105.0, 243.0, 19.0 ],
									"id" : "obj-28",
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
									"text" : "route register",
									"patching_rect" : [ 45.0, 138.0, 70.0, 19.0 ],
									"id" : "obj-26",
									"outlettype" : [ "", "" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 45.0, 45.0, 25.0, 25.0 ],
									"id" : "obj-18",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 45.0, 345.0, 15.0, 15.0 ],
									"id" : "obj-19",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-39", 1 ],
									"hidden" : 0,
									"midpoints" : [ 139.0, 219.0, 159.756836, 219.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 2 ],
									"destination" : [ "obj-35", 1 ],
									"hidden" : 0,
									"midpoints" : [ 144.5, 189.0, 207.0, 189.0, 207.0, 225.0, 207.0, 225.0, 207.0, 279.0, 149.438477, 279.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 278.5, 329.5, 54.0, 329.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-35", 0 ],
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
					"text" : "(output is optional for display and debugging)",
					"linecount" : 2,
					"patching_rect" : [ 190.0, 320.0, 137.0, 31.0 ],
					"id" : "obj-14",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 120.0, 330.0, 17.0, 17.0 ],
					"id" : "obj-13",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route out",
					"patching_rect" : [ 210.0, 120.0, 52.0, 19.0 ],
					"id" : "obj-24",
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
					"text" : "inst. fmat",
					"patching_rect" : [ 130.0, 120.0, 53.0, 19.0 ],
					"id" : "obj-2",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 240.0, 80.0, 18.0, 18.0 ],
					"id" : "obj-4",
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 210.0, 145.0, 54.51416, 17.0 ],
					"#triggerall" : 0,
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"fontname" : "Geneva",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 210.0, 145.0, 54.51416, 17.0 ],
					"numinlets" : 2,
					"text" : [ "_outmax $1" ],
					"#loadbang" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "imtr.analysis.stub @name ambitus @wanted #1 #2 #3 #4 #5 #6 #7 #8 #9",
					"linecount" : 2,
					"patching_rect" : [ 30.0, 80.0, 198.0, 31.0 ],
					"id" : "obj-10",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 3,
					"fontsize" : 9.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "store ambitus in unit vector",
					"patching_rect" : [ 190.0, 305.0, 137.0, 19.0 ],
					"id" : "obj-11",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mnm.minmax @mode col @scalar off @outmin fvec @outmax fvec",
					"linecount" : 5,
					"patching_rect" : [ 120.0, 190.0, 79.0, 67.0 ],
					"id" : "obj-12",
					"outlettype" : [ "", "", "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 4,
					"saved_object_attributes" : 					{
						"ftm_scope" : 2,
						"ftm_objref_conv" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 30.0, 330.0, 17.0, 17.0 ],
					"id" : "obj-15",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 30.0, 45.0, 15.0, 15.0 ],
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-10", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 2 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 2 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
