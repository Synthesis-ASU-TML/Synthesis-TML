{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 592.0, 453.0, 513.0, 376.0 ],
		"bglocked" : 0,
		"defrect" : [ 592.0, 453.0, 513.0, 376.0 ],
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
					"text" : "first col. is loudness: use as weight",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Geneva",
					"numoutlets" : 0,
					"patching_rect" : [ 110.0, 135.0, 101.0, 31.0 ],
					"id" : "obj-29",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 1",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 65.0, 130.0, 31.0, 17.0 ],
					"id" : "obj-5",
					"outlettype" : [ "int" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 2",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 65.0, 155.0, 44.0, 17.0 ],
					"id" : "obj-3",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "slope in descr. units per second",
					"numinlets" : 1,
					"fontname" : "Geneva",
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 255.0, 148.0, 19.0 ],
					"id" : "obj-34",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 1000.",
					"numinlets" : 2,
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"patching_rect" : [ 90.0, 255.0, 45.0, 19.0 ],
					"id" : "obj-32",
					"outlettype" : [ "float" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"fontname" : "Geneva",
					"numoutlets" : 2,
					"patching_rect" : [ 150.0, 275.0, 43.0, 19.0 ],
					"id" : "obj-31",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"presentation_rect" : [ 270.0, 45.0, 162.711914, 17.0 ],
					"#init" : "",
					"ftm_objref_conv" : 0,
					"numinlets" : 2,
					"fontname" : "Geneva",
					"#loadbang" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 270.0, 45.0, 162.711914, 17.0 ],
					"id" : "obj-7",
					"#triggerall" : 0,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_0 500  ((new fmat 100 1) random)" ],
					"ftm_scope" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"presentation_rect" : [ 285.0, 60.0, 158.282227, 17.0 ],
					"#init" : "",
					"ftm_objref_conv" : 0,
					"numinlets" : 2,
					"fontname" : "Geneva",
					"#loadbang" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 285.0, 60.0, 158.282227, 17.0 ],
					"id" : "obj-6",
					"#triggerall" : 0,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_ ((new fmat 100 1) rampinc 0 10)" ],
					"ftm_scope" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"presentation_rect" : [ 148.0, 300.0, 94.552734, 17.0 ],
					"#init" : "",
					"ftm_objref_conv" : 0,
					"numinlets" : 3,
					"fontname" : "Geneva",
					"#loadbang" : 0,
					"numins" : 3,
					"numoutlets" : 1,
					"patching_rect" : [ 148.0, 300.0, 94.552734, 17.0 ],
					"id" : "obj-30",
					"#triggerall" : 0,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_($3[($2 - 1)] = $1)" ],
					"ftm_scope" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 90.0, 190.0, 85.737305, 29.0 ],
					"#init" : "",
					"ftm_objref_conv" : 0,
					"numinlets" : 2,
					"fontname" : "Geneva",
					"#loadbang" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 90.0, 190.0, 85.737305, 29.0 ],
					"id" : "obj-28",
					"#triggerall" : 0,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_($values set $1);", "_$data" ],
					"ftm_scope" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "fvec $data col 1",
					"presentation_rect" : [ 330.0, 135.0, 120.022461, 18.0 ],
					"ftm_objref_conv" : 0,
					"scope" : 0,
					"numinlets" : 1,
					"fontname" : "Geneva",
					"numoutlets" : 2,
					"patching_rect" : [ 330.0, 135.0, 120.022461, 18.0 ],
					"persistence" : 0,
					"id" : "obj-27",
					"outlettype" : [ "", "" ],
					"name" : "values",
					"fontsize" : 9.0,
					"description" : "fvec $data col 1",
					"ftm_scope" : 0,
					"editor_interface" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "fvec $data col 0",
					"presentation_rect" : [ 330.0, 165.0, 113.022461, 18.0 ],
					"ftm_objref_conv" : 0,
					"scope" : 0,
					"numinlets" : 1,
					"fontname" : "Geneva",
					"numoutlets" : 2,
					"patching_rect" : [ 330.0, 165.0, 113.022461, 18.0 ],
					"persistence" : 0,
					"id" : "obj-26",
					"outlettype" : [ "", "" ],
					"name" : "time",
					"fontsize" : 9.0,
					"description" : "fvec $data col 0",
					"ftm_scope" : 0,
					"editor_interface" : "wave"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set time",
					"numinlets" : 1,
					"fontname" : "Geneva",
					"numoutlets" : 0,
					"patching_rect" : [ 225.0, 120.0, 47.0, 19.0 ],
					"id" : "obj-22",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ftm.iter @mode colref",
					"numinlets" : 1,
					"fontname" : "Geneva",
					"numoutlets" : 2,
					"patching_rect" : [ 90.0, 105.0, 115.0, 19.0 ],
					"id" : "obj-21",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"saved_object_attributes" : 					{
						"ftm_objref_conv" : 0,
						"ftm_scope" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "corr",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 195.0, 240.0, 35.0, 17.0 ],
					"id" : "obj-23",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "b (offset)",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 150.0, 240.0, 63.0, 17.0 ],
					"id" : "obj-19",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a (slope)",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 240.0, 47.0, 17.0 ],
					"id" : "obj-25",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "fmat 4096 2, clear",
					"presentation_rect" : [ 330.0, 105.0, 124.022461, 18.0 ],
					"ftm_objref_conv" : 0,
					"scope" : 0,
					"numinlets" : 1,
					"fontname" : "Geneva",
					"numoutlets" : 2,
					"patching_rect" : [ 330.0, 105.0, 124.022461, 18.0 ],
					"persistence" : 0,
					"id" : "obj-18",
					"outlettype" : [ "", "" ],
					"name" : "data",
					"fontsize" : 9.0,
					"description" : "fmat 4096 2, clear",
					"ftm_scope" : 0,
					"editor_interface" : "matrix"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p descriptor-specific",
					"linecount" : 3,
					"numinlets" : 1,
					"fontname" : "Geneva",
					"numoutlets" : 1,
					"patching_rect" : [ 15.0, 280.0, 57.0, 43.0 ],
					"id" : "obj-20",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 300.0, 92.0, 305.0, 448.0 ],
						"bglocked" : 0,
						"defrect" : [ 300.0, 92.0, 305.0, 448.0 ],
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
									"linecount" : 4,
									"numinlets" : 1,
									"fontname" : "Geneva",
									"numoutlets" : 0,
									"patching_rect" : [ 90.0, 15.0, 177.0, 55.0 ],
									"id" : "obj-33",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.iter",
									"numinlets" : 1,
									"fontname" : "Geneva",
									"numoutlets" : 2,
									"patching_rect" : [ 50.0, 250.0, 46.0, 19.0 ],
									"id" : "obj-12",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"saved_object_attributes" : 									{
										"ftm_objref_conv" : 0,
										"ftm_scope" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"presentation_rect" : [ 50.0, 220.0, 124.256836, 17.0 ],
									"#init" : "",
									"ftm_objref_conv" : 0,
									"numinlets" : 2,
									"fontname" : "Geneva",
									"#loadbang" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 220.0, 124.256836, 17.0 ],
									"id" : "obj-39",
									"#triggerall" : 0,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(if ($2 != _none_) { $*2 })" ],
									"ftm_scope" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"presentation_rect" : [ 50.0, 280.0, 113.938477, 17.0 ],
									"#init" : "",
									"ftm_objref_conv" : 0,
									"numinlets" : 2,
									"fontname" : "Geneva",
									"#loadbang" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 280.0, 113.938477, 17.0 ],
									"id" : "obj-35",
									"#triggerall" : 0,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_descriptor (cat $1 _ $2)" ],
									"ftm_scope" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.absargs _none_",
									"numinlets" : 1,
									"fontname" : "Geneva",
									"numoutlets" : 3,
									"patching_rect" : [ 95.0, 190.0, 98.0, 19.0 ],
									"id" : "obj-30",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"saved_object_attributes" : 									{
										"ftm_objref_conv" : 0,
										"ftm_scope" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b l",
									"numinlets" : 1,
									"fontname" : "Geneva",
									"numoutlets" : 3,
									"patching_rect" : [ 50.0, 163.0, 109.0, 19.0 ],
									"id" : "obj-29",
									"outlettype" : [ "bang", "bang", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"numinlets" : 1,
									"fontname" : "Geneva",
									"numoutlets" : 2,
									"patching_rect" : [ 50.0, 100.0, 70.0, 19.0 ],
									"id" : "obj-28",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route register",
									"numinlets" : 1,
									"fontname" : "Geneva",
									"numoutlets" : 2,
									"patching_rect" : [ 50.0, 133.0, 70.0, 19.0 ],
									"id" : "obj-26",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 10.0, 25.0, 25.0 ],
									"id" : "obj-18",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 45.0, 357.0, 25.0, 25.0 ],
									"id" : "obj-19",
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
						"fontname" : "Arial",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontface" : 0,
						"default_fontsize" : 12.0,
						"fontsize" : 12.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(output is optional for display and debugging)",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Geneva",
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 320.0, 137.0, 31.0 ],
					"id" : "obj-14",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 330.0, 17.0, 17.0 ],
					"id" : "obj-13",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route analyse-seg out",
					"numinlets" : 1,
					"fontname" : "Geneva",
					"numoutlets" : 3,
					"patching_rect" : [ 210.0, 90.0, 105.0, 19.0 ],
					"id" : "obj-24",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "two-column data: time over values",
					"numinlets" : 1,
					"fontname" : "Geneva",
					"numoutlets" : 0,
					"patching_rect" : [ 330.0, 90.0, 161.0, 19.0 ],
					"id" : "obj-1",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "inst. fmat",
					"numinlets" : 1,
					"fontname" : "Geneva",
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 90.0, 53.0, 19.0 ],
					"id" : "obj-2",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 210.0, 60.0, 18.0, 18.0 ],
					"id" : "obj-4",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(If use on all descr. has to be called before all other temp.mod and constant descriptor modules!)",
					"numinlets" : 1,
					"fontname" : "Geneva",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 15.0, 435.0, 19.0 ],
					"id" : "obj-8",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 210.0, 135.0, 116.274902, 29.0 ],
					"#init" : "",
					"ftm_objref_conv" : 0,
					"numinlets" : 3,
					"fontname" : "Geneva",
					"#loadbang" : 0,
					"numins" : 3,
					"numoutlets" : 1,
					"patching_rect" : [ 210.0, 135.0, 116.274902, 29.0 ],
					"id" : "obj-9",
					"#triggerall" : 0,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_($data rows ($3 rows));", "_rampinc $1 $2" ],
					"ftm_scope" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "imtr.analysis.stub @name slope @wanted Loudness #1 #2 #3 #4 #5 #6 #7 #8 #9",
					"linecount" : 2,
					"numinlets" : 3,
					"fontname" : "Geneva",
					"numoutlets" : 3,
					"patching_rect" : [ 15.0, 60.0, 190.0, 31.0 ],
					"id" : "obj-10",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "store slope in unit vector",
					"numinlets" : 1,
					"fontname" : "Geneva",
					"numoutlets" : 0,
					"patching_rect" : [ 240.0, 300.0, 136.0, 19.0 ],
					"id" : "obj-11",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mnm.linreg.weighted",
					"numinlets" : 2,
					"fontname" : "Geneva",
					"numoutlets" : 7,
					"patching_rect" : [ 90.0, 225.0, 101.0, 19.0 ],
					"id" : "obj-12",
					"outlettype" : [ "", "", "", "", "", "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 330.0, 17.0, 17.0 ],
					"id" : "obj-15",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 15.0, 30.0, 15.0, 15.0 ],
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "standard temporal modeling module: compute slope of all  or onedescriptors",
					"numinlets" : 1,
					"fontname" : "Geneva",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 0.0, 343.0, 19.0 ],
					"id" : "obj-17",
					"fontsize" : 9.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-30", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-30", 2 ],
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
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 219.5, 164.0, 339.5, 164.0 ]
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
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-10", 0 ],
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
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-21", 0 ],
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
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 195.5, 126.5, 74.5, 126.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [ 74.5, 178.0, 181.5, 178.0 ]
				}

			}
 ]
	}

}
