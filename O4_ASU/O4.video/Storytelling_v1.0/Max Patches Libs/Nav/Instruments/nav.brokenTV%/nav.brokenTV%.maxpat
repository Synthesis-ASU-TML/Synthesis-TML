{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 5
		}
,
		"rect" : [ 447.0, 44.0, 301.0, 341.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 0,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 0,
		"enablevscroll" : 0,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"hidden" : 1,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 99.5, 82.0, 206.0, 19.0 ],
					"text" : "loadmess load nav.brokenTV.cuelist.txt"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 18.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 0,
							"revision" : 5
						}
,
						"rect" : [ -5.0, 390.0, 761.0, 251.0 ],
						"bglocked" : 0,
						"openinpresentation" : 1,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 0,
						"enablevscroll" : 0,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 623.0, 384.0, 86.0, 17.0 ],
									"text" : "/updaterate $1"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "rate" ],
									"id" : "obj-6",
									"maxclass" : "bpatcher",
									"name" : "jmod.nav.scale.maxpat",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 559.0, 133.0, 150.0, 245.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 306.0, 1.0, 150.0, 245.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "fade" ],
									"id" : "obj-5",
									"maxclass" : "bpatcher",
									"name" : "jmod.nav.scale.maxpat",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 721.0, 133.0, 150.0, 245.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 610.0, 1.0, 150.0, 245.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "noise" ],
									"id" : "obj-4",
									"maxclass" : "bpatcher",
									"name" : "jmod.nav.scale.maxpat",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 388.0, 133.0, 150.0, 245.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 458.0, 1.0, 150.0, 245.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 824.0, 390.0, 53.0, 17.0 ],
									"text" : "/fade $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "ezadc~",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 194.0, 510.0, 45.0, 45.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 126.0, 50.5, 26.0, 26.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 475.0, 504.0, 39.0, 19.0 ],
									"text" : "s 2TV"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 429.0, 390.0, 115.0, 17.0 ],
									"text" : "/noise/probability $1"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "stability" ],
									"id" : "obj-16",
									"maxclass" : "bpatcher",
									"name" : "jmod.nav.scale.maxpat",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 217.0, 133.0, 150.0, 245.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 154.0, 1.0, 150.0, 245.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "bpatcher",
									"name" : "nav.input~.maxpat",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 150.0, 100.0, 50.0, 25.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 1.0, 50.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "ENVtv" ],
									"id" : "obj-10",
									"maxclass" : "bpatcher",
									"name" : "jmod.nav.env~.maxpat",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 133.0, 150.0, 245.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 1.0, 150.0, 245.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 267.0, 408.0, 71.0, 17.0 ],
									"text" : "/stability $1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"dependency_cache" : [ 							{
								"name" : "jmod.nav.env~.maxpat",
								"bootpath" : "/Users/Lolita/code/Git/MaxLibraries/Nav/Jamoma/jmod.nav.env~",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "jalg.nav.env~.maxpat",
								"bootpath" : "/Users/Lolita/code/Git/MaxLibraries/Nav/Jamoma/jmod.nav.env~",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "jcom.autoscale.maxpat",
								"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/components/autoscale",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "nav.input~.maxpat",
								"bootpath" : "/Users/Lolita/code/Git/MaxLibraries/Nav/snd/ADC-DAC~",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "thru.maxpat",
								"bootpath" : "/Applications/Max6/patches/m4l-patches/Pluggo for Live resources/patches",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "jmod.nav.scale.maxpat",
								"bootpath" : "/Users/Lolita/code/Git/MaxLibraries/Nav/Jamoma/jmod.nav.scale",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "jalg.nav.scale.maxpat",
								"bootpath" : "/Users/Lolita/code/Git/MaxLibraries/Nav/Jamoma/jmod.nav.scale",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "jcom.thru.maxpat",
								"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/components/thru",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "jcom.message.mxo",
								"type" : "iLaX"
							}
, 							{
								"name" : "jcom.parameter.mxo",
								"type" : "iLaX"
							}
, 							{
								"name" : "jcom.ui.mxo",
								"type" : "iLaX"
							}
, 							{
								"name" : "jcom.hub.mxo",
								"type" : "iLaX"
							}
, 							{
								"name" : "mattrms~.mxo",
								"type" : "iLaX"
							}
, 							{
								"name" : "jcom.oscroute.mxo",
								"type" : "iLaX"
							}
, 							{
								"name" : "jcom.stats.mxo",
								"type" : "iLaX"
							}
, 							{
								"name" : "jcom.pass.mxo",
								"type" : "iLaX"
							}
, 							{
								"name" : "jcom.return.mxo",
								"type" : "iLaX"
							}
, 							{
								"name" : "jcom.in~.mxo",
								"type" : "iLaX"
							}
, 							{
								"name" : "jcom.map.mxo",
								"type" : "iLaX"
							}
