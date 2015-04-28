{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 8
		}
,
		"rect" : [ 1224.0, 44.0, 698.0, 486.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4.0, 210.5, 119.0, 21.0 ],
					"text" : "r na-ambicontrol-ui"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 110.0, 190.0, 80.0, 13.0 ],
					"presentation_rect" : [ 143.0, 153.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 199.0, 190.0, 80.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 199.0, 162.0, 107.0, 21.0 ],
					"text" : "receive~ 2-SPAT"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-46",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 315.0, 239.5, 195.0, 34.0 ],
					"text" : "source 2 omni -7.083333 1.7 0. -3.8 177. 5657."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 346.0, 179.5, 199.0, 21.0 ],
					"text" : "nav.bridge.ambi2spat 1 2 3 1 2 3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 520.0, 239.5, 113.0, 19.0 ],
					"text" : "source 0 mute 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 346.0, 207.5, 262.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 285.0, 300.0, 20.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "spat.oper @numsources 28 @numspeakers 17",
					"varname" : "spat.oper"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 140.0, 168.0, 50.0, 21.0 ],
					"text" : "dac~ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "bpatcher",
					"name" : "nav.input~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 86.0, 3.0, 73.0, 91.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 614.0, 168.0, 76.0, 21.0 ],
					"text" : "r na-spat-ui"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "ambimonitor",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 346.0, 16.0, 158.0, 158.0 ],
					"presentation_rect" : [ 45.0, 45.0, 100.0, 100.0 ],
					"varname" : "paul"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-13",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 6.0, 51.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 6.0, 75.0, 57.0, 19.0 ],
					"text" : "/amp $1"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 2 ],
					"id" : "obj-6",
					"maxclass" : "bpatcher",
					"name" : "na.spat.ui.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "signal" ],
					"patching_rect" : [ 4.0, 106.0, 101.0, 50.0 ],
					"varname" : "na.spat.send.ui[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 0,
							"revision" : 8
						}
,
						"rect" : [ 1029.0, 207.0, 842.0, 295.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 100.0, 166.0, 21.0 ],
									"text" : "jcom.oscroute /ambicontrol"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 29,
									"numoutlets" : 29,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 50.0, 125.0, 775.0, 21.0 ],
									"text" : "route 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-77",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 172.0, 100.0, 21.0 ],
									"text" : "prepend /points"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 28,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 149.0, 748.0, 21.0 ],
									"text" : "pak 666 666 666 666 666 666 666 666 666 666 666 666 666 666 666 666 666 666 666 666 666 666 666 666 666 666 666 666"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-86",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-87",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 253.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 27 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 27 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 26 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 26 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 25 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 25 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 24 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 24 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 23 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 23 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 22 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 22 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 21 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 21 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 20 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 20 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 19 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 19 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 18 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 18 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 17 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 17 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 16 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 16 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 15 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 15 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 14 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 14 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 13 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 13 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 12 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 12 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 11 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 11 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 10 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 9 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 9 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 8 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 7 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 6 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 5 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 4 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 3 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-86", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 4.0, 235.5, 54.0, 21.0 ],
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
					"text" : "p adapt"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "myModule" ],
					"id" : "obj-55",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.ambicontrol.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 4.0, 260.0, 300.0, 175.0 ],
					"presentation_rect" : [ 15.0, 15.0, 300.0, 175.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-6::obj-3" : [ "live.tab[1]", "live.tab", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "jmod.nav.ambicontrol.maxpat",
				"bootpath" : "/Users/iem/code/Nav/Jamoma/jmod.nav.ambicontrol",
				"patcherrelativepath" : "../../../../Jamoma/jmod.nav.ambicontrol",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jlag.nav.ambicontrol.maxpat",
				"bootpath" : "/Users/iem/code/Nav/Jamoma/jmod.nav.ambicontrol",
				"patcherrelativepath" : "../../../../Jamoma/jmod.nav.ambicontrol",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.list2parameter.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/components/list2parameter",
				"patcherrelativepath" : "../../../../../../../../Applications/Max6/Cycling '74/Jamoma/library/components/list2parameter",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "na.spat.ui.maxpat",
				"bootpath" : "/Users/iem/code/Nav/Omax/Omax.nav/abstractions/NA.spat",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "thru.maxpat",
				"bootpath" : "/Applications/Max6/patches/m4l-patches/Pluggo for Live resources/patches",
				"patcherrelativepath" : "../../../../../../../../Applications/Max6/patches/m4l-patches/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "nav.input~.maxpat",
				"bootpath" : "/Users/iem/code/Nav/snd/ADC-DAC~",
				"patcherrelativepath" : "../../../../snd/ADC-DAC~",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "nav.bridge.ambi2spat.maxpat",
				"bootpath" : "/Users/iem/code/Nav/Archive/Spatialization/ambi2spat",
				"patcherrelativepath" : "../../../../Archive/Spatialization/ambi2spat",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.parameter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.ui.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.hub.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.oscroute.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ambicontrol.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.in.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ambimonitor.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.message.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.textslider.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.dataspace.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat.oper.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
