{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 275.0, 165.0, 640.0, 480.0 ],
		"bglocked" : 0,
		"defrect" : [ 275.0, 165.0, 640.0, 480.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 11.0,
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
					"maxclass" : "comment",
					"text" : "how to save???",
					"patching_rect" : [ 146.0, 64.0, 88.0, 19.0 ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 82.0, 239.0, 25.0, 25.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 39.0, 160.0, 25.0, 25.0 ],
					"id" : "obj-1",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "tab",
					"patching_rect" : [ 130.0, 154.0, 28.0, 37.0 ],
					"presentation" : 1,
					"id" : "obj-169",
					"htabcolor" : [ 0.407843, 0.658824, 0.909804, 1.0 ],
					"tabs" : [ "off", "train", "out" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 15.0, 86.0, 50.0, 67.0 ],
					"tabcolor" : [ 0.858824, 0.858824, 0.858824, 0.560784 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "clear",
					"patching_rect" : [ 243.0, 175.0, 42.0, 17.0 ],
					"presentation" : 1,
					"id" : "obj-10",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"presentation_rect" : [ 35.0, 153.0, 30.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 224.0, 174.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"presentation_rect" : [ 16.0, 152.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p norm",
					"patching_rect" : [ 36.0, 197.0, 207.0, 18.0 ],
					"id" : "obj-24",
					"fontname" : "Arial",
					"numinlets" : 3,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 748.0, 461.0, 475.0, 307.0 ],
						"bglocked" : 0,
						"defrect" : [ 748.0, 461.0, 475.0, 307.0 ],
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
									"text" : "p size",
									"patching_rect" : [ 104.0, 18.0, 39.0, 19.0 ],
									"id" : "obj-35",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 11.0,
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
													"maxclass" : "ftm.mess",
													"#loadbang" : 0,
													"patching_rect" : [ 50.0, 100.0, 48.179199, 15.0 ],
													"id" : "obj-26",
													"text" : [ "_($1 size)" ],
													"ftm_scope" : 1,
													"#init" : "",
													"fontname" : "Helvetica",
													"numinlets" : 2,
													"ftm_objref_conv" : 0,
													"numoutlets" : 1,
													"#triggerall" : 0,
													"fontsize" : 11.0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 50.0, 100.0, 48.179199, 15.0 ],
													"#untuple" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#loadbang" : 0,
													"patching_rect" : [ 50.0, 139.0, 40.853027, 15.0 ],
													"id" : "obj-7",
													"text" : [ "_size $1" ],
													"ftm_scope" : 0,
													"#init" : "",
													"fontname" : "Helvetica",
													"numinlets" : 2,
													"ftm_objref_conv" : 0,
													"numoutlets" : 1,
													"#triggerall" : 0,
													"fontsize" : 11.0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 50.0, 139.0, 40.853027, 15.0 ],
													"#untuple" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"patching_rect" : [ 50.0, 118.0, 47.0, 17.0 ],
													"id" : "obj-6",
													"fontname" : "Helvetica",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 11.0,
													"outlettype" : [ "", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
													"id" : "obj-27",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 50.0, 214.0, 25.0, 25.0 ],
													"id" : "obj-28",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 11.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 11.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!= 1",
									"patching_rect" : [ 238.0, 109.0, 31.5, 17.0 ],
									"id" : "obj-2",
									"fontname" : "Helvetica",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 11.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 345.0, 65.0, 20.0, 20.0 ],
									"id" : "obj-41",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#loadbang" : 0,
									"patching_rect" : [ 345.0, 89.0, 73.455566, 15.0 ],
									"id" : "obj-39",
									"text" : [ "_($DATA clear)" ],
									"ftm_scope" : 0,
									"#init" : "",
									"fontname" : "Helvetica",
									"numinlets" : 2,
									"ftm_objref_conv" : 0,
									"numoutlets" : 1,
									"#triggerall" : 0,
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 345.0, 89.0, 73.455566, 15.0 ],
									"#untuple" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 345.0, 35.0, 25.0, 25.0 ],
									"id" : "obj-15",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 211.0, 32.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 153.0, 129.0, 25.0, 25.0 ],
									"id" : "obj-12",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 141.0, 257.0, 25.0, 25.0 ],
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.list",
									"patching_rect" : [ 141.0, 230.0, 43.0, 17.0 ],
									"id" : "obj-10",
									"fontname" : "Helvetica",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"ftm_scope" : 0,
										"ftm_objref_conv" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p minmax",
									"patching_rect" : [ 238.0, 151.0, 59.0, 17.0 ],
									"id" : "obj-95",
									"fontname" : "Helvetica",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 218.0, 614.0, 514.0, 297.0 ],
										"bglocked" : 0,
										"defrect" : [ 218.0, 614.0, 514.0, 297.0 ],
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
													"maxclass" : "ftm.mess",
													"linecount" : 2,
													"presentation_linecount" : 2,
													"#loadbang" : 0,
													"patching_rect" : [ 190.0, 155.0, 133.0, 32.0 ],
													"id" : "obj-4",
													"text" : [ "_($MIN set $2 ($1 min)),", "_($MAX set $2 ($1 max))" ],
													"ftm_scope" : 0,
													"#init" : "",
													"fontname" : "Arial",
													"numinlets" : 2,
													"ftm_objref_conv" : 0,
													"numoutlets" : 1,
													"#triggerall" : 0,
													"fontsize" : 12.0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 190.0, 155.0, 133.0, 32.0 ],
													"#untuple" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#loadbang" : 0,
													"patching_rect" : [ 6.0, 102.0, 181.371078, 18.0 ],
													"id" : "obj-76",
													"text" : [ "_(($RANGE set $MAX) sub $MIN)" ],
													"ftm_scope" : 0,
													"#init" : "",
													"fontname" : "Arial",
													"numinlets" : 2,
													"ftm_objref_conv" : 0,
													"numoutlets" : 1,
													"#triggerall" : 0,
													"fontsize" : 12.0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 6.0, 102.0, 181.371078, 18.0 ],
													"#untuple" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#loadbang" : 0,
													"patching_rect" : [ 190.0, 102.0, 53.560547, 18.0 ],
													"id" : "obj-43",
													"text" : [ "_($DATA )" ],
													"ftm_scope" : 0,
													"#init" : "",
													"fontname" : "Arial",
													"numinlets" : 2,
													"ftm_objref_conv" : 0,
													"numoutlets" : 1,
													"#triggerall" : 0,
													"fontsize" : 12.0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 190.0, 102.0, 53.560547, 18.0 ],
													"#untuple" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"patching_rect" : [ 190.0, 73.0, 20.0, 20.0 ],
													"id" : "obj-42",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ftm.iter @mode colref",
													"patching_rect" : [ 190.0, 127.0, 136.0, 20.0 ],
													"id" : "obj-27",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 12.0,
													"outlettype" : [ "", "" ],
													"saved_object_attributes" : 													{
														"ftm_scope" : 0,
														"ftm_objref_conv" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 190.0, 40.0, 25.0, 25.0 ],
													"id" : "obj-94",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-76", 0 ],
													"hidden" : 0,
													"midpoints" : [ 199.5, 97.0, 15.5, 97.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 1 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-94", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#loadbang" : 0,
									"patching_rect" : [ 141.0, 206.0, 148.425293, 15.0 ],
									"id" : "obj-81",
									"text" : [ "_(($1 sub $MIN) div $RANGE)" ],
									"ftm_scope" : 0,
									"#init" : "",
									"fontname" : "Helvetica",
									"numinlets" : 2,
									"ftm_objref_conv" : 0,
									"numoutlets" : 1,
									"#triggerall" : 0,
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 141.0, 206.0, 148.425293, 15.0 ],
									"#untuple" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"patching_rect" : [ 238.0, 129.0, 34.0, 17.0 ],
									"id" : "obj-38",
									"fontname" : "Helvetica",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 11.0,
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "training",
									"patching_rect" : [ 240.0, 32.0, 48.0, 17.0 ],
									"id" : "obj-34",
									"fontname" : "Helvetica",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 11.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "obs in",
									"patching_rect" : [ 179.0, 129.0, 41.0, 17.0 ],
									"id" : "obj-33",
									"fontname" : "Helvetica",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 11.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"patching_rect" : [ 18.0, 165.0, 142.0, 17.0 ],
									"id" : "obj-31",
									"fontname" : "Helvetica",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 11.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mnm.transpose",
									"patching_rect" : [ 18.0, 194.0, 87.0, 17.0 ],
									"id" : "obj-30",
									"fontname" : "Helvetica",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"ftm_scope" : 0,
										"ftm_objref_conv" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#loadbang" : 0,
									"patching_rect" : [ 18.0, 222.0, 101.61084, 15.0 ],
									"id" : "obj-29",
									"text" : [ "_($DATA append $1)" ],
									"ftm_scope" : 0,
									"#init" : "",
									"fontname" : "Helvetica",
									"numinlets" : 2,
									"ftm_objref_conv" : 0,
									"numoutlets" : 1,
									"#triggerall" : 0,
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 18.0, 222.0, 101.61084, 15.0 ],
									"#untuple" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "fmat",
									"patching_rect" : [ 28.0, 20.0, 68.532227, 16.0 ],
									"id" : "obj-32",
									"ftm_scope" : 0,
									"fontname" : "Helvetica",
									"name" : "DATA",
									"numinlets" : 1,
									"ftm_objref_conv" : 0,
									"description" : "fmat",
									"scope" : 0,
									"numoutlets" : 2,
									"persistence" : 0,
									"fontsize" : 11.0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 28.0, 20.0, 68.532227, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "fvec",
									"patching_rect" : [ 30.0, 83.0, 79.317383, 16.0 ],
									"id" : "obj-36",
									"ftm_scope" : 0,
									"fontname" : "Helvetica",
									"name" : "RANGE",
									"numinlets" : 1,
									"ftm_objref_conv" : 0,
									"description" : "fvec",
									"scope" : 0,
									"numoutlets" : 2,
									"persistence" : 0,
									"fontsize" : 11.0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 30.0, 83.0, 79.317383, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "fvec",
									"patching_rect" : [ 28.0, 61.0, 64.036621, 16.0 ],
									"id" : "obj-19",
									"ftm_scope" : 0,
									"fontname" : "Helvetica",
									"name" : "MAX",
									"numinlets" : 1,
									"ftm_objref_conv" : 0,
									"description" : "fvec",
									"scope" : 0,
									"numoutlets" : 2,
									"persistence" : 0,
									"fontsize" : 11.0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 28.0, 61.0, 64.036621, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "fvec",
									"patching_rect" : [ 28.0, 41.0, 60.362793, 16.0 ],
									"id" : "obj-18",
									"ftm_scope" : 2,
									"fontname" : "Helvetica",
									"name" : "MIN",
									"numinlets" : 1,
									"ftm_objref_conv" : 0,
									"description" : "fvec",
									"scope" : 0,
									"numoutlets" : 2,
									"persistence" : 0,
									"fontsize" : 11.0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 28.0, 41.0, 60.362793, 16.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 162.5, 161.0, 147.0, 161.0, 147.0, 13.0, 113.5, 13.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 113.5, 39.5, 37.5, 39.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 113.5, 57.0, 37.5, 57.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [ 113.5, 80.0, 39.5, 80.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 220.5, 108.5, 27.5, 108.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-31", 1 ],
									"hidden" : 0,
									"midpoints" : [ 162.5, 161.0, 150.5, 161.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 220.5, 82.5, 247.5, 82.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-95", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 1 ],
									"destination" : [ "obj-81", 0 ],
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
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-169", 0 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-24", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
