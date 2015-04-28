{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 32.0, 44.0, 729.0, 395.0 ],
		"bglocked" : 0,
		"defrect" : [ 32.0, 44.0, 729.0, 395.0 ],
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
					"maxclass" : "newobj",
					"text" : "s #1.in",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 360.0, 168.0, 56.0, 20.0 ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 359.0, 99.0, 20.0, 20.0 ],
					"id" : "obj-11",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t signal",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 25.0, 110.0, 49.0, 20.0 ],
					"id" : "obj-6",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route signal threashold channelnames",
					"numoutlets" : 4,
					"fontsize" : 12.0,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 25.0, 68.0, 520.0, 20.0 ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bang to trigger channelnames",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 376.0, 103.0, 169.0, 20.0 ],
					"id" : "obj-10",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p filter",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 243.0, 228.0, 43.0, 20.0 ],
					"id" : "obj-73",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 489.0, 50.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 489.0, 50.0, 640.0, 480.0 ],
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
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 253.0, 89.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 253.0, 287.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.list",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 253.0, 263.0, 45.0, 20.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1,
									"saved_object_attributes" : 									{
										"ftm_scope" : 1,
										"ftm_objref_conv" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"presentation_rect" : [ 267.0, 199.0, 44.636719, 17.0 ],
									"outlettype" : [ "" ],
									"text" : [ "_coefs $1" ],
									"#loadbang" : 0,
									"#init" : "",
									"patching_rect" : [ 267.0, 199.0, 44.636719, 17.0 ],
									"id" : "obj-97",
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"#triggerall" : 0,
									"numinlets" : 2,
									"ftm_objref_conv" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mnm.biquad @dim stream",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 253.0, 234.0, 116.0, 17.0 ],
									"id" : "obj-98",
									"fontname" : "Arial",
									"numinlets" : 1,
									"saved_object_attributes" : 									{
										"ftm_scope" : 0,
										"ftm_objref_conv" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "bang" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 267.0, 144.0, 48.0, 17.0 ],
									"id" : "obj-99",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mnm.biqoefs @mode lowpass @f0 0.02",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 267.0, 165.0, 170.0, 17.0 ],
									"id" : "obj-100",
									"fontname" : "Arial",
									"numinlets" : 1,
									"saved_object_attributes" : 									{
										"ftm_scope" : 0,
										"ftm_objref_conv" : 0
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-100", 0 ],
									"destination" : [ "obj-97", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-98", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 0 ],
									"destination" : [ "obj-98", 0 ],
									"hidden" : 0,
									"midpoints" : [ 276.5, 224.0, 262.5, 224.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-99", 0 ],
									"destination" : [ "obj-100", 0 ],
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
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "list",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 35.0, 223.0, 21.0, 17.0 ],
					"id" : "obj-18",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl join",
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 26.0, 272.0, 36.0, 18.0 ],
					"id" : "obj-23",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "fmat 13x1",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 256.0, 183.0, 50.0, 17.0 ],
					"id" : "obj-97",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ln energy",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 110.0, 202.0, 48.0, 17.0 ],
					"id" : "obj-75",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "frequency",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 59.0, 202.0, 54.0, 17.0 ],
					"id" : "obj-96",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "channels 15, channelnames pitch energy mfcc1 mfcc2 mfcc3 mfcc4 mfcc5 mfcc6 mfcc7 mfcc8 mfcc9 mfcc10 mfcc11 mfcc12 mfcc13",
					"linecount" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 360.0, 124.0, 342.0, 27.0 ],
					"id" : "obj-94",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 26.0, 295.0, 25.0, 25.0 ],
					"id" : "obj-37",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 25.0, 23.0, 25.0, 25.0 ],
					"id" : "obj-1",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p mfcc",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 243.0, 202.0, 40.0, 18.0 ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 77.0, 44.0, 119.0, 223.0 ],
						"bglocked" : 0,
						"defrect" : [ 77.0, 44.0, 119.0, 223.0 ],
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
									"text" : "p power spectrum",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"color" : [ 0.8, 0.839216, 0.709804, 1.0 ],
									"patching_rect" : [ 25.0, 80.0, 82.0, 17.0 ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 102.0, 154.0, 437.0, 363.0 ],
										"bglocked" : 0,
										"defrect" : [ 102.0, 154.0, 437.0, 363.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
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
													"text" : "ftm.copy fmat",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patching_rect" : [ 152.0, 97.0, 74.0, 17.0 ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 2,
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
													"fontsize" : 9.0,
													"#untuple" : 0,
													"presentation_rect" : [ 152.0, 70.0, 147.723633, 17.0 ],
													"outlettype" : [ "" ],
													"text" : [ "_($1 colref 0 0 $Nwindspectrum)" ],
													"#loadbang" : 0,
													"#init" : "",
													"patching_rect" : [ 152.0, 70.0, 147.723633, 17.0 ],
													"id" : "obj-2",
													"fontname" : "Geneva",
													"ftm_scope" : 0,
													"#triggerall" : 0,
													"numinlets" : 2,
													"ftm_objref_conv" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gbr.wind= hann",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patching_rect" : [ 152.0, 125.0, 78.0, 17.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2,
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
													"fontsize" : 9.0,
													"#untuple" : 0,
													"presentation_rect" : [ 152.0, 204.0, 62.478519, 17.0 ],
													"outlettype" : [ "" ],
													"text" : [ "_($1 csqrabs)" ],
													"#loadbang" : 0,
													"#init" : "",
													"patching_rect" : [ 152.0, 204.0, 62.478519, 17.0 ],
													"id" : "obj-5",
													"fontname" : "Geneva",
													"ftm_scope" : 0,
													"#triggerall" : 0,
													"numinlets" : 2,
													"ftm_objref_conv" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gbr.fft $Nfft @mode real",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patching_rect" : [ 152.0, 159.0, 122.0, 17.0 ],
													"id" : "obj-6",
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
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 152.0, 36.0, 15.0, 15.0 ],
													"id" : "obj-7",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 152.0, 278.0, 15.0, 15.0 ],
													"id" : "obj-8",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
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
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p log",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"color" : [ 0.4, 0.4, 0.8, 1.0 ],
									"patching_rect" : [ 25.0, 124.0, 31.0, 17.0 ],
									"id" : "obj-44",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 182.0, 594.0, 370.0, 454.0 ],
										"bglocked" : 0,
										"defrect" : [ 182.0, 594.0, 370.0, 454.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
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
													"text" : "active",
													"numoutlets" : 1,
													"fontsize" : 11.595187,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 17.0, 95.0, 41.0, 20.0 ],
													"id" : "obj-25",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ftm.copy fmat",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patching_rect" : [ 62.0, 62.0, 74.0, 17.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"saved_object_attributes" : 													{
														"ftm_scope" : 0,
														"ftm_objref_conv" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "avoid log(0)",
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"patching_rect" : [ 176.0, 87.0, 64.0, 17.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"presentation_rect" : [ 62.0, 86.0, 111.07325, 17.0 ],
													"outlettype" : [ "" ],
													"text" : [ "_(($1 add  $epsilon) log)" ],
													"#loadbang" : 0,
													"#init" : "",
													"patching_rect" : [ 62.0, 86.0, 111.07325, 17.0 ],
													"id" : "obj-4",
													"fontname" : "Geneva",
													"ftm_scope" : 0,
													"#triggerall" : 0,
													"numinlets" : 2,
													"ftm_objref_conv" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 62.0, 36.0, 15.0, 15.0 ],
													"id" : "obj-5",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 75.0, 117.0, 15.0, 15.0 ],
													"id" : "obj-6",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 17.0, 122.0, 30.0, 30.0 ],
													"id" : "obj-7",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 167.0, 29.0, 17.0 ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.vecdisplay",
													"numoutlets" : 6,
													"xmax" : 22050.0,
													"maxval1" : 10.0,
													"outlettype" : [ "", "", "", "", "", "" ],
													"fgcolor4" : [ 1.0, 0.0, 1.0, 1.0 ],
													"view1" : 3,
													"history" : 1,
													"fgcolor1" : [ 0.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 63.0, 190.0, 271.0, 178.0 ],
													"id" : "obj-9",
													"range" : 22050.0,
													"ftm_scope" : 0,
													"fgcolor5" : [ 1.0, 1.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.905882, 0.905882, 0.905882, 1.0 ],
													"numinlets" : 5,
													"ftm_objref_conv" : 0,
													"minval1" : -20.0,
													"historyzoom" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-8", 1 ],
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
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p mel bands",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"color" : [ 0.8, 0.839216, 0.709804, 1.0 ],
									"patching_rect" : [ 25.0, 102.0, 62.0, 17.0 ],
									"id" : "obj-45",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 45.0, 548.0, 566.0, 368.0 ],
										"bglocked" : 0,
										"defrect" : [ 45.0, 548.0, 566.0, 368.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
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
													"text" : "fcmel",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patching_rect" : [ 388.0, 166.0, 35.0, 15.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "mel",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patching_rect" : [ 388.0, 147.0, 24.0, 15.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "htkmel",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patching_rect" : [ 388.0, 128.0, 40.0, 15.0 ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"presentation_rect" : [ 379.0, 199.0, 45.098145, 17.0 ],
													"outlettype" : [ "" ],
													"text" : [ "_mode $1" ],
													"#loadbang" : 0,
													"#init" : "",
													"patching_rect" : [ 379.0, 199.0, 45.098145, 17.0 ],
													"id" : "obj-5",
													"fontname" : "Geneva",
													"ftm_scope" : 0,
													"#triggerall" : 0,
													"numinlets" : 2,
													"ftm_objref_conv" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "float", "bang" ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"triscale" : 0.9,
													"patching_rect" : [ 272.0, 159.0, 98.0, 17.0 ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "minfreq $1",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patching_rect" : [ 272.0, 176.0, 60.0, 15.0 ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "mel bands from a power spectrum",
													"numoutlets" : 0,
													"fontsize" : 12.0,
													"patching_rect" : [ 130.0, 26.0, 217.0, 20.0 ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ftm.reschedule",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"patching_rect" : [ 264.0, 199.0, 77.0, 17.0 ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "float", "bang" ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"triscale" : 0.9,
													"patching_rect" : [ 272.0, 114.0, 98.0, 17.0 ],
													"id" : "obj-10",
													"fontname" : "Arial",
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "maxfreq $1",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patching_rect" : [ 272.0, 131.0, 63.0, 15.0 ],
													"id" : "obj-11",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "bang" ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"triscale" : 0.9,
													"patching_rect" : [ 272.0, 65.0, 35.0, 17.0 ],
													"id" : "obj-12",
													"fontname" : "Arial",
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "outsize $1",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patching_rect" : [ 272.0, 83.0, 57.0, 15.0 ],
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gbr.bands $Nspec 20 @mode mel @sr $sr @maxfreq $nyq",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 154.0, 223.0, 247.0, 17.0 ],
													"id" : "obj-14",
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
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 154.0, 203.0, 15.0, 15.0 ],
													"id" : "obj-15",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 154.0, 260.0, 15.0, 15.0 ],
													"id" : "obj-16",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-14", 0 ],
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
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 281.5, 152.0, 273.5, 152.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 281.5, 104.0, 273.5, 104.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [ 397.5, 185.0, 388.5, 185.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [ 397.5, 164.0, 388.5, 164.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [ 397.5, 145.0, 388.5, 145.0 ]
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
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 281.5, 194.0, 273.5, 194.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p mfcc",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"color" : [ 0.4, 0.4, 0.8, 1.0 ],
									"patching_rect" : [ 25.0, 149.0, 40.0, 17.0 ],
									"id" : "obj-46",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 377.0, 44.0, 435.0, 612.0 ],
										"bglocked" : 0,
										"defrect" : [ 377.0, 44.0, 435.0, 612.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
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
													"text" : "active",
													"numoutlets" : 1,
													"fontsize" : 11.595187,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 28.0, 214.0, 41.0, 20.0 ],
													"id" : "obj-25",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "display",
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"patching_rect" : [ 59.0, 242.0, 63.0, 17.0 ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 59.0, 257.0, 30.0, 30.0 ],
													"id" : "obj-2",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patching_rect" : [ 116.0, 337.0, 29.0, 17.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.vecdisplay",
													"numoutlets" : 6,
													"xmax" : 22050.0,
													"maxval1" : 10.0,
													"outlettype" : [ "", "", "", "", "", "" ],
													"fgcolor4" : [ 1.0, 0.0, 1.0, 1.0 ],
													"view1" : 2,
													"history" : 1,
													"fgcolor1" : [ 0.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 116.0, 361.0, 271.0, 178.0 ],
													"id" : "obj-4",
													"range" : 22050.0,
													"ftm_scope" : 0,
													"fgcolor5" : [ 1.0, 1.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.905882, 0.905882, 0.905882, 1.0 ],
													"numinlets" : 5,
													"ftm_objref_conv" : 0,
													"minval1" : -10.0,
													"historyzoom" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ftm.reschedule",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"patching_rect" : [ 212.0, 120.0, 77.0, 17.0 ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "bang" ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"triscale" : 0.9,
													"patching_rect" : [ 212.0, 71.0, 35.0, 17.0 ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "outsize $1",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patching_rect" : [ 212.0, 98.0, 57.0, 15.0 ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "getstate",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patching_rect" : [ 162.0, 98.0, 47.0, 15.0 ],
													"id" : "obj-10",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gbr.dct $Nmelbands $Nmfcc",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 136.0, 145.0, 135.0, 17.0 ],
													"id" : "obj-11",
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
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 135.0, 49.0, 15.0, 15.0 ],
													"id" : "obj-12",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 112.0, 176.0, 15.0, 15.0 ],
													"id" : "obj-13",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-3", 1 ],
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
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-2", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 25.0, 20.0, 25.0, 25.0 ],
									"id" : "obj-12",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 25.0, 181.0, 25.0, 25.0 ],
									"id" : "obj-14",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-14", 0 ],
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
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p yin",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 26.0, 201.0, 32.0, 18.0 ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 506.0, 280.0, 664.0, 458.0 ],
						"bglocked" : 0,
						"defrect" : [ 506.0, 280.0, 664.0, 458.0 ],
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
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 353.0, 5.0, 25.0, 25.0 ],
									"id" : "obj-9",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 353.0, 34.0, 50.0, 20.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "clip 0. 1.",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 200.0, 171.0, 55.0, 18.0 ],
									"id" : "obj-17",
									"fontname" : "Helvetica",
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 334.0, 205.0, 34.0, 16.0 ],
									"id" : "obj-25",
									"fontname" : "Helvetica",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 334.0, 162.0, 57.0, 18.0 ],
									"id" : "obj-21",
									"fontname" : "Helvetica",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 334.0, 184.0, 38.0, 18.0 ],
									"id" : "obj-20",
									"fontname" : "Helvetica",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b f",
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 57.0, 86.0, 61.0, 18.0 ],
									"id" : "obj-19",
									"fontname" : "Helvetica",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "f 0.",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 57.0, 268.0, 41.0, 18.0 ],
									"id" : "obj-18",
									"fontname" : "Helvetica",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale -90. 0. 0. 1.",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 200.0, 147.0, 103.0, 18.0 ],
									"id" : "obj-15",
									"fontname" : "Helvetica",
									"numinlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "atodb",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 200.0, 121.0, 41.0, 18.0 ],
									"id" : "obj-14",
									"fontname" : "Helvetica",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale 24 110 0. 1.",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 99.0, 201.0, 104.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Helvetica",
									"numinlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftom",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 99.0, 127.0, 35.0, 18.0 ],
									"id" : "obj-7",
									"fontname" : "Helvetica",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack f f",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 57.0, 293.0, 162.0, 18.0 ],
									"id" : "obj-8",
									"fontname" : "Helvetica",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 79.0, 232.0, 39.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Helvetica",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"numoutlets" : 3,
									"fontsize" : 12.0,
									"outlettype" : [ "", "int", "int" ],
									"patching_rect" : [ 334.0, 140.0, 55.0, 18.0 ],
									"id" : "obj-3",
									"fontname" : "Helvetica",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "> 0.7",
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 334.0, 118.0, 38.0, 18.0 ],
									"id" : "obj-2",
									"fontname" : "Helvetica",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "autocorrelation (AC)",
									"numoutlets" : 0,
									"fontsize" : 12.0,
									"patching_rect" : [ 412.0, 89.0, 119.0, 18.0 ],
									"id" : "obj-6",
									"fontname" : "Helvetica",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 57.0, 358.0, 25.0, 25.0 ],
									"id" : "obj-23",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "AC1/AC0",
									"numoutlets" : 0,
									"fontsize" : 12.0,
									"patching_rect" : [ 335.0, 89.0, 70.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Helvetica",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "lin energy",
									"numoutlets" : 0,
									"fontsize" : 12.0,
									"patching_rect" : [ 175.0, 89.0, 69.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Helvetica",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "quality factor (periodicity)",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 12.0,
									"patching_rect" : [ 251.0, 89.0, 93.0, 30.0 ],
									"id" : "obj-26",
									"fontname" : "Helvetica",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "gbr.yin [<min freq in Hz (def = 50.)> [<quality threshold (def = 0.68)>]]",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 12.0,
									"patching_rect" : [ 97.0, 27.0, 228.0, 30.0 ],
									"id" : "obj-29",
									"fontname" : "Helvetica",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gbr.yin 90. 0.8",
									"numoutlets" : 5,
									"fontsize" : 12.0,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 57.0, 60.0, 572.0, 18.0 ],
									"id" : "obj-31",
									"fontname" : "Helvetica",
									"numinlets" : 1,
									"saved_object_attributes" : 									{
										"ftm_scope" : 0,
										"ftm_objref_conv" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "frequency",
									"numoutlets" : 0,
									"fontsize" : 12.0,
									"patching_rect" : [ 95.0, 109.0, 69.0, 18.0 ],
									"id" : "obj-36",
									"fontname" : "Helvetica",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 57.0, 5.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-7", 0 ],
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
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 381.5, 225.0, 88.5, 225.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-18", 1 ],
									"hidden" : 0,
									"midpoints" : [ 343.5, 255.0, 88.5, 255.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 2 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-18", 1 ],
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-12", 0 ],
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
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p constants",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 55.0, 24.0, 62.0, 18.0 ],
					"id" : "obj-32",
					"fontname" : "Arial",
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 541.0, 327.0, 406.0, 554.0 ],
						"bglocked" : 0,
						"defrect" : [ 541.0, 327.0, 406.0, 554.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
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
									"maxclass" : "ftm.object",
									"text" : "2048",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"presentation_rect" : [ 55.0, 125.0, 110.251945, 18.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 55.0, 125.0, 110.251945, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"persistence" : 0,
									"name" : "Nwindspectrum",
									"numinlets" : 1,
									"description" : "2048",
									"ftm_objref_conv" : 0,
									"scope" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "number of mfcc",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 203.0, 516.0, 100.0, 17.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "13",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"presentation_rect" : [ 57.0, 512.0, 58.967781, 18.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 57.0, 512.0, 58.967781, 18.0 ],
									"id" : "obj-3",
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"persistence" : 0,
									"name" : "Nmfcc",
									"numinlets" : 1,
									"description" : "13",
									"ftm_objref_conv" : 0,
									"scope" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "number of mel bands",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 203.0, 490.0, 100.0, 17.0 ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "lpc downsample rate",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 203.0, 445.0, 100.0, 17.0 ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "yin downsample rate",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 203.0, 380.0, 100.0, 17.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "lpc sample rate",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 203.0, 422.0, 100.0, 17.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "yin sample rate",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 203.0, 354.0, 100.0, 17.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "maximum frequency",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 173.0, 279.0, 101.0, 17.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "($sr / $lpcSr)",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"presentation_rect" : [ 57.0, 441.0, 132.932129, 18.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 57.0, 441.0, 132.932129, 18.0 ],
									"id" : "obj-12",
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"persistence" : 0,
									"name" : "lpcResample",
									"numinlets" : 1,
									"description" : "($sr / $lpcSr)",
									"ftm_objref_conv" : 0,
									"scope" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "11025",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"presentation_rect" : [ 57.0, 418.0, 70.58252, 18.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 57.0, 418.0, 70.58252, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"persistence" : 0,
									"name" : "lpcSr",
									"numinlets" : 1,
									"description" : "11025",
									"ftm_objref_conv" : 0,
									"scope" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "($sr / $yinSr)",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"presentation_rect" : [ 57.0, 377.0, 133.072754, 18.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 57.0, 377.0, 133.072754, 18.0 ],
									"id" : "obj-14",
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"persistence" : 0,
									"name" : "yinResample",
									"numinlets" : 1,
									"description" : "($sr / $yinSr)",
									"ftm_objref_conv" : 0,
									"scope" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "11025",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"presentation_rect" : [ 57.0, 354.0, 70.652832, 18.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 57.0, 354.0, 70.652832, 18.0 ],
									"id" : "obj-15",
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"persistence" : 0,
									"name" : "yinSr",
									"numinlets" : 1,
									"description" : "11025",
									"ftm_objref_conv" : 0,
									"scope" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "20",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"presentation_rect" : [ 57.0, 489.0, 78.655273, 18.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 57.0, 489.0, 78.655273, 18.0 ],
									"id" : "obj-16",
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"persistence" : 0,
									"name" : "Nmelbands",
									"numinlets" : 1,
									"description" : "20",
									"ftm_objref_conv" : 0,
									"scope" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "($sr / 2)",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"presentation_rect" : [ 55.0, 273.0, 73.979492, 18.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 55.0, 273.0, 73.979492, 18.0 ],
									"id" : "obj-17",
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"persistence" : 0,
									"name" : "nyq",
									"numinlets" : 1,
									"description" : "($sr / 2)",
									"ftm_objref_conv" : 0,
									"scope" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sample rate",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 173.0, 250.0, 63.0, 17.0 ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "hop size",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 173.0, 176.0, 46.0, 17.0 ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "window size",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 173.0, 154.0, 65.0, 17.0 ],
									"id" : "obj-24",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "(real) spectrum size",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 173.0, 221.0, 102.0, 17.0 ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "1E-45",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"presentation_rect" : [ 55.0, 64.0, 75.921883, 18.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 55.0, 64.0, 75.921883, 18.0 ],
									"id" : "obj-26",
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"persistence" : 0,
									"name" : "epsilon",
									"numinlets" : 1,
									"description" : "1E-45",
									"ftm_objref_conv" : 0,
									"scope" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "log($epsilon) == -103.28",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 140.0, 68.0, 124.0, 17.0 ],
									"id" : "obj-27",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "($Nfft / 2 + 1)",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"presentation_rect" : [ 55.0, 218.0, 111.961426, 18.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 55.0, 218.0, 111.961426, 18.0 ],
									"id" : "obj-32",
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"persistence" : 0,
									"name" : "Nspec",
									"numinlets" : 1,
									"description" : "($Nfft / 2 + 1)",
									"ftm_objref_conv" : 0,
									"scope" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "$FTM.audio.sr",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"presentation_rect" : [ 55.0, 248.0, 87.844246, 18.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 55.0, 248.0, 87.844246, 18.0 ],
									"id" : "obj-33",
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"persistence" : 0,
									"name" : "sr",
									"numinlets" : 1,
									"description" : "$FTM.audio.sr",
									"ftm_objref_conv" : 0,
									"scope" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "256",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"presentation_rect" : [ 55.0, 171.0, 59.714844, 18.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 55.0, 171.0, 59.714844, 18.0 ],
									"id" : "obj-34",
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"persistence" : 0,
									"name" : "Nhop",
									"numinlets" : 1,
									"description" : "256",
									"ftm_objref_conv" : 0,
									"scope" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "2048",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"presentation_rect" : [ 55.0, 150.0, 69.395996, 18.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 55.0, 150.0, 69.395996, 18.0 ],
									"id" : "obj-35",
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"persistence" : 0,
									"name" : "Nwind",
									"numinlets" : 1,
									"description" : "2048",
									"ftm_objref_conv" : 0,
									"scope" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "$Nwind",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"presentation_rect" : [ 55.0, 197.0, 68.789551, 18.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 55.0, 197.0, 68.789551, 18.0 ],
									"id" : "obj-36",
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"persistence" : 0,
									"name" : "Nfft",
									"numinlets" : 1,
									"description" : "$Nwind",
									"ftm_objref_conv" : 0,
									"scope" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "3.141592653589793",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"presentation_rect" : [ 55.0, 42.0, 125.457016, 18.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 55.0, 42.0, 125.457016, 18.0 ],
									"id" : "obj-39",
									"fontname" : "Geneva",
									"ftm_scope" : 0,
									"persistence" : 0,
									"name" : "pi",
									"numinlets" : 1,
									"description" : "3.141592653589793",
									"ftm_objref_conv" : 0,
									"scope" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "FFT size",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 173.0, 198.0, 47.0, 17.0 ],
									"id" : "obj-42",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gbr.slice~ $Nwind $Nhop",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 26.0, 133.0, 121.0, 17.0 ],
					"id" : "obj-45",
					"fontname" : "Arial",
					"numinlets" : 1,
					"saved_object_attributes" : 					{
						"ftm_scope" : 2,
						"ftm_objref_conv" : 0
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [ 201.5, 175.0, 48.5, 175.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 2 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 35.5, 193.5, 252.5, 193.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 35.5, 153.5, 35.5, 153.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"midpoints" : [ 252.5, 259.5, 52.5, 259.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
