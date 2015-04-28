{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 959.0, 44.0, 431.0, 594.0 ],
		"bglocked" : 0,
		"defrect" : [ 959.0, 44.0, 431.0, 594.0 ],
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
					"maxclass" : "comment",
					"text" : "store units in corpus or not (for live analysis)",
					"patching_rect" : [ 165.0, 195.0, 187.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-13",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<int: n = max units> <num: r = units per second>\nallocate new fmat with capacity  n / r seconds to be used for live recording.  The last fmat is used for all following recordings.",
					"linecount" : 4,
					"patching_rect" : [ 135.0, 120.0, 204.0, 48.0 ],
					"fontname" : "Arial",
					"id" : "obj-12",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 1 1",
					"patching_rect" : [ 125.0, 360.0, 43.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-11",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 1,
					"patching_rect" : [ 180.0, 225.0, 26.020996, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-10",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_1" ],
					"ftm_scope" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 180.0, 225.0, 26.020996, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 150.0, 225.0, 20.0, 20.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_store",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 150.0, 180.0, 106.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-2",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 240.0, 60.0, 15.0, 15.0 ],
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 1,
					"patching_rect" : [ 150.0, 315.0, 34.018066, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-14",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_500 2" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 150.0, 315.0, 34.018066, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_reserve-live",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 125.0, 105.0, 106.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-9",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p live-corpus-ctrl",
					"patching_rect" : [ 45.0, 390.0, 99.0, 20.0 ],
					"fontname" : "Arial",
					"id" : "obj-48",
					"numinlets" : 2,
					"numoutlets" : 6,
					"fontsize" : 12.0,
					"outlettype" : [ "", "", "", "", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 1065.0, 571.0, 586.0, 443.0 ],
						"bglocked" : 0,
						"defrect" : [ 1065.0, 571.0, 586.0, 443.0 ],
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
									"text" : "send fmat to recorder after allocation is done",
									"linecount" : 2,
									"patching_rect" : [ 180.0, 390.0, 106.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"presentation_rect" : [ 221.0, 390.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 165.0, 390.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"presentation_rect" : [ 191.0, 390.0, 0.0, 0.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "reserve live ",
									"patching_rect" : [ 211.0, 0.0, 59.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-43",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 195.0, 1.0, 15.0, 15.0 ],
									"id" : "obj-44",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 60.0, 390.0, 15.0, 15.0 ],
									"id" : "obj-42",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "force soundset index = #2",
									"linecount" : 2,
									"patching_rect" : [ 375.0, 208.0, 83.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "to ext descr. dict",
									"patching_rect" : [ 480.0, 360.0, 88.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 465.0, 360.0, 15.0, 15.0 ],
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 216.0, 167.0, 71.056641, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-6",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_reserve-live $1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 216.0, 167.0, 71.056641, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "status update",
									"patching_rect" : [ 360.0, 390.0, 70.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "get index for add-unit",
									"linecount" : 2,
									"patching_rect" : [ 214.0, 356.0, 72.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 210.0, 285.0, 53.162109, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-9",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_get-corpus" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 210.0, 285.0, 53.162109, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "catart.data.proxy #1",
									"patching_rect" : [ 210.0, 304.0, 136.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 201.0, 250.0, 142.501465, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-11",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_add-livefmat $*1 $writepointer" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 201.0, 250.0, 142.501465, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p create-live-file",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 137.0, 141.0, 89.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-12",
									"numinlets" : 2,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 549.0, 195.0, 851.0, 299.0 ],
										"bglocked" : 0,
										"defrect" : [ 549.0, 195.0, 851.0, 299.0 ],
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
													"text" : "sound fmat --> recorder",
													"patching_rect" : [ 225.0, 255.0, 105.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-25",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"presentation_rect" : [ 167.0, 255.0, 0.0, 0.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 210.0, 255.0, 15.0, 15.0 ],
													"id" : "obj-24",
													"numinlets" : 1,
													"numoutlets" : 0,
													"presentation_rect" : [ 127.0, 278.0, 0.0, 0.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 45.0, 225.0, 147.826172, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-23",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 12.0,
													"#untuple" : 0,
													"text" : [ "_(print RESRV $1 ($1 size))" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 45.0, 225.0, 147.826172, 18.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "calculate buffer duration in ms from max units and unit rate",
													"patching_rect" : [ 208.0, 87.0, 282.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 99.0, 85.0, 134.887207, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-2",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(($1 / (if $2 $2 1)) * 1000.)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 99.0, 85.0, 134.887207, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "calculate buffer size in samples",
													"patching_rect" : [ 111.0, 129.0, 152.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-3",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 79.0, 45.0, 746.447754, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-4",
													"numinlets" : 3,
													"#triggerall" : 0,
													"numins" : 3,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(print --------- corpus1: reserve live buffer 0 size $3 ms = ((int ($3 / 600.)) / 100.) min = (($3 * $msr * 4.) / 1024 / 1024) MB -- unit rate $2 units/s --> max units $1)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 79.0, 45.0, 746.447754, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 99.0, 112.0, 61.718262, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-5",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($1 *  $msr)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 99.0, 112.0, 61.718262, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 99.0, 154.0, 79.023926, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-6",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(new fmat $1 1)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 99.0, 154.0, 79.023926, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "preallocate sound buffer",
													"patching_rect" : [ 100.0, 171.0, 119.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-7",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p make-name",
													"patching_rect" : [ 1.0, 45.0, 69.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-8",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 246.0, 519.0, 330.0, 230.0 ],
														"bglocked" : 0,
														"defrect" : [ 246.0, 519.0, 330.0, 230.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf live%04d-%02d-%02d@%02d-%02d-%02d%s",
																	"patching_rect" : [ 16.0, 128.0, 265.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-1",
																	"numinlets" : 7,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"patching_rect" : [ 129.0, 28.0, 15.0, 15.0 ],
																	"id" : "obj-2",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t date time",
																	"patching_rect" : [ 16.0, 50.0, 59.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-3",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "date", "time" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "buffer size [ms]",
																	"patching_rect" : [ 39.0, 28.0, 83.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-4",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "generated name, size",
																	"patching_rect" : [ 38.0, 154.0, 102.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-5",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "date",
																	"patching_rect" : [ 16.0, 78.0, 112.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"fontsize" : 9.0,
																	"outlettype" : [ "list", "list", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 16.0, 26.0, 15.0, 15.0 ],
																	"id" : "obj-7",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 16.0, 154.0, 15.0, 15.0 ],
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 16.0, 105.0, 181.737305, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-9",
																	"numinlets" : 6,
																	"#triggerall" : 0,
																	"numins" : 6,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_$3 $1 $2 $4 $5 $6 (aa 0 (cat _in 0) '')" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 16.0, 105.0, 181.737305, 17.0 ],
																	"#init" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 1 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-9", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 272.0, 22.0, 15.0, 15.0 ],
													"id" : "obj-9",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "reserve max units, mean unit rate [units/s]",
													"patching_rect" : [ 293.0, 23.0, 209.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-10",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 345.0, 150.0, 17.99707, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-11",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_$2" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 345.0, 150.0, 17.99707, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 345.0, 254.0, 15.0, 15.0 ],
													"id" : "obj-12",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "send max size mode on to catart.data",
													"patching_rect" : [ 367.0, 254.0, 177.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-13",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "start with preallocated sound matrix",
													"linecount" : 2,
													"patching_rect" : [ 44.0, 194.0, 121.0, 27.0 ],
													"fontname" : "Arial",
													"id" : "obj-14",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 1.0, 259.0, 15.0, 15.0 ],
													"id" : "obj-15",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l b b",
													"patching_rect" : [ 1.0, 124.0, 44.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-16",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"outlettype" : [ "", "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 1.0, 22.0, 15.0, 15.0 ],
													"id" : "obj-17",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "start recording",
													"patching_rect" : [ 24.0, 24.0, 83.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-18",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "out name, sound fmat --> add-soundfmat",
													"patching_rect" : [ 23.0, 260.0, 193.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-19",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 1.0, 225.0, 32.995605, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-20",
													"numinlets" : 3,
													"#triggerall" : 0,
													"numins" : 3,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_$1 $3" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 1.0, 225.0, 32.995605, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 18.0, 176.0, 17.99707, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-21",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_$2" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 18.0, 176.0, 17.99707, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 25.0, 65.0, 802.262695, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-22",
													"numinlets" : 5,
													"#triggerall" : 0,
													"numins" : 5,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(print --------- corpus1: starting recording 0 $1 -- buffer size $3 ms = ((int ($3 / 600.)) / 100.) min = (($3 * $msr * 4.) / 1024 / 1024) MB  -- unit rate $5 units/s --> max units $4)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 25.0, 65.0, 802.262695, 17.0 ],
													"#init" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 2 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 1 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-22", 2 ],
													"hidden" : 0,
													"midpoints" : [ 108.5, 105.0, 669.0, 105.0, 669.0, 60.0, 426.131348, 60.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-4", 2 ],
													"hidden" : 0,
													"midpoints" : [ 108.5, 105.0, 833.0, 105.0, 833.0, 30.0, 815.947754, 30.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-20", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-21", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-22", 3 ],
													"hidden" : 0,
													"midpoints" : [ 281.0, 40.0, 621.947021, 40.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
													"midpoints" : [ 281.0, 39.0, 88.5, 39.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 345.0, 390.0, 15.0, 15.0 ],
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-> lcd, too heavy!",
									"linecount" : 3,
									"patching_rect" : [ 377.0, 111.0, 45.0, 38.0 ],
									"fontname" : "Arial",
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "switch on",
									"patching_rect" : [ 105.0, 390.0, 48.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"patching_rect" : [ 159.0, 82.0, 16.0, 15.0 ],
									"fontname" : "Arial",
									"id" : "obj-17",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"patching_rect" : [ 117.0, 80.0, 30.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 362.0, 23.0, 15.0, 15.0 ],
									"id" : "obj-19",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 5000.",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 362.0, 43.0, 67.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-20",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 450.0, 90.0, 57.191895, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-21",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_update-stat" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 450.0, 90.0, 57.191895, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 362.0, 93.0, 35.553223, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-24",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_redraw" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 362.0, 93.0, 35.553223, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "delay 5000.",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 362.0, 67.0, 67.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-25",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 1,
									"patching_rect" : [ 15.0, 1.0, 13.0, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-26",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_0" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 15.0, 1.0, 13.0, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mute recursively to catch gbr.slice~, start muted",
									"linecount" : 5,
									"patching_rect" : [ 1.0, 76.0, 60.0, 58.0 ],
									"fontname" : "Arial",
									"id" : "obj-27",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 60.0, 105.0, 26.99707, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-28",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$1 1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 60.0, 105.0, 26.99707, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "to corpus",
									"patching_rect" : [ 465.0, 390.0, 52.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-29",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "on/off",
									"patching_rect" : [ 76.0, 0.0, 39.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-30",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 450.0, 390.0, 15.0, 15.0 ],
									"id" : "obj-31",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 117.0, 45.0, 52.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-32",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 0",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 60.0, 45.0, 31.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-33",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 60.0, 75.0, 15.0, 15.0 ],
									"id" : "obj-34",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mute~",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 60.0, 135.0, 38.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-35",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 60.0, 1.0, 15.0, 15.0 ],
									"id" : "obj-36",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 90.0, 390.0, 15.0, 15.0 ],
									"id" : "obj-37",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l b l",
									"patching_rect" : [ 137.0, 214.0, 79.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-38",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "max corpus size",
									"patching_rect" : [ 306.0, 168.0, 83.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-39",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 117.0, 365.0, 26.99707, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-40",
									"numinlets" : 3,
									"#triggerall" : 0,
									"numins" : 3,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_1 $3" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 117.0, 365.0, 26.99707, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 210.0, 323.0, 231.0, 29.0 ],
									"fontname" : "Geneva",
									"id" : "obj-41",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_set $1[descrid][SoundFile] $1[lastsoundfile][index]", "_$1[descrid][SoundSet] 0" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 210.0, 323.0, 231.0, 29.0 ],
									"#init" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 210.5, 272.0, 459.0, 272.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-20", 0 ],
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
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 2 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-40", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 225.5, 190.0, 459.0, 190.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"patching_rect" : [ 15.0, 480.0, 33.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-38",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0",
					"patching_rect" : [ 60.0, 210.0, 38.5, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-49",
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 60.0, 180.0, 20.0, 20.0 ],
					"id" : "obj-39",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_int",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 60.0, 150.0, 65.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-23",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_set-corpus",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 240.0, 225.0, 109.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-3",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "todo: pass set-corpus and given corpus to analysers",
					"linecount" : 2,
					"patching_rect" : [ 240.0, 240.0, 141.0, 27.0 ],
					"fontname" : "Arial",
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "only after add-soundfile can we ask data for its path",
					"linecount" : 3,
					"patching_rect" : [ 180.0, 345.0, 99.0, 38.0 ],
					"fontname" : "Arial",
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 180.0, 390.0, 91.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-7",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_get-last-soundfile" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 180.0, 390.0, 91.0, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.data.proxy #1",
					"patching_rect" : [ 180.0, 411.0, 110.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-8",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 1,
					"patching_rect" : [ 285.0, 89.0, 50.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-19",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_0" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 285.0, 89.0, 50.0, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 264.0, 89.0, 15.0, 15.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s catart.import.debug",
					"patching_rect" : [ 264.0, 110.0, 107.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-21",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_init",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 194.0, 86.0, 65.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-22",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b b b 0",
					"patching_rect" : [ 285.0, 300.0, 100.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 5,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "bang", "bang", "bang", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "finished",
					"patching_rect" : [ 294.0, 287.0, 45.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-27",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "cataRT - Copyright (C) 2005-2006 by Diemo Schwarz, Real-Time Music Interaction Team (IMTR), Ircam--Centre Pompidou - published under the GNU GPL:",
					"linecount" : 3,
					"patching_rect" : [ 3.0, 7.0, 349.0, 48.0 ],
					"fontname" : "Arial",
					"id" : "obj-29",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 315.0, 390.0, 50.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-30",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_redraw" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 315.0, 390.0, 50.0, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 1.0, 554.0, 15.0, 15.0 ],
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : "status messages and catart.lcd messages"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "to corpus",
					"patching_rect" : [ 296.0, 563.0, 54.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-32",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ftm.mdispatch #0_ catart.import",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 0.5, 86.0, 187.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-34",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 1.0, 60.0, 15.0, 15.0 ],
					"id" : "obj-35",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 330.0, 345.0, 84.0, 29.0 ],
					"fontname" : "Geneva",
					"id" : "obj-36",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_finish-soundfile,", "_update-stat" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 330.0, 345.0, 84.0, 29.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p prepare-lcd",
					"patching_rect" : [ 105.0, 450.0, 71.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-37",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 89.0, 331.0, 468.0, 292.0 ],
						"bglocked" : 0,
						"defrect" : [ 89.0, 331.0, 468.0, 292.0 ],
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
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 38.0, 106.0, 68.608887, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-1",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_update-ranges" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 38.0, 106.0, 68.608887, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 38.0, 180.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 38.0, 55.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p safety-check",
					"patching_rect" : [ 45.0, 240.0, 77.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-40",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 60.0, 107.0, 383.0, 278.0 ],
						"bglocked" : 0,
						"defrect" : [ 60.0, 107.0, 383.0, 278.0 ],
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
									"text" : "t b",
									"patching_rect" : [ 80.0, 124.0, 20.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "dict with type, sfname, import limit, seg mode, param, soundset, ext. descr, fmat",
									"linecount" : 2,
									"patching_rect" : [ 46.0, 38.0, 198.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.value",
									"patching_rect" : [ 80.0, 151.0, 63.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
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
									"#loadbang" : 0,
									"patching_rect" : [ 21.0, 192.0, 294.180176, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-4",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print 'WARNING: sampling rate is zero refusing to add sound file')" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 21.0, 192.0, 294.180176, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 0.",
									"patching_rect" : [ 21.0, 93.0, 69.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 21.0, 69.0, 66.56543, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-6",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$FTM.audio.sr" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 21.0, 69.0, 66.56543, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 80.0, 172.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 21.0, 39.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-1", 0 ],
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
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-3", 1 ],
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
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_return",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"patching_rect" : [ 15.0, 510.0, 87.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-41",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b i i",
					"patching_rect" : [ 45.0, 263.0, 78.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-42",
					"numinlets" : 1,
					"numoutlets" : 4,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "bang", "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p enframe",
					"patching_rect" : [ 30.0, 435.0, 78.0, 23.0 ],
					"fontname" : "Arial",
					"id" : "obj-43",
					"numinlets" : 4,
					"numoutlets" : 1,
					"fontsize" : 14.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 528.0, 661.0, 533.0, 351.0 ],
						"bglocked" : 0,
						"defrect" : [ 528.0, 661.0, 533.0, 351.0 ],
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
									"maxclass" : "newobj",
									"text" : "t l l",
									"patching_rect" : [ 220.0, 40.0, 46.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 190.0, 300.0, 194.29248, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-26",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print frame-period: ($hopsize / $msr) ms)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 190.0, 300.0, 194.29248, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l l",
									"patching_rect" : [ 90.0, 40.0, 76.5, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-19",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 270.0, 15.0, 15.0, 15.0 ],
									"id" : "obj-24",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "store audio",
									"patching_rect" : [ 270.0, 0.0, 55.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-25",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 135.0, 150.0, 15.0, 15.0 ],
									"id" : "obj-21",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"patching_rect" : [ 135.0, 170.0, 43.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-22",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"patching_rect" : [ 330.0, 130.0, 32.5, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 3,
									"presentation_linecount" : 3,
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 330.0, 150.0, 80.0, 41.0 ],
									"fontname" : "Geneva",
									"id" : "obj-8",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_sr $sr,", "_winsize $winsize,", "_hopsize $hopsize" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 330.0, 150.0, 80.0, 41.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "audio in",
									"patching_rect" : [ 30.0, 0.0, 44.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "recording flag: 1 <fmat> or 0",
									"patching_rect" : [ 90.0, 0.0, 124.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 220.0, 20.0, 15.0, 15.0 ],
									"id" : "obj-6",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 90.0, 15.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "init: set fmat",
									"linecount" : 3,
									"patching_rect" : [ 240.0, 0.0, 31.0, 38.0 ],
									"fontname" : "Arial",
									"id" : "obj-23",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 30.0, 330.0, 15.0, 15.0 ],
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 30.0, 300.0, 97.63916, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-12",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_analyse-frame list $1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 30.0, 300.0, 97.63916, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "declare window parameters before each soundfile",
									"linecount" : 2,
									"patching_rect" : [ 360.0, 120.0, 123.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-17",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 30.0, 15.0, 15.0, 15.0 ],
									"id" : "obj-35",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "512",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 300.0, 96.0, 70.195801, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-37",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "512",
									"name" : "hopsize",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 300.0, 96.0, 70.195801, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "(if ($sr <= 48000) 2048 4096)",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 300.0, 69.0, 191.216797, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-38",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "(if ($sr <= 48000) 2048 4096)",
									"name" : "winsize",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 300.0, 69.0, 191.216797, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "(if ($FTM.audio.sr > 1) $FTM.audio.sr 44100)",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 300.0, 15.0, 227.115723, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-46",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "(if ($FTM.audio.sr > 1) $FTM.audio.sr 44100)",
									"name" : "sr",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 300.0, 15.0, 227.115723, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "($sr / 1000.)",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 300.0, 42.0, 94.994141, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-47",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "($sr / 1000.)",
									"name" : "msr",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 300.0, 42.0, 94.994141, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ms to samples",
									"patching_rect" : [ 412.0, 42.0, 74.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-48",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "send sliced frame to anlyse",
									"patching_rect" : [ 45.0, 330.0, 120.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-56",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "fmat to add to, reset position",
									"linecount" : 4,
									"patching_rect" : [ 250.0, 80.0, 41.0, 48.0 ],
									"fontname" : "Arial",
									"id" : "obj-41",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 220.0, 100.0, 27.019531, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-4",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 220.0, 100.0, 27.019531, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p add-live-samples",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 135.0, 195.0, 93.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-5",
									"numinlets" : 3,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 364.0, 784.0, 642.0, 207.0 ],
										"bglocked" : 0,
										"defrect" : [ 364.0, 784.0, 642.0, 207.0 ],
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
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 241.0, 84.0, 95.960449, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-1",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(print $writepointer)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 241.0, 84.0, 95.960449, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.object",
													"text" : "var 0",
													"ftm_objref_conv" : 0,
													"patching_rect" : [ 242.0, 105.0, 94.422852, 18.0 ],
													"fontname" : "Geneva",
													"id" : "obj-2",
													"persistence" : 0,
													"editor_interface" : "",
													"description" : "var 0",
													"name" : "writepointer",
													"numinlets" : 1,
													"scope" : 0,
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"ftm_scope" : 0,
													"outlettype" : [ "", "" ],
													"presentation_rect" : [ 242.0, 105.0, 94.422852, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 425.0, 84.0, 58.716797, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-3",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($1 * $msr)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 425.0, 84.0, 58.716797, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "print",
													"patching_rect" : [ 496.0, 138.0, 32.0, 15.0 ],
													"fontname" : "Arial",
													"id" : "obj-4",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.object",
													"text" : "fvec col 0",
													"ftm_objref_conv" : 0,
													"patching_rect" : [ 395.0, 138.0, 83.273926, 18.0 ],
													"fontname" : "Geneva",
													"id" : "obj-5",
													"persistence" : 0,
													"editor_interface" : "",
													"description" : "fvec col 0",
													"name" : "wrap",
													"numinlets" : 1,
													"scope" : 0,
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"ftm_scope" : 0,
													"outlettype" : [ "", "" ],
													"presentation_rect" : [ 395.0, 138.0, 83.273926, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"linecount" : 2,
													"presentation_linecount" : 2,
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 425.0, 104.0, 113.0, 29.0 ],
													"fontname" : "Geneva",
													"id" : "obj-6",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_onset $1,", "_size ($writepointer - $1)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 425.0, 104.0, 113.0, 29.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 395.0, 24.0, 15.0, 15.0 ],
													"id" : "obj-7",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "LATER: wraparound to this start time: copy from there to top of buffer",
													"linecount" : 2,
													"patching_rect" : [ 439.0, 24.0, 186.0, 27.0 ],
													"fontname" : "Arial",
													"id" : "obj-8",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 13.0, 173.0, 268.863281, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-9",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(print $window onset ($window onset) size ($window size))" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 13.0, 173.0, 268.863281, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "print",
													"patching_rect" : [ 125.0, 108.0, 32.0, 15.0 ],
													"fontname" : "Arial",
													"id" : "obj-10",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 181.0, 61.0, 41.824219, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-11",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_refer $1" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 181.0, 61.0, 41.824219, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "advance write pointer, handle wrapping",
													"patching_rect" : [ 6.0, 157.0, 198.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-12",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 241.0, 61.0, 90.708984, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-13",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($writepointer = 0)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 241.0, 61.0, 90.708984, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 241.0, 24.0, 15.0, 15.0 ],
													"id" : "obj-14",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "current live file's sound data fmat",
													"linecount" : 2,
													"patching_rect" : [ 265.0, 24.0, 108.0, 27.0 ],
													"fontname" : "Arial",
													"id" : "obj-15",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 1.0, 139.0, 272.765625, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-16",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($writepointer = ((($1 rows) + $writepointer) % ($2 rows)))" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 1.0, 139.0, 272.765625, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.object",
													"text" : "fvec col 0",
													"ftm_objref_conv" : 0,
													"patching_rect" : [ 20.0, 108.0, 94.660156, 18.0 ],
													"fontname" : "Geneva",
													"id" : "obj-17",
													"persistence" : 0,
													"editor_interface" : "",
													"description" : "fvec col 0",
													"name" : "window",
													"numinlets" : 1,
													"scope" : 0,
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"ftm_scope" : 0,
													"outlettype" : [ "", "" ],
													"presentation_rect" : [ 20.0, 108.0, 94.660156, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"linecount" : 3,
													"presentation_linecount" : 3,
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 20.0, 59.0, 94.0, 41.0 ],
													"fontname" : "Geneva",
													"id" : "obj-18",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_onset $writepointer,", "_size ($1 rows),", "_set $1" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 20.0, 59.0, 94.0, 41.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 1.0, 25.0, 15.0, 15.0 ],
													"id" : "obj-19",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "fmat with sound data frame to add",
													"patching_rect" : [ 25.0, 25.0, 168.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-20",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b l",
													"patching_rect" : [ 395.0, 43.0, 40.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-21",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "bang", "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-16", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 2 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-18", 0 ],
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
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 269.0, 162.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"patching_rect" : [ 269.0, 182.0, 29.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-45",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.vecdisplay",
									"ftm_objref_conv" : 0,
									"bgcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
									"patching_rect" : [ 269.0, 208.0, 200.0, 88.0 ],
									"id" : "obj-49",
									"minval1" : -1.0,
									"numinlets" : 5,
									"fgcolor4" : [ 1.0, 0.0, 1.0, 1.0 ],
									"numoutlets" : 6,
									"fgcolor5" : [ 1.0, 1.0, 0.0, 1.0 ],
									"ftm_scope" : 0,
									"outlettype" : [ "", "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 1,
									"patching_rect" : [ 170.0, 80.0, 13.0, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-50",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_0" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 170.0, 80.0, 13.0, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 150.0, 100.0, 47.251465, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-11",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_active $1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 150.0, 100.0, 47.251465, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sound data buffer (no overlap)",
									"linecount" : 2,
									"patching_rect" : [ 210.0, 165.0, 88.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-51",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gbr.slice~ 4096 4096",
									"patching_rect" : [ 150.0, 130.0, 104.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"saved_object_attributes" : 									{
										"ftm_objref_conv" : 0,
										"ftm_scope" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 49.0, 163.0, 15.0, 15.0 ],
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"patching_rect" : [ 49.0, 183.0, 29.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-15",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 150.0, 80.0, 15.0, 15.0 ],
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.vecdisplay",
									"ftm_objref_conv" : 0,
									"bgcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
									"patching_rect" : [ 49.0, 209.0, 200.0, 88.0 ],
									"id" : "obj-53",
									"minval1" : -1.0,
									"numinlets" : 5,
									"fgcolor4" : [ 1.0, 0.0, 1.0, 1.0 ],
									"numoutlets" : 6,
									"fgcolor5" : [ 1.0, 1.0, 0.0, 1.0 ],
									"ftm_scope" : 0,
									"outlettype" : [ "", "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gbr.slice~ $winsize $hopsize",
									"patching_rect" : [ 30.0, 130.0, 124.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-20",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"saved_object_attributes" : 									{
										"ftm_objref_conv" : 0,
										"ftm_scope" : 0
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-45", 1 ],
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
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 2 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-45", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 30.0, 105.0, 15.0, 15.0 ],
					"id" : "obj-45",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #1_catart.data",
					"color" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"patching_rect" : [ 297.0, 545.0, 95.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-46",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "audio in",
					"patching_rect" : [ 48.0, 105.0, 42.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-47",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 225.0, 525.0, 83.043457, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-50",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_end live $2[path]" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 225.0, 525.0, 83.043457, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 110.0, 508.0, 88.211426, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-51",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_start live $1[path]" ],
					"ftm_scope" : 2,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 110.0, 508.0, 88.211426, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "analysis",
					"patching_rect" : [ 15.0, 555.0, 95.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-52",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "signal start/end of a file with absolute path",
					"patching_rect" : [ 107.0, 492.0, 206.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-56",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-48", 2 ],
					"destination" : [ "obj-43", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-34", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-48", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"color" : [ 0.768627, 0.768627, 0.768627, 1.0 ],
					"midpoints" : [ 203.5, 307.0, 159.5, 307.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-43", 2 ],
					"hidden" : 0,
					"color" : [ 0.768627, 0.768627, 0.768627, 1.0 ],
					"midpoints" : [ 203.5, 432.5, 78.833336, 432.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 2 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 4 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 4 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 2 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"midpoints" : [ 339.5, 376.0, 306.5, 376.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"color" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"midpoints" : [ 114.5, 485.0, 24.5, 485.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 1 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 3 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 113.5, 297.5, 24.5, 297.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 2 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-38", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 1 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 4 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 1 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-43", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-50", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [ 134.5, 341.5, 158.5, 341.5 ]
				}

			}
 ]
	}

}