, 							{
								"name" : "jcom.delta.mxo",
								"type" : "iLaX"
							}
, 							{
								"name" : "jcom.in.mxo",
								"type" : "iLaX"
							}
, 							{
								"name" : "jcom.out.mxo",
								"type" : "iLaX"
							}
 ]
					}
,
					"patching_rect" : [ 373.0, 36.0, 116.0, 28.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 134.0, 230.0, 116.0, 28.0 ],
					"saved_object_attributes" : 					{
						"digest" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"tags" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : ""
					}
,
					"text" : "p Mappings"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/cueManager" ],
					"id" : "obj-2",
					"maxclass" : "bpatcher",
					"name" : "jmod.cueManager.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 142.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 270.5, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"id" : "obj-23",
					"maxclass" : "bpatcher",
					"name" : "viewr-patch.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 51.0, 579.0, 280.0, 110.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 217.5, 99.0, 53.0 ],
					"prototypename" : "pixl"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 31.0, 477.0, 38.0, 19.0 ],
					"text" : "r 2TV"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "bpatcher",
					"name" : "jmod.brcosa%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 31.0, 400.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 74.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "jmod.input%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 31.0, 320.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 2.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/television" ],
					"id" : "obj-8",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.television%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 31.0, 490.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 147.5, 300.0, 70.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 1 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-13::obj-4::obj-69" : [ "live.tab[6]", "live.tab", 0 ],
			"obj-13::obj-5::obj-69" : [ "live.tab[5]", "live.tab", 0 ],
			"obj-13::obj-16::obj-69" : [ "live.tab[7]", "live.tab", 0 ],
			"obj-13::obj-6::obj-69" : [ "live.tab[4]", "live.tab", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "jmod.television%.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/modules/video/television%",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/modules/video/television%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.television%.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/modules/video/television%",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/modules/video/television%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.thru.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/components/thru",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/library/components/thru",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.input%.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/modules/video/input%",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/modules/video/input%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.input%.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/modules/video/input%",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/modules/video/input%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.input%.ui.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/modules/video/input%",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/modules/video/input%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.brcosa%.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/modules/video/brcosa%",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/modules/video/brcosa%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.brcosa%.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/modules/video/brcosa%",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/modules/video/brcosa%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.pwindow.mouse.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/components/pwindow.mouse",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/library/components/pwindow.mouse",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "viewr-patch.maxpat",
				"bootpath" : "/Applications/Max6/patches/VIZZIE-PATCHES",
				"patcherrelativepath" : "../../../../Applications/Max6/patches/VIZZIE-PATCHES",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "viewrnamer.js",
				"bootpath" : "/Applications/Max6/patches/VIZZIE-PATCHES",
				"patcherrelativepath" : "../../../../Applications/Max6/patches/VIZZIE-PATCHES",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.cueManager.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/modules/control/cueManager",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/modules/control/cueManager",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.initialized.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/components/initialized",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/library/components/initialized",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.nav.env~.maxpat",
				"bootpath" : "/Users/Lolita/code/Git/MaxLibraries/Nav/Jamoma/jmod.nav.env~",
				"patcherrelativepath" : "../../code/Git/MaxLibraries/Nav/Jamoma/jmod.nav.env~",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.nav.env~.maxpat",
				"bootpath" : "/Users/Lolita/code/Git/MaxLibraries/Nav/Jamoma/jmod.nav.env~",
				"patcherrelativepath" : "../../code/Git/MaxLibraries/Nav/Jamoma/jmod.nav.env~",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.autoscale.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/components/autoscale",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/library/components/autoscale",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "nav.input~.maxpat",
				"bootpath" : "/Users/Lolita/code/Git/MaxLibraries/Nav/snd/ADC-DAC~",
				"patcherrelativepath" : "../../code/Git/MaxLibraries/Nav/snd/ADC-DAC~",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "thru.maxpat",
				"bootpath" : "/Applications/Max6/patches/m4l-patches/Pluggo for Live resources/patches",
				"patcherrelativepath" : "../../../../Applications/Max6/patches/m4l-patches/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.nav.scale.maxpat",
				"bootpath" : "/Users/Lolita/code/Git/MaxLibraries/Nav/Jamoma/jmod.nav.scale",
				"patcherrelativepath" : "../../code/Git/MaxLibraries/Nav/Jamoma/jmod.nav.scale",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.nav.scale.maxpat",
				"bootpath" : "/Users/Lolita/code/Git/MaxLibraries/Nav/Jamoma/jmod.nav.scale",
				"patcherrelativepath" : "../../code/Git/MaxLibraries/Nav/Jamoma/jmod.nav.scale",
				"type" : "JSON",
				"implicit" : 1
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
				"name" : "jcom.dataspace.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.pass.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.in.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.parameter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.out.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.textslider.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.message.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.loader.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.loader.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.cuemanager.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.return.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mattrms~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.stats.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.in~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.map.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.delta.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
