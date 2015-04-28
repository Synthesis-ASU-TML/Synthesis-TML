{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 106.0, 127.0, 1262.0, 771.0 ],
		"bglocked" : 0,
		"defrect" : [ 106.0, 127.0, 1262.0, 771.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"text" : "<- click for more info on instant messaging",
					"presentation_linecount" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 584.0, 712.0, 128.0, 34.0 ],
					"patching_rect" : [ 989.0, 25.0, 277.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-28",
					"fontname" : "Arial",
					"frgb" : [ 0.8, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.8, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.101961 ],
					"presentation_rect" : [ 560.0, 709.0, 25.0, 25.0 ],
					"outlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.34902 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 959.0, 24.0, 23.0, 23.0 ],
					"presentation" : 1,
					"id" : "obj-26",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p info-about-instant-messaging",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 959.0, 51.0, 175.0, 20.0 ],
					"id" : "obj-27",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 654.0, 91.0, 486.0, 620.0 ],
						"bglocked" : 0,
						"defrect" : [ 654.0, 91.0, 486.0, 620.0 ],
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
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 398.0, -28.0, 25.0, 25.0 ],
									"hidden" : 1,
									"id" : "obj-5",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Instant Messaging System",
									"fontsize" : 24.0,
									"numoutlets" : 0,
									"patching_rect" : [ 61.0, 10.0, 313.0, 34.0 ],
									"id" : "obj-4",
									"fontname" : "Arial Bold",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "By default, any message written in the Instant Messaging box goes to all players of the orchestra.\n\nThere is a way, however, to send messages to specific subsets of the orchestra. You specify the addressee(s) of a message in the following way:\n\n-a how are you\n-b how are you doing?\n-abf nice day\n-bfecih good morning\n\nIn all the examples above, the letters immediately following the dash indicate the addresses.\n\n- In the first example, the message \"how are you\" goes to all performers playing part (voice) \"a\".\n- In the second example, the message \"how are you doing?\" goes to all performers playing part \"b\".\n- In the third example, the message \"nice day\" goes to all performers playing any of the specified parts (\"a\", \"b\", \"f\").\n- In the fourth example, the message \"good morning\" goes to all performers of parts \"b\", \"f\", \"e\", \"c\", \"i\", and \"f\".\n\nNote that the use of dash before the addressee is mandatory. Compare these two instant messages:\n\na great day\n\n-a great day\n\nIn the first case, \"a great day\" goes to all players.\nIn the second case, \"great day\" goes only to players of part \"a\".\n\nThe same method also works for user-defined groups of players. If, in the text file \"mypiece_ork-sections.txt\" you have defined the word \"violins\" to refer to Instrumental Parts \"d\", \"e\", and \"f\" as a group, the following instant message could be used:\n\n-violins come on, you guys are totally out of tune\n\nIn this case, the message \"come on, you guys are totally out of tune\" goes ONLY to the group violins, which was previously defined to be parts \"d\", \"e\", and \"f\". The rest of the orchestra will not see this message.\n\nAgain, if you forget the dash and write this:\n\nviolins come on, you guys are totally out of tune\n\nthen the message \"violins come on, you guys are totally out of tune\" goes to all players, because without the dash the system doesn't know you meant \"violins\" as a keyword. In some cases this mistake may be harmless, but in the example above the whole orchestra will make fun of the violins.\n\nAlso note that keywords are case-sensitive, so -a and -violins are NOT the same as -A and -Violins.\n",
									"linecount" : 65,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"patching_rect" : [ 17.0, 53.0, 435.0, 1352.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 394.0, 4.0, 35.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-23",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 394.0, 28.0, 69.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-16",
									"fontname" : "Arial",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2010\nby Bruno Tucunduva Ruviaro\n",
					"linecount" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 66.0, 165.0, 34.0 ],
					"id" : "obj-132",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "fromsymbol",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 791.0, 670.0, 73.0, 20.0 ],
					"id" : "obj-130",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 747.0, 281.0, 37.0, 18.0 ],
					"id" : "obj-129",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r conductor_init",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 747.380249, 258.175537, 93.0, 20.0 ],
					"id" : "obj-127",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- clear displays",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 594.0, 64.0, 98.0, 20.0 ],
					"patching_rect" : [ 791.0, 66.0, 98.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-126",
					"fontname" : "Arial",
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- edit ork-groups txt file",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 1079.0, 13.0, 143.0, 20.0 ],
					"patching_rect" : [ 1417.0, 686.0, 143.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-124",
					"fontname" : "Arial",
					"frgb" : [ 0.8, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.8, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.101961 ],
					"presentation_rect" : [ 1054.0, 11.0, 25.0, 25.0 ],
					"outlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.34902 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1392.0, 686.0, 23.0, 23.0 ],
					"presentation" : 1,
					"id" : "obj-125",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s open-ork-groups-txt",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 1391.0, 718.0, 125.0, 20.0 ],
					"id" : "obj-123",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print number-of-voices",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 1577.0, 857.0, 130.0, 20.0 ],
					"id" : "obj-122",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r qlist-finished-reading-file",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 610.686584, 16.054657, 148.0, 20.0 ],
					"id" : "obj-121",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p number-of-voices",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 1382.030762, 267.999023, 113.0, 20.0 ],
					"id" : "obj-119",
					"fontname" : "Arial",
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 314.0, 465.0, 695.0, 310.0 ],
						"bglocked" : 0,
						"defrect" : [ 314.0, 465.0, 695.0, 310.0 ],
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
									"text" : "r open-ork-groups-txt",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 75.0, 69.0, 123.0, 20.0 ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route number-of-voices",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 29.0, 192.0, 134.0, 20.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- this comes from first (mandatory) line of text file mypiece_ork-groups.txt",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 167.0, 192.0, 405.0, 20.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s number-of-voices",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 29.0, 217.0, 113.0, 20.0 ],
									"id" : "obj-120",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 41.0, 94.0, 32.5, 18.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 82.0, 153.0, 20.0, 20.0 ],
									"id" : "obj-7",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- read (load) text file into coll (bang comes from checklist)",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 215.0, 32.0, 462.0, 20.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- coll shared with two other subpatches: instant-messaging and read-conductor-qlist",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 132.0, 119.0, 462.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r conductor_ork-groups-filename",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 29.0, 32.0, 184.0, 20.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll ork-groups 1",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"color" : [ 0.082353, 0.431373, 0.411765, 1.0 ],
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 28.611572, 119.351959, 99.0, 20.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "open",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 74.5, 94.351959, 37.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-120", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"color" : [ 0.733333, 0.109804, 0.109804, 1.0 ],
									"midpoints" : [ 91.5, 182.0, 20.0, 182.0, 20.0, 81.0, 50.5, 81.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
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
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print loading",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 1466.0, 425.0, 76.0, 20.0 ],
					"id" : "obj-96",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1) Load ork-groups file:",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 545.0, 172.0, 145.0, 20.0 ],
					"patching_rect" : [ 1408.0, 364.0, 145.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-99",
					"fontname" : "Arial Bold",
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend read",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1382.0, 425.0, 82.0, 20.0 ],
					"id" : "obj-100",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.101961 ],
					"presentation_rect" : [ 685.0, 170.0, 22.0, 22.0 ],
					"outlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.34902 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1382.0, 372.0, 23.0, 23.0 ],
					"presentation" : 1,
					"id" : "obj-101",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "opendialog TEXT",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1382.0, 400.0, 103.0, 20.0 ],
					"id" : "obj-102",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s conductor_ork-groups-filename",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 1382.0, 452.0, 193.0, 20.0 ],
					"id" : "obj-109",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "or",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 610.0, 284.0, 21.0, 20.0 ],
					"patching_rect" : [ 617.0, 190.0, 210.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-90",
					"fontname" : "Arial",
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3) Network set-up:",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 566.0, 245.0, 116.0, 20.0 ],
					"patching_rect" : [ 1392.0, 585.0, 115.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-89",
					"fontname" : "Arial Bold",
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 783.0, 93.0, 60.0, 20.0 ],
					"id" : "obj-25",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictctrl",
					"numoutlets" : 1,
					"presentation_rect" : [ 526.0, 89.0, 207.5, 67.0 ],
					"outlettype" : [ "int" ],
					"ignoreclick" : 1,
					"patching_rect" : [ 581.0, 803.0, 207.5, 67.0 ],
					"presentation" : 1,
					"id" : "obj-97",
					"inactiveimage" : 1,
					"name" : "arrow.png",
					"numinlets" : 1,
					"clickedimage" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Catork's conductor patch",
					"fontsize" : 13.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 18.0, 38.0, 154.0, 21.0 ],
					"patching_rect" : [ 248.973709, 38.392334, 171.0, 21.0 ],
					"presentation" : 1,
					"id" : "obj-18",
					"fontname" : "Arial",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Catork Conductor",
					"fontsize" : 24.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 16.0, 8.0, 214.0, 34.0 ],
					"patching_rect" : [ 27.0, 14.0, 214.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-20",
					"fontname" : "Arial Bold",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "event count comes straight from qlist text file.",
					"linecount" : 3,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 453.0, 113.0, 104.0, 48.0 ],
					"id" : "obj-17",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.101961 ],
					"presentation_rect" : [ 657.0, 272.0, 16.535894, 16.535894 ],
					"outlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.34902 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1555.0, 613.0, 23.0, 23.0 ],
					"presentation" : 1,
					"id" : "obj-2",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "IP address ->",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 580.0, 270.0, 82.0, 20.0 ],
					"patching_rect" : [ 1577.0, 616.0, 82.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-4",
					"fontname" : "Arial",
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s udp-assign-using-ip-addresses",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 1557.0, 641.0, 184.0, 20.0 ],
					"id" : "obj-14",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p change-color-stuff",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 0.156863, 0.196078, 0.062745, 1.0 ],
					"patching_rect" : [ 1394.0, 805.0, 116.0, 20.0 ],
					"id" : "obj-98",
					"fontname" : "Arial",
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 1389.0, 705.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 1389.0, 705.0, 640.0, 480.0 ],
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
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 227.0, 206.0, 50.0, 20.0 ],
									"id" : "obj-122",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "cell 0 $4 brgb $1 $2 $3",
									"fontsize" : 11.595187,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 87.0, 264.0, 128.0, 18.0 ],
									"id" : "obj-119",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0 0 0 0",
									"fontsize" : 11.595187,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 87.0, 237.0, 157.0, 20.0 ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"numinlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 164.0, 213.0, 35.0, 20.0 ],
									"maximum" : 255,
									"id" : "obj-34",
									"fontname" : "Arial",
									"minimum" : 0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 125.5, 213.0, 35.0, 20.0 ],
									"maximum" : 255,
									"id" : "obj-120",
									"fontname" : "Arial",
									"minimum" : 0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 87.0, 213.0, 35.0, 20.0 ],
									"maximum" : 255,
									"id" : "obj-36",
									"fontname" : "Arial",
									"minimum" : 0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 185.0, 118.0, 43.0, 20.0 ],
									"maximum" : 1.0,
									"id" : "obj-112",
									"fontname" : "Arial",
									"minimum" : 0.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 140.0, 118.0, 43.0, 20.0 ],
									"maximum" : 1.0,
									"id" : "obj-113",
									"fontname" : "Arial",
									"minimum" : 0.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 95.0, 118.0, 43.0, 20.0 ],
									"maximum" : 1.0,
									"id" : "obj-45",
									"fontname" : "Arial",
									"minimum" : 0.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Alpha",
									"fontsize" : 11.595187,
									"numoutlets" : 0,
									"patching_rect" : [ 187.0, 100.0, 45.0, 20.0 ],
									"id" : "obj-46",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 50.0, 118.0, 43.0, 20.0 ],
									"maximum" : 1.0,
									"id" : "obj-114",
									"fontname" : "Arial",
									"minimum" : 0.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Destination",
									"fontsize" : 11.595187,
									"numoutlets" : 0,
									"patching_rect" : [ 249.0, 100.0, 67.0, 20.0 ],
									"id" : "obj-48",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Blue",
									"fontsize" : 11.595187,
									"numoutlets" : 0,
									"patching_rect" : [ 143.0, 100.0, 33.0, 20.0 ],
									"id" : "obj-115",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Green",
									"fontsize" : 11.595187,
									"numoutlets" : 0,
									"patching_rect" : [ 98.0, 100.0, 41.0, 20.0 ],
									"id" : "obj-50",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0. 0. 0. 1.",
									"fontsize" : 11.595187,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 146.0, 154.0, 20.0 ],
									"id" : "obj-51",
									"fontname" : "Arial",
									"numinlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 11.595187,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 270.0, 144.0, 70.0, 20.0 ],
									"id" : "obj-52",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend fgcolor",
									"fontsize" : 11.595187,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 178.0, 89.0, 20.0 ],
									"id" : "obj-116",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"fontsize" : 11.595187,
									"numoutlets" : 3,
									"items" : [ "fgcolor", ",", "bgcolor", ",", "gridlinecolor", ",", "bordercolor", ",", "headercolor", ",", "textcolor", ",", "hcellcolor" ],
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 230.0, 118.0, 100.0, 20.0 ],
									"id" : "obj-117",
									"fontname" : "Arial",
									"types" : [  ],
									"numinlets" : 1,
									"labelclick" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Red",
									"fontsize" : 11.595187,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 100.0, 30.0, 20.0 ],
									"id" : "obj-118",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-119", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-120", 0 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-16", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-122", 0 ],
									"destination" : [ "obj-16", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-117", 1 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-116", 0 ],
									"hidden" : 0,
									"midpoints" : [ 279.5, 174.0, 59.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-51", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-113", 0 ],
									"destination" : [ "obj-51", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-51", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-114", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-116", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print loading",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 1467.0, 528.0, 76.0, 20.0 ],
					"id" : "obj-87",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2) Load messages file:",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 547.0, 209.0, 139.0, 20.0 ],
					"patching_rect" : [ 1406.0, 475.0, 181.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-77",
					"fontname" : "Arial Bold",
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend read",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1383.0, 528.0, 82.0, 20.0 ],
					"id" : "obj-76",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.101961 ],
					"presentation_rect" : [ 682.0, 208.0, 22.0, 22.0 ],
					"outlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.34902 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1383.0, 475.0, 23.0, 23.0 ],
					"presentation" : 1,
					"id" : "obj-74",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "opendialog TEXT",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1383.0, 503.0, 103.0, 20.0 ],
					"id" : "obj-71",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s conductor_qlist-filename",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 1383.0, 555.0, 150.0, 20.0 ],
					"id" : "obj-95",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- defined in text file \"mypiece_conductor.txt\"",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 109.0, 108.0, 249.0, 20.0 ],
					"id" : "obj-66",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 1510.0, 858.0, 62.0, 27.0 ],
					"maximum" : 26,
					"id" : "obj-60",
					"fontname" : "Arial",
					"minimum" : 2,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r number-of-voices",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1510.0, 832.0, 111.0, 20.0 ],
					"id" : "obj-59",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p read-conductor-qlist",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 1380.689453, 242.067566, 127.0, 20.0 ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 172.0, 117.0, 962.0, 571.0 ],
						"bglocked" : 0,
						"defrect" : [ 172.0, 117.0, 962.0, 571.0 ],
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
									"text" : "s qlist-finished-reading-file",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 267.686584, 205.054657, 150.0, 20.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 776.0, 384.0, 32.5, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 739.0, 383.0, 32.5, 18.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s conductor_event-display",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 775.772522, 432.611237, 150.0, 20.0 ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r event",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 803.772522, 349.611237, 47.0, 20.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 775.667358, 408.630432, 47.0, 20.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r open-messages-txt",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 286.0, 120.0, 20.0 ],
									"id" : "obj-96",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "open",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 310.0, 37.0, 18.0 ],
									"id" : "obj-97",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- these messages come straight from qlist ->",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 530.0, 350.0, 272.0, 20.0 ],
									"id" : "obj-94",
									"fontname" : "Arial Bold",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "and this goes only to \"future messages\" cellblock display on Conductor Patch (no OSC).",
									"linecount" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 483.0, 473.0, 195.0, 48.0 ],
									"id" : "obj-93",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- this number is used twice: one to send present cues (osc + display), and another to send future keys to display only",
									"linecount" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 493.818665, 52.59203, 387.0, 34.0 ],
									"id" : "obj-90",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1 opens for present\n2 opens for future",
									"linecount" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 321.69931, 352.434906, 114.0, 34.0 ],
									"id" : "obj-88",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 437.811584, 372.242279, 32.5, 18.0 ],
									"id" : "obj-85",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 455.569916, 349.019836, 32.5, 18.0 ],
									"id" : "obj-83",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s messages-future",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 497.772522, 451.166321, 109.0, 20.0 ],
									"id" : "obj-81",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 437.667358, 409.630432, 79.516693, 20.0 ],
									"id" : "obj-80",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i b i b",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"outlettype" : [ "int", "bang", "int", "bang" ],
									"patching_rect" : [ 363.059692, 78.120827, 129.167358, 20.0 ],
									"id" : "obj-79",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<-- cue future",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 747.0, 265.0, 116.0, 20.0 ],
									"id" : "obj-67",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 696.0, 265.0, 50.0, 20.0 ],
									"id" : "obj-68",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 672.0, 264.0, 20.0, 20.0 ],
									"id" : "obj-69",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 622.0, 239.0, 69.0, 20.0 ],
									"id" : "obj-71",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 622.0, 143.0, 50.0, 20.0 ],
									"id" : "obj-76",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p my_qlist_control_2b",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 622.0, 168.0, 127.0, 20.0 ],
									"id" : "obj-77",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 744.0, 245.0, 677.0, 486.0 ],
										"bglocked" : 0,
										"defrect" : [ 744.0, 245.0, 677.0, 486.0 ],
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
													"text" : "HERE WE DO NOT NEED TO KEEP STATE\n\nnext 1 used below",
													"linecount" : 4,
													"fontsize" : 14.0,
													"numoutlets" : 0,
													"patching_rect" : [ 486.0, 12.0, 161.0, 71.0 ],
													"id" : "obj-14",
													"fontname" : "Arial Bold",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "next 1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 241.0, 344.0, 43.0, 18.0 ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "qlist's direct out",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 248.685181, 22.539442, 150.0, 20.0 ],
													"id" : "obj-38",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "advance as needed (WITHOUT sending all qlist messages - no need to keep state in \"future messages\" display); then send the last one (which is the desired msg)",
													"linecount" : 4,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 333.340332, 323.308777, 245.0, 62.0 ],
													"id" : "obj-36",
													"fontname" : "Arial",
													"frgb" : [ 1.0, 0.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"textcolor" : [ 1.0, 0.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "rewind",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 290.177307, 255.210358, 46.0, 18.0 ],
													"id" : "obj-34",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 276.483826, 228.399689, 34.0, 20.0 ],
													"id" : "obj-33",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "x = new q number minus previous q number",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 269.371155, 147.066864, 290.0, 20.0 ],
													"id" : "obj-32",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "first number is just a formality in this type of qlist; second number is q number just completed;",
													"linecount" : 4,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 271.040558, 56.660412, 161.544708, 62.0 ],
													"id" : "obj-28",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "next 0",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 277.007477, 371.447021, 43.0, 18.0 ],
													"id" : "obj-26",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi",
													"fontsize" : 12.0,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 276.536438, 309.452301, 46.0, 20.0 ],
													"id" : "obj-24",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "next 0",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 236.308044, 202.404968, 43.0, 18.0 ],
													"id" : "obj-23",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 236.059357, 171.86026, 58.539444, 20.0 ],
													"id" : "obj-21",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 39.819672, 114.252434, 32.5, 18.0 ],
													"id" : "obj-20",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "if x = 1, next q is sequential; just send \"next 0\"\nif x ≠ 1, next q is non-sequential (it's either farther ahead or  behind). So just rewind and send \"next 0\" x-1 times, then \"next 0\". ",
													"linecount" : 3,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 299.590515, 174.616806, 364.0, 48.0 ],
													"id" : "obj-18",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "-",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 235.810669, 146.791885, 32.5, 20.0 ],
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 218.530426, 55.157768, 49.0, 20.0 ],
													"id" : "obj-12",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 25.036819, 381.536438, 25.0, 25.0 ],
													"id" : "obj-11",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "dummy variable which should not be removed!",
													"fontsize" : 11.595187,
													"numoutlets" : 0,
													"patching_rect" : [ 162.236664, 420.525909, 248.0, 20.0 ],
													"id" : "obj-31",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r -----------------------cue",
													"fontsize" : 11.595187,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 26.274979, 421.303528, 125.0, 20.0 ],
													"id" : "obj-30",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "rewind, next",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 24.963181, 309.252441, 75.0, 18.0 ],
													"id" : "obj-10",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "if event number is 0, initialize by sending a 'rewind' message to qlist",
													"linecount" : 4,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 93.005234, 56.712982, 109.429001, 62.0 ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 24.714493, 89.459038, 34.0, 20.0 ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 24.870041, 56.952671, 68.306534, 20.0 ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "cues inlet",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 53.663422, 21.49737, 71.0, 20.0 ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 24.663422, 18.49737, 25.0, 25.0 ],
													"id" : "obj-3",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 219.123962, 20.476337, 25.0, 25.0 ],
													"id" : "obj-1",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 1 ],
													"destination" : [ "obj-26", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-10", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"color" : [ 0.2, 0.701961, 0.0, 1.0 ],
													"midpoints" : [ 83.676575, 127.901199, 245.310669, 127.901199 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [ 49.319672, 139.022156, 258.810669, 139.022156 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-21", 0 ],
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
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 1 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 1 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-24", 1 ],
													"hidden" : 0,
													"color" : [ 0.2, 0.701961, 0.0, 1.0 ],
													"midpoints" : [ 83.676575, 298.702484, 313.036438, 298.702484 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlist",
									"fontsize" : 12.0,
									"numoutlets" : 3,
									"color" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
									"outlettype" : [ "", "bang", "bang" ],
									"patching_rect" : [ 622.0, 203.0, 46.0, 20.0 ],
									"id" : "obj-78",
									"fontname" : "Arial",
									"numinlets" : 1,
									"save" : [ "#N", "qlist", ";", "#X", "insert", "-----------------------cue", 0, ";", ";", "#X", "insert", "event", 0, ";", ";", "#X", "insert", "to", "[a-z]", ". . .", ";", ";", "#X", "insert", 0, 0, ";", ";", "#X", "insert", "-----------------------cue", 1, ";", ";", "#X", "insert", "to", "[a-z]", "Trigger Event 1 at conductor's signal", ";", ";", "#X", "insert", 0, 1, ";", ";", "#X", "insert", "-----------------------cue", 2, ";", ";", "#X", "insert", "event", 1, ";", ";", "#X", "insert", "to", "[c]", "you are Instrumental Part c", ";", ";", "#X", "insert", "to", "[abd]", "you are all but dissertation", ";", ";", "#X", "insert", "to", "[efgij]", "don't like the letter h", ";", ";", "#X", "insert", "to", "[k-z]", "this includes everyone in between", ";", ";", "#X", "insert", 0, 2, ";", ";", "#X", "insert", "-----------------------cue", 3, ";", ";", "#X", "insert", "to", "-solo1", "change Rate and Size", ";", ";", "#X", "insert", "to", "-middle", "fade out now", ";", ";", "#X", "insert", "to", "-right", "fade in", ";", ";", "#X", "insert", "to", "[y]", "start transposition now", ";", ";", "#X", "insert", 0, 3, ";", ";", "#X", "insert", "-----------------------cue", 4, ";", ";", "#X", "insert", "to", "-violins", "espressivo", ";", ";", "#X", "insert", 0, 4, ";", ";", "#X", "insert", "-----------------------cue", 5, ";", ";", "#X", "insert", "to", "[a-z]", "Trigger Event 2 at conductor's signal", ";", ";", "#X", "insert", 0, 5, ";", ";", "#X", "insert", "-----------------------cue", 6, ";", ";", "#X", "insert", "event", 2, ";", ";", "#X", "insert", "to", "-solo1", "faster", ";", ";", "#X", "insert", "to", "-solo2", "much faster", ";", ";", "#X", "insert", 0, 6, ";", ";", "#X", "insert", "-----------------------cue", 7, ";", ";", "#X", "insert", "to", "a message without an explicit addressee goes to ALL", ";", ";", "#X", "insert", 0, 7, ";", ";", "#X", "insert", "-----------------------cue", 8, ";", ";", "#X", "insert", 0, 8, ";", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 622.261536, 118.811592, 32.5, 20.0 ],
									"id" : "obj-65",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- this should come from user input (a qlist file with a name like \"mypiece_conductor.txt\")",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 258.0, 25.0, 489.0, 20.0 ],
									"id" : "obj-64",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "this goes to OSC and to cellblock display on Conductor Patch.",
									"linecount" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 263.0, 472.0, 195.0, 34.0 ],
									"id" : "obj-62",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<-- cue present",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 252.0, 265.0, 116.0, 20.0 ],
									"id" : "obj-58",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 201.0, 265.0, 50.0, 20.0 ],
									"id" : "obj-56",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "\"dummy\", but must\nstay around",
									"linecount" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 19.0, 451.0, 113.0, 34.0 ],
									"id" : "obj-52",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 177.0, 264.0, 20.0, 20.0 ],
									"id" : "obj-45",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s send-bang-to-OSC",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 176.686584, 290.054657, 121.0, 20.0 ],
									"id" : "obj-46",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s messages-present",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 314.087463, 450.166321, 119.0, 20.0 ],
									"id" : "obj-37",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p messages-from-cue-list",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 497.772522, 375.033661, 145.0, 20.0 ],
									"id" : "obj-38",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 4.0, 44.0, 1296.0, 806.0 ],
										"bglocked" : 0,
										"defrect" : [ 4.0, 44.0, 1296.0, 806.0 ],
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
													"text" : "<- messages from qlist are always a list with 2 elements: -violins \"here's the message\". Contents already come between quotes, which is good.",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 363.0, 101.0, 769.0, 20.0 ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "this patch is copied from INSTANT MESSAGING system. I guess it could be simpler here, but for sanity's sake I'll just leave it pretty much the same (few modifications made, since qlist has more consistenly formatting)\n\nAddress syntax for IM and QLIST is THE SAME!!! (use of dash, brackets etc)",
													"linecount" : 5,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 18.0, 10.0, 566.0, 75.0 ],
													"id" : "obj-2",
													"fontname" : "Arial Bold",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "if no keyword is present, send entire message to everyone ------------------>",
													"linecount" : 3,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 644.0, 528.0, 150.0, 48.0 ],
													"id" : "obj-79",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 793.0, 604.0, 40.0, 20.0 ],
													"id" : "obj-77",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 793.0, 554.0, 20.0, 20.0 ],
													"id" : "obj-74",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "[a-z]",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 263.0, 237.0, 51.0, 18.0 ],
													"id" : "obj-70",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "c)",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 546.615662, 262.307159, 21.0, 20.0 ],
													"id" : "obj-21",
													"fontname" : "Arial",
													"frgb" : [ 0.047501, 0.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"textcolor" : [ 0.047501, 0.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "regexp (^-) @substitute %0",
													"fontsize" : 12.0,
													"numoutlets" : 5,
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 566.609253, 264.442749, 156.0, 20.0 ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf /%s",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 522.399719, 234.548615, 67.0, 20.0 ],
													"id" : "obj-130",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "a) first regexp check whether there are brackets in the address. If so, they refer to direct addresses of Instrumental Parts, so they go out straight to sprintf and become /[abg], /[a-f], etc.\n\nb) second regexp separates out stuff that starts with DASH. All strings that have a dash as first character go to next regexp. All strings that do NOT start with dash go out \"unmatched\"\n\nc) third regexp takes dash-starting strings from second regexp simply removes this first dash. This is the user-defined orkestra section we expect to find inside the coll object.\n\nIn the cases of direct addressing, note that even if the user makes a mistake and includes a dash\n before the bracket, it WILL work.\n\n-[abcd]\nis the same as\n[abcd]\n\nAlso, OSC shortcuts are allowed, such as\n\n[a-d]\nwill (down the line) be interpreted just as\n[abcd]",
													"linecount" : 25,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 858.937134, 194.22316, 408.0, 351.0 ],
													"id" : "obj-127",
													"fontname" : "Arial",
													"frgb" : [ 0.047501, 0.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"textcolor" : [ 0.047501, 0.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "b)",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 597.531189, 233.123856, 21.0, 20.0 ],
													"id" : "obj-125",
													"fontname" : "Arial",
													"frgb" : [ 0.047501, 0.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"textcolor" : [ 0.047501, 0.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "a)",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 318.557495, 210.289246, 21.0, 20.0 ],
													"id" : "obj-124",
													"fontname" : "Arial",
													"frgb" : [ 0.047501, 0.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"textcolor" : [ 0.047501, 0.0, 1.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "regexp ^-[\\\\w]+.*",
													"fontsize" : 12.0,
													"numoutlets" : 5,
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 615.662048, 232.580017, 149.157379, 20.0 ],
													"id" : "obj-115",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "/* \"a message without an explicit addressee goes to ALL\"",
													"linecount" : 3,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 675.081848, 727.622803, 138.0, 46.0 ],
													"id" : "obj-61",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "/[a-z] \"Trigger Event 1 at conductor's signal\"",
													"linecount" : 2,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 357.958649, 683.771545, 164.0, 32.0 ],
													"id" : "obj-59",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "print",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 16.320801, 698.305725, 34.0, 20.0 ],
													"id" : "obj-57",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "solo2",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 25.581528, 595.634827, 81.0, 18.0 ],
													"id" : "obj-56",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 102.681442, 542.328308, 36.0, 20.0 ],
													"id" : "obj-55",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 102.930122, 567.862488, 20.0, 20.0 ],
													"id" : "obj-54",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "warning: keyword $1 not found",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 25.835461, 620.925598, 172.0, 18.0 ],
													"id" : "obj-52",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "if YES, this means the keyword was not found in coll, so it must have been a typo. We need to warn the conductor!",
													"linecount" : 4,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 141.497498, 537.591675, 179.0, 62.0 ],
													"id" : "obj-49",
													"fontname" : "Arial",
													"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "...but if keyword is not found, mousetrap will tell us (red stuff)",
													"linecount" : 4,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 346.018066, 429.770233, 97.122467, 62.0 ],
													"id" : "obj-48",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "<- 'l' instead of 's' to allow numbers to pass too",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 335.732513, 313.166779, 257.0, 20.0 ],
													"id" : "obj-47",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "<- allows numbers to pass (coll doesn't like if it comes as a \"list\")",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 313.601074, 355.489105, 352.0, 20.0 ],
													"id" : "obj-46",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "solo2",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 208.611572, 355.965424, 102.0, 18.0 ],
													"id" : "obj-43",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "<- if keyword exists inside coll, all goes well... (green cord)",
													"linecount" : 3,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 318.219391, 379.934753, 116.0, 48.0 ],
													"id" : "obj-23",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "...if dash is followed by letters/numbers, it must be a user-defined keyword we'll find inside coll",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 2.66717, 277.502014, 507.711456, 20.0 ],
													"id" : "obj-22",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "first element of list can be either a keyword or a normal word --------------->",
													"linecount" : 3,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 181.480103, 152.587662, 150.0, 48.0 ],
													"id" : "obj-18",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "<- in case the conductor mistakenly sends a message without content",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 853.172913, 173.206177, 380.0, 20.0 ],
													"id" : "obj-14",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "<- is the cheese still there?",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 140.772476, 516.581177, 158.0, 20.0 ],
													"id" : "obj-197",
													"fontname" : "Arial",
													"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "<- 0 is the cheese in the mousetrap",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 144.965134, 493.631897, 198.0, 20.0 ],
													"id" : "obj-196",
													"fontname" : "Arial",
													"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "<- 1 is the mouse",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 173.837265, 465.814056, 103.0, 20.0 ],
													"id" : "obj-194",
													"fontname" : "Arial",
													"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 140.070267, 441.927856, 20.0, 20.0 ],
													"id" : "obj-192",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l 0",
													"fontsize" : 12.0,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "", "int" ],
													"patching_rect" : [ 103.343361, 313.200867, 230.072113, 20.0 ],
													"id" : "obj-174",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 332.303528, 648.055969, 199.459106, 20.0 ],
													"id" : "obj-173",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 208.611572, 405.780548, 79.0, 20.0 ],
													"id" : "obj-168",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 103.343361, 517.140015, 35.0, 20.0 ],
													"id" : "obj-165",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 139.504562, 466.799805, 32.5, 18.0 ],
													"id" : "obj-164",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i 0",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 103.343361, 492.073395, 41.78899, 20.0 ],
													"id" : "obj-156",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 103.343361, 465.982269, 20.0, 20.0 ],
													"id" : "obj-155",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll ork-groups 1",
													"fontsize" : 12.0,
													"numoutlets" : 4,
													"color" : [ 0.082353, 0.431373, 0.411765, 1.0 ],
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 208.611572, 380.351959, 99.0, 20.0 ],
													"id" : "obj-150",
													"fontname" : "Arial",
													"numinlets" : 1,
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l b",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 334.599243, 130.0, 455.881378, 20.0 ],
													"id" : "obj-149",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "[no message]",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 770.516724, 175.033951, 83.0, 18.0 ],
													"id" : "obj-140",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend /*",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 794.465942, 682.834778, 66.0, 20.0 ],
													"id" : "obj-135",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "regexp \\\\[.+\\\\]",
													"fontsize" : 12.0,
													"numoutlets" : 5,
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 334.599243, 209.57579, 393.944305, 20.0 ],
													"id" : "obj-83",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 334.599243, 171.013428, 138.0, 20.0 ],
													"id" : "obj-80",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 334.599243, 97.798645, 25.0, 25.0 ],
													"id" : "obj-30",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 331.888672, 744.276611, 25.0, 25.0 ],
													"id" : "obj-31",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-150", 0 ],
													"destination" : [ "obj-168", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-150", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-83", 2 ],
													"destination" : [ "obj-130", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-130", 0 ],
													"destination" : [ "obj-173", 0 ],
													"hidden" : 0,
													"color" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-174", 1 ],
													"destination" : [ "obj-56", 1 ],
													"hidden" : 0,
													"midpoints" : [ 218.379425, 338.448303, 97.081528, 338.448303 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-54", 0 ],
													"destination" : [ "obj-56", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-56", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-135", 0 ],
													"destination" : [ "obj-61", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-173", 0 ],
													"destination" : [ "obj-59", 1 ],
													"hidden" : 0,
													"midpoints" : [ 341.803528, 675.413757, 512.458618, 675.413757 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-57", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-165", 0 ],
													"destination" : [ "obj-55", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-174", 0 ],
													"destination" : [ "obj-155", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-174", 1 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-174", 1 ],
													"destination" : [ "obj-43", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-174", 2 ],
													"destination" : [ "obj-156", 1 ],
													"hidden" : 0,
													"color" : [ 0.827451, 0.231373, 0.231373, 1.0 ],
													"midpoints" : [ 323.915466, 343.767517, 135.632355, 343.767517 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-135", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [ 803.965942, 719.055664, 341.388672, 719.055664 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-173", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-149", 1 ],
													"destination" : [ "obj-140", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-155", 0 ],
													"destination" : [ "obj-156", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-168", 0 ],
													"destination" : [ "obj-173", 0 ],
													"hidden" : 0,
													"color" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
													"midpoints" : [ 218.111572, 433.286804, 341.803528, 433.286804 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-156", 0 ],
													"destination" : [ "obj-165", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-192", 0 ],
													"destination" : [ "obj-164", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-164", 0 ],
													"destination" : [ "obj-156", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-168", 0 ],
													"destination" : [ "obj-192", 0 ],
													"hidden" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [ 218.111572, 433.354187, 149.570267, 433.354187 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-83", 3 ],
													"destination" : [ "obj-115", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-115", 2 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 690.240723, 260.592987, 576.109253, 260.592987 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-174", 0 ],
													"hidden" : 0,
													"midpoints" : [ 576.109253, 305.321808, 112.843361, 305.321808 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-115", 3 ],
													"destination" : [ "obj-74", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-149", 0 ],
													"destination" : [ "obj-77", 1 ],
													"hidden" : 0,
													"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
													"midpoints" : [ 344.099243, 163.5, 823.5, 163.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-74", 0 ],
													"destination" : [ "obj-77", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-77", 0 ],
													"destination" : [ "obj-135", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-140", 0 ],
													"destination" : [ "obj-173", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-80", 1 ],
													"destination" : [ "obj-173", 1 ],
													"hidden" : 0,
													"color" : [ 0.741176, 0.184314, 0.756863, 1.0 ],
													"midpoints" : [ 463.099243, 266.034698, 522.262634, 266.034698 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-80", 0 ],
													"destination" : [ "obj-70", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-80", 0 ],
													"destination" : [ "obj-83", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-149", 0 ],
													"destination" : [ "obj-80", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r to",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 497.772522, 348.611237, 28.0, 20.0 ],
									"id" : "obj-40",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r -----------------------cue",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 19.0, 424.0, 129.0, 20.0 ],
									"id" : "obj-36",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 127.0, 239.0, 69.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r read-this-cue-now",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 363.059692, 52.120827, 114.0, 20.0 ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r conductor_qlist-filename",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 106.0, 26.0, 148.0, 20.0 ],
									"id" : "obj-29",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 127.0, 143.0, 50.0, 20.0 ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p my_qlist_control_2",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 127.0, 168.0, 121.0, 20.0 ],
									"id" : "obj-32",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 744.0, 245.0, 677.0, 486.0 ],
										"bglocked" : 0,
										"defrect" : [ 744.0, 245.0, 677.0, 486.0 ],
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
													"text" : "qlist's direct out",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 248.685181, 22.539442, 150.0, 20.0 ],
													"id" : "obj-38",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "advance as needed (sending all qlist messages to keep state); then send the last one (which is the desired msg)",
													"linecount" : 4,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 337.340332, 319.308777, 175.0, 62.0 ],
													"id" : "obj-36",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "rewind",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 290.177307, 255.210358, 46.0, 18.0 ],
													"id" : "obj-34",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 276.483826, 228.399689, 34.0, 20.0 ],
													"id" : "obj-33",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "x = new q number minus previous q number",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 269.371155, 147.066864, 290.0, 20.0 ],
													"id" : "obj-32",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "first number is just a formality in this type of qlist; second number is q number just completed;",
													"linecount" : 4,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 271.040558, 56.660412, 161.544708, 62.0 ],
													"id" : "obj-28",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "next 0",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 277.007477, 344.447021, 43.0, 18.0 ],
													"id" : "obj-26",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi",
													"fontsize" : 12.0,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 276.536438, 309.452301, 46.0, 20.0 ],
													"id" : "obj-24",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "next 0",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 236.308044, 202.404968, 43.0, 18.0 ],
													"id" : "obj-23",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 236.059357, 171.86026, 58.539444, 20.0 ],
													"id" : "obj-21",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 39.819672, 114.252434, 32.5, 18.0 ],
													"id" : "obj-20",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "if x = 1, next q is sequential; just send \"next 0\"\nif x ≠ 1, next q is non-sequential (it's either farther ahead or  behind). So just rewind and send \"next 0\" x-1 times, then \"next 0\". ",
													"linecount" : 3,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 299.590515, 174.616806, 364.0, 48.0 ],
													"id" : "obj-18",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "-",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 235.810669, 146.791885, 32.5, 20.0 ],
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 218.530426, 55.157768, 49.0, 20.0 ],
													"id" : "obj-12",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 25.036819, 381.536438, 25.0, 25.0 ],
													"id" : "obj-11",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "dummy variable which should not be removed!",
													"fontsize" : 11.595187,
													"numoutlets" : 0,
													"patching_rect" : [ 162.236664, 420.525909, 248.0, 20.0 ],
													"id" : "obj-31",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r -----------------------cue",
													"fontsize" : 11.595187,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 26.274979, 421.303528, 125.0, 20.0 ],
													"id" : "obj-30",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "rewind, next",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 24.963181, 309.252441, 75.0, 18.0 ],
													"id" : "obj-10",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "if event number is 0, initialize by sending a 'rewind' message to qlist",
													"linecount" : 4,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 93.005234, 56.712982, 109.429001, 62.0 ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 24.714493, 89.459038, 34.0, 20.0 ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 24.870041, 56.952671, 68.306534, 20.0 ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "cues inlet",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 53.663422, 21.49737, 71.0, 20.0 ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 24.663422, 18.49737, 25.0, 25.0 ],
													"id" : "obj-3",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 219.123962, 20.476337, 25.0, 25.0 ],
													"id" : "obj-1",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-24", 1 ],
													"hidden" : 0,
													"color" : [ 0.2, 0.701961, 0.0, 1.0 ],
													"midpoints" : [ 83.676575, 298.702484, 313.036438, 298.702484 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 1 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 1 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 1 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-11", 0 ],
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
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [ 49.319672, 139.022156, 258.810669, 139.022156 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"color" : [ 0.2, 0.701961, 0.0, 1.0 ],
													"midpoints" : [ 83.676575, 127.901199, 245.310669, 127.901199 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-12", 0 ],
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
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-10", 0 ],
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
													"source" : [ "obj-3", 0 ],
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
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlist",
									"fontsize" : 12.0,
									"numoutlets" : 3,
									"color" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
									"outlettype" : [ "", "bang", "bang" ],
									"patching_rect" : [ 127.0, 203.0, 46.0, 20.0 ],
									"id" : "obj-33",
									"fontname" : "Arial",
									"numinlets" : 1,
									"save" : [ "#N", "qlist", ";", "#X", "insert", "-----------------------cue", 0, ";", ";", "#X", "insert", "event", 0, ";", ";", "#X", "insert", "to", "[a-z]", ". . .", ";", ";", "#X", "insert", 0, 0, ";", ";", "#X", "insert", "-----------------------cue", 1, ";", ";", "#X", "insert", "to", "[a-z]", "Trigger Event 1 at conductor's signal", ";", ";", "#X", "insert", 0, 1, ";", ";", "#X", "insert", "-----------------------cue", 2, ";", ";", "#X", "insert", "event", 1, ";", ";", "#X", "insert", "to", "[c]", "you are Instrumental Part c", ";", ";", "#X", "insert", "to", "[abd]", "you are all but dissertation", ";", ";", "#X", "insert", "to", "[efgij]", "don't like the letter h", ";", ";", "#X", "insert", "to", "[k-z]", "this includes everyone in between", ";", ";", "#X", "insert", 0, 2, ";", ";", "#X", "insert", "-----------------------cue", 3, ";", ";", "#X", "insert", "to", "-solo1", "change Rate and Size", ";", ";", "#X", "insert", "to", "-middle", "fade out now", ";", ";", "#X", "insert", "to", "-right", "fade in", ";", ";", "#X", "insert", "to", "[y]", "start transposition now", ";", ";", "#X", "insert", 0, 3, ";", ";", "#X", "insert", "-----------------------cue", 4, ";", ";", "#X", "insert", "to", "-violins", "espressivo", ";", ";", "#X", "insert", 0, 4, ";", ";", "#X", "insert", "-----------------------cue", 5, ";", ";", "#X", "insert", "to", "[a-z]", "Trigger Event 2 at conductor's signal", ";", ";", "#X", "insert", 0, 5, ";", ";", "#X", "insert", "-----------------------cue", 6, ";", ";", "#X", "insert", "event", 2, ";", ";", "#X", "insert", "to", "-solo1", "faster", ";", ";", "#X", "insert", "to", "-solo2", "much faster", ";", ";", "#X", "insert", 0, 6, ";", ";", "#X", "insert", "-----------------------cue", 7, ";", ";", "#X", "insert", "to", "a message without an explicit addressee goes to ALL", ";", ";", "#X", "insert", 0, 7, ";", ";", "#X", "insert", "-----------------------cue", 8, ";", ";", "#X", "insert", 0, 8, ";", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- look into the future...!",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 659.310547, 118.932434, 150.0, 20.0 ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-96", 0 ],
									"destination" : [ "obj-97", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 2 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"color" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
									"midpoints" : [ 163.5, 227.0, 220.343292, 227.0, 220.343292, 201.054657, 277.186584, 201.054657 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 24.5, 337.0, 9.5, 337.0, 9.5, 193.0, 136.5, 193.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-85", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-83", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.486275, 0.486275, 1.0 ],
									"midpoints" : [ 372.559692, 107.966209, 631.761536, 107.966209 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 1 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 2 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.490196, 0.490196, 1.0 ],
									"midpoints" : [ 446.004608, 113.230278, 136.5, 113.230278 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 3 ],
									"destination" : [ "obj-83", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 1 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-80", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-77", 1 ],
									"hidden" : 0,
									"midpoints" : [ 631.5, 232.0, 757.5, 232.0, 757.5, 158.0, 739.5, 158.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 1 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 1 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 115.5, 193.5, 136.5, 193.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-32", 1 ],
									"hidden" : 0,
									"midpoints" : [ 136.5, 233.0, 262.5, 233.0, 262.5, 158.0, 238.5, 158.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 3 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s number-of-voices",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 1391.0, 867.0, 113.0, 20.0 ],
					"id" : "obj-111",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r number-of-voices",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 163.0, 111.0, 20.0 ],
					"id" : "obj-103",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r conductor_init",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 189.542847, 182.0, 93.0, 20.0 ],
					"id" : "obj-104",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear all",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 174.542847, 208.0, 52.0, 18.0 ],
					"id" : "obj-105",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p re-arrange-cell-block",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 20.0, 190.0, 131.0, 20.0 ],
					"id" : "obj-106",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 29.0, 69.0, 397.0, 365.0 ],
						"bglocked" : 0,
						"defrect" : [ 29.0, 69.0, 397.0, 365.0 ],
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
									"text" : "decided on NOT coloring cells (away from bright yellow I used earlier...)",
									"linecount" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 73.0, 249.0, 150.0, 48.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i i",
									"fontsize" : 12.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ],
									"patching_rect" : [ 218.0, 100.0, 46.0, 20.0 ],
									"id" : "obj-51",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p color-cells",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 109.030731, 225.999039, 75.0, 20.0 ],
									"id" : "obj-50",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 350.0, 449.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 350.0, 449.0 ],
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
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 68.0, 53.0, 20.0, 20.0 ],
													"id" : "obj-5",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 110.0, 105.0, 32.5, 20.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "delay 50",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 68.0, 79.0, 56.0, 20.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i i",
													"fontsize" : 12.0,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "int", "int" ],
													"patching_rect" : [ 178.642975, 180.483688, 46.0, 20.0 ],
													"id" : "obj-47",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr $i1 * (255/$i2)",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 134.84549, 229.293671, 132.0, 20.0 ],
													"id" : "obj-45",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i i",
													"fontsize" : 12.0,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "int", "int" ],
													"patching_rect" : [ 109.642975, 130.0, 157.0, 20.0 ],
													"id" : "obj-42",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 26 0",
													"fontsize" : 12.0,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 109.642975, 155.0, 88.0, 20.0 ],
													"id" : "obj-41",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"fontsize" : 11.595187,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 177.111298, 254.354126, 35.0, 20.0 ],
													"maximum" : 255,
													"id" : "obj-67",
													"fontname" : "Arial",
													"minimum" : 0,
													"numinlets" : 1,
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "cell 0 $4 brgb $1 $2 $3",
													"fontsize" : 11.595187,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 305.150665, 129.0, 18.0 ],
													"id" : "obj-68",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 255 255 0 0",
													"fontsize" : 11.595187,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 51.999985, 279.013428, 141.457779, 20.0 ],
													"id" : "obj-71",
													"fontname" : "Arial",
													"numinlets" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"fontsize" : 11.595187,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 135.006683, 253.870422, 35.0, 20.0 ],
													"maximum" : 255,
													"id" : "obj-75",
													"fontname" : "Arial",
													"minimum" : 0,
													"numinlets" : 1,
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 123.642975, 22.0, 25.0, 25.0 ],
													"id" : "obj-48",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 383.150665, 25.0, 25.0 ],
													"id" : "obj-49",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
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
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-75", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 1 ],
													"destination" : [ "obj-41", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 2 ],
													"destination" : [ "obj-45", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 2 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 2 ],
													"destination" : [ "obj-67", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 1 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0,
													"midpoints" : [ 201.642975, 214.388672, 144.34549, 214.388672 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-68", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-71", 0 ],
													"hidden" : 0,
													"midpoints" : [ 188.142975, 206.248566, 61.499985, 206.248566 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-67", 0 ],
													"destination" : [ "obj-71", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-75", 0 ],
													"destination" : [ "obj-71", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-71", 0 ],
													"destination" : [ "obj-68", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p label-cells",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 189.0, 74.0, 20.0 ],
									"id" : "obj-40",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 54.0, 94.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 54.0, 94.0, 640.0, 480.0 ],
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
													"maxclass" : "newobj",
													"text" : "itoa",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 111.0, 178.0, 46.0, 20.0 ],
													"id" : "obj-37",
													"fontname" : "Arial",
													"numinlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0 s",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 75.0, 205.0, 55.0, 20.0 ],
													"id" : "obj-36",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 96",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 111.0, 154.0, 34.0, 20.0 ],
													"id" : "obj-35",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 77.0, 154.0, 32.5, 20.0 ],
													"id" : "obj-34",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 50.0, 100.0, 45.5, 20.0 ],
													"id" : "obj-30",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi",
													"fontsize" : 12.0,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 50.0, 126.0, 46.0, 20.0 ],
													"id" : "obj-29",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set 0 $1 $2",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 75.0, 231.0, 70.0, 18.0 ],
													"id" : "obj-17",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
													"id" : "obj-38",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 75.0, 309.0, 25.0, 25.0 ],
													"id" : "obj-39",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-30", 1 ],
													"destination" : [ "obj-29", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 2 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 2 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-36", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!/ 650",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 216.0, 185.0, 41.0, 20.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rows $1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 295.752563, 208.504608, 53.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rowheight $1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 216.0, 208.504608, 77.0, 18.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 218.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-55",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 50.515366, 312.504608, 25.0, 25.0 ],
									"id" : "obj-56",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 250.876282, 286.504608, 25.0, 25.0 ],
									"id" : "obj-57",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 2 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.cellblock",
					"fontsize" : 18.0,
					"numoutlets" : 4,
					"hcellcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"just" : 1,
					"hsync" : 0,
					"presentation_rect" : [ 17.941589, 99.478302, 50.442818, 653.331177 ],
					"selmode" : 0,
					"outlettype" : [ "list", "", "", "" ],
					"vscroll" : 0,
					"colwidth" : 50,
					"ignoreclick" : 1,
					"vsync" : 0,
					"savemode" : 1,
					"patching_rect" : [ 19.941589, 237.478302, 50.442818, 653.331177 ],
					"presentation" : 1,
					"id" : "obj-107",
					"fontname" : "Arial Bold",
					"bordercolor" : [ 0.74902, 0.301961, 0.101961, 0.501961 ],
					"rows" : 12,
					"fgcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"hscroll" : 0,
					"rowheight" : 54,
					"numinlets" : 2,
					"cols" : 1,
					"gridlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.501961 ],
					"selsync" : 0,
					"celldef" : [ [ 0, 0, 0, 1, 0.058594, 0.023438, 0.144531, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 1, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 2, 0, 1, 0.058594, 0.023438, 0.144531, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 3, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 4, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 5, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 6, 0, 1, 0.78125, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 7, 0, 1, 0.390625, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 8, 0, 1, 0.78125, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 9, 0, 1, 0.390625, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 10, 0, 1, 0.78125, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 11, 0, 1, 0.390625, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 12, 0, 1, 0.78125, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 13, 0, 1, 0.390625, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 14, 0, 1, 0.78125, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 15, 0, 1, 0.390625, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 16, 0, 1, 0.0, 0.0, 0.996094, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 17, 0, 1, 0.0, 0.0, 0.78125, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 18, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 19, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 20, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 21, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 22, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 23, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 24, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 25, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 26, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.914062, -1, -1, -1 ], [ 0, 27, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.949219, -1, -1, -1 ], [ 0, 28, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.875, -1, -1, -1 ], [ 0, 29, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.90625, -1, -1, -1 ] ],
					"cellmap" : [ [ 0, 0, "a" ], [ 0, 1, "b" ], [ 0, 2, "c" ], [ 0, 3, "d" ], [ 0, 4, "e" ], [ 0, 5, "f" ], [ 0, 6, "g" ], [ 0, 7, "h" ], [ 0, 8, "i" ], [ 0, 9, "j" ], [ 0, 10, "k" ], [ 0, 11, "l" ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.cellblock",
					"fontsize" : 14.0,
					"numoutlets" : 4,
					"presentation_rect" : [ 65.752563, 98.504608, 453.045471, 654.648193 ],
					"selmode" : 0,
					"outlettype" : [ "list", "", "", "" ],
					"vscroll" : 0,
					"colwidth" : 450,
					"patching_rect" : [ 67.752563, 236.504608, 453.045471, 654.648193 ],
					"presentation" : 1,
					"id" : "obj-110",
					"fontname" : "Arial",
					"bordercolor" : [ 0.74902, 0.301961, 0.101961, 0.501961 ],
					"rows" : 12,
					"fgcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"hscroll" : 0,
					"headercolor" : [ 0.85, 0.23, 0.0, 1.0 ],
					"rowheight" : 54,
					"numinlets" : 2,
					"cols" : 1,
					"gridlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.501961 ],
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"celldef" : [ [ 0, 0, 0, 1, 0.0, 0.0, 0.324219, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r number-of-voices",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 873.0, 162.0, 111.0, 20.0 ],
					"id" : "obj-6",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r conductor_init",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1046.0, 182.0, 93.0, 20.0 ],
					"id" : "obj-78",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear all",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1046.0, 208.0, 52.0, 18.0 ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p re-arrange-cell-block",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 873.0, 190.0, 131.0, 20.0 ],
					"id" : "obj-81",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 29.0, 69.0, 397.0, 365.0 ],
						"bglocked" : 0,
						"defrect" : [ 29.0, 69.0, 397.0, 365.0 ],
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
									"text" : "decided on NOT coloring cells (away from bright yellow I used earlier...)",
									"linecount" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 73.0, 249.0, 150.0, 48.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i i",
									"fontsize" : 12.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ],
									"patching_rect" : [ 218.0, 100.0, 46.0, 20.0 ],
									"id" : "obj-51",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p color-cells",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 109.030731, 225.999039, 75.0, 20.0 ],
									"id" : "obj-50",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 350.0, 449.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 350.0, 449.0 ],
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
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 68.0, 53.0, 20.0, 20.0 ],
													"id" : "obj-5",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 110.0, 105.0, 32.5, 20.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "delay 50",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 68.0, 79.0, 56.0, 20.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i i",
													"fontsize" : 12.0,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "int", "int" ],
													"patching_rect" : [ 178.642975, 180.483688, 46.0, 20.0 ],
													"id" : "obj-47",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr $i1 * (255/$i2)",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 134.84549, 229.293671, 132.0, 20.0 ],
													"id" : "obj-45",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i i",
													"fontsize" : 12.0,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "int", "int" ],
													"patching_rect" : [ 109.642975, 130.0, 157.0, 20.0 ],
													"id" : "obj-42",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 26 0",
													"fontsize" : 12.0,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 109.642975, 155.0, 88.0, 20.0 ],
													"id" : "obj-41",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"fontsize" : 11.595187,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 177.111298, 254.354126, 35.0, 20.0 ],
													"maximum" : 255,
													"id" : "obj-67",
													"fontname" : "Arial",
													"minimum" : 0,
													"numinlets" : 1,
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "cell 0 $4 brgb $1 $2 $3",
													"fontsize" : 11.595187,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 305.150665, 129.0, 18.0 ],
													"id" : "obj-68",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 255 255 0 0",
													"fontsize" : 11.595187,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 51.999985, 279.013428, 141.457779, 20.0 ],
													"id" : "obj-71",
													"fontname" : "Arial",
													"numinlets" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"fontsize" : 11.595187,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 135.006683, 253.870422, 35.0, 20.0 ],
													"maximum" : 255,
													"id" : "obj-75",
													"fontname" : "Arial",
													"minimum" : 0,
													"numinlets" : 1,
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 123.642975, 22.0, 25.0, 25.0 ],
													"id" : "obj-48",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 383.150665, 25.0, 25.0 ],
													"id" : "obj-49",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
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
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-75", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 1 ],
													"destination" : [ "obj-41", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 2 ],
													"destination" : [ "obj-45", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 2 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 2 ],
													"destination" : [ "obj-67", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 1 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0,
													"midpoints" : [ 201.642975, 214.388672, 144.34549, 214.388672 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-68", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-71", 0 ],
													"hidden" : 0,
													"midpoints" : [ 188.142975, 206.248566, 61.499985, 206.248566 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-67", 0 ],
													"destination" : [ "obj-71", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-75", 0 ],
													"destination" : [ "obj-71", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-71", 0 ],
													"destination" : [ "obj-68", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p label-cells",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 189.0, 74.0, 20.0 ],
									"id" : "obj-40",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 54.0, 94.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 54.0, 94.0, 640.0, 480.0 ],
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
													"maxclass" : "newobj",
													"text" : "itoa",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 111.0, 178.0, 46.0, 20.0 ],
													"id" : "obj-37",
													"fontname" : "Arial",
													"numinlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0 s",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 75.0, 205.0, 55.0, 20.0 ],
													"id" : "obj-36",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 96",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 111.0, 154.0, 34.0, 20.0 ],
													"id" : "obj-35",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 77.0, 154.0, 32.5, 20.0 ],
													"id" : "obj-34",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 50.0, 100.0, 45.5, 20.0 ],
													"id" : "obj-30",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi",
													"fontsize" : 12.0,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 50.0, 126.0, 46.0, 20.0 ],
													"id" : "obj-29",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set 0 $1 $2",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 75.0, 231.0, 70.0, 18.0 ],
													"id" : "obj-17",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
													"id" : "obj-38",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 75.0, 309.0, 25.0, 25.0 ],
													"id" : "obj-39",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-30", 1 ],
													"destination" : [ "obj-29", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 2 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 2 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-36", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!/ 650",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 216.0, 185.0, 41.0, 20.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rows $1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 295.752563, 208.504608, 53.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rowheight $1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 216.0, 208.504608, 77.0, 18.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 218.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-55",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 50.515366, 312.504608, 25.0, 25.0 ],
									"id" : "obj-56",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 250.876282, 286.504608, 25.0, 25.0 ],
									"id" : "obj-57",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 2 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.cellblock",
					"fontsize" : 18.0,
					"numoutlets" : 4,
					"hcellcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"just" : 1,
					"hsync" : 0,
					"presentation_rect" : [ 737.941589, 99.478302, 50.442818, 653.331177 ],
					"selmode" : 0,
					"outlettype" : [ "list", "", "", "" ],
					"vscroll" : 0,
					"colwidth" : 50,
					"ignoreclick" : 1,
					"vsync" : 0,
					"savemode" : 1,
					"patching_rect" : [ 872.941589, 237.478271, 50.442818, 653.331177 ],
					"presentation" : 1,
					"id" : "obj-10",
					"fontname" : "Arial Bold",
					"bordercolor" : [ 0.74902, 0.301961, 0.101961, 0.501961 ],
					"rows" : 12,
					"fgcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"hscroll" : 0,
					"rowheight" : 54,
					"numinlets" : 2,
					"cols" : 1,
					"gridlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.501961 ],
					"selsync" : 0,
					"celldef" : [ [ 0, 0, 0, 1, 0.058594, 0.023438, 0.144531, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 1, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 2, 0, 1, 0.058594, 0.023438, 0.144531, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 3, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 4, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 5, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 6, 0, 1, 0.78125, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 7, 0, 1, 0.390625, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 8, 0, 1, 0.78125, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 9, 0, 1, 0.390625, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 10, 0, 1, 0.78125, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 11, 0, 1, 0.390625, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 12, 0, 1, 0.78125, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 13, 0, 1, 0.390625, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 14, 0, 1, 0.78125, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 15, 0, 1, 0.390625, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 16, 0, 1, 0.0, 0.0, 0.996094, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 17, 0, 1, 0.0, 0.0, 0.78125, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 18, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 19, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 20, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 21, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 22, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 23, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 24, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 25, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.996094, -1, -1, -1 ], [ 0, 26, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.914062, -1, -1, -1 ], [ 0, 27, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.949219, -1, -1, -1 ], [ 0, 28, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.875, -1, -1, -1 ], [ 0, 29, 0, 1, 0.0, 0.0, 0.0, 0, 0.996094, 0.996094, 0.90625, -1, -1, -1 ] ],
					"cellmap" : [ [ 0, 0, "a" ], [ 0, 1, "b" ], [ 0, 2, "c" ], [ 0, 3, "d" ], [ 0, 4, "e" ], [ 0, 5, "f" ], [ 0, 6, "g" ], [ 0, 7, "h" ], [ 0, 8, "i" ], [ 0, 9, "j" ], [ 0, 10, "k" ], [ 0, 11, "l" ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 1391.0, 834.0, 62.0, 27.0 ],
					"maximum" : 26,
					"id" : "obj-83",
					"fontname" : "Arial",
					"minimum" : 2,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.cellblock",
					"fontsize" : 14.0,
					"numoutlets" : 4,
					"presentation_rect" : [ 785.752563, 98.504608, 453.045471, 654.648193 ],
					"selmode" : 0,
					"outlettype" : [ "list", "", "", "" ],
					"vscroll" : 0,
					"colwidth" : 450,
					"savemode" : 1,
					"patching_rect" : [ 920.752563, 236.504639, 453.045471, 654.648193 ],
					"presentation" : 1,
					"id" : "obj-85",
					"fontname" : "Arial",
					"bordercolor" : [ 0.74902, 0.301961, 0.101961, 0.501961 ],
					"rows" : 12,
					"hscroll" : 0,
					"rowheight" : 54,
					"numinlets" : 2,
					"cols" : 1,
					"gridlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.501961 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t l b",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 544.0, 427.0, 168.5, 20.0 ],
					"id" : "obj-62",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 694.0, 611.0, 32.5, 18.0 ],
					"id" : "obj-57",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.827451 ],
					"presentation_rect" : [ 562.0, 598.0, 134.0, 25.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 1,
					"patching_rect" : [ 534.0, 695.0, 98.0, 25.0 ],
					"presentation" : 1,
					"id" : "obj-49",
					"fontname" : "Arial",
					"numinlets" : 2,
					"textcolor" : [ 0.917647, 0.937255, 0.670588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r display-ork-group",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 611.778381, 647.608521, 111.0, 20.0 ],
					"id" : "obj-44",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r display-inst-msg",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 750.77832, 605.608521, 105.0, 20.0 ],
					"id" : "obj-43",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.827451 ],
					"presentation_rect" : [ 580.0, 629.0, 99.0, 25.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 1,
					"patching_rect" : [ 638.0, 695.0, 63.0, 25.0 ],
					"presentation" : 1,
					"id" : "obj-42",
					"fontname" : "Arial",
					"numinlets" : 2,
					"textcolor" : [ 0.917647, 0.937255, 0.670588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r display-address",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 682.0, 670.0, 102.0, 20.0 ],
					"id" : "obj-40",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r typo-warning",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 796.0, 631.0, 87.0, 20.0 ],
					"id" : "obj-39",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Messages come out with tag \"inst-msg\" - it routes message to second lcd in player's patch",
					"linecount" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 558.0, 508.0, 270.0, 34.0 ],
					"id" : "obj-38",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p instant-messaging",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 543.929688, 482.059967, 118.0, 20.0 ],
					"id" : "obj-108",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 4.0, 44.0, 1296.0, 806.0 ],
						"bglocked" : 0,
						"defrect" : [ 4.0, 44.0, 1296.0, 806.0 ],
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
									"text" : "s display-ork-group",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 86.778374, 379.608521, 113.0, 20.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s display-inst-msg",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 487.778381, 180.608521, 107.0, 20.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s display-inst-msg",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 682.778381, 630.608521, 107.0, 20.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 819.0, 727.0, 57.0, 20.0 ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s display-address",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 818.778381, 751.608521, 104.0, 20.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s display-address",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 415.778381, 235.608521, 104.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s display-address",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 208.778381, 438.608521, 104.0, 20.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "if no keyword is present, send entire message to everyone ------------------>",
									"linecount" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 644.0, 528.0, 150.0, 48.0 ],
									"id" : "obj-79",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 793.0, 604.0, 40.0, 20.0 ],
									"id" : "obj-77",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 793.0, 554.0, 20.0, 20.0 ],
									"id" : "obj-74",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "[abdefhoa]",
									"linecount" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 263.0, 237.0, 50.0, 32.0 ],
									"id" : "obj-70",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend inst-msg",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 513.0, 586.0, 103.0, 20.0 ],
									"id" : "obj-35",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 513.0, 611.0, 59.0, 20.0 ],
									"id" : "obj-36",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- this keeps commas neat etc.",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 854.0, 657.0, 351.0, 20.0 ],
									"id" : "obj-34",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- in the player patch, this will route the IM to second lcd-display",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 900.0, 630.0, 351.0, 20.0 ],
									"id" : "obj-33",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend inst-msg",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 794.0, 631.0, 103.0, 20.0 ],
									"id" : "obj-29",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 794.0, 656.0, 59.0, 20.0 ],
									"id" : "obj-27",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "c)",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 546.615662, 262.307159, 21.0, 20.0 ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"frgb" : [ 0.047501, 0.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.047501, 0.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp (^-) @substitute %0",
									"fontsize" : 12.0,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 566.609253, 264.442749, 156.0, 20.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- try it [NOTE: \"output as one symbol\" is checked in the inspector]",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 544.80426, 75.379082, 365.0, 20.0 ],
									"id" : "obj-144",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 387.758148, 106.006721, 61.0, 20.0 ],
									"id" : "obj-142",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "-[abf-h] agora, v,a,i!",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"keymode" : 1,
									"outputmode" : 1,
									"outlettype" : [ "", "int", "", "" ],
									"patching_rect" : [ 388.379089, 71.934746, 154.0, 26.0 ],
									"id" : "obj-141",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Explanation of examples: in the first case, message \"go now\" goes to all parts belonging to a user-defined subgroup called \"violins\". Second case, message goes to players of Instrumental Parts a, f, and g. Third case, message goes to players of Instrumental Part c. Fourth case, message goes to all parts belonging to a user-defined subgroup called \"c\" (probably not the smartest name for a subgroup). Last case, message \"go now\" goes to ALL PLAYERS.",
									"linecount" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 245.0, 11.0, 844.0, 48.0 ],
									"id" : "obj-139",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Conductor may type things like these:\n\n-violins go now\n-[afg] go now\n-[c] go now\n-c go now\ngo now",
									"linecount" : 7,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 12.0, 11.0, 228.0, 103.0 ],
									"id" : "obj-137",
									"fontname" : "Arial Bold",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf /%s",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 522.399719, 234.548615, 67.0, 20.0 ],
									"id" : "obj-130",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "a) first regexp check whether there are brackets in the address. If so, they refer to direct addresses of Instrumental Parts, so they go out straight to sprintf and become /[abg], /[a-f], etc.\n\nb) second regexp separates out stuff that starts with DASH. All strings that have a dash as first character go to next regexp. All strings that do NOT start with dash go out \"unmatched\"\n\nc) third regexp takes dash-starting strings from second regexp simply removes this first dash. This is the user-defined orkestra section we expect to find inside the coll object.\n\nIn the cases of direct addressing, note that even if the user makes a mistake and includes a dash\n before the bracket, it WILL work.\n\n-[abcd]\nis the same as\n[abcd]\n\nAlso, OSC shortcuts are allowed, such as\n\n[a-d]\nwill (down the line) be interpreted just as\n[abcd]",
									"linecount" : 25,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 858.937134, 194.22316, 408.0, 351.0 ],
									"id" : "obj-127",
									"fontname" : "Arial",
									"frgb" : [ 0.047501, 0.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.047501, 0.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "b)",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 597.531189, 233.123856, 21.0, 20.0 ],
									"id" : "obj-125",
									"fontname" : "Arial",
									"frgb" : [ 0.047501, 0.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.047501, 0.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "a)",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 318.557495, 210.289246, 21.0, 20.0 ],
									"id" : "obj-124",
									"fontname" : "Arial",
									"frgb" : [ 0.047501, 0.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.047501, 0.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp ^-[\\\\w]+.*",
									"fontsize" : 12.0,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 615.662048, 232.580017, 149.157379, 20.0 ],
									"id" : "obj-115",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/* \"inst-msg vamos, ver, o que\"",
									"linecount" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 675.081848, 727.622803, 141.0, 32.0 ],
									"id" : "obj-61",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/[abdefhoa] \"inst-msg asdfsa\"",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 357.958649, 683.771545, 164.0, 18.0 ],
									"id" : "obj-59",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 16.320801, 698.305725, 34.0, 20.0 ],
									"id" : "obj-57",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "horns",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 25.581528, 595.634827, 81.0, 18.0 ],
									"id" : "obj-56",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 102.681442, 542.328308, 36.0, 20.0 ],
									"id" : "obj-55",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 102.930122, 567.862488, 20.0, 20.0 ],
									"id" : "obj-54",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "warning: keyword $1 not found",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 25.835461, 620.925598, 172.0, 18.0 ],
									"id" : "obj-52",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s typo-warning",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 25.778378, 646.608521, 89.0, 20.0 ],
									"id" : "obj-50",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "if YES, this means the keyword was not found in coll, so it must have been a typo. We need to warn the conductor!",
									"linecount" : 4,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 141.497498, 537.591675, 179.0, 62.0 ],
									"id" : "obj-49",
									"fontname" : "Arial",
									"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "...but if keyword is not found, mousetrap will tell us (red stuff)",
									"linecount" : 4,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 346.018066, 429.770233, 97.122467, 62.0 ],
									"id" : "obj-48",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- 'l' instead of 's' to allow numbers to pass too",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 335.732513, 313.166779, 257.0, 20.0 ],
									"id" : "obj-47",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- allows numbers to pass (coll doesn't like if it comes as a \"list\")",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 313.601074, 355.489105, 352.0, 20.0 ],
									"id" : "obj-46",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "horns",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 208.611572, 355.965424, 102.0, 18.0 ],
									"id" : "obj-43",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- if keyword exists inside coll, all goes well... (green cord)",
									"linecount" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 318.219391, 379.934753, 116.0, 48.0 ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "...if dash is followed by letters/numbers, it must be a user-defined keyword we'll find inside coll",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 2.66717, 277.502014, 507.711456, 20.0 ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "first element of list can be either a keyword or a normal word --------------->",
									"linecount" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 181.480103, 152.587662, 150.0, 48.0 ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- in case the conductor mistakenly sends a message without content",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 853.172913, 173.206177, 380.0, 20.0 ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- is the cheese still there?",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 140.772476, 516.581177, 158.0, 20.0 ],
									"id" : "obj-197",
									"fontname" : "Arial",
									"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- 0 is the cheese in the mousetrap",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 144.965134, 493.631897, 198.0, 20.0 ],
									"id" : "obj-196",
									"fontname" : "Arial",
									"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- 1 is the mouse",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 173.837265, 465.814056, 103.0, 20.0 ],
									"id" : "obj-194",
									"fontname" : "Arial",
									"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 140.070267, 441.927856, 20.0, 20.0 ],
									"id" : "obj-192",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l 0",
									"fontsize" : 12.0,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "int" ],
									"patching_rect" : [ 103.343361, 313.200867, 230.072113, 20.0 ],
									"id" : "obj-174",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 332.303528, 648.055969, 199.459106, 20.0 ],
									"id" : "obj-173",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route symbol",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 208.611572, 405.780548, 79.0, 20.0 ],
									"id" : "obj-168",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 0",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 103.343361, 517.140015, 35.0, 20.0 ],
									"id" : "obj-165",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 139.504562, 466.799805, 32.5, 18.0 ],
									"id" : "obj-164",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i 0",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 103.343361, 492.073395, 41.78899, 20.0 ],
									"id" : "obj-156",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 103.343361, 465.982269, 20.0, 20.0 ],
									"id" : "obj-155",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll ork-groups 1",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"color" : [ 0.082353, 0.431373, 0.411765, 1.0 ],
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 208.611572, 380.351959, 99.0, 20.0 ],
									"id" : "obj-150",
									"fontname" : "Arial",
									"numinlets" : 1,
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l b",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 334.599243, 130.0, 455.881378, 20.0 ],
									"id" : "obj-149",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "[no message]",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 770.516724, 175.033951, 83.0, 18.0 ],
									"id" : "obj-140",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /*",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 794.465942, 682.834778, 66.0, 20.0 ],
									"id" : "obj-135",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp \\\\[.+\\\\]",
									"fontsize" : 12.0,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 334.599243, 209.57579, 393.944305, 20.0 ],
									"id" : "obj-83",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p extract-first-word",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 334.599243, 171.013428, 110.0, 20.0 ],
									"id" : "obj-80",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 69.0, 640.0, 480.0 ],
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
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 131.605209, 57.0, 20.0 ],
													"id" : "obj-35",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "fromsymbol",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.605209, 73.0, 20.0 ],
													"id" : "obj-36",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 145.013184, 157.973709, 59.0, 20.0 ],
													"id" : "obj-38",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "asdfsa",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 182.723755, 136.000015, 121.328979, 18.0 ],
													"id" : "obj-39",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "regexp ^[\\\\S] @substitute %0",
													"fontsize" : 12.0,
													"numoutlets" : 5,
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 145.013184, 100.0, 235.815811, 20.0 ],
													"id" : "obj-41",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 92.506592, 40.0, 25.0, 25.0 ],
													"id" : "obj-43",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 237.973709, 25.0, 25.0 ],
													"id" : "obj-44",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 145.013184, 237.973709, 25.0, 25.0 ],
													"id" : "obj-45",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-39", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 334.599243, 97.798645, 25.0, 25.0 ],
									"id" : "obj-30",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 331.888672, 744.276611, 25.0, 25.0 ],
									"id" : "obj-31",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-150", 0 ],
									"destination" : [ "obj-168", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-150", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-83", 2 ],
									"destination" : [ "obj-130", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-142", 0 ],
									"destination" : [ "obj-149", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-130", 0 ],
									"destination" : [ "obj-173", 0 ],
									"hidden" : 0,
									"color" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-174", 1 ],
									"destination" : [ "obj-56", 1 ],
									"hidden" : 0,
									"midpoints" : [ 218.379425, 338.448303, 97.081528, 338.448303 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-135", 0 ],
									"destination" : [ "obj-61", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-173", 0 ],
									"destination" : [ "obj-59", 1 ],
									"hidden" : 0,
									"midpoints" : [ 341.803528, 675.413757, 512.458618, 675.413757 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-165", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-174", 0 ],
									"destination" : [ "obj-155", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-174", 1 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-174", 1 ],
									"destination" : [ "obj-43", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-174", 2 ],
									"destination" : [ "obj-156", 1 ],
									"hidden" : 0,
									"color" : [ 0.827451, 0.231373, 0.231373, 1.0 ],
									"midpoints" : [ 323.915466, 343.767517, 135.632355, 343.767517 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-135", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 803.965942, 719.055664, 341.388672, 719.055664 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-173", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-149", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-149", 1 ],
									"destination" : [ "obj-140", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-155", 0 ],
									"destination" : [ "obj-156", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-168", 0 ],
									"destination" : [ "obj-173", 0 ],
									"hidden" : 0,
									"color" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
									"midpoints" : [ 218.111572, 433.286804, 341.803528, 433.286804 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 0 ],
									"destination" : [ "obj-165", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-192", 0 ],
									"destination" : [ "obj-164", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-164", 0 ],
									"destination" : [ "obj-156", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-168", 0 ],
									"destination" : [ "obj-192", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"midpoints" : [ 218.111572, 433.354187, 149.570267, 433.354187 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-83", 3 ],
									"destination" : [ "obj-115", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-115", 2 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 690.240723, 260.592987, 576.109253, 260.592987 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-174", 0 ],
									"hidden" : 0,
									"midpoints" : [ 576.109253, 305.321808, 112.843361, 305.321808 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-135", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-173", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-140", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 780.016724, 396.516968, 522.5, 396.516968 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-141", 0 ],
									"destination" : [ "obj-142", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 1 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"color" : [ 0.741176, 0.184314, 0.756863, 1.0 ],
									"midpoints" : [ 435.099243, 555.506714, 522.5, 555.506714 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-149", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-83", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-70", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-115", 3 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-149", 0 ],
									"destination" : [ "obj-77", 1 ],
									"hidden" : 0,
									"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
									"midpoints" : [ 344.099243, 163.5, 823.5, 163.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-168", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-130", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-135", 0 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 435.099243, 200.013428, 472.188812, 200.013428, 472.188812, 171.608521, 497.278381, 171.608521 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-140", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 780.016724, 201.033951, 618.647583, 201.033951, 618.647583, 170.608521, 497.278381, 170.608521 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.827451 ],
					"presentation_rect" : [ 531.0, 661.0, 197.0, 25.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 1,
					"patching_rect" : [ 707.0, 696.0, 154.0, 25.0 ],
					"presentation" : 1,
					"id" : "obj-24",
					"fontname" : "Arial Italic",
					"numinlets" : 2,
					"textcolor" : [ 0.917647, 0.937255, 0.670588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.101961 ],
					"presentation_rect" : [ 657.0, 299.0, 16.535894, 16.535894 ],
					"outlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.34902 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1389.0, 613.0, 23.0, 23.0 ],
					"presentation" : 1,
					"id" : "obj-19",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "SLOrkNet ->",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 583.0, 298.0, 78.0, 20.0 ],
					"patching_rect" : [ 1409.0, 613.0, 78.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-7",
					"fontname" : "Arial",
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s udp-assign-slork-machines",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 1391.0, 641.0, 163.0, 20.0 ],
					"id" : "obj-382",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s inst-msg",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 570.0, 576.0, 65.0, 20.0 ],
					"id" : "obj-69",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t i b",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 610.0, 203.0, 138.5, 20.0 ],
					"id" : "obj-15",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- open udp assignment patch",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 1406.0, 310.0, 182.0, 20.0 ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1386.0, 310.0, 20.0, 20.0 ],
					"id" : "obj-12",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p display-future",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 159.542847, 151.61412, 93.0, 20.0 ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 397.0, 517.0, 920.0, 486.0 ],
						"bglocked" : 0,
						"defrect" : [ 397.0, 517.0, 920.0, 486.0 ],
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
									"text" : "prepend set 0 16",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 778.8302, 153.286346, 101.0, 20.0 ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 19",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 716.8302, 240.286346, 101.0, 20.0 ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 18",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 744.783508, 210.600952, 101.0, 20.0 ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 17",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 765.8302, 183.286346, 101.0, 20.0 ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 22",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 641.8302, 327.286346, 101.0, 20.0 ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 21",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 669.783508, 297.600952, 101.0, 20.0 ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 20",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 690.8302, 270.286346, 101.0, 20.0 ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 14",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 478.316956, 319.067444, 101.0, 20.0 ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 25",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 566.8302, 414.286346, 101.0, 20.0 ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 24",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 594.783508, 384.600952, 101.0, 20.0 ],
									"id" : "obj-26",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 23",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 615.8302, 357.286346, 101.0, 20.0 ],
									"id" : "obj-27",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 15",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 494.316956, 345.067444, 101.0, 20.0 ],
									"id" : "obj-28",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 9",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 378.316956, 191.067444, 94.0, 20.0 ],
									"id" : "obj-29",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 4",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 91.8302, 265.286346, 94.0, 20.0 ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OSC-route /a /b /c /d /e /f /g /h /i /j /k /l /m /n /o /p /q /r /s /t /u /v /w /x /y /z",
									"fontsize" : 12.0,
									"numoutlets" : 27,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 72.527405, 61.936005, 795.0, 20.0 ],
									"id" : "obj-31",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r messages-future",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 72.987274, 35.0, 107.0, 20.0 ],
									"id" : "obj-32",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 13",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 456.8302, 295.286346, 101.0, 20.0 ],
									"id" : "obj-33",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 12",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 435.783508, 269.600952, 101.0, 20.0 ],
									"id" : "obj-34",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 11",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 417.8302, 244.286346, 100.0, 20.0 ],
									"id" : "obj-35",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 10",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 397.316956, 217.067444, 101.0, 20.0 ],
									"id" : "obj-36",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 8",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 360.8302, 166.286346, 94.0, 20.0 ],
									"id" : "obj-37",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 7",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 34.316956, 343.067444, 94.0, 20.0 ],
									"id" : "obj-38",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 6",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 53.8302, 317.286346, 94.0, 20.0 ],
									"id" : "obj-39",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 5",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 77.316956, 289.067444, 94.0, 20.0 ],
									"id" : "obj-40",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 3",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 124.8302, 241.286346, 94.0, 20.0 ],
									"id" : "obj-41",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 2",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 144.316956, 216.067444, 94.0, 20.0 ],
									"id" : "obj-42",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 168.8302, 191.286346, 94.0, 20.0 ],
									"id" : "obj-43",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 0",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 183.0, 167.067444, 94.0, 20.0 ],
									"id" : "obj-44",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 443.649475, 442.286346, 25.0, 25.0 ],
									"id" : "obj-45",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 1 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 2 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 3 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 4 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 5 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 6 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 7 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 8 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 9 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 10 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 11 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 12 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 13 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 14 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 15 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 16 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 17 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 18 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 19 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 20 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 21 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 22 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 23 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 24 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 25 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-45", 0 ],
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
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "FUTURE MESSAGES (coming up next)",
					"fontsize" : 14.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 21.0, 78.0, 268.0, 23.0 ],
					"patching_rect" : [ 251.0, 214.0, 267.0, 23.0 ],
					"presentation" : 1,
					"id" : "obj-5",
					"fontname" : "Arial Bold",
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "CURRENT MESSAGES (just sent)",
					"fontsize" : 14.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 742.0, 78.0, 234.0, 23.0 ],
					"patching_rect" : [ 1140.0, 212.0, 233.0, 23.0 ],
					"presentation" : 1,
					"id" : "obj-3",
					"fontname" : "Arial Bold",
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s conductor_init",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 783.380249, 126.175522, 95.0, 20.0 ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 610.0, 88.0, 32.5, 18.0 ],
					"id" : "obj-88",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.101961 ],
					"presentation_rect" : [ 566.0, 61.0, 28.0, 28.0 ],
					"outlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.34902 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 758.0, 62.0, 31.0, 31.0 ],
					"presentation" : 1,
					"id" : "obj-84",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- edit messages txt file",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 1079.0, 43.0, 143.0, 20.0 ],
					"patching_rect" : [ 1418.0, 745.0, 143.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-82",
					"fontname" : "Arial",
					"frgb" : [ 0.8, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.8, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Cue",
					"fontsize" : 14.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 655.0, 338.0, 37.0, 23.0 ],
					"patching_rect" : [ 622.0, 111.0, 55.0, 23.0 ],
					"presentation" : 1,
					"id" : "obj-80",
					"fontname" : "Arial Bold",
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Event",
					"fontsize" : 14.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 558.0, 346.0, 49.0, 23.0 ],
					"patching_rect" : [ 393.0, 79.0, 55.0, 23.0 ],
					"presentation" : 1,
					"id" : "obj-79",
					"fontname" : "Arial Bold",
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear, select",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 544.0, 266.0, 74.0, 18.0 ],
					"id" : "obj-72",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "PS. this Textedit is set up to output everything as one symbol, in order to keep commas neatly.",
					"linecount" : 3,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 639.0, 368.0, 199.0, 48.0 ],
					"hidden" : 1,
					"id" : "obj-70",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b s",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 544.0, 549.0, 33.0, 20.0 ],
					"id" : "obj-64",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 544.0, 578.0, 20.0, 20.0 ],
					"id" : "obj-63",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s send-bang-to-OSC",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 557.686584, 604.054688, 121.0, 20.0 ],
					"id" : "obj-30",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 544.0, 454.0, 61.0, 20.0 ],
					"id" : "obj-61",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "INSTANT MESSAGING",
					"fontsize" : 14.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 551.0, 425.0, 160.0, 23.0 ],
					"patching_rect" : [ 582.0, 290.0, 160.0, 23.0 ],
					"presentation" : 1,
					"id" : "obj-58",
					"fontname" : "Arial Bold",
					"frgb" : [ 0.74902, 0.34902, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.34902, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontface" : 1,
					"fontsize" : 24.0,
					"numoutlets" : 4,
					"keymode" : 1,
					"presentation_rect" : [ 529.0, 446.0, 201.0, 138.0 ],
					"outputmode" : 1,
					"outlettype" : [ "", "int", "", "" ],
					"patching_rect" : [ 544.0, 314.0, 320.0, 107.0 ],
					"presentation" : 1,
					"id" : "obj-56",
					"fontname" : "Arial",
					"bordercolor" : [ 0.74902, 0.301961, 0.101961, 0.501961 ],
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p send-osc",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 1386.0, 335.0, 69.0, 20.0 ],
					"id" : "obj-55",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 38.0, 49.0, 808.0, 600.0 ],
						"bglocked" : 0,
						"defrect" : [ 38.0, 49.0, 808.0, 600.0 ],
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
									"text" : "<- SLOrk-specific",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 647.0, 70.0, 103.0, 20.0 ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- for everyone",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 668.0, 45.0, 92.0, 20.0 ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "two ways of assigning addresses:",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 520.0, 18.0, 189.0, 20.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p using-ip-addresses",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 543.0, 45.0, 122.0, 20.0 ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 354.0, 330.0, 947.0, 523.0 ],
										"bglocked" : 0,
										"defrect" : [ 354.0, 330.0, 947.0, 523.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 1,
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
													"text" : "clear all fields ->",
													"linecount" : 2,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"presentation_rect" : [ 406.0, 467.0, 98.0, 20.0 ],
													"patching_rect" : [ 1022.0, 80.0, 85.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-149",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "host",
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 699.0, 639.0, 56.0, 34.0 ],
													"id" : "obj-111",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend host",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 675.0, 740.0, 81.0, 20.0 ],
													"id" : "obj-112",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-20",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 675.0, 767.0, 83.0, 20.0 ],
													"id" : "obj-113",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 705.0, 381.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 675.0, 646.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-114",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 675.0, 715.0, 61.0, 20.0 ],
													"id" : "obj-116",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "20",
													"fontsize" : 24.0,
													"numoutlets" : 4,
													"keymode" : 1,
													"presentation_rect" : [ 705.0, 405.0, 199.0, 34.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 675.0, 673.0, 199.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-117",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "host",
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 699.0, 482.0, 56.0, 34.0 ],
													"id" : "obj-118",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend host",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 675.0, 583.0, 81.0, 20.0 ],
													"id" : "obj-119",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-16",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 675.0, 610.0, 83.0, 20.0 ],
													"id" : "obj-120",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 705.0, 81.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 675.0, 489.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-121",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 675.0, 558.0, 61.0, 20.0 ],
													"id" : "obj-123",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "16",
													"fontsize" : 24.0,
													"numoutlets" : 4,
													"keymode" : 1,
													"presentation_rect" : [ 705.0, 105.0, 199.0, 34.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 675.0, 516.0, 199.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-124",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "host",
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 699.0, 325.0, 56.0, 34.0 ],
													"id" : "obj-125",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend host",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 675.0, 426.0, 81.0, 20.0 ],
													"id" : "obj-126",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-12",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 675.0, 453.0, 83.0, 20.0 ],
													"id" : "obj-127",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 480.0, 156.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 675.0, 332.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-128",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 675.0, 401.0, 61.0, 20.0 ],
													"id" : "obj-130",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "12",
													"fontsize" : 24.0,
													"numoutlets" : 4,
													"keymode" : 1,
													"presentation_rect" : [ 480.0, 180.0, 199.0, 34.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 675.0, 359.0, 199.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-131",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "host",
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 699.0, 168.0, 56.0, 34.0 ],
													"id" : "obj-132",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend host",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 675.0, 269.0, 81.0, 20.0 ],
													"id" : "obj-133",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-8",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 675.0, 296.0, 77.0, 20.0 ],
													"id" : "obj-134",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 255.0, 231.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 675.0, 175.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-135",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 675.0, 244.0, 61.0, 20.0 ],
													"id" : "obj-137",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "8",
													"fontsize" : 24.0,
													"numoutlets" : 4,
													"keymode" : 1,
													"presentation_rect" : [ 255.0, 255.0, 199.0, 34.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 675.0, 202.0, 199.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-138",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "host",
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 699.0, 11.0, 56.0, 34.0 ],
													"id" : "obj-139",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend host",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 675.0, 112.0, 81.0, 20.0 ],
													"id" : "obj-140",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-4",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 675.0, 139.0, 77.0, 20.0 ],
													"id" : "obj-141",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 30.0, 306.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 675.0, 18.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-142",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 675.0, 87.0, 61.0, 20.0 ],
													"id" : "obj-144",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "4",
													"fontsize" : 24.0,
													"numoutlets" : 4,
													"keymode" : 1,
													"presentation_rect" : [ 30.0, 330.0, 199.0, 34.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 675.0, 45.0, 199.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-145",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "host",
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 489.0, 639.0, 56.0, 34.0 ],
													"id" : "obj-73",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend host",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 465.0, 740.0, 81.0, 20.0 ],
													"id" : "obj-74",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-19",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 465.0, 767.0, 83.0, 20.0 ],
													"id" : "obj-75",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 705.0, 306.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 465.0, 646.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-76",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 465.0, 715.0, 61.0, 20.0 ],
													"id" : "obj-81",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "19",
													"fontsize" : 24.0,
													"numoutlets" : 4,
													"keymode" : 1,
													"presentation_rect" : [ 705.0, 330.0, 199.0, 34.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 465.0, 673.0, 199.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-82",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "host",
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 489.0, 482.0, 56.0, 34.0 ],
													"id" : "obj-83",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend host",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 465.0, 583.0, 81.0, 20.0 ],
													"id" : "obj-84",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-15",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 464.0, 610.0, 83.0, 20.0 ],
													"id" : "obj-85",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 480.0, 381.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 465.0, 489.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-86",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 465.0, 558.0, 61.0, 20.0 ],
													"id" : "obj-88",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "15",
													"fontsize" : 24.0,
													"numoutlets" : 4,
													"keymode" : 1,
													"presentation_rect" : [ 480.0, 405.0, 199.0, 34.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 465.0, 516.0, 199.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-89",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "host",
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 489.0, 325.0, 56.0, 34.0 ],
													"id" : "obj-90",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend host",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 465.0, 426.0, 81.0, 20.0 ],
													"id" : "obj-91",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-11",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 465.0, 453.0, 82.0, 20.0 ],
													"id" : "obj-92",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 480.0, 81.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 465.0, 332.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-93",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 465.0, 401.0, 61.0, 20.0 ],
													"id" : "obj-95",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "11",
													"fontsize" : 24.0,
													"numoutlets" : 4,
													"keymode" : 1,
													"presentation_rect" : [ 480.0, 105.0, 199.0, 34.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 465.0, 359.0, 199.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-96",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "host",
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 489.0, 168.0, 56.0, 34.0 ],
													"id" : "obj-97",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend host",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 465.0, 269.0, 81.0, 20.0 ],
													"id" : "obj-98",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-7",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 465.0, 296.0, 77.0, 20.0 ],
													"id" : "obj-99",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 255.0, 156.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 465.0, 175.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-100",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 465.0, 244.0, 61.0, 20.0 ],
													"id" : "obj-102",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "7",
													"fontsize" : 24.0,
													"numoutlets" : 4,
													"keymode" : 1,
													"presentation_rect" : [ 255.0, 180.0, 199.0, 34.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 465.0, 202.0, 199.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-103",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "host",
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 489.0, 11.0, 56.0, 34.0 ],
													"id" : "obj-104",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend host",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 465.0, 112.0, 81.0, 20.0 ],
													"id" : "obj-105",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-3",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 465.0, 139.0, 77.0, 20.0 ],
													"id" : "obj-106",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 30.0, 231.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 465.0, 18.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-107",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 465.0, 87.0, 61.0, 20.0 ],
													"id" : "obj-109",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "3",
													"fontsize" : 24.0,
													"numoutlets" : 4,
													"keymode" : 1,
													"presentation_rect" : [ 30.0, 255.0, 199.0, 34.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 465.0, 45.0, 199.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-110",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "host",
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 279.0, 639.0, 56.0, 34.0 ],
													"id" : "obj-38",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend host",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 255.0, 740.0, 81.0, 20.0 ],
													"id" : "obj-39",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-18",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 255.0, 767.0, 83.0, 20.0 ],
													"id" : "obj-40",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 705.0, 231.000015, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 255.0, 646.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-41",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 255.0, 715.0, 61.0, 20.0 ],
													"id" : "obj-43",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "18",
													"fontsize" : 24.0,
													"numoutlets" : 4,
													"keymode" : 1,
													"presentation_rect" : [ 705.0, 255.0, 199.0, 34.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 255.0, 673.0, 199.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-44",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "host",
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 279.0, 482.0, 56.0, 34.0 ],
													"id" : "obj-45",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend host",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 255.0, 583.0, 81.0, 20.0 ],
													"id" : "obj-46",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-14",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 255.0, 610.0, 83.0, 20.0 ],
													"id" : "obj-47",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 480.0, 306.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 255.0, 489.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-48",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 255.0, 558.0, 61.0, 20.0 ],
													"id" : "obj-50",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "14",
													"fontsize" : 24.0,
													"numoutlets" : 4,
													"keymode" : 1,
													"presentation_rect" : [ 480.0, 330.0, 199.0, 34.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 255.0, 516.0, 199.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-51",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "host",
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 279.0, 325.0, 56.0, 34.0 ],
													"id" : "obj-52",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend host",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 255.0, 426.0, 81.0, 20.0 ],
													"id" : "obj-53",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-10",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 255.0, 454.0, 83.0, 20.0 ],
													"id" : "obj-54",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 255.0, 381.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 255.0, 332.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-55",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 255.0, 401.0, 61.0, 20.0 ],
													"id" : "obj-57",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "10",
													"fontsize" : 24.0,
													"numoutlets" : 4,
													"keymode" : 1,
													"presentation_rect" : [ 255.0, 405.0, 199.0, 34.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 255.0, 359.0, 199.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-58",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "host",
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 279.0, 168.0, 56.0, 34.0 ],
													"id" : "obj-59",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend host",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 255.0, 269.0, 81.0, 20.0 ],
													"id" : "obj-60",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-6",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 255.0, 296.0, 77.0, 20.0 ],
													"id" : "obj-61",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 255.0, 81.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 255.0, 175.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-62",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 255.0, 244.0, 61.0, 20.0 ],
													"id" : "obj-64",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "6",
													"fontsize" : 24.0,
													"numoutlets" : 4,
													"keymode" : 1,
													"presentation_rect" : [ 255.0, 105.0, 199.0, 34.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 255.0, 202.0, 199.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-65",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "host",
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 279.0, 11.0, 56.0, 34.0 ],
													"id" : "obj-66",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend host",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 255.0, 112.0, 81.0, 20.0 ],
													"id" : "obj-67",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-2",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 255.0, 139.0, 77.0, 20.0 ],
													"id" : "obj-68",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 30.0, 156.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 255.0, 18.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-69",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 255.0, 87.0, 61.0, 20.0 ],
													"id" : "obj-71",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "10.0.1.8",
													"fontsize" : 24.0,
													"numoutlets" : 4,
													"keymode" : 1,
													"presentation_rect" : [ 30.0, 180.0, 199.0, 34.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 255.0, 45.0, 199.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-72",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "host",
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 69.0, 639.0, 56.0, 34.0 ],
													"id" : "obj-28",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend host",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 45.0, 740.0, 81.0, 20.0 ],
													"id" : "obj-31",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-17",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 45.0, 767.0, 83.0, 20.0 ],
													"id" : "obj-33",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 705.0, 156.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 45.0, 646.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-34",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 45.0, 715.0, 61.0, 20.0 ],
													"id" : "obj-36",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "17",
													"fontsize" : 24.0,
													"numoutlets" : 4,
													"keymode" : 1,
													"presentation_rect" : [ 705.0, 180.0, 199.0, 34.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 45.0, 673.0, 199.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-37",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "host",
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 69.0, 482.0, 56.0, 34.0 ],
													"id" : "obj-21",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend host",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 45.0, 583.0, 81.0, 20.0 ],
													"id" : "obj-22",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-13",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 45.0, 610.0, 83.0, 20.0 ],
													"id" : "obj-23",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 480.0, 231.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 45.0, 489.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-24",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 45.0, 558.0, 61.0, 20.0 ],
													"id" : "obj-26",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "13",
													"fontsize" : 24.0,
													"numoutlets" : 4,
													"keymode" : 1,
													"presentation_rect" : [ 480.0, 255.0, 199.0, 34.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 45.0, 516.0, 199.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-27",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "host",
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 69.0, 325.0, 56.0, 34.0 ],
													"id" : "obj-14",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend host",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 45.0, 426.0, 81.0, 20.0 ],
													"id" : "obj-15",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-9",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 45.0, 453.0, 77.0, 20.0 ],
													"id" : "obj-16",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 255.0, 306.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 45.0, 332.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-17",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 45.0, 401.0, 61.0, 20.0 ],
													"id" : "obj-19",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "9",
													"fontsize" : 24.0,
													"numoutlets" : 4,
													"keymode" : 1,
													"presentation_rect" : [ 255.0, 330.0, 199.0, 34.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 45.0, 359.0, 199.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-20",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "host",
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 69.0, 168.0, 56.0, 34.0 ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend host",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 45.0, 269.0, 81.0, 20.0 ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-5",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 45.0, 296.0, 77.0, 20.0 ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 30.0, 381.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 45.0, 175.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-10",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 45.0, 244.0, 61.0, 20.0 ],
													"id" : "obj-12",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "5",
													"fontsize" : 24.0,
													"numoutlets" : 4,
													"keymode" : 1,
													"presentation_rect" : [ 30.0, 405.0, 199.0, 34.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 45.0, 202.0, 199.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "host",
													"fontsize" : 24.0,
													"numoutlets" : 0,
													"patching_rect" : [ 69.0, 11.0, 56.0, 34.0 ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend host",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 45.0, 112.0, 81.0, 20.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-1",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 45.0, 139.0, 77.0, 20.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 30.0, 81.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 45.0, 18.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-4",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 45.0, 87.0, 61.0, 20.0 ],
													"id" : "obj-30",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "127.0.0.1",
													"fontsize" : 24.0,
													"numoutlets" : 4,
													"keymode" : 1,
													"presentation_rect" : [ 30.0, 105.0, 199.0, 34.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 45.0, 45.0, 199.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-32",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r udp-assign-using-ip-addresses",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 990.0, 510.0, 182.0, 20.0 ],
													"id" : "obj-381",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 990.0, 537.0, 20.0, 20.0 ],
													"id" : "obj-78",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "front",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 990.0, 562.0, 35.0, 18.0 ],
													"id" : "obj-79",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "thispatcher",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 990.0, 585.0, 69.0, 20.0 ],
													"id" : "obj-80",
													"fontname" : "Arial",
													"numinlets" : 1,
													"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Enter IP addresses to connect to (type and hit \"enter\"). Watch Max Window (cmd + M) for error messages.\nYou can click on the \"bang\" button to retry (i.e., to send again the same number that is already typed).",
													"linecount" : 10,
													"presentation_linecount" : 2,
													"fontsize" : 14.0,
													"numoutlets" : 0,
													"presentation_rect" : [ 80.0, 13.0, 724.0, 39.0 ],
													"patching_rect" : [ 990.0, 615.0, 159.0, 167.0 ],
													"presentation" : 1,
													"id" : "obj-379",
													"fontname" : "Arial Bold",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "clear",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"presentation_rect" : [ 503.0, 469.0, 37.0, 18.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1035.0, 102.0, 50.0, 18.0 ],
													"presentation" : 1,
													"id" : "obj-147",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-79", 0 ],
													"destination" : [ "obj-80", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-78", 0 ],
													"destination" : [ "obj-79", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-3", 0 ],
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
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-22", 0 ],
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
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 0 ],
													"destination" : [ "obj-50", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 0 ],
													"destination" : [ "obj-53", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 0 ],
													"destination" : [ "obj-57", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-58", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-65", 0 ],
													"destination" : [ "obj-64", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-64", 0 ],
													"destination" : [ "obj-60", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-71", 0 ],
													"destination" : [ "obj-67", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-72", 0 ],
													"destination" : [ "obj-71", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-69", 0 ],
													"destination" : [ "obj-72", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-107", 0 ],
													"destination" : [ "obj-110", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-110", 0 ],
													"destination" : [ "obj-109", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-109", 0 ],
													"destination" : [ "obj-105", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-102", 0 ],
													"destination" : [ "obj-98", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-103", 0 ],
													"destination" : [ "obj-102", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-100", 0 ],
													"destination" : [ "obj-103", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-93", 0 ],
													"destination" : [ "obj-96", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-96", 0 ],
													"destination" : [ "obj-95", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-95", 0 ],
													"destination" : [ "obj-91", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-88", 0 ],
													"destination" : [ "obj-84", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-89", 0 ],
													"destination" : [ "obj-88", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-86", 0 ],
													"destination" : [ "obj-89", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-76", 0 ],
													"destination" : [ "obj-82", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-82", 0 ],
													"destination" : [ "obj-81", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-81", 0 ],
													"destination" : [ "obj-74", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-116", 0 ],
													"destination" : [ "obj-112", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-117", 0 ],
													"destination" : [ "obj-116", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-114", 0 ],
													"destination" : [ "obj-117", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-121", 0 ],
													"destination" : [ "obj-124", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-124", 0 ],
													"destination" : [ "obj-123", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-123", 0 ],
													"destination" : [ "obj-119", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-130", 0 ],
													"destination" : [ "obj-126", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-131", 0 ],
													"destination" : [ "obj-130", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-128", 0 ],
													"destination" : [ "obj-131", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-135", 0 ],
													"destination" : [ "obj-138", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-137", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-137", 0 ],
													"destination" : [ "obj-133", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-144", 0 ],
													"destination" : [ "obj-140", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-145", 0 ],
													"destination" : [ "obj-144", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-142", 0 ],
													"destination" : [ "obj-145", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-67", 0 ],
													"destination" : [ "obj-68", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-105", 0 ],
													"destination" : [ "obj-106", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-140", 0 ],
													"destination" : [ "obj-141", 0 ],
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-60", 0 ],
													"destination" : [ "obj-61", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-98", 0 ],
													"destination" : [ "obj-99", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-133", 0 ],
													"destination" : [ "obj-134", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-91", 0 ],
													"destination" : [ "obj-92", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-126", 0 ],
													"destination" : [ "obj-127", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 0 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-84", 0 ],
													"destination" : [ "obj-85", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-119", 0 ],
													"destination" : [ "obj-120", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-74", 0 ],
													"destination" : [ "obj-75", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-112", 0 ],
													"destination" : [ "obj-113", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-381", 0 ],
													"destination" : [ "obj-78", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-145", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-110", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-72", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-103", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-138", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-131", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-96", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-58", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-89", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-124", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-117", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-82", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print assigning",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 920.819763, 612.537048, 88.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-100",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r udpsend-20",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 588.0, 510.0, 81.0, 20.0 ],
									"id" : "obj-96",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r udpsend-19",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 415.0, 519.0, 81.0, 20.0 ],
									"id" : "obj-97",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r udpsend-18",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 250.0, 510.0, 81.0, 20.0 ],
									"id" : "obj-98",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r udpsend-17",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 85.0, 501.0, 81.0, 20.0 ],
									"id" : "obj-99",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r udpsend-16",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 579.0, 452.0, 81.0, 20.0 ],
									"id" : "obj-92",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r udpsend-15",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 399.486847, 455.407898, 81.0, 20.0 ],
									"id" : "obj-93",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r udpsend-14",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 235.0, 450.0, 81.0, 20.0 ],
									"id" : "obj-94",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r udpsend-13",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 70.0, 441.0, 81.0, 20.0 ],
									"id" : "obj-95",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r udpsend-12",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 558.0, 390.0, 81.0, 20.0 ],
									"id" : "obj-88",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r udpsend-11",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 385.0, 399.0, 80.0, 20.0 ],
									"id" : "obj-89",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r udpsend-10",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 220.0, 390.0, 81.0, 20.0 ],
									"id" : "obj-90",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r udpsend-9",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 55.0, 381.0, 75.0, 20.0 ],
									"id" : "obj-91",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r udpsend-8",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 543.0, 330.0, 75.0, 20.0 ],
									"id" : "obj-87",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r udpsend-7",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 370.0, 339.0, 75.0, 20.0 ],
									"id" : "obj-86",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r udpsend-6",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 205.0, 330.0, 75.0, 20.0 ],
									"id" : "obj-85",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r udpsend-5",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 321.0, 75.0, 20.0 ],
									"id" : "obj-84",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r udpsend-4",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 528.0, 275.0, 75.0, 20.0 ],
									"id" : "obj-83",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r udpsend-3",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 367.0, 277.0, 75.0, 20.0 ],
									"id" : "obj-82",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r udpsend-2",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 188.0, 269.0, 75.0, 20.0 ],
									"id" : "obj-81",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r udpsend-1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 21.0, 261.0, 75.0, 20.0 ],
									"id" : "obj-387",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.6 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 593.0, 537.551208, 140.0, 20.0 ],
									"id" : "obj-72",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.5 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 579.0, 479.086609, 140.0, 20.0 ],
									"id" : "obj-73",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.4 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 565.0, 420.62204, 140.0, 20.0 ],
									"id" : "obj-74",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.3 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 551.0, 362.157471, 140.0, 20.0 ],
									"id" : "obj-75",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.2 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 537.0, 303.692902, 140.0, 20.0 ],
									"id" : "obj-76",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.7 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 195.0, 296.677155, 140.0, 20.0 ],
									"id" : "obj-71",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p slork-machines",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 543.0, 70.0, 101.0, 20.0 ],
									"id" : "obj-31",
									"fontname" : "Arial",
									"numinlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 21.0, 44.0, 547.0, 572.0 ],
										"bglocked" : 0,
										"defrect" : [ 21.0, 44.0, 547.0, 572.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 1,
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
													"maxclass" : "newobj",
													"text" : "loadbang",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 990.0, 694.0, 60.0, 20.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "ATTENTION\n\n1) Are you connected to SLOrkNet?\n2) Are the others connected to SLOrkNet?\n\nChoose machines by clicking on their names. Buttons will turn blue after clicking, but this does NOT necessarily mean the connection was successful. Watch the Max Windows (cmd + M) for error messages. If no error messages appear, udp assignment should have been successful.\n",
													"linecount" : 22,
													"presentation_linecount" : 9,
													"fontsize" : 14.0,
													"numoutlets" : 0,
													"presentation_rect" : [ 25.0, 6.0, 499.0, 151.0 ],
													"patching_rect" : [ 1156.0, 614.0, 166.0, 361.0 ],
													"presentation" : 1,
													"id" : "obj-1",
													"fontname" : "Arial Bold",
													"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "<- reset colors",
													"linecount" : 2,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"presentation_rect" : [ 177.0, 523.0, 87.0, 20.0 ],
													"patching_rect" : [ 1020.0, 720.0, 63.0, 34.0 ],
													"presentation" : 1,
													"id" : "obj-386",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"presentation_rect" : [ 153.0, 523.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 990.0, 720.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-384",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r udp-assign-slork-machines",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 990.0, 510.0, 161.0, 20.0 ],
													"id" : "obj-381",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 990.0, 537.0, 20.0, 20.0 ],
													"id" : "obj-78",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "front",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 990.0, 562.0, 35.0, 18.0 ],
													"id" : "obj-79",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "thispatcher",
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 990.0, 585.0, 69.0, 20.0 ],
													"id" : "obj-80",
													"fontname" : "Arial",
													"numinlets" : 1,
													"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Select SLOrk machines that will receive messages via SLOrkNet.",
													"linecount" : 4,
													"fontsize" : 14.0,
													"numoutlets" : 0,
													"presentation_rect" : [ 25.0, 165.0, 440.0, 23.0 ],
													"patching_rect" : [ 990.0, 615.0, 159.0, 71.0 ],
													"presentation" : 1,
													"id" : "obj-379",
													"fontname" : "Arial Bold",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : ";\rreset-color bang",
													"linecount" : 2,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.941176, 0.745098, 0.745098, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 990.0, 750.0, 109.0, 32.0 ],
													"id" : "obj-377",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-20",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 822.0, 720.0, 83.0, 20.0 ],
													"id" : "obj-347",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r reset-color",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 747.0, 615.0, 75.0, 20.0 ],
													"id" : "obj-348",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 792.0, 718.0, 20.0, 20.0 ],
													"id" : "obj-349",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 852.0, 639.0, 87.0, 18.0 ],
													"id" : "obj-350",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.87 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 747.0, 639.0, 101.0, 18.0 ],
													"id" : "obj-351",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "host xiaolongbao.local",
													"fontsize" : 18.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.87, 0.87, 0.87, 1.0 ],
													"presentation_rect" : [ 270.0, 473.0, 189.0, 25.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 792.0, 686.0, 189.0, 25.0 ],
													"presentation" : 1,
													"id" : "obj-352",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 $4",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 792.0, 663.0, 115.0, 18.0 ],
													"id" : "obj-353",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-19",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 585.0, 720.0, 83.0, 20.0 ],
													"id" : "obj-354",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r reset-color",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 508.0, 615.0, 75.0, 20.0 ],
													"id" : "obj-355",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 553.0, 718.0, 20.0, 20.0 ],
													"id" : "obj-356",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 613.0, 639.0, 87.0, 18.0 ],
													"id" : "obj-357",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.87 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 508.0, 639.0, 101.0, 18.0 ],
													"id" : "obj-358",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "host turducken.local",
													"fontsize" : 18.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.87, 0.87, 0.87, 1.0 ],
													"presentation_rect" : [ 270.0, 443.0, 171.0, 25.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 553.0, 686.0, 171.0, 25.0 ],
													"presentation" : 1,
													"id" : "obj-359",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 $4",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 553.0, 663.0, 115.0, 18.0 ],
													"id" : "obj-360",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-18",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 344.0, 720.0, 83.0, 20.0 ],
													"id" : "obj-361",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r reset-color",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 269.0, 615.0, 75.0, 20.0 ],
													"id" : "obj-362",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 314.0, 718.0, 20.0, 20.0 ],
													"id" : "obj-363",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 374.0, 639.0, 87.0, 18.0 ],
													"id" : "obj-364",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.87 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 269.0, 639.0, 101.0, 18.0 ],
													"id" : "obj-365",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "host transfat.local",
													"fontsize" : 18.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.87, 0.87, 0.87, 1.0 ],
													"presentation_rect" : [ 270.0, 413.0, 152.0, 25.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 314.0, 686.0, 152.0, 25.0 ],
													"presentation" : 1,
													"id" : "obj-366",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 $4",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 314.0, 663.0, 115.0, 18.0 ],
													"id" : "obj-367",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-17",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 105.0, 720.0, 83.0, 20.0 ],
													"id" : "obj-368",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r reset-color",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 30.0, 615.0, 75.0, 20.0 ],
													"id" : "obj-369",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 75.0, 718.0, 20.0, 20.0 ],
													"id" : "obj-370",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 135.0, 639.0, 87.0, 18.0 ],
													"id" : "obj-371",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.87 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 30.0, 639.0, 101.0, 18.0 ],
													"id" : "obj-372",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "host tofurkey.local",
													"fontsize" : 18.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.87, 0.87, 0.87, 1.0 ],
													"presentation_rect" : [ 270.0, 381.0, 154.0, 25.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 75.0, 686.0, 154.0, 25.0 ],
													"presentation" : 1,
													"id" : "obj-373",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 $4",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 75.0, 663.0, 115.0, 18.0 ],
													"id" : "obj-374",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-16",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 822.0, 570.0, 83.0, 20.0 ],
													"id" : "obj-319",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r reset-color",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 747.0, 465.0, 75.0, 20.0 ],
													"id" : "obj-320",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 792.0, 568.0, 20.0, 20.0 ],
													"id" : "obj-321",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 852.0, 489.0, 87.0, 18.0 ],
													"id" : "obj-322",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.87 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 747.0, 489.0, 101.0, 18.0 ],
													"id" : "obj-323",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "host tikkamasala.local",
													"fontsize" : 18.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.87, 0.87, 0.87, 1.0 ],
													"presentation_rect" : [ 270.0, 349.0, 187.0, 25.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 792.0, 536.0, 187.0, 25.0 ],
													"presentation" : 1,
													"id" : "obj-324",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 $4",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 792.0, 513.0, 115.0, 18.0 ],
													"id" : "obj-325",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-15",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 583.0, 570.0, 83.0, 20.0 ],
													"id" : "obj-326",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r reset-color",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 508.0, 465.0, 75.0, 20.0 ],
													"id" : "obj-327",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 553.0, 568.0, 20.0, 20.0 ],
													"id" : "obj-328",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 613.0, 489.0, 87.0, 18.0 ],
													"id" : "obj-329",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.87 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 508.0, 489.0, 101.0, 18.0 ],
													"id" : "obj-330",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "host snickers.local",
													"fontsize" : 18.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.87, 0.87, 0.87, 1.0 ],
													"presentation_rect" : [ 270.0, 319.0, 158.0, 25.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 553.0, 536.0, 158.0, 25.0 ],
													"presentation" : 1,
													"id" : "obj-331",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 $4",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 553.0, 513.0, 115.0, 18.0 ],
													"id" : "obj-332",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-14",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 345.0, 570.0, 83.0, 20.0 ],
													"id" : "obj-333",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r reset-color",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 269.0, 465.0, 75.0, 20.0 ],
													"id" : "obj-334",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 314.0, 568.0, 20.0, 20.0 ],
													"id" : "obj-335",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 374.0, 489.0, 87.0, 18.0 ],
													"id" : "obj-336",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.87 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 269.0, 489.0, 101.0, 18.0 ],
													"id" : "obj-337",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "host shabushabu.local",
													"fontsize" : 18.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.87, 0.87, 0.87, 1.0 ],
													"presentation_rect" : [ 270.0, 289.0, 190.0, 25.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 314.0, 536.0, 190.0, 25.0 ],
													"presentation" : 1,
													"id" : "obj-338",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 $4",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 314.0, 513.0, 115.0, 18.0 ],
													"id" : "obj-339",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-13",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 105.0, 570.0, 83.0, 20.0 ],
													"id" : "obj-340",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r reset-color",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 30.0, 465.0, 75.0, 20.0 ],
													"id" : "obj-341",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 75.0, 568.0, 20.0, 20.0 ],
													"id" : "obj-342",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 135.0, 489.0, 87.0, 18.0 ],
													"id" : "obj-343",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.87 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 30.0, 489.0, 101.0, 18.0 ],
													"id" : "obj-344",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "host seventeen.local",
													"fontsize" : 18.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.87, 0.87, 0.87, 1.0 ],
													"presentation_rect" : [ 270.0, 259.0, 175.0, 25.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 75.0, 536.0, 175.0, 25.0 ],
													"presentation" : 1,
													"id" : "obj-345",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 $4",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 75.0, 513.0, 115.0, 18.0 ],
													"id" : "obj-346",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-12",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 825.0, 420.0, 83.0, 20.0 ],
													"id" : "obj-291",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r reset-color",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 747.0, 315.0, 75.0, 20.0 ],
													"id" : "obj-292",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 792.0, 418.0, 20.0, 20.0 ],
													"id" : "obj-293",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 852.0, 339.0, 87.0, 18.0 ],
													"id" : "obj-294",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "host quesadilla.local",
													"fontsize" : 18.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.87, 0.87, 0.87, 1.0 ],
													"presentation_rect" : [ 270.0, 229.0, 173.0, 25.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 792.0, 386.0, 173.0, 25.0 ],
													"presentation" : 1,
													"id" : "obj-296",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.87 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 747.0, 339.0, 101.0, 18.0 ],
													"id" : "obj-295",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 $4",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 792.0, 363.0, 115.0, 18.0 ],
													"id" : "obj-297",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-11",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 583.0, 420.0, 82.0, 20.0 ],
													"id" : "obj-298",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r reset-color",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 508.0, 315.0, 75.0, 20.0 ],
													"id" : "obj-299",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 553.0, 418.0, 20.0, 20.0 ],
													"id" : "obj-300",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 613.0, 339.0, 87.0, 18.0 ],
													"id" : "obj-301",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "host pupuplatter.local",
													"fontsize" : 18.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.87, 0.87, 0.87, 1.0 ],
													"presentation_rect" : [ 270.0, 199.0, 181.0, 25.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 553.0, 386.0, 181.0, 25.0 ],
													"presentation" : 1,
													"id" : "obj-303",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.87 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 508.0, 339.0, 101.0, 18.0 ],
													"id" : "obj-302",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 $4",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 553.0, 363.0, 115.0, 18.0 ],
													"id" : "obj-304",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-10",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 344.0, 420.0, 83.0, 20.0 ],
													"id" : "obj-305",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r reset-color",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 269.0, 315.0, 75.0, 20.0 ],
													"id" : "obj-306",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 314.0, 418.0, 20.0, 20.0 ],
													"id" : "obj-307",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 374.0, 339.0, 87.0, 18.0 ],
													"id" : "obj-308",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.87 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 269.0, 339.0, 101.0, 18.0 ],
													"id" : "obj-309",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "host poutine.local",
													"fontsize" : 18.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.87, 0.87, 0.87, 1.0 ],
													"presentation_rect" : [ 25.0, 469.0, 151.0, 25.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 314.0, 386.0, 151.0, 25.0 ],
													"presentation" : 1,
													"id" : "obj-310",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 $4",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 314.0, 363.0, 115.0, 18.0 ],
													"id" : "obj-311",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-9",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 105.0, 420.0, 77.0, 20.0 ],
													"id" : "obj-312",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r reset-color",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 30.0, 315.0, 75.0, 20.0 ],
													"id" : "obj-313",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 75.0, 418.0, 20.0, 20.0 ],
													"id" : "obj-314",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 135.0, 339.0, 87.0, 18.0 ],
													"id" : "obj-315",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.87 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 30.0, 339.0, 101.0, 18.0 ],
													"id" : "obj-316",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "host peanutbutter.local",
													"fontsize" : 18.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.87, 0.87, 0.87, 1.0 ],
													"presentation_rect" : [ 25.0, 439.0, 192.0, 25.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 75.0, 387.0, 192.0, 25.0 ],
													"presentation" : 1,
													"id" : "obj-317",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 $4",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 75.0, 363.0, 115.0, 18.0 ],
													"id" : "obj-318",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-8",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 822.0, 270.0, 77.0, 20.0 ],
													"id" : "obj-263",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r reset-color",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 747.0, 165.0, 75.0, 20.0 ],
													"id" : "obj-264",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 792.0, 268.0, 20.0, 20.0 ],
													"id" : "obj-265",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 852.0, 189.0, 87.0, 18.0 ],
													"id" : "obj-266",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.87 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 747.0, 189.0, 101.0, 18.0 ],
													"id" : "obj-267",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "host oatmealraisin.local",
													"fontsize" : 18.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.87, 0.87, 0.87, 1.0 ],
													"presentation_rect" : [ 25.0, 409.0, 199.0, 25.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 792.0, 236.0, 199.0, 25.0 ],
													"presentation" : 1,
													"id" : "obj-268",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 $4",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 792.0, 213.0, 115.0, 18.0 ],
													"id" : "obj-269",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-7",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 583.0, 270.0, 77.0, 20.0 ],
													"id" : "obj-270",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r reset-color",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 508.0, 165.0, 75.0, 20.0 ],
													"id" : "obj-271",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 553.0, 268.0, 20.0, 20.0 ],
													"id" : "obj-272",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 613.0, 189.0, 87.0, 18.0 ],
													"id" : "obj-273",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.87 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 508.0, 189.0, 101.0, 18.0 ],
													"id" : "obj-274",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "host heartstop.local",
													"fontsize" : 18.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.87, 0.87, 0.87, 1.0 ],
													"presentation_rect" : [ 25.0, 379.0, 167.0, 25.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 553.0, 236.0, 167.0, 25.0 ],
													"presentation" : 1,
													"id" : "obj-275",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 $4",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 553.0, 213.0, 115.0, 18.0 ],
													"id" : "obj-276",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-6",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 344.0, 270.0, 77.0, 20.0 ],
													"id" : "obj-277",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r reset-color",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 269.0, 165.0, 75.0, 20.0 ],
													"id" : "obj-278",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 314.0, 268.0, 20.0, 20.0 ],
													"id" : "obj-279",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 374.0, 189.0, 87.0, 18.0 ],
													"id" : "obj-280",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.87 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 269.0, 189.0, 101.0, 18.0 ],
													"id" : "obj-281",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "host froyo.local",
													"fontsize" : 18.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.87, 0.87, 0.87, 1.0 ],
													"presentation_rect" : [ 25.0, 349.0, 132.0, 25.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 314.0, 236.0, 132.0, 25.0 ],
													"presentation" : 1,
													"id" : "obj-282",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 $4",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 314.0, 213.0, 115.0, 18.0 ],
													"id" : "obj-283",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-5",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 105.0, 270.0, 77.0, 20.0 ],
													"id" : "obj-284",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r reset-color",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 30.0, 165.0, 75.0, 20.0 ],
													"id" : "obj-285",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 75.0, 268.0, 20.0, 20.0 ],
													"id" : "obj-286",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 135.0, 189.0, 87.0, 18.0 ],
													"id" : "obj-287",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.87 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 30.0, 189.0, 101.0, 18.0 ],
													"id" : "obj-288",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "host flavorblasted.local",
													"fontsize" : 18.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.87, 0.87, 0.87, 1.0 ],
													"presentation_rect" : [ 25.0, 319.0, 194.0, 25.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 75.0, 236.0, 194.0, 25.0 ],
													"presentation" : 1,
													"id" : "obj-289",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 $4",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 75.0, 213.0, 115.0, 18.0 ],
													"id" : "obj-290",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-4",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 822.0, 120.0, 77.0, 20.0 ],
													"id" : "obj-143",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r reset-color",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 747.0, 15.0, 75.0, 20.0 ],
													"id" : "obj-144",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 792.0, 118.0, 20.0, 20.0 ],
													"id" : "obj-145",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 852.0, 39.0, 87.0, 18.0 ],
													"id" : "obj-146",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.87 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 747.0, 39.0, 101.0, 18.0 ],
													"id" : "obj-147",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "host doubledouble.local",
													"fontsize" : 18.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.87, 0.87, 0.87, 1.0 ],
													"presentation_rect" : [ 25.0, 289.0, 200.0, 25.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 792.0, 86.0, 200.0, 25.0 ],
													"presentation" : 1,
													"id" : "obj-148",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 $4",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 792.0, 63.0, 115.0, 18.0 ],
													"id" : "obj-149",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-3",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 583.0, 120.0, 77.0, 20.0 ],
													"id" : "obj-136",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r reset-color",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 508.0, 15.0, 75.0, 20.0 ],
													"id" : "obj-137",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 553.0, 118.0, 20.0, 20.0 ],
													"id" : "obj-138",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 613.0, 39.0, 87.0, 18.0 ],
													"id" : "obj-139",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.87 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 508.0, 39.0, 101.0, 18.0 ],
													"id" : "obj-140",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "host dolsotbibimbop.local",
													"fontsize" : 18.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.87, 0.87, 0.87, 1.0 ],
													"presentation_rect" : [ 25.0, 258.0, 213.0, 25.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 553.0, 86.0, 213.0, 25.0 ],
													"presentation" : 1,
													"id" : "obj-141",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 $4",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 553.0, 63.0, 115.0, 18.0 ],
													"id" : "obj-142",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-2",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 344.0, 120.0, 77.0, 20.0 ],
													"id" : "obj-129",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r reset-color",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 269.0, 15.0, 75.0, 20.0 ],
													"id" : "obj-130",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 314.0, 118.0, 20.0, 20.0 ],
													"id" : "obj-131",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 374.0, 39.0, 87.0, 18.0 ],
													"id" : "obj-132",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.87 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 269.0, 39.0, 101.0, 18.0 ],
													"id" : "obj-133",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "host blt.local",
													"fontsize" : 18.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.87, 0.87, 0.87, 1.0 ],
													"presentation_rect" : [ 25.0, 229.0, 111.0, 25.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 314.0, 86.0, 111.0, 25.0 ],
													"presentation" : 1,
													"id" : "obj-134",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 $4",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 314.0, 63.0, 115.0, 18.0 ],
													"id" : "obj-135",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s udpsend-1",
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 105.0, 120.0, 77.0, 20.0 ],
													"id" : "obj-128",
													"fontname" : "Arial",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r reset-color",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 30.0, 15.0, 75.0, 20.0 ],
													"id" : "obj-77",
													"fontname" : "Arial",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 75.0, 118.0, 20.0, 20.0 ],
													"id" : "obj-70",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 135.0, 39.0, 87.0, 18.0 ],
													"id" : "obj-68",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.87 0.87 0.87 1.",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 30.0, 39.0, 101.0, 18.0 ],
													"id" : "obj-67",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "host aguachile.local",
													"fontsize" : 18.0,
													"numoutlets" : 1,
													"bgcolor" : [ 0.87, 0.87, 0.87, 1.0 ],
													"presentation_rect" : [ 25.0, 199.0, 169.0, 25.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 75.0, 86.0, 171.0, 25.0 ],
													"presentation" : 1,
													"id" : "obj-53",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 $4",
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 75.0, 63.0, 115.0, 18.0 ],
													"id" : "obj-65",
													"fontname" : "Arial",
													"numinlets" : 2
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-268", 0 ],
													"destination" : [ "obj-263", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-384", 0 ],
													"destination" : [ "obj-377", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-381", 0 ],
													"destination" : [ "obj-78", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-78", 0 ],
													"destination" : [ "obj-79", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-79", 0 ],
													"destination" : [ "obj-80", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-352", 0 ],
													"destination" : [ "obj-347", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-359", 0 ],
													"destination" : [ "obj-354", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-366", 0 ],
													"destination" : [ "obj-361", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-373", 0 ],
													"destination" : [ "obj-368", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-324", 0 ],
													"destination" : [ "obj-319", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-331", 0 ],
													"destination" : [ "obj-326", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-338", 0 ],
													"destination" : [ "obj-333", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-345", 0 ],
													"destination" : [ "obj-340", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-296", 0 ],
													"destination" : [ "obj-291", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-303", 0 ],
													"destination" : [ "obj-298", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-310", 0 ],
													"destination" : [ "obj-305", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-317", 0 ],
													"destination" : [ "obj-312", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-275", 0 ],
													"destination" : [ "obj-270", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-282", 0 ],
													"destination" : [ "obj-277", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-289", 0 ],
													"destination" : [ "obj-284", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-148", 0 ],
													"destination" : [ "obj-143", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-141", 0 ],
													"destination" : [ "obj-136", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-134", 0 ],
													"destination" : [ "obj-129", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-348", 0 ],
													"destination" : [ "obj-351", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-349", 0 ],
													"destination" : [ "obj-350", 0 ],
													"hidden" : 0,
													"midpoints" : [ 801.5, 747.0, 969.5, 747.0, 969.5, 630.0, 861.5, 630.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-352", 0 ],
													"destination" : [ "obj-349", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-350", 0 ],
													"destination" : [ "obj-353", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-351", 0 ],
													"destination" : [ "obj-353", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-353", 0 ],
													"destination" : [ "obj-352", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-360", 0 ],
													"destination" : [ "obj-359", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-358", 0 ],
													"destination" : [ "obj-360", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-357", 0 ],
													"destination" : [ "obj-360", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-359", 0 ],
													"destination" : [ "obj-356", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-356", 0 ],
													"destination" : [ "obj-357", 0 ],
													"hidden" : 0,
													"midpoints" : [ 562.5, 747.0, 730.5, 747.0, 730.5, 630.0, 622.5, 630.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-355", 0 ],
													"destination" : [ "obj-358", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-362", 0 ],
													"destination" : [ "obj-365", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-363", 0 ],
													"destination" : [ "obj-364", 0 ],
													"hidden" : 0,
													"midpoints" : [ 323.5, 747.0, 491.5, 747.0, 491.5, 630.0, 383.5, 630.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-366", 0 ],
													"destination" : [ "obj-363", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-364", 0 ],
													"destination" : [ "obj-367", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-365", 0 ],
													"destination" : [ "obj-367", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-367", 0 ],
													"destination" : [ "obj-366", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-374", 0 ],
													"destination" : [ "obj-373", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-372", 0 ],
													"destination" : [ "obj-374", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-371", 0 ],
													"destination" : [ "obj-374", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-373", 0 ],
													"destination" : [ "obj-370", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-370", 0 ],
													"destination" : [ "obj-371", 0 ],
													"hidden" : 0,
													"midpoints" : [ 84.5, 747.0, 252.5, 747.0, 252.5, 630.0, 144.5, 630.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-369", 0 ],
													"destination" : [ "obj-372", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-341", 0 ],
													"destination" : [ "obj-344", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-342", 0 ],
													"destination" : [ "obj-343", 0 ],
													"hidden" : 0,
													"midpoints" : [ 84.5, 597.0, 252.5, 597.0, 252.5, 480.0, 144.5, 480.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-345", 0 ],
													"destination" : [ "obj-342", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-343", 0 ],
													"destination" : [ "obj-346", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-344", 0 ],
													"destination" : [ "obj-346", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-346", 0 ],
													"destination" : [ "obj-345", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-339", 0 ],
													"destination" : [ "obj-338", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-337", 0 ],
													"destination" : [ "obj-339", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-336", 0 ],
													"destination" : [ "obj-339", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-338", 0 ],
													"destination" : [ "obj-335", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-335", 0 ],
													"destination" : [ "obj-336", 0 ],
													"hidden" : 0,
													"midpoints" : [ 323.5, 597.0, 491.5, 597.0, 491.5, 480.0, 383.5, 480.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-334", 0 ],
													"destination" : [ "obj-337", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-327", 0 ],
													"destination" : [ "obj-330", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-328", 0 ],
													"destination" : [ "obj-329", 0 ],
													"hidden" : 0,
													"midpoints" : [ 562.5, 597.0, 730.5, 597.0, 730.5, 480.0, 622.5, 480.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-331", 0 ],
													"destination" : [ "obj-328", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-329", 0 ],
													"destination" : [ "obj-332", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-330", 0 ],
													"destination" : [ "obj-332", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-332", 0 ],
													"destination" : [ "obj-331", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-325", 0 ],
													"destination" : [ "obj-324", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-323", 0 ],
													"destination" : [ "obj-325", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-322", 0 ],
													"destination" : [ "obj-325", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-324", 0 ],
													"destination" : [ "obj-321", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-321", 0 ],
													"destination" : [ "obj-322", 0 ],
													"hidden" : 0,
													"midpoints" : [ 801.5, 597.0, 969.5, 597.0, 969.5, 480.0, 861.5, 480.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-320", 0 ],
													"destination" : [ "obj-323", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-292", 0 ],
													"destination" : [ "obj-295", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-293", 0 ],
													"destination" : [ "obj-294", 0 ],
													"hidden" : 0,
													"midpoints" : [ 801.5, 447.0, 969.5, 447.0, 969.5, 330.0, 861.5, 330.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-296", 0 ],
													"destination" : [ "obj-293", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-294", 0 ],
													"destination" : [ "obj-297", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-295", 0 ],
													"destination" : [ "obj-297", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-297", 0 ],
													"destination" : [ "obj-296", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-304", 0 ],
													"destination" : [ "obj-303", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-302", 0 ],
													"destination" : [ "obj-304", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-301", 0 ],
													"destination" : [ "obj-304", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-303", 0 ],
													"destination" : [ "obj-300", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-300", 0 ],
													"destination" : [ "obj-301", 0 ],
													"hidden" : 0,
													"midpoints" : [ 562.5, 447.0, 730.5, 447.0, 730.5, 330.0, 622.5, 330.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-299", 0 ],
													"destination" : [ "obj-302", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-306", 0 ],
													"destination" : [ "obj-309", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-307", 0 ],
													"destination" : [ "obj-308", 0 ],
													"hidden" : 0,
													"midpoints" : [ 323.5, 447.0, 491.5, 447.0, 491.5, 330.0, 383.5, 330.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-310", 0 ],
													"destination" : [ "obj-307", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-308", 0 ],
													"destination" : [ "obj-311", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-309", 0 ],
													"destination" : [ "obj-311", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-311", 0 ],
													"destination" : [ "obj-310", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-318", 0 ],
													"destination" : [ "obj-317", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-316", 0 ],
													"destination" : [ "obj-318", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-315", 0 ],
													"destination" : [ "obj-318", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-317", 0 ],
													"destination" : [ "obj-314", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-314", 0 ],
													"destination" : [ "obj-315", 0 ],
													"hidden" : 0,
													"midpoints" : [ 84.5, 447.0, 252.5, 447.0, 252.5, 330.0, 144.5, 330.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-313", 0 ],
													"destination" : [ "obj-316", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-285", 0 ],
													"destination" : [ "obj-288", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-286", 0 ],
													"destination" : [ "obj-287", 0 ],
													"hidden" : 0,
													"midpoints" : [ 84.5, 297.0, 252.5, 297.0, 252.5, 180.0, 144.5, 180.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-289", 0 ],
													"destination" : [ "obj-286", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-287", 0 ],
													"destination" : [ "obj-290", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-288", 0 ],
													"destination" : [ "obj-290", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-290", 0 ],
													"destination" : [ "obj-289", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-283", 0 ],
													"destination" : [ "obj-282", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-281", 0 ],
													"destination" : [ "obj-283", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-280", 0 ],
													"destination" : [ "obj-283", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-282", 0 ],
													"destination" : [ "obj-279", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-279", 0 ],
													"destination" : [ "obj-280", 0 ],
													"hidden" : 0,
													"midpoints" : [ 323.5, 297.0, 491.5, 297.0, 491.5, 180.0, 383.5, 180.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-278", 0 ],
													"destination" : [ "obj-281", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-271", 0 ],
													"destination" : [ "obj-274", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-272", 0 ],
													"destination" : [ "obj-273", 0 ],
													"hidden" : 0,
													"midpoints" : [ 562.5, 297.0, 730.5, 297.0, 730.5, 180.0, 622.5, 180.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-275", 0 ],
													"destination" : [ "obj-272", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-273", 0 ],
													"destination" : [ "obj-276", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-274", 0 ],
													"destination" : [ "obj-276", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-276", 0 ],
													"destination" : [ "obj-275", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-269", 0 ],
													"destination" : [ "obj-268", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-267", 0 ],
													"destination" : [ "obj-269", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-266", 0 ],
													"destination" : [ "obj-269", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-268", 0 ],
													"destination" : [ "obj-265", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-265", 0 ],
													"destination" : [ "obj-266", 0 ],
													"hidden" : 0,
													"midpoints" : [ 801.5, 297.0, 969.5, 297.0, 969.5, 180.0, 861.5, 180.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-264", 0 ],
													"destination" : [ "obj-267", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-144", 0 ],
													"destination" : [ "obj-147", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-145", 0 ],
													"destination" : [ "obj-146", 0 ],
													"hidden" : 0,
													"midpoints" : [ 801.5, 147.0, 969.5, 147.0, 969.5, 30.0, 861.5, 30.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-148", 0 ],
													"destination" : [ "obj-145", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-146", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-147", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-149", 0 ],
													"destination" : [ "obj-148", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-142", 0 ],
													"destination" : [ "obj-141", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-140", 0 ],
													"destination" : [ "obj-142", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-139", 0 ],
													"destination" : [ "obj-142", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-141", 0 ],
													"destination" : [ "obj-138", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-139", 0 ],
													"hidden" : 0,
													"midpoints" : [ 562.5, 147.0, 730.5, 147.0, 730.5, 30.0, 622.5, 30.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-137", 0 ],
													"destination" : [ "obj-140", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-130", 0 ],
													"destination" : [ "obj-133", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-131", 0 ],
													"destination" : [ "obj-132", 0 ],
													"hidden" : 0,
													"midpoints" : [ 323.5, 147.0, 491.5, 147.0, 491.5, 30.0, 383.5, 30.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-134", 0 ],
													"destination" : [ "obj-131", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-132", 0 ],
													"destination" : [ "obj-135", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-133", 0 ],
													"destination" : [ "obj-135", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-135", 0 ],
													"destination" : [ "obj-134", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-128", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-65", 0 ],
													"destination" : [ "obj-53", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-67", 0 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-68", 0 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-70", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-70", 0 ],
													"destination" : [ "obj-68", 0 ],
													"hidden" : 0,
													"midpoints" : [ 84.5, 147.0, 252.5, 147.0, 252.5, 30.0, 144.5, 30.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-77", 0 ],
													"destination" : [ "obj-67", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-384", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r inst-msg",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 5.0, 63.0, 20.0 ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 547.0, 129.0, 25.0, 25.0 ],
									"hidden" : 1,
									"id" : "obj-62",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 547.0, 158.0, 20.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-61",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 547.0, 183.0, 35.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-59",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 547.0, 206.0, 69.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-56",
									"fontname" : "Arial",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.14 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 77.0, 467.393707, 147.0, 20.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- local (testing). For the orchestra, type in specific IP addresses in each of the udpsends below.",
									"linecount" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 252.0, 119.0, 276.0, 48.0 ],
									"id" : "obj-28",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.6 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 430.0, 542.228333, 140.0, 20.0 ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.5 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 416.0, 483.763794, 140.0, 20.0 ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.4 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 402.0, 425.299225, 140.0, 20.0 ],
									"id" : "obj-24",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.3 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 388.0, 366.834656, 140.0, 20.0 ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.2 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 374.0, 308.370087, 140.0, 20.0 ],
									"id" : "obj-26",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.10 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 252.0, 535.212585, 147.0, 20.0 ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.9 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 238.0, 476.748016, 140.0, 20.0 ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.8 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 224.0, 418.283478, 140.0, 20.0 ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.7 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 210.0, 359.818909, 140.0, 20.0 ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.15 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 91.0, 525.858276, 147.0, 20.0 ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.13 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 63.0, 408.929138, 147.0, 20.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.12 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 49.0, 350.464569, 147.0, 20.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.11 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 35.0, 292.0, 146.0, 20.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 10.0.1.8 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 108.0, 145.0, 133.0, 20.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend 127.0.0.1 7000",
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"color" : [ 0.101961, 0.8, 0.2, 1.0 ],
									"patching_rect" : [ 109.0, 119.0, 140.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- Bang closes all open bundles, sends out the buffer and resets.",
									"linecount" : 2,
									"fontsize" : 13.0,
									"numoutlets" : 0,
									"patching_rect" : [ 219.0, 56.0, 210.0, 36.0 ],
									"id" : "obj-58",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r send-bang-to-OSC",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 99.686569, 56.054657, 119.0, 20.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OpenSoundControl",
									"fontsize" : 12.0,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "OSCTimeTag" ],
									"patching_rect" : [ 82.0, 93.0, 113.0, 20.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r messages-present",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 82.0, 29.0, 117.0, 20.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-96", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-99", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-92", 0 ],
									"destination" : [ "obj-73", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-94", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-95", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-90", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-85", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-82", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-83", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-387", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-387", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-82", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-83", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-85", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-90", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-95", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-94", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-92", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-99", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-96", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 91.5, 202.0, 44.5, 202.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 91.5, 214.5, 58.5, 214.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 91.5, 227.0, 72.5, 227.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 91.5, 239.5, 86.5, 239.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 91.5, 252.0, 100.5, 252.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 91.5, 224.0, 219.5, 224.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 91.5, 236.5, 233.5, 236.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 91.5, 249.0, 247.5, 249.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 91.5, 261.5, 261.5, 261.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 91.5, 190.5, 383.5, 190.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 91.5, 203.0, 397.5, 203.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 91.5, 215.5, 411.5, 215.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 91.5, 228.0, 425.5, 228.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 91.5, 240.5, 439.5, 240.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 91.5, 115.5, 118.5, 115.5 ]
								}

							}
, 							{
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
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [ 91.5, 203.0, 204.5, 203.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-73", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"bgcolor" : [ 0.74902, 0.301961, 0.101961, 0.101961 ],
					"presentation_rect" : [ 1054.0, 41.0, 25.0, 25.0 ],
					"outlinecolor" : [ 0.74902, 0.301961, 0.101961, 0.34902 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1393.0, 745.0, 23.0, 23.0 ],
					"presentation" : 1,
					"id" : "obj-53",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s open-messages-txt",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 1393.069702, 777.243103, 122.0, 20.0 ],
					"id" : "obj-47",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p display-present",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1013.542847, 154.614075, 102.0, 20.0 ],
					"id" : "obj-73",
					"fontname" : "Arial",
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 4.0, 44.0, 1028.0, 506.0 ],
						"bglocked" : 0,
						"defrect" : [ 4.0, 44.0, 1028.0, 506.0 ],
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
									"text" : "prepend set 0 16",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 871.8302, 143.286346, 101.0, 20.0 ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 19",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 809.8302, 230.286346, 101.0, 20.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 18",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 837.783508, 200.600952, 101.0, 20.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 17",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 858.8302, 173.286346, 101.0, 20.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 22",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 734.8302, 317.286346, 101.0, 20.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 21",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 762.783508, 287.600952, 101.0, 20.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 20",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 783.8302, 260.286346, 101.0, 20.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 14",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 571.316956, 309.067444, 101.0, 20.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 25",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 659.8302, 404.286346, 101.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 24",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 687.783508, 374.600952, 101.0, 20.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 23",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 708.8302, 347.286346, 101.0, 20.0 ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 15",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 587.316956, 335.067444, 101.0, 20.0 ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 9",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 471.316956, 181.067444, 94.0, 20.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 4",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 184.8302, 255.286346, 94.0, 20.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OSC-route /a /b /c /d /e /f /g /h /i /j /k /l /m /n /o /p /q /r /s /t /u /v /w /x /y /z",
									"fontsize" : 12.0,
									"numoutlets" : 27,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 165.527405, 51.936005, 795.0, 20.0 ],
									"id" : "obj-24",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r messages-present",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 165.987274, 25.0, 117.0, 20.0 ],
									"id" : "obj-68",
									"fontname" : "Arial",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 13",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 549.8302, 285.286346, 101.0, 20.0 ],
									"id" : "obj-63",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 12",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 528.783508, 259.600952, 101.0, 20.0 ],
									"id" : "obj-64",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 11",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 510.8302, 234.286346, 100.0, 20.0 ],
									"id" : "obj-65",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 10",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 490.316956, 207.067444, 101.0, 20.0 ],
									"id" : "obj-66",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 8",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 453.8302, 156.286346, 94.0, 20.0 ],
									"id" : "obj-57",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 7",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 127.316956, 333.067444, 94.0, 20.0 ],
									"id" : "obj-58",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 6",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 146.8302, 307.286346, 94.0, 20.0 ],
									"id" : "obj-59",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 5",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.316956, 279.067444, 94.0, 20.0 ],
									"id" : "obj-60",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 3",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 217.8302, 231.286346, 94.0, 20.0 ],
									"id" : "obj-51",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 2",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 237.316956, 206.067444, 94.0, 20.0 ],
									"id" : "obj-52",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 261.8302, 181.286346, 94.0, 20.0 ],
									"id" : "obj-50",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0 0",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 276.0, 157.067444, 94.0, 20.0 ],
									"id" : "obj-49",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 536.649475, 432.286346, 25.0, 25.0 ],
									"id" : "obj-72",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 2 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 3 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 4 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 5 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 6 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 7 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 8 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 9 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 10 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 11 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 12 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 13 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 14 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 15 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 16 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 17 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 18 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 19 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 20 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 21 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 22 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 23 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 24 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 25 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"fontsize" : 36.0,
					"numoutlets" : 1,
					"bgcolor" : [ 0.756863, 0.4, 0.239216, 0.827451 ],
					"presentation_rect" : [ 545.942383, 364.883362, 74.0, 46.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 1,
					"patching_rect" : [ 377.942383, 106.883362, 74.0, 46.0 ],
					"presentation" : 1,
					"id" : "obj-35",
					"fontname" : "Arial Bold",
					"numinlets" : 2,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r conductor_event-display",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 447.402344, 80.407898, 148.0, 20.0 ],
					"id" : "obj-33",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s read-this-cue-now",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 610.251587, 228.784607, 116.0, 20.0 ],
					"id" : "obj-32",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 48.0,
					"numoutlets" : 2,
					"presentation_rect" : [ 628.896973, 356.883362, 95.0, 62.0 ],
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 609.896973, 135.883362, 95.0, 62.0 ],
					"hbgcolor" : [ 0.533333, 0.372549, 0.372549, 1.0 ],
					"presentation" : 1,
					"id" : "obj-31",
					"fontname" : "Arial Bold",
					"bordercolor" : [ 0.74902, 0.301961, 0.101961, 0.701961 ],
					"htextcolor" : [ 0.94902, 0.0, 0.0, 1.0 ],
					"minimum" : 0,
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 536.0, 161.0, 186.0, 169.0 ],
					"patching_rect" : [ 557.0, 132.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-92",
					"bordercolor" : [ 0.74902, 0.360784, 0.188235, 1.0 ],
					"border" : 1,
					"numinlets" : 1,
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel[2]",
					"numoutlets" : 0,
					"grad1" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"background" : 1,
					"presentation_rect" : [ 10.0, 9.0, 508.0, 52.0 ],
					"grad2" : [ 1.0, 0.952941, 0.031373, 0.301961 ],
					"patching_rect" : [ 14.0, 12.0, 495.0, 52.0 ],
					"presentation" : 1,
					"id" : "obj-21",
					"mode" : 1,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-130", 0 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-130", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 0 ],
					"destination" : [ "obj-129", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-125", 0 ],
					"destination" : [ "obj-123", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-122", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 0 ],
					"destination" : [ "obj-109", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-121", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-49", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-96", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-102", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-382", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-95", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 739.0, 256.0, 579.021423, 256.0, 579.021423, 176.0, 184.042847, 176.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.2, 1.0, 1.0 ],
					"midpoints" : [ 1023.042847, 223.059357, 930.252563, 223.059357 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-110", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.2, 1.0, 1.0 ],
					"midpoints" : [ 169.042847, 222.559357, 77.252563, 222.559357 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-35", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 1 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [ 553.5, 608.0, 539.5, 608.0, 539.5, 256.0, 553.5, 256.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-108", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-62", 1 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1055.5, 232.752304, 930.252563, 232.752304 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 0 ],
					"destination" : [ "obj-110", 0 ],
					"hidden" : 0,
					"midpoints" : [ 184.042847, 230.752304, 77.252563, 230.752304 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 1 ],
					"destination" : [ "obj-110", 0 ],
					"hidden" : 0,
					"midpoints" : [ 141.5, 216.752304, 77.252563, 216.752304 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-111", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 0 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-35", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 1 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 0,
					"midpoints" : [ 141.5, 216.239151, 29.441589, 216.239151 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 994.5, 215.239151, 882.441589, 215.239151 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 1 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [ 994.5, 215.752304, 930.252563, 215.752304 ]
				}

			}
 ]
	}

}
