{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 723.0, 398.0, 417.0, 354.0 ],
		"bglocked" : 0,
		"defrect" : [ 723.0, 398.0, 417.0, 354.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "specific use of temporal modeling for just some descriptor, given as argument: Declare tempmod of these descr. only",
					"linecount" : 3,
					"patching_rect" : [ 60.0, 270.0, 201.0, 43.0 ],
					"id" : "obj-33",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p descriptor-specific?",
					"linecount" : 3,
					"patching_rect" : [ 0.0, 270.0, 57.0, 43.0 ],
					"id" : "obj-14",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 300.0, 461.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 300.0, 461.0 ],
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
									"text" : "ftm.iter",
									"patching_rect" : [ 50.0, 250.0, 46.0, 19.0 ],
									"id" : "obj-12",
									"outlettype" : [ "", "" ],
									"fontname" : "Geneva",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"saved_object_attributes" : 									{
										"ftm_scope" : 1,
										"ftm_objref_conv" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"patching_rect" : [ 50.0, 220.0, 124.256836, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-39",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 50.0, 220.0, 124.256836, 17.0 ],
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
									"patching_rect" : [ 50.0, 280.0, 113.938477, 17.0 ],
									"#triggerall" : 0,
									"id" : "obj-35",
									"outlettype" : [ "" ],
									"#untuple" : 0,
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#init" : "",
									"ftm_objref_conv" : 0,
									"presentation_rect" : [ 50.0, 280.0, 113.938477, 17.0 ],
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
									"patching_rect" : [ 95.0, 190.0, 98.0, 19.0 ],
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
									"patching_rect" : [ 50.0, 163.0, 109.0, 19.0 ],
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
									"patching_rect" : [ 50.0, 100.0, 70.0, 19.0 ],
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
									"patching_rect" : [ 50.0, 133.0, 70.0, 19.0 ],
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
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
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
									"patching_rect" : [ 45.0, 357.0, 25.0, 25.0 ],
									"id" : "obj-19",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-35", 0 ],
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
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 1 ],
									"destination" : [ "obj-19", 0 ],
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
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 2 ],
									"destination" : [ "obj-35", 1 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 184.0, 212.0, 184.0, 212.0, 220.0, 212.0, 220.0, 212.0, 274.0, 154.438477, 274.0 ]
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
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-39", 1 ],
									"hidden" : 0,
									"midpoints" : [ 144.0, 214.0, 164.756836, 214.0 ]
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
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-12", 0 ],
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
					"text" : "don't normalise std by mean",
					"patching_rect" : [ 135.0, 240.0, 137.0, 19.0 ],
					"id" : "obj-6",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "imtr.analysis.stub @name std",
					"patching_rect" : [ 0.0, 78.0, 169.0, 19.0 ],
					"id" : "obj-1",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 3,
					"fontsize" : 9.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route out",
					"patching_rect" : [ 210.0, 108.0, 52.0, 19.0 ],
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
					"text" : "declare NO descriptors, since we're tempmod!",
					"linecount" : 2,
					"patching_rect" : [ 300.0, 105.0, 122.0, 31.0 ],
					"id" : "obj-25",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 150.0, 135.0, 50.708496, 17.0 ],
					"#triggerall" : 0,
					"id" : "obj-21",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"fontname" : "Geneva",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 150.0, 135.0, 50.708496, 17.0 ],
					"numinlets" : 2,
					"text" : [ "_outstd $1" ],
					"#loadbang" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route out",
					"patching_rect" : [ 150.0, 108.0, 52.0, 19.0 ],
					"id" : "obj-19",
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
					"text" : "start, end, inst. fmat",
					"linecount" : 2,
					"patching_rect" : [ 90.0, 108.0, 60.0, 31.0 ],
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
					"text" : "has to be called before all other temp.mod and constant descriptor modules!",
					"patching_rect" : [ 0.0, 15.0, 349.0, 19.0 ],
					"id" : "obj-8",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 210.0, 135.0, 62.0, 17.0 ],
					"#triggerall" : 0,
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"fontname" : "Geneva",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 210.0, 135.0, 62.0, 17.0 ],
					"numinlets" : 2,
					"text" : [ "_outmean $1" ],
					"#loadbang" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "imtr.analysis.stub @name mean",
					"patching_rect" : [ 57.0, 52.0, 172.0, 19.0 ],
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
					"text" : "store mean in unit vector... ",
					"patching_rect" : [ 270.0, 135.0, 137.0, 19.0 ],
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
					"text" : "mnm.meanstd @mode col @outmean fvec @outstd fvec",
					"linecount" : 4,
					"patching_rect" : [ 75.0, 165.0, 83.0, 55.0 ],
					"id" : "obj-12",
					"outlettype" : [ "", "" ],
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"saved_object_attributes" : 					{
						"ftm_scope" : 2,
						"ftm_objref_conv" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 0.0, 315.0, 15.0, 15.0 ],
					"id" : "obj-15",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 0.0, 30.0, 15.0, 15.0 ],
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "standard temporal modeling module: compute mean of all descriptors",
					"patching_rect" : [ 0.0, 0.0, 319.0, 19.0 ],
					"id" : "obj-17",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 2 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-14", 0 ],
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
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-1", 0 ],
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
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-12", 0 ],
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
