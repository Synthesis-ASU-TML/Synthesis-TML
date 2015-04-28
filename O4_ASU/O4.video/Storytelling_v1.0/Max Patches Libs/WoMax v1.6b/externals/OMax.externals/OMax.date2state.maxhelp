{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 51.0, 44.0, 745.0, 345.0 ],
		"bglocked" : 0,
		"defrect" : [ 51.0, 44.0, 745.0, 345.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
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
					"maxclass" : "newobj",
					"text" : "conformpath slash boot",
					"outlettype" : [ "", "int" ],
					"hidden" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 802.0, 106.0, 135.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-16",
					"numoutlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf file://%s../doc/WoMaxDoc.html",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 802.0, 130.0, 209.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-14",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "path",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 752.0, 59.0, 34.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-12",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 752.0, 82.0, 69.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-9",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser $1",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 12.0,
					"patching_rect" : [ 802.0, 154.0, 131.0, 32.0 ],
					"numinlets" : 2,
					"id" : "obj-8",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Argment of both externals is the common name which serves as reference for all the other externals",
					"linecount" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 156.0, 293.0, 286.0, 34.0 ],
					"numinlets" : 1,
					"id" : "obj-124",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Types of Data",
					"fontsize" : 14.0,
					"patching_rect" : [ 607.0, 279.0, 100.0, 23.0 ],
					"numinlets" : 1,
					"id" : "obj-122",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Navigate in FO",
					"fontsize" : 14.0,
					"patching_rect" : [ 607.0, 173.0, 111.0, 23.0 ],
					"numinlets" : 1,
					"id" : "obj-119",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Suffix Link Tree",
					"fontsize" : 14.0,
					"patching_rect" : [ 607.0, 197.0, 118.0, 23.0 ],
					"numinlets" : 0,
					"color" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
					"id" : "obj-120",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 798.0, 44.0, 463.0, 556.0 ],
						"bglocked" : 0,
						"defrect" : [ 798.0, 44.0, 463.0, 556.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
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
									"text" : "*see G. Assayag and G. Bloch. Navigating the oracle: a heuristic approach. In ICMC’07",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 198.0, 503.0, 247.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-12",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Compute & output the pruned* SLT of the state with a smart navigation algorihm* ordering states by descending common suffix length",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 159.0, 219.0, 264.0, 48.0 ],
									"numinlets" : 1,
									"id" : "obj-9",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 97.0, 220.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "First argument is the name of FO to read\nSecond argument initialise minimal context for pruning",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 221.0, 322.0, 228.0, 48.0 ],
									"numinlets" : 1,
									"id" : "obj-31",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Root of the SLT",
									"fontsize" : 12.0,
									"patching_rect" : [ 27.0, 519.0, 93.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-29",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "States and associated Length of Repeated Suffix (LRS) in the tree",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 109.0, 456.0, 185.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-27",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Path to the Root",
									"fontsize" : 12.0,
									"patching_rect" : [ 193.0, 406.0, 95.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-25",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Compute & output the whole path from this state to state 0 of FO",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 142.0, 168.0, 194.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-22",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Compute & output the path from this state to the root of the pruned SLT",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 108.0, 108.0, 211.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-21",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Minimal Context (LRS) to prune the tree",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 227.0, 283.0, 136.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-19",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Compute & output the pruned* SLT of the state (NB: this state will be included in its tree but has no reason to be the root of it)",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 79.0, 56.0, 343.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-17",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Compute Suffix Link Trees (SLT) from FO",
									"fontsize" : 16.0,
									"patching_rect" : [ 18.0, 19.0, 307.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-97",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 25.0, 472.0, 43.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-103",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print Root",
									"fontsize" : 12.0,
									"patching_rect" : [ 25.0, 497.0, 63.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-14",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 193.0, 387.0, 50.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-13",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print States & LRS",
									"fontsize" : 12.0,
									"patching_rect" : [ 109.0, 434.0, 109.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-11",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 193.0, 283.0, 31.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-10",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 73.0, 162.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "fullpath $1",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 73.0, 189.0, 66.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-8",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 52.0, 103.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-6",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "path $1",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 52.0, 130.0, 51.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-5",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 25.0, 62.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OMax.SLT help 3",
									"outlettype" : [ "int", "list", "list" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 25.0, 325.0, 187.0, 20.0 ],
									"numinlets" : 2,
									"color" : [ 0.3, 1.0, 0.15, 1.0 ],
									"id" : "obj-1",
									"numoutlets" : 3,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "sorted $1",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 97.0, 247.0, 59.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-2",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.301961, 1.0, 0.145098, 0.2 ],
									"grad2" : [ 0.301961, 1.0, 0.145098, 1.0 ],
									"patching_rect" : [ 10.0, 8.0, 442.0, 537.0 ],
									"numinlets" : 1,
									"rounded" : 30,
									"id" : "obj-96",
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-103", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-103", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [ 202.5, 382.5, 233.5, 382.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
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
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Handle Time",
					"fontsize" : 14.0,
					"patching_rect" : [ 607.0, 226.0, 111.0, 23.0 ],
					"numinlets" : 1,
					"id" : "obj-117",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p State<2>Date",
					"fontsize" : 14.0,
					"patching_rect" : [ 607.0, 250.0, 109.0, 23.0 ],
					"numinlets" : 0,
					"color" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
					"id" : "obj-118",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 641.0, 140.0, 554.0, 354.0 ],
						"bglocked" : 0,
						"defrect" : [ 641.0, 140.0, 554.0, 354.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
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
									"text" : "... for any data sequence",
									"linecount" : 2,
									"fontsize" : 16.0,
									"patching_rect" : [ 176.0, 222.0, 124.0, 43.0 ],
									"numinlets" : 1,
									"id" : "obj-10",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set 14h",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 86.0, 228.0, 50.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-5",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set help",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 29.0, 228.0, 53.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-6",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "In the case of a sequence learnt at once in both FO and Data structure, end date will be the same as buffer reference.\nBut when building a new sequence from another one, these value will differ as the order of the states is changed",
									"linecount" : 6,
									"fontsize" : 12.0,
									"patching_rect" : [ 319.0, 19.0, 225.0, 89.0 ],
									"numinlets" : 1,
									"id" : "obj-54",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "end date (ms)",
									"fontsize" : 12.0,
									"patching_rect" : [ 321.0, 281.0, 85.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-47",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "start date (ms)",
									"fontsize" : 12.0,
									"patching_rect" : [ 429.0, 281.0, 86.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-48",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 429.0, 256.0, 56.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-49",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 321.0, 257.0, 56.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-50",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OMax.state2date new",
									"outlettype" : [ "int", "int" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 321.0, 230.0, 127.0, 20.0 ],
									"numinlets" : 1,
									"color" : [ 0.3, 1.0, 0.15, 1.0 ],
									"id" : "obj-51",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "end date (ms)",
									"fontsize" : 12.0,
									"patching_rect" : [ 343.0, 201.0, 85.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-40",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "start date (ms)",
									"fontsize" : 12.0,
									"patching_rect" : [ 452.0, 201.0, 86.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-41",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "state",
									"fontsize" : 12.0,
									"patching_rect" : [ 395.0, 120.0, 36.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-42",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 452.0, 176.0, 56.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-43",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 343.0, 177.0, 56.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-44",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 343.0, 120.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-45",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OMax.state2date help",
									"outlettype" : [ "int", "int" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 343.0, 150.0, 128.0, 20.0 ],
									"numinlets" : 1,
									"color" : [ 0.3, 1.0, 0.15, 1.0 ],
									"id" : "obj-46",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This conversion is meaningless for LETTERS.\nHowever for compatibility and testing purposes, LETTERS states always have a duration of 1 and the corresponding dates are store.",
									"linecount" : 4,
									"fontsize" : 12.0,
									"patching_rect" : [ 25.0, 277.0, 264.0, 62.0 ],
									"numinlets" : 1,
									"id" : "obj-27",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Convert ...",
									"fontsize" : 16.0,
									"patching_rect" : [ 29.0, 20.0, 83.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-25",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "... date  into state number",
									"linecount" : 2,
									"fontsize" : 16.0,
									"patching_rect" : [ 176.0, 64.0, 105.0, 43.0 ],
									"numinlets" : 1,
									"id" : "obj-22",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "... state number into date",
									"linecount" : 2,
									"fontsize" : 16.0,
									"patching_rect" : [ 176.0, 119.0, 124.0, 43.0 ],
									"numinlets" : 1,
									"id" : "obj-97",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "end date (ms)",
									"fontsize" : 12.0,
									"patching_rect" : [ 29.0, 194.0, 85.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-17",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "start date (ms)",
									"fontsize" : 12.0,
									"patching_rect" : [ 135.0, 194.0, 86.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-16",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "state",
									"fontsize" : 12.0,
									"patching_rect" : [ 81.0, 116.0, 36.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-15",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "date (ms)",
									"fontsize" : 12.0,
									"patching_rect" : [ 97.0, 61.0, 60.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-14",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 135.0, 169.0, 56.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-12",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 29.0, 170.0, 56.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-9",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 29.0, 116.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-8",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 29.0, 61.0, 65.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OMax.state2date 14h",
									"outlettype" : [ "int", "int" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 29.0, 143.0, 125.0, 20.0 ],
									"numinlets" : 1,
									"color" : [ 0.3, 1.0, 0.15, 1.0 ],
									"id" : "obj-2",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OMax.date2state 14h",
									"outlettype" : [ "int" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 29.0, 89.0, 125.0, 20.0 ],
									"numinlets" : 1,
									"color" : [ 0.3, 1.0, 0.15, 1.0 ],
									"id" : "obj-1",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.047059, 0.913725, 0.913725, 0.2 ],
									"grad2" : [ 0.047059, 0.913725, 0.913725, 0.215686 ],
									"patching_rect" : [ 8.0, 8.0, 538.0, 338.0 ],
									"numinlets" : 1,
									"rounded" : 30,
									"id" : "obj-99",
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [ 352.5, 145.0, 330.5, 145.0 ]
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
									"source" : [ "obj-51", 1 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 1 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-44", 0 ],
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-12", 0 ],
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 95.5, 257.901917, 20.90192, 257.901917, 20.90192, 138.464111, 38.5, 138.464111 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 95.5, 262.0, 13.80384, 262.0, 13.80384, 84.464104, 38.5, 84.464104 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 38.5, 257.901917, 20.35288, 257.901917, 20.35288, 138.464111, 38.5, 138.464111 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 38.5, 262.0, 13.228505, 262.0, 13.228505, 84.464104, 38.5, 84.464104 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print oracle",
					"fontsize" : 12.0,
					"patching_rect" : [ 26.0, 298.0, 70.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-116",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print data",
					"fontsize" : 12.0,
					"patching_rect" : [ 453.0, 298.0, 61.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-115",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Read Structures",
					"fontsize" : 14.0,
					"patching_rect" : [ 607.0, 120.0, 110.0, 23.0 ],
					"numinlets" : 1,
					"id" : "obj-114",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Write Structures",
					"fontsize" : 14.0,
					"patching_rect" : [ 607.0, 67.0, 111.0, 23.0 ],
					"numinlets" : 1,
					"id" : "obj-112",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Read & Render",
					"fontsize" : 14.0,
					"patching_rect" : [ 607.0, 144.0, 120.0, 23.0 ],
					"numinlets" : 0,
					"color" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
					"id" : "obj-110",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 49.0, 438.0, 873.0, 435.0 ],
						"bglocked" : 0,
						"defrect" : [ 49.0, 438.0, 873.0, 435.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
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
									"text" : "Change the Oracle &/or Data to read",
									"fontsize" : 14.0,
									"patching_rect" : [ 570.0, 16.0, 237.0, 23.0 ],
									"numinlets" : 1,
									"id" : "obj-8",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set new",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 514.0, 18.0, 52.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-7",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set 14h",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 451.0, 18.0, 50.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-4",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set help",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 386.0, 18.0, 53.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-2",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Data Sequence",
									"linecount" : 2,
									"fontsize" : 16.0,
									"patching_rect" : [ 750.0, 308.0, 85.0, 43.0 ],
									"numinlets" : 1,
									"id" : "obj-98",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Factror Oracle",
									"fontsize" : 16.0,
									"patching_rect" : [ 276.0, 321.0, 116.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-97",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Retrieve Information for State",
									"fontsize" : 14.0,
									"patching_rect" : [ 48.0, 16.0, 194.0, 23.0 ],
									"numinlets" : 1,
									"id" : "obj-95",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 14.0,
									"patching_rect" : [ 247.0, 16.0, 55.0, 23.0 ],
									"numinlets" : 1,
									"id" : "obj-93",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Bang when Done",
									"fontsize" : 12.0,
									"patching_rect" : [ 317.0, 401.0, 102.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-82",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Data",
									"fontsize" : 12.0,
									"patching_rect" : [ 580.0, 343.0, 40.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-79",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 513.0, 318.0, 50.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-78",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print Data",
									"fontsize" : 12.0,
									"patching_rect" : [ 513.0, 343.0, 63.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-76",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Section & Phrase",
									"fontsize" : 12.0,
									"patching_rect" : [ 639.0, 248.0, 102.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-75",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print Section & Phrase",
									"fontsize" : 12.0,
									"patching_rect" : [ 574.0, 285.0, 130.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-74",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 605.0, 259.0, 22.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-73",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 575.0, 259.0, 22.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-72",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack",
									"outlettype" : [ "int", "int" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 575.0, 235.0, 49.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-71",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 210.0, 157.0, 50.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-70",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print Buffer Reference & Duration",
									"fontsize" : 12.0,
									"patching_rect" : [ 636.0, 210.0, 188.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-64",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Buffer Reference & Duration",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 747.0, 167.0, 102.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-65",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 696.0, 184.0, 43.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-66",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 636.0, 184.0, 56.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-67",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack",
									"outlettype" : [ "int", "int" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 636.0, 160.0, 79.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-68",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print State",
									"fontsize" : 12.0,
									"patching_rect" : [ 698.0, 130.0, 65.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-56",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "State Number",
									"fontsize" : 12.0,
									"patching_rect" : [ 745.0, 106.0, 85.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-57",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 698.0, 106.0, 43.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-58",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print Suffix & LRS",
									"fontsize" : 12.0,
									"patching_rect" : [ 148.0, 284.0, 105.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-55",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print State",
									"fontsize" : 12.0,
									"patching_rect" : [ 271.0, 130.0, 65.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-54",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "State Number",
									"fontsize" : 12.0,
									"patching_rect" : [ 318.0, 106.0, 85.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-53",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Reverse Suffixes & LRS",
									"fontsize" : 12.0,
									"patching_rect" : [ 86.0, 349.0, 139.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-51",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "List of Transitions",
									"fontsize" : 12.0,
									"patching_rect" : [ 210.0, 202.0, 102.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-50",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Suffix & LRS",
									"fontsize" : 12.0,
									"patching_rect" : [ 222.0, 258.0, 76.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-48",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print Reverse Suffixes",
									"fontsize" : 12.0,
									"patching_rect" : [ 86.0, 326.0, 128.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-46",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 195.0, 258.0, 22.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-45",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 148.0, 258.0, 43.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-44",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack",
									"outlettype" : [ "int", "int" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 148.0, 233.0, 66.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-43",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print Transitions",
									"fontsize" : 12.0,
									"patching_rect" : [ 210.0, 180.0, 95.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-42",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print done",
									"fontsize" : 12.0,
									"patching_rect" : [ 247.0, 401.0, 64.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-38",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 271.0, 106.0, 43.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-36",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OMax.render help",
									"outlettype" : [ "bang", "", "list", "list", "int" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 451.0, 82.0, 266.0, 20.0 ],
									"numinlets" : 1,
									"color" : [ 0.3, 1.0, 0.15, 1.0 ],
									"id" : "obj-20",
									"numoutlets" : 5,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OMax.read help",
									"outlettype" : [ "bang", "list", "list", "list", "int" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 24.0, 82.0, 266.0, 20.0 ],
									"numinlets" : 1,
									"color" : [ 0.3, 1.0, 0.15, 1.0 ],
									"id" : "obj-17",
									"numoutlets" : 5,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.047059, 0.913725, 0.913725, 0.2 ],
									"grad2" : [ 0.301961, 1.0, 0.145098, 1.0 ],
									"patching_rect" : [ 436.0, 58.0, 420.0, 320.0 ],
									"numinlets" : 1,
									"rounded" : 30,
									"id" : "obj-106",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.301961, 1.0, 0.145098, 0.2 ],
									"grad2" : [ 0.301961, 1.0, 0.145098, 1.0 ],
									"patching_rect" : [ 16.0, 58.0, 400.0, 320.0 ],
									"numinlets" : 1,
									"rounded" : 30,
									"id" : "obj-107",
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-17", 4 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [ 33.5, 390.0, 256.5, 390.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [ 460.5, 390.0, 256.5, 390.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 2 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 1 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 2 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 157.0, 230.0, 144.0, 230.0, 144.0, 280.0, 157.5, 280.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 4 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 1 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 3 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 3 ],
									"destination" : [ "obj-70", 1 ],
									"hidden" : 0,
									"midpoints" : [ 218.75, 153.5, 250.5, 153.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 3 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [ 218.75, 153.0, 206.0, 153.0, 206.0, 177.0, 219.5, 177.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 3 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [ 645.75, 156.0, 631.0, 156.0, 631.0, 207.0, 645.5, 207.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 1 ],
									"destination" : [ "obj-73", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 2 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 2 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [ 584.0, 232.0, 569.0, 232.0, 569.0, 282.0, 583.5, 282.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 0,
									"midpoints" : [ 522.25, 312.0, 508.0, 312.0, 508.0, 340.0, 522.5, 340.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-78", 1 ],
									"hidden" : 0,
									"midpoints" : [ 522.25, 312.0, 553.5, 312.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 256.5, 71.0, 33.5, 71.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 256.5, 71.5, 460.5, 71.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 395.5, 51.5, 33.5, 51.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 460.5, 51.5, 33.5, 51.5 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Datatype",
					"fontsize" : 14.0,
					"patching_rect" : [ 607.0, 303.0, 78.0, 23.0 ],
					"numinlets" : 0,
					"color" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
					"id" : "obj-109",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 798.0, 44.0, 463.0, 556.0 ],
						"bglocked" : 0,
						"defrect" : [ 798.0, 44.0, 463.0, 556.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
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
									"text" : "<== Same parameters\n       as MIDI_MONO data",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 225.0, 627.0, 157.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-57",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OMax.oracle ghost",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 37.0, 845.0, 111.0, 20.0 ],
									"numinlets" : 1,
									"color" : [ 0.3, 1.0, 0.15, 1.0 ],
									"id" : "obj-55",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OMax.learn ghost",
									"outlettype" : [ "int" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 37.0, 816.0, 105.0, 20.0 ],
									"numinlets" : 1,
									"color" : [ 0.3, 1.0, 0.15, 1.0 ],
									"id" : "obj-54",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend add",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 37.0, 779.0, 78.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-53",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.301961, 1.0, 0.145098, 0.2 ],
									"grad2" : [ 0.301961, 1.0, 0.145098, 1.0 ],
									"patching_rect" : [ 19.0, 805.0, 406.0, 70.0 ],
									"numinlets" : 1,
									"rounded" : 30,
									"id" : "obj-56",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "buffer reference (ms)",
									"fontsize" : 12.0,
									"patching_rect" : [ 173.0, 673.0, 120.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-42",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "duration (ms)",
									"fontsize" : 12.0,
									"patching_rect" : [ 187.0, 697.0, 79.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-44",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "section number",
									"fontsize" : 12.0,
									"patching_rect" : [ 120.0, 650.0, 91.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-46",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "phrase number",
									"fontsize" : 12.0,
									"patching_rect" : [ 92.0, 627.0, 90.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-48",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 115.0, 673.0, 57.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-49",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 143.0, 697.0, 43.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-50",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 87.0, 650.0, 32.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-51",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 59.0, 627.0, 32.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-52",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 0 100 530",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 59.0, 723.0, 103.0, 20.0 ],
									"numinlets" : 4,
									"id" : "obj-40",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"outlettype" : [ "", "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 37.0, 751.0, 41.0, 20.0 ],
									"numinlets" : 2,
									"id" : "obj-38",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "spectral coefficients",
									"fontsize" : 12.0,
									"patching_rect" : [ 60.0, 515.0, 114.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-34",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 129.0, 561.0, 43.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-33",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 152.0, 538.0, 43.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-32",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 106.0, 538.0, 43.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-30",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 83.0, 561.0, 43.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-28",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 60.0, 538.0, 43.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-15",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pitch is yet given",
									"fontsize" : 12.0,
									"patching_rect" : [ 74.0, 473.0, 97.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-11",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 37.0, 473.0, 37.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-12",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 60 0. 0. 0. 0. 0.",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 37.0, 588.0, 134.0, 20.0 ],
									"numinlets" : 6,
									"id" : "obj-9",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Spectral Coefficients",
									"fontsize" : 16.0,
									"patching_rect" : [ 274.0, 458.0, 156.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-8",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Monophonic MIDI",
									"fontsize" : 16.0,
									"patching_rect" : [ 294.0, 15.0, 137.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "In SPECTRAL type, a third argument can be provided to set the number of coefficients (default 7)",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 225.0, 523.0, 211.0, 48.0 ],
									"numinlets" : 1,
									"id" : "obj-5",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OMax.data ghost SPECTRAL 5",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 225.0, 498.0, 178.0, 20.0 ],
									"numinlets" : 1,
									"color" : [ 0.3, 1.0, 0.15, 1.0 ],
									"id" : "obj-4",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Currently, it would not make sense to mix different types of data in a single FO. However you can build in parallel as many FO you like.",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 157.0, 361.0, 261.0, 48.0 ],
									"numinlets" : 1,
									"id" : "obj-47",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Only pitch is required to add states.\nIf absents, parameters will be set to 0.",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 186.0, 292.0, 217.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-45",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "add $1",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 130.0, 299.0, 47.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-43",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "buffer reference (ms)",
									"fontsize" : 12.0,
									"patching_rect" : [ 189.0, 214.0, 120.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-39",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "duration (ms)",
									"fontsize" : 12.0,
									"patching_rect" : [ 198.0, 238.0, 79.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-41",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "section number",
									"fontsize" : 12.0,
									"patching_rect" : [ 140.0, 191.0, 91.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-36",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "phrase number",
									"fontsize" : 12.0,
									"patching_rect" : [ 117.0, 168.0, 90.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-37",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend add",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 37.0, 298.0, 78.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-35",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "velocity",
									"fontsize" : 12.0,
									"patching_rect" : [ 98.0, 145.0, 52.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-31",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pitch",
									"fontsize" : 12.0,
									"patching_rect" : [ 75.0, 122.0, 37.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-29",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 131.0, 214.0, 57.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-27",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 154.0, 238.0, 43.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-26",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 107.0, 191.0, 32.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-25",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 84.0, 168.0, 32.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-24",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 60.0, 145.0, 37.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-23",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 37.0, 122.0, 37.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-22",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 60 96 0 0 100 530",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 37.0, 266.0, 136.0, 20.0 ],
									"numinlets" : 6,
									"id" : "obj-19",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The type of data is given by the second argument (if not present LETTERS is used)",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 249.0, 75.0, 162.0, 48.0 ],
									"numinlets" : 1,
									"id" : "obj-16",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Currently, three types of data are handled : letters, monophonic MIDI pitch and spectral coefficients",
									"linecount" : 3,
									"fontsize" : 12.0,
									"patching_rect" : [ 17.0, 46.0, 198.0, 48.0 ],
									"numinlets" : 1,
									"id" : "obj-14",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Store other types of data",
									"fontsize" : 16.0,
									"patching_rect" : [ 16.0, 15.0, 192.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-97",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<== Parameters for\n       MIDI_MONO data",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 247.0, 156.0, 137.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-10",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OMax.learn 14h",
									"outlettype" : [ "int" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 37.0, 361.0, 96.0, 20.0 ],
									"numinlets" : 1,
									"color" : [ 0.3, 1.0, 0.15, 1.0 ],
									"id" : "obj-3",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OMax.oracle 14h",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 37.0, 389.0, 102.0, 20.0 ],
									"numinlets" : 1,
									"color" : [ 0.3, 1.0, 0.15, 1.0 ],
									"id" : "obj-2",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OMax.data 14h MIDI_MONO",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 249.0, 47.0, 165.0, 20.0 ],
									"numinlets" : 1,
									"color" : [ 0.3, 1.0, 0.15, 1.0 ],
									"id" : "obj-1",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.301961, 1.0, 0.145098, 0.2 ],
									"grad2" : [ 0.301961, 1.0, 0.145098, 1.0 ],
									"patching_rect" : [ 19.0, 345.0, 406.0, 79.0 ],
									"numinlets" : 1,
									"rounded" : 30,
									"id" : "obj-96",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.047059, 0.913725, 0.913725, 0.2 ],
									"grad2" : [ 0.047059, 0.913725, 0.913725, 0.215686 ],
									"patching_rect" : [ 7.0, 6.0, 431.0, 430.0 ],
									"numinlets" : 1,
									"rounded" : 30,
									"id" : "obj-99",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.047059, 0.913725, 0.913725, 0.2 ],
									"grad2" : [ 0.047059, 0.913725, 0.913725, 0.215686 ],
									"patching_rect" : [ 7.0, 448.0, 435.0, 434.0 ],
									"numinlets" : 1,
									"rounded" : 30,
									"id" : "obj-6",
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-19", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-19", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-19", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-19", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [ 46.5, 291.0, 139.5, 291.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-40", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-40", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-40", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-38", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-9", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-9", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-9", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-9", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-9", 1 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Learn & Build",
					"fontsize" : 14.0,
					"patching_rect" : [ 607.0, 91.0, 107.0, 23.0 ],
					"numinlets" : 0,
					"color" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
					"id" : "obj-108",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 477.0, 337.0, 718.0, 450.0 ],
						"bglocked" : 0,
						"defrect" : [ 477.0, 337.0, 718.0, 450.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
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
									"text" : "First argument is the name of source sequence, second argument is the name of the new sequence to write",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 238.0, 400.0, 308.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-60",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Object argument is the name of the FO and Data Sequence to write",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 16.0, 209.0, 199.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-57",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 530.0, 189.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-55",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 530.0, 361.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-54",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 560.0, 361.0, 50.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-78",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 604.0, 334.0, 22.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-73",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 574.0, 334.0, 22.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-72",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack",
									"outlettype" : [ "int", "int" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 574.0, 310.0, 49.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-71",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 655.0, 287.0, 43.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-66",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 595.0, 287.0, 56.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-52",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack",
									"outlettype" : [ "int", "int" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 595.0, 263.0, 79.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-68",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 617.0, 239.0, 43.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-58",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OMax.render new",
									"outlettype" : [ "bang", "", "list", "list", "int" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 530.0, 215.0, 106.0, 20.0 ],
									"numinlets" : 1,
									"color" : [ 0.3, 1.0, 0.15, 1.0 ],
									"id" : "obj-51",
									"numoutlets" : 5,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Add states from the source Sequence (help) to the new one",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 324.0, 56.0, 181.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-50",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Build a new Data Sequence from existing one",
									"fontsize" : 16.0,
									"patching_rect" : [ 242.0, 15.0, 340.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-49",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Get current size and duration of the new Sequence",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 286.0, 111.0, 167.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-48",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "see Datatype to learn form other data than letters",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 42.0, 327.0, 157.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-46",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Add states to both FO and Data structures",
									"linecount" : 2,
									"fontsize" : 16.0,
									"patching_rect" : [ 19.0, 16.0, 169.0, 43.0 ],
									"numinlets" : 1,
									"id" : "obj-97",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Number in new Sequence",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 341.0, 334.0, 88.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-41",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Number in help Sequence",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 247.0, 358.0, 89.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-40",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "State Added",
									"fontsize" : 12.0,
									"patching_rect" : [ 316.0, 309.0, 74.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-38",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Current Size of the new Sequence",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 345.0, 236.0, 108.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-36",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Current Duration of the new Sequence",
									"linecount" : 2,
									"fontsize" : 12.0,
									"patching_rect" : [ 351.0, 194.0, 114.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-32",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 351.0, 172.0, 56.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-67",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 247.0, 334.0, 43.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-30",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 293.0, 334.0, 43.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-29",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack",
									"outlettype" : [ "int", "int" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 247.0, 309.0, 65.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-28",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print new",
									"fontsize" : 12.0,
									"patching_rect" : [ 299.0, 274.0, 59.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-26",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 299.0, 243.0, 43.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-27",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print new",
									"fontsize" : 12.0,
									"patching_rect" : [ 530.0, 152.0, 59.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-24",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 530.0, 127.0, 43.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-25",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "State just added",
									"fontsize" : 12.0,
									"patching_rect" : [ 116.0, 145.0, 96.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-22",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print added",
									"fontsize" : 12.0,
									"patching_rect" : [ 69.0, 170.0, 71.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-116",
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 69.0, 145.0, 43.0, 20.0 ],
									"numinlets" : 1,
									"triangle" : 0,
									"id" : "obj-103",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "reset",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 546.0, 78.0, 37.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-18",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "size",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 530.0, 56.0, 32.5, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-16",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 247.0, 56.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-12",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i 0",
									"outlettype" : [ "int" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 247.0, 81.0, 41.5, 20.0 ],
									"numinlets" : 2,
									"id" : "obj-9",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 270.0, 56.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 2,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 263.0, 117.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-5",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OMax.data new LETTERS",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 530.0, 102.0, 152.0, 20.0 ],
									"numinlets" : 1,
									"color" : [ 0.3, 1.0, 0.15, 1.0 ],
									"id" : "obj-3",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OMax.build help new",
									"outlettype" : [ "list", "int", "int" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 247.0, 148.0, 123.0, 20.0 ],
									"numinlets" : 1,
									"color" : [ 0.3, 1.0, 0.15, 1.0 ],
									"id" : "obj-2",
									"numoutlets" : 3,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "add c",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 112.0, 71.0, 40.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-8",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "add b",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 69.0, 71.0, 41.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-10",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "add a",
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 26.0, 71.0, 41.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-35",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OMax.learn help",
									"outlettype" : [ "int" ],
									"fontsize" : 12.0,
									"patching_rect" : [ 69.0, 120.0, 99.0, 20.0 ],
									"numinlets" : 1,
									"color" : [ 0.3, 1.0, 0.15, 1.0 ],
									"id" : "obj-1",
									"numoutlets" : 1,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.301961, 1.0, 0.145098, 0.2 ],
									"grad2" : [ 0.301961, 1.0, 0.145098, 1.0 ],
									"patching_rect" : [ 9.0, 7.0, 214.0, 236.0 ],
									"numinlets" : 1,
									"rounded" : 30,
									"id" : "obj-96",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.047059, 0.913725, 0.913725, 0.2 ],
									"grad2" : [ 0.047059, 0.913725, 0.913725, 0.215686 ],
									"patching_rect" : [ 9.0, 7.0, 214.0, 236.0 ],
									"numinlets" : 1,
									"rounded" : 30,
									"id" : "obj-99",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.047059, 0.913725, 0.913725, 0.2 ],
									"grad2" : [ 0.047059, 0.913725, 0.913725, 0.215686 ],
									"patching_rect" : [ 232.0, 7.0, 477.0, 434.0 ],
									"numinlets" : 1,
									"rounded" : 30,
									"id" : "obj-44",
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-25", 0 ],
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
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 1 ],
									"destination" : [ "obj-78", 1 ],
									"hidden" : 0,
									"midpoints" : [ 561.25, 357.0, 600.5, 357.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 2 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 3 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 4 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 1 ],
									"destination" : [ "obj-73", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 1 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 1 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-26", 0 ],
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
									"source" : [ "obj-103", 0 ],
									"destination" : [ "obj-116", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-103", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Current Size",
					"fontsize" : 12.0,
					"patching_rect" : [ 501.0, 273.0, 76.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-105",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Current Size",
					"fontsize" : 12.0,
					"patching_rect" : [ 73.0, 273.0, 76.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-104",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 26.0, 273.0, 43.0, 20.0 ],
					"numinlets" : 1,
					"triangle" : 0,
					"id" : "obj-103",
					"numoutlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 453.0, 273.0, 43.0, 20.0 ],
					"numinlets" : 1,
					"triangle" : 0,
					"id" : "obj-102",
					"numoutlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Data Sequence Structure",
					"linecount" : 3,
					"fontsize" : 16.0,
					"patching_rect" : [ 465.0, 139.0, 85.0, 62.0 ],
					"numinlets" : 1,
					"id" : "obj-98",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "FO Structure",
					"fontsize" : 16.0,
					"patching_rect" : [ 101.0, 194.0, 102.0, 25.0 ],
					"numinlets" : 1,
					"id" : "obj-97",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Get Current Size",
					"fontsize" : 12.0,
					"patching_rect" : [ 306.0, 150.0, 98.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-91",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "size",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 265.0, 150.0, 32.5, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-90",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Write a .dot File",
					"fontsize" : 12.0,
					"patching_rect" : [ 26.0, 134.0, 92.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-88",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Erase all",
					"fontsize" : 12.0,
					"patching_rect" : [ 326.0, 182.0, 56.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-86",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Initialise Structures",
					"fontsize" : 12.0,
					"patching_rect" : [ 281.0, 119.0, 114.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-84",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "write help.dot",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 26.0, 161.0, 82.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-33",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "write",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 40.0, 187.0, 36.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-31",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "reset",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 286.0, 182.0, 37.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-29",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "init",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 245.0, 119.0, 32.5, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-27",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "OMax.data help",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 453.0, 248.0, 95.0, 20.0 ],
					"numinlets" : 1,
					"color" : [ 0.3, 1.0, 0.15, 1.0 ],
					"id" : "obj-13",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "OMax.oracle help",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 26.0, 248.0, 105.0, 20.0 ],
					"numinlets" : 1,
					"color" : [ 0.3, 1.0, 0.15, 1.0 ],
					"id" : "obj-10",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_description",
					"text" : "This collection of 9 externals ports the Factor Oracle (FO) structure in Max5 with linkage to a Data Sequence structure. It allows to build and navigate in FO and build new Data Sequences.",
					"linecount" : 2,
					"fontsize" : 11.595187,
					"patching_rect" : [ 12.0, 63.0, 500.0, 33.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"fontlink" : 1,
					"textovercolor" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"presentation_rect" : [ 15.0, 15.0, 166.729889, 14.666666 ],
					"bgovercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 3,
					"fontsize" : 12.754705,
					"bgoveroncolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"patching_rect" : [ 561.078918, 24.0, 166.729889, 14.666666 ],
					"text" : "open code documentation",
					"spacing_x" : 0.0,
					"bgoncolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"underline" : 1,
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"textcolor" : [ 0.152941, 0.47451, 0.333333, 1.0 ],
					"spacing_y" : 0.0,
					"textoncolor" : [ 0.27, 0.35, 0.47, 1.0 ],
					"id" : "obj-5",
					"numoutlets" : 3,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_digest",
					"text" : "Implement Factor Oracle for OMax",
					"fontsize" : 12.754705,
					"patching_rect" : [ 12.0, 35.0, 485.0, 21.0 ],
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "OMax.externals",
					"fontface" : 3,
					"fontsize" : 20.871338,
					"patching_rect" : [ 12.0, 9.0, 485.0, 30.0 ],
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.301961, 1.0, 0.145098, 0.2 ],
					"grad2" : [ 0.301961, 1.0, 0.145098, 1.0 ],
					"patching_rect" : [ 15.0, 105.0, 403.0, 222.0 ],
					"numinlets" : 1,
					"rounded" : 30,
					"id" : "obj-96",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.047059, 0.913725, 0.913725, 0.2 ],
					"grad2" : [ 0.047059, 0.913725, 0.913725, 0.215686 ],
					"patching_rect" : [ 232.0, 105.0, 351.0, 222.0 ],
					"numinlets" : 1,
					"rounded" : 30,
					"id" : "obj-99",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"grad1" : [ 0.301961, 1.0, 0.145098, 1.0 ],
					"mode" : 1,
					"grad2" : [ 0.85, 0.85, 0.85, 1.0 ],
					"patching_rect" : [ 7.0, 6.0, 731.0, 52.0 ],
					"numinlets" : 1,
					"background" : 1,
					"id" : "obj-6",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 254.5, 228.0, 35.5, 228.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 295.5, 234.0, 35.5, 234.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 274.5, 240.0, 35.5, 240.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-103", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 0 ],
					"destination" : [ "obj-116", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-115", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-102", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 274.5, 240.0, 462.5, 240.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 295.5, 234.0, 462.5, 234.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 254.5, 228.0, 462.5, 228.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [ 570.578918, 47.333332, 761.5, 47.333332 ]
				}

			}
 ]
	}

}
