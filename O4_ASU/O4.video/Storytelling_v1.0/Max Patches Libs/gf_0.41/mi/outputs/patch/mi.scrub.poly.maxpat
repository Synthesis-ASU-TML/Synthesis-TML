{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 992.0, 287.0, 529.0, 514.0 ],
		"bglocked" : 0,
		"defrect" : [ 992.0, 287.0, 529.0, 514.0 ],
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
		"title" : ".scrub.poly (1)",
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p route thispoly",
					"presentation_rect" : [ 187.0, 221.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 187.0, 215.0, 85.0, 19.0 ],
					"id" : "obj-29",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 616.0, 592.0, 158.0, 202.0 ],
						"bglocked" : 0,
						"defrect" : [ 616.0, 592.0, 158.0, 202.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 21.0, 111.0, 34.0, 19.0 ],
									"id" : "obj-6",
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"fontsize" : 11.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0thispoly",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 35.0, 65.0, 77.0, 19.0 ],
									"id" : "obj-9",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 11.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "==",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 21.0, 88.0, 32.5, 19.0 ],
									"id" : "obj-5",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 11.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 21.0, 133.0, 112.0, 19.0 ],
									"id" : "obj-4",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 11.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 21.0, 42.0, 112.0, 19.0 ],
									"id" : "obj-3",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 11.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 21.0, 157.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 21.0, 13.0, 25.0, 25.0 ],
									"id" : "obj-1",
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
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
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
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1scrub.time",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 187.0, 192.0, 80.0, 19.0 ],
					"id" : "obj-30",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 11.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p route thispoly",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 11.0, 56.0, 85.0, 19.0 ],
					"id" : "obj-26",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 616.0, 592.0, 158.0, 202.0 ],
						"bglocked" : 0,
						"defrect" : [ 616.0, 592.0, 158.0, 202.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 21.0, 111.0, 34.0, 19.0 ],
									"id" : "obj-6",
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"fontsize" : 11.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0thispoly",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 35.0, 65.0, 77.0, 19.0 ],
									"id" : "obj-9",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 11.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "==",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 21.0, 88.0, 32.5, 19.0 ],
									"id" : "obj-5",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 11.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 21.0, 133.0, 112.0, 19.0 ],
									"id" : "obj-4",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 11.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 21.0, 42.0, 112.0, 19.0 ],
									"id" : "obj-3",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 11.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 21.0, 157.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 21.0, 13.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
 ]
					}
,
					"saved_object_attributes" : 					{
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
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1scrub.autotime",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 11.0, 33.0, 102.0, 19.0 ],
					"id" : "obj-25",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 11.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 1 1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 11.0, 108.0, 50.0, 19.0 ],
					"id" : "obj-20",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 11.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p detect restart",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 78.0, 201.0, 84.0, 19.0 ],
					"id" : "obj-5",
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 1098.0, 404.0, 226.0, 251.0 ],
						"bglocked" : 0,
						"defrect" : [ 1098.0, 404.0, 226.0, 251.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route detectrestart",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 35.0, 28.0, 100.0, 19.0 ],
									"id" : "obj-1",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 11.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #1.scrub",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 35.0, 6.0, 59.0, 19.0 ],
									"id" : "obj-9",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 11.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 35.0, 88.0, 32.5, 19.0 ],
									"id" : "obj-8",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 11.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 208.0, 25.0, 25.0 ],
									"id" : "obj-7",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 35.0, 183.0, 23.0, 19.0 ],
									"id" : "obj-6",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 11.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 35.0, 159.0, 34.0, 19.0 ],
									"id" : "obj-5",
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"fontsize" : 11.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change -1",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 35.0, 135.0, 59.0, 19.0 ],
									"id" : "obj-4",
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial",
									"fontsize" : 11.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "< 200.",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 35.0, 111.0, 41.0, 19.0 ],
									"id" : "obj-3",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 11.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 49.0, 53.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-8", 0 ],
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
						"default_fontsize" : 11.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 100.",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 11.0, 227.0, 43.0, 19.0 ],
					"id" : "obj-24",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"fontsize" : 11.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p smooth",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 11.0, 201.0, 57.0, 19.0 ],
					"id" : "obj-6",
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 277.0, 44.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 277.0, 44.0, 640.0, 480.0 ],
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
									"text" : "change",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 50.0, 177.0, 100.0, 20.0 ],
									"id" : "obj-1",
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 50",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 274.0, 42.0, 20.0 ],
									"id" : "obj-6",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 50",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 100.0, 41.0, 20.0 ],
									"id" : "obj-35",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-8",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 372.0, 25.0, 25.0 ],
									"id" : "obj-10",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
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
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-10", 0 ],
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
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "to avoid initial error messages",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 253.0, 407.0, 158.0, 19.0 ],
					"id" : "obj-22",
					"fontname" : "Arial",
					"fontsize" : 11.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "buffer~ #1.1",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 251.0, 427.0, 70.0, 19.0 ],
					"id" : "obj-19",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"fontsize" : 11.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0tothispoly",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 356.0, 25.0, 79.0, 19.0 ],
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 11.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p declicker",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 11.0, 411.0, 71.0, 19.0 ],
					"id" : "obj-2",
					"outlettype" : [ "signal", "signal" ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 671.0, 206.0, 287.0, 193.0 ],
						"bglocked" : 0,
						"defrect" : [ 671.0, 206.0, 287.0, 193.0 ],
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
									"text" : "t 0",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 155.0, 47.0, 21.0, 17.0 ],
									"id" : "obj-14",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "fadeout before mute 1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 167.0, 67.0, 108.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mute 0 = fadein",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 76.0, 67.0, 80.0, 18.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route fadeout",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 155.0, 27.0, 64.0, 17.0 ],
									"id" : "obj-7",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #1.scrub",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 155.0, 7.0, 63.0, 18.0 ],
									"id" : "obj-6",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append 15",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 71.0, 86.0, 53.0, 17.0 ],
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 71.0, 49.0, 21.0, 17.0 ],
									"id" : "obj-4",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 71.0, 30.0, 32.5, 17.0 ],
									"id" : "obj-3",
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispoly~",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 44.0, 10.0, 46.0, 17.0 ],
									"id" : "obj-1",
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "line~",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 71.0, 107.0, 32.5, 17.0 ],
									"id" : "obj-31",
									"outlettype" : [ "signal", "bang" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 171.0, 15.0, 15.0 ],
									"id" : "obj-21",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 52.0, 112.0, 15.0, 15.0 ],
									"id" : "obj-18",
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 52.0, 148.0, 32.5, 17.0 ],
									"id" : "obj-12",
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 16.0, 148.0, 32.5, 17.0 ],
									"id" : "obj-16",
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 16.0, 112.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 16.0, 171.0, 16.0, 16.0 ],
									"id" : "obj-11",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 164.5, 84.5, 80.5, 84.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-21", 0 ],
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
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [ 80.5, 133.0, 39.0, 133.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 80.5, 133.5, 75.0, 133.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
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
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "in~ 1",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 113.0, 283.0, 36.0, 19.0 ],
					"id" : "obj-1",
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0thispoly",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 356.0, 69.0, 79.0, 19.0 ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"fontsize" : 11.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 444.0, 25.0, 57.0, 19.0 ],
					"id" : "obj-8",
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"fontsize" : 11.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispoly~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 356.0, 48.0, 62.0, 19.0 ],
					"id" : "obj-16",
					"outlettype" : [ "int", "int" ],
					"fontname" : "Arial",
					"fontsize" : 11.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p name",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 189.0, 285.0, 48.0, 19.0 ],
					"id" : "obj-15",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 145.0, 161.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 145.0, 161.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "#1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 14.0, 55.0, 32.5, 18.0 ],
									"id" : "obj-13",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf set %s.%i",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 14.0, 81.0, 77.0, 17.0 ],
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 14.0, 30.0, 48.0, 17.0 ],
									"id" : "obj-3",
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispoly~",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 72.0, 58.0, 46.0, 17.0 ],
									"id" : "obj-1",
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 14.0, 104.0, 25.0, 25.0 ],
									"id" : "obj-14",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 23.5, 52.0, 81.5, 52.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-13", 0 ],
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
						"default_fontsize" : 11.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route time",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 11.0, 130.0, 60.0, 19.0 ],
					"id" : "obj-10",
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"fontsize" : 11.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1.out1",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 42.0, 85.0, 64.0, 19.0 ],
					"id" : "obj-13",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 11.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p mixing",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 11.0, 386.0, 70.0, 19.0 ],
					"id" : "obj-39",
					"outlettype" : [ "signal", "signal" ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 632.0, 66.0, 471.0, 491.0 ],
						"bglocked" : 0,
						"defrect" : [ 632.0, 66.0, 471.0, 491.0 ],
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
									"text" : "scale 0. 1. 0. 1.",
									"numinlets" : 6,
									"numoutlets" : 1,
									"patching_rect" : [ 77.0, 276.0, 119.5, 17.0 ],
									"id" : "obj-19",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #1.scrub",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 137.0, 227.0, 63.0, 18.0 ],
									"id" : "obj-6",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route lhmin lhmax",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 137.0, 249.0, 88.0, 19.0 ],
									"id" : "obj-7",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 77.0, 115.0, 46.0, 17.0 ],
									"id" : "obj-17",
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #1.scrub",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 168.0, 15.0, 63.0, 18.0 ],
									"id" : "obj-9",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route indexmin indexmax exp",
									"numinlets" : 1,
									"numoutlets" : 4,
									"patching_rect" : [ 168.0, 36.0, 292.0, 19.0 ],
									"id" : "obj-14",
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 4",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 260.0, 294.0, 60.0, 19.0 ],
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr (exp($f2*$f1)-1)/(exp($f2)-1)",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 77.0, 326.0, 170.0, 19.0 ],
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"fontname" : "Geneva",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p .likelihoodnorm",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 145.0, 166.0, 87.0, 17.0 ],
									"id" : "obj-33",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 489.0, 613.0, 173.0, 129.0 ],
										"bglocked" : 0,
										"defrect" : [ 489.0, 613.0, 173.0, 129.0 ],
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
													"text" : "r #0thispoly",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 106.0, 61.0, 65.0, 17.0 ],
													"id" : "obj-7",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route likelihoodnorm",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 12.0, 46.0, 92.0, 17.0 ],
													"id" : "obj-10",
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #1.out2",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 12.0, 26.0, 54.0, 17.0 ],
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl nth",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 12.0, 80.0, 112.5, 17.0 ],
													"id" : "obj-11",
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 12.0, 102.0, 15.0, 15.0 ],
													"id" : "obj-1",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
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
									"maxclass" : "newobj",
									"text" : "p timenorm",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 77.0, 16.0, 56.0, 17.0 ],
									"id" : "obj-32",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 402.0, 658.0, 174.0, 126.0 ],
										"bglocked" : 0,
										"defrect" : [ 402.0, 658.0, 174.0, 126.0 ],
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
													"text" : "r #0thispoly",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 83.0, 32.0, 65.0, 17.0 ],
													"id" : "obj-7",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl nth",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 7.0, 53.0, 94.5, 17.0 ],
													"id" : "obj-11",
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route timenorm",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 7.0, 33.0, 71.0, 17.0 ],
													"id" : "obj-10",
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #1.out1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 7.0, 13.0, 54.0, 17.0 ],
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 7.0, 75.0, 15.0, 15.0 ],
													"id" : "obj-1",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-1", 0 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-10", 0 ],
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
									"maxclass" : "newobj",
									"text" : "t 0",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 259.0, 82.0, 21.0, 17.0 ],
									"id" : "obj-13",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 77.0, 82.0, 21.0, 17.0 ],
									"id" : "obj-8",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append 10",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 77.0, 362.0, 53.0, 17.0 ],
									"id" : "obj-30",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "line~ 1.",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 77.0, 393.0, 40.0, 17.0 ],
									"id" : "obj-31",
									"outlettype" : [ "signal", "bang" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 59.0, 472.0, 15.0, 15.0 ],
									"id" : "obj-21",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 59.0, 395.0, 15.0, 15.0 ],
									"id" : "obj-18",
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 59.0, 446.0, 32.5, 17.0 ],
									"id" : "obj-12",
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 23.0, 446.0, 32.5, 17.0 ],
									"id" : "obj-16",
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 23.0, 395.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 23.0, 472.0, 16.0, 16.0 ],
									"id" : "obj-11",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 0. 1.",
									"numinlets" : 3,
									"numoutlets" : 2,
									"patching_rect" : [ 77.0, 59.0, 201.0, 17.0 ],
									"id" : "obj-20",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 77.0, 189.0, 86.5, 17.0 ],
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-19", 4 ],
									"hidden" : 0,
									"midpoints" : [ 181.0, 271.5, 166.899994, 271.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-19", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 268.5, 109.0, 86.5, 109.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-12", 0 ],
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 269.5, 321.0, 237.5, 321.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 86.5, 431.5, 82.0, 431.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [ 86.5, 431.0, 46.0, 431.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 2 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 359.5, 175.5, 237.5, 175.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-20", 2 ],
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
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "out~ 2",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 61.0, 452.0, 42.0, 19.0 ],
					"id" : "obj-28",
					"fontname" : "Arial",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"fontsize" : 11.0,
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p rec",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 95.0, 315.0, 36.0, 19.0 ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 150.0, 710.0, 280.0, 224.0 ],
						"bglocked" : 0,
						"defrect" : [ 150.0, 710.0, 280.0, 224.0 ],
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
									"text" : "start recording immediately",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 33.0, 135.0, 131.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #1.scrub.rec",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 25.0, 120.0, 73.0, 17.0 ],
									"id" : "obj-10",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 154.0, 157.0, 22.0, 22.0 ],
									"id" : "obj-8",
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0thispoly",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 200.0, 51.0, 65.0, 17.0 ],
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #1.scrub",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 11.0, 49.0, 63.0, 18.0 ],
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route recwhilelearn",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 11.0, 70.0, 87.0, 17.0 ],
									"id" : "obj-3",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 104.0, 158.0, 22.0, 22.0 ],
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $i1==$i2 then 1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 139.0, 73.0, 80.0, 17.0 ],
									"id" : "obj-11",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 118.0, 72.0, 21.0, 17.0 ],
									"id" : "obj-22",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 118.0, 50.0, 39.5, 17.0 ],
									"id" : "obj-20",
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 11.0, 94.0, 125.5, 17.0 ],
									"id" : "obj-19",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route learn",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 118.0, 28.0, 54.0, 17.0 ],
									"id" : "obj-18",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #1.in",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 118.0, 7.0, 44.0, 17.0 ],
									"id" : "obj-17",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "record~ .scrub",
									"numinlets" : 3,
									"numoutlets" : 1,
									"patching_rect" : [ 11.0, 195.0, 76.0, 17.0 ],
									"id" : "obj-9",
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 34.5, 161.5, 20.5, 161.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [ 148.5, 91.0, 127.0, 91.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 113.5, 187.0, 20.5, 187.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 163.5, 193.5, 20.5, 193.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
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
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "out~ 1",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 11.0, 451.0, 45.0, 19.0 ],
					"id" : "obj-12",
					"fontname" : "Arial",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"fontsize" : 11.0,
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p play",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 189.0, 353.0, 43.0, 19.0 ],
					"id" : "obj-14",
					"outlettype" : [ "signal", "signal" ],
					"fontname" : "Arial",
					"color" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
					"fontsize" : 11.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 771.0, 269.0, 300.0, 362.0 ],
						"bglocked" : 0,
						"defrect" : [ 771.0, 269.0, 300.0, 362.0 ],
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
									"text" : "r #1.scrub",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 25.0, 17.0, 63.0, 18.0 ],
									"id" : "obj-32",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0.",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 182.0, 231.0, 50.0, 17.0 ],
									"id" : "obj-21",
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "snapshot~ 20",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 181.0, 212.0, 65.0, 17.0 ],
									"id" : "obj-14",
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1.scrup.playsync",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 182.0, 250.0, 97.0, 17.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route playvol",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 174.0, 289.0, 62.0, 17.0 ],
									"id" : "obj-19",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #1.scrub",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 174.0, 269.0, 63.0, 18.0 ],
									"id" : "obj-20",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route play playwhilelearn",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 25.0, 40.0, 110.0, 17.0 ],
									"id" : "obj-18",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "name",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 168.0, 41.0, 20.0 ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 115.0, 72.0, 55.5, 17.0 ],
									"id" : "obj-15",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~ 0.2",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 148.0, 317.0, 34.0, 17.0 ],
									"id" : "obj-13",
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~ 0.2",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 114.0, 317.0, 34.0, 17.0 ],
									"id" : "obj-12",
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p learn",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 151.0, 46.0, 47.0, 20.0 ],
									"id" : "obj-3",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 1141.0, 524.0, 163.0, 144.0 ],
										"bglocked" : 0,
										"defrect" : [ 1141.0, 524.0, 163.0, 144.0 ],
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
													"text" : "r #0thispoly",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 73.0, 57.0, 65.0, 17.0 ],
													"id" : "obj-7",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route learn",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 22.0, 31.0, 54.0, 17.0 ],
													"id" : "obj-14",
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "==",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 22.0, 78.0, 70.0, 17.0 ],
													"id" : "obj-9",
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #1.in",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 22.0, 9.0, 44.0, 17.0 ],
													"id" : "obj-13",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 22.0, 99.0, 25.0, 25.0 ],
													"id" : "obj-4",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-4", 0 ],
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
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 148.0, 343.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 187.0, 150.0, 18.0, 17.0 ],
									"id" : "obj-2",
									"outlettype" : [ "stop" ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 306.0, 177.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 306.0, 177.0 ],
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
													"text" : "t stop",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 83.0, 87.0, 36.0, 17.0 ],
													"id" : "obj-1",
													"outlettype" : [ "stop" ],
													"fontname" : "Arial",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 83.0, 65.0, 32.0, 17.0 ],
													"id" : "obj-2",
													"outlettype" : [ "bang", "" ],
													"fontname" : "Arial",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus switch",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 14.0, 43.0, 79.0, 17.0 ],
													"id" : "obj-3",
													"outlettype" : [ "", "int" ],
													"fontname" : "Arial",
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 83.0, 111.0, 15.0, 15.0 ],
													"id" : "obj-4",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "to avoid that the sound starts as soon as audio is turned on",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 8.0, 23.0, 277.0, 17.0 ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"fontsize" : 9.0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
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
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-2", 0 ],
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
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 8.0, 150.0, 24.0, 24.0 ],
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 114.0, 342.0, 15.0, 15.0 ],
									"id" : "obj-6",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "stop",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 115.0, 119.0, 29.0, 15.0 ],
									"id" : "obj-7",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0, startloop",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 150.0, 119.0, 64.0, 15.0 ],
									"id" : "obj-8",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 115.0, 96.0, 88.0, 17.0 ],
									"id" : "obj-9",
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sig~ 1",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 145.0, 150.0, 38.0, 17.0 ],
									"id" : "obj-10",
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "groove~ .scrub 2",
									"numinlets" : 3,
									"numoutlets" : 3,
									"patching_rect" : [ 115.0, 193.0, 85.0, 17.0 ],
									"id" : "obj-11",
									"outlettype" : [ "signal", "signal", "signal" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 183.5, 311.0, 138.5, 311.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [ 183.5, 311.0, 172.5, 311.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 196.5, 188.0, 124.5, 188.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 159.5, 141.0, 124.5, 141.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 154.5, 171.0, 124.5, 171.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 17.5, 187.0, 124.5, 187.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 2 ],
									"destination" : [ "obj-14", 0 ],
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
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
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
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "append 200",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 11.0, 252.0, 71.0, 19.0 ],
					"id" : "obj-18",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 11.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 11.0, 288.0, 38.0, 19.0 ],
					"id" : "obj-21",
					"outlettype" : [ "signal", "bang" ],
					"fontname" : "Arial",
					"fontsize" : 11.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "play while learning",
					"frgb" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 198.0, 338.0, 114.0, 19.0 ],
					"id" : "obj-27",
					"fontname" : "Arial",
					"textcolor" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
					"fontsize" : 11.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p enable",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 31.0, 316.0, 54.0, 19.0 ],
					"id" : "obj-23",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 235.0, 162.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 235.0, 162.0 ],
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
									"text" : "loadbang",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 166.0, 46.0, 60.0, 20.0 ],
									"id" : "obj-3",
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "enable 1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 18.0, 74.0, 57.0, 18.0 ],
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "enable 0",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 78.0, 75.0, 57.0, 18.0 ],
									"id" : "obj-9",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel follow stop",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 18.0, 43.0, 139.0, 20.0 ],
									"id" : "obj-5",
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #1.in",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 18.0, 21.0, 55.0, 20.0 ],
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 101.0, 25.0, 25.0 ],
									"id" : "obj-22",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 87.5, 96.5, 27.5, 96.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-9", 0 ],
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-22", 0 ],
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
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p svp",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 11.0, 339.0, 70.0, 19.0 ],
					"id" : "obj-3",
					"outlettype" : [ "signal", "signal" ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 142.0, 107.0, 775.0, 612.0 ],
						"bglocked" : 0,
						"defrect" : [ 142.0, 107.0, 775.0, 612.0 ],
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
									"text" : "p remotecontrol",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 191.0, 369.0, 94.0, 20.0 ],
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 236.0, 243.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 236.0, 243.0 ],
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
													"maxclass" : "comment",
													"text" : "zero means all",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 107.0, 89.0, 82.0, 19.0 ],
													"id" : "obj-10",
													"fontname" : "Arial",
													"fontsize" : 11.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 96.0, 109.0, 35.0, 20.0 ],
													"id" : "obj-8",
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 14.0, 184.0, 192.0, 20.0 ],
													"id" : "obj-6",
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 14.0, 153.0, 36.0, 20.0 ],
													"id" : "obj-5",
													"outlettype" : [ "bang", "" ],
													"fontname" : "Arial",
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0thispoly",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 28.0, 86.0, 67.0, 19.0 ],
													"id" : "obj-7",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"fontsize" : 11.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "==",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 14.0, 109.0, 32.5, 20.0 ],
													"id" : "obj-4",
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 14.0, 43.0, 192.0, 20.0 ],
													"id" : "obj-2",
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #1.scrub.svp",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 14.0, 16.0, 96.0, 20.0 ],
													"id" : "obj-1",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 14.0, 211.0, 25.0, 25.0 ],
													"id" : "obj-3",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-4", 1 ],
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
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 23.5, 79.5, 105.5, 79.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [ 105.5, 140.5, 23.5, 140.5 ]
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
									"text" : "loadmess 1",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 61.0, 125.0, 57.0, 17.0 ],
									"id" : "obj-12",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"items" : [ "transmode", "time", ",", "transmode", "freq", ",", "transmode", "auto" ],
									"labelclick" : 1,
									"numoutlets" : 3,
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 136.0, 112.0, 82.0, 17.0 ],
									"id" : "obj-2",
									"outlettype" : [ "int", "", "" ],
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"items" : [ "sinmode", "vocoder", ",", "sinmode", "additive" ],
									"labelclick" : 1,
									"numoutlets" : 3,
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 204.0, 248.0, 88.0, 17.0 ],
									"id" : "obj-16",
									"outlettype" : [ "int", "", "" ],
									"fontname" : "Arial",
									"textcolor" : [ 0.65098, 0.0, 0.019608, 1.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 1",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 237.0, 81.0, 77.0, 17.0 ],
									"id" : "obj-17",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 200",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 419.0, 169.0, 89.0, 17.0 ],
									"id" : "obj-18",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"items" : [ "envmode", "trueenv", ",", "envmode", "lpc" ],
									"labelclick" : 1,
									"numoutlets" : 3,
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 204.0, 169.0, 88.0, 17.0 ],
									"id" : "obj-19",
									"outlettype" : [ "int", "", "" ],
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"items" : [ "envscale", "off", ",", "envscale", "on" ],
									"labelclick" : 1,
									"numoutlets" : 3,
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 225.0, 150.0, 67.0, 17.0 ],
									"id" : "obj-20",
									"outlettype" : [ "int", "", "" ],
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 100",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 564.0, 150.0, 72.0, 17.0 ],
									"id" : "obj-21",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 12",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 419.0, 188.0, 83.0, 17.0 ],
									"id" : "obj-22",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "lpcorder $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 188.0, 69.0, 15.0 ],
									"id" : "obj-23",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 371.0, 188.0, 46.0, 17.0 ],
									"id" : "obj-24",
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "LPC order (used for spectral envelope estimation)",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 420.0, 189.0, 333.0, 17.0 ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "envelope scaling (timbre and mean factor)",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 564.0, 151.0, 199.0, 17.0 ],
									"id" : "obj-26",
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 381.0, 150.0, 36.0, 17.0 ],
									"id" : "obj-27",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Arial",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "envscale $1 $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 150.0, 79.0, 15.0 ],
									"id" : "obj-28",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.01",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 430.0, 150.0, 41.0, 17.0 ],
									"id" : "obj-29",
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"items" : [ "envpres", "off", ",", "envpres", "on" ],
									"labelclick" : 1,
									"numoutlets" : 3,
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 154.0, 131.0, 64.0, 17.0 ],
									"id" : "obj-30",
									"outlettype" : [ "int", "", "" ],
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "maxfreq $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 169.0, 69.0, 15.0 ],
									"id" : "obj-31",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 371.0, 169.0, 46.0, 17.0 ],
									"id" : "obj-32",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Arial",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "maximal fundamental frequency (used for spectral envelope estimation)",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 420.0, 170.0, 333.0, 17.0 ],
									"id" : "obj-33",
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 419.0, 150.0, 143.0, 15.0 ],
									"id" : "obj-34",
									"outlettype" : [ "" ],
									"size" : 201.0,
									"orientation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "real-time control",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 334.0, 90.0, 112.0, 20.0 ],
									"id" : "obj-36",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sinusoids, noise",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 219.0, 282.0, 81.0, 17.0 ],
									"id" : "obj-38",
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 120",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 490.0, 130.0, 72.0, 17.0 ],
									"id" : "obj-39",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 120",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 490.0, 112.0, 72.0, 17.0 ],
									"id" : "obj-40",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 263.0, 339.0, 62.0, 17.0 ],
									"id" : "obj-41",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak remix 1. 1. 1. 0. 0.1",
									"numinlets" : 6,
									"numoutlets" : 1,
									"patching_rect" : [ 263.0, 319.0, 196.0, 17.0 ],
									"id" : "obj-42",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 7",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 538.0, 242.0, 77.0, 17.0 ],
									"id" : "obj-43",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 2",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 538.0, 278.0, 77.0, 17.0 ],
									"id" : "obj-44",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 0",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 538.0, 260.0, 77.0, 17.0 ],
									"id" : "obj-45",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "advanced features",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 632.0, 297.0, 92.0, 17.0 ],
									"id" : "obj-46",
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "windowing parameters",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 518.0, 297.0, 112.0, 17.0 ],
									"id" : "obj-47",
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"items" : [ 3, ",", 3.5, ",", 4, ",", 4.5, ",", 5, ",", 6 ],
									"numoutlets" : 3,
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 586.0, 277.0, 37.0, 17.0 ],
									"id" : "obj-49",
									"outlettype" : [ "int", "", "" ],
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"items" : [ 0, ",", 1, ",", 2, ",", 3, ",", 4 ],
									"numoutlets" : 3,
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 586.0, 259.0, 37.0, 17.0 ],
									"id" : "obj-50",
									"outlettype" : [ "int", "", "" ],
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"items" : [ 512, ",", 750, ",", 1024, ",", 1250, ",", 1500, ",", 1750, ",", 2048, ",", 2250, ",", 2500, ",", 2750, ",", 3000, ",", 3500, ",", 4096, ",", 5000, ",", 6000, ",", 7000, ",", 8192 ],
									"numoutlets" : 3,
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 586.0, 241.0, 37.0, 17.0 ],
									"id" : "obj-52",
									"outlettype" : [ "int", "", "" ],
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "oversamp $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 514.0, 278.0, 69.0, 15.0 ],
									"id" : "obj-53",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "fftover $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 525.0, 260.0, 58.0, 15.0 ],
									"id" : "obj-54",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "windowsize $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 506.0, 242.0, 77.0, 15.0 ],
									"id" : "obj-55",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"items" : [ "transpose", "off", ",", "transpose", "on" ],
									"labelclick" : 1,
									"numoutlets" : 3,
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 221.0, 112.0, 72.0, 17.0 ],
									"id" : "obj-62",
									"outlettype" : [ "int", "", "" ],
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"items" : [ "remix", "off", ",", "remix", "on" ],
									"labelclick" : 1,
									"numoutlets" : 3,
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 237.0, 229.0, 56.0, 17.0 ],
									"id" : "obj-63",
									"outlettype" : [ "int", "", "" ],
									"fontname" : "Arial",
									"textcolor" : [ 0.65098, 0.0, 0.019608, 1.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"items" : [ "shapeinv", "off", ",", "shapeinv", "on" ],
									"labelclick" : 1,
									"numoutlets" : 3,
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 634.0, 259.0, 67.0, 17.0 ],
									"id" : "obj-64",
									"outlettype" : [ "int", "", "" ],
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"items" : [ "stereopres", "off", ",", "stereopres", "on" ],
									"labelclick" : 1,
									"numoutlets" : 3,
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 634.0, 277.0, 77.0, 17.0 ],
									"id" : "obj-65",
									"outlettype" : [ "int", "", "" ],
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"items" : [ "envtrans", "off", ",", "envtrans", "on" ],
									"labelclick" : 1,
									"numoutlets" : 3,
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 225.0, 131.0, 68.0, 17.0 ],
									"id" : "obj-66",
									"outlettype" : [ "int", "", "" ],
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"items" : [ "transients", "off", ",", "transients", "on" ],
									"labelclick" : 1,
									"numoutlets" : 3,
									"types" : [  ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 634.0, 241.0, 76.0, 17.0 ],
									"id" : "obj-67",
									"outlettype" : [ "int", "", "" ],
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Note that the re-configuration of windowing parameters and processing features such as remixing and transient preservation will cause the re-initialisation of the SuperVP engine and may cause clicks when DSP is on.",
									"linecount" : 5,
									"frgb" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 530.0, 328.0, 218.0, 58.0 ],
									"id" : "obj-68",
									"fontname" : "Arial",
									"textcolor" : [ 0.713726, 0.0, 0.019608, 1.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 132.0, 219.0, 38.0, 17.0 ],
									"id" : "obj-70",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Arial",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 10",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 448.0, 229.0, 66.0, 17.0 ],
									"id" : "obj-77",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "error",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 445.0, 337.0, 35.0, 17.0 ],
									"id" : "obj-78",
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.01",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 448.0, 298.0, 41.0, 17.0 ],
									"id" : "obj-79",
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 448.0, 229.0, 19.0, 86.0 ],
									"id" : "obj-80",
									"outlettype" : [ "" ],
									"size" : 101.0,
									"orientation" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "remix 1. 1. 1. 0. 0.1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 319.0, 167.0, 15.0 ],
									"id" : "obj-81",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 419.0, 131.0, 143.0, 15.0 ],
									"id" : "obj-100",
									"outlettype" : [ "" ],
									"size" : 241.0,
									"orientation" : 1,
									"mult" : 10.0,
									"min" : -1200.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 371.0, 131.0, 46.0, 17.0 ],
									"id" : "obj-101",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Arial",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "envtrans $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 131.0, 69.0, 15.0 ],
									"id" : "obj-102",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "remixing of",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 238.0, 269.0, 62.0, 17.0 ],
									"id" : "obj-103",
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 419.0, 113.0, 143.0, 15.0 ],
									"id" : "obj-104",
									"outlettype" : [ "" ],
									"size" : 241.0,
									"orientation" : 1,
									"mult" : 10.0,
									"min" : -1200.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 371.0, 113.0, 46.0, 17.0 ],
									"id" : "obj-105",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Arial",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "transpose $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 113.0, 69.0, 15.0 ],
									"id" : "obj-106",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "entirely based on SuperVP by Axel Roebel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 99.0, 62.0, 198.0, 17.0 ],
									"id" : "obj-114",
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Max/MSP integration by Norbert Schnell",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 99.0, 75.0, 195.0, 17.0 ],
									"id" : "obj-115",
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "supervp.scrub~",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 99.0, 11.0, 190.0, 34.0 ],
									"id" : "obj-119",
									"fontname" : "Arial",
									"fontsize" : 24.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "advanced phase vocoder position controled player module",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 99.0, 43.0, 356.0, 20.0 ],
									"id" : "obj-120",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 20.0, 80.0, 80.0 ],
									"id" : "obj-121",
									"embed" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "supervp.scrub~ sound 2 2250 0 4 @transients on @stereopres off",
									"linecount" : 2,
									"numinlets" : 2,
									"numoutlets" : 3,
									"patching_rect" : [ 5.0, 393.0, 281.0, 48.0 ],
									"id" : "obj-124",
									"outlettype" : [ "signal", "signal", "" ],
									"fontname" : "Arial",
									"fontsize" : 18.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "IRCAM - Centre Pompidou",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 99.0, 88.0, 126.0, 17.0 ],
									"id" : "obj-125",
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "spectral envelope transformation (in cent)",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 564.0, 132.0, 201.0, 17.0 ],
									"id" : "obj-126",
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pitch transposition (in cent)",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 565.0, 113.0, 135.0, 17.0 ],
									"id" : "obj-127",
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "relax",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 407.0, 337.0, 31.0, 17.0 ],
									"id" : "obj-128",
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "trans",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 370.0, 337.0, 31.0, 17.0 ],
									"id" : "obj-129",
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "noise",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 334.0, 337.0, 31.0, 17.0 ],
									"id" : "obj-130",
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 411.0, 229.0, 19.0, 86.0 ],
									"id" : "obj-131",
									"outlettype" : [ "" ],
									"size" : 101.0,
									"orientation" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.01",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 374.0, 298.0, 41.0, 17.0 ],
									"id" : "obj-132",
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 374.0, 229.0, 19.0, 86.0 ],
									"id" : "obj-133",
									"outlettype" : [ "" ],
									"size" : 101.0,
									"orientation" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.01",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 337.0, 298.0, 41.0, 17.0 ],
									"id" : "obj-134",
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 337.0, 229.0, 19.0, 86.0 ],
									"id" : "obj-135",
									"outlettype" : [ "" ],
									"size" : 101.0,
									"orientation" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.01",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 298.0, 41.0, 17.0 ],
									"id" : "obj-136",
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 229.0, 19.0, 86.0 ],
									"id" : "obj-137",
									"outlettype" : [ "" ],
									"size" : 101.0,
									"orientation" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sinusoids",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 284.0, 337.0, 51.0, 17.0 ],
									"id" : "obj-138",
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 101",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 229.0, 72.0, 17.0 ],
									"id" : "obj-139",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "phase vocoder configuration",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 517.0, 219.0, 181.0, 20.0 ],
									"id" : "obj-140",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "and transients",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 226.0, 295.0, 74.0, 17.0 ],
									"id" : "obj-141",
									"fontname" : "Arial",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"border" : 1,
									"bordercolor" : [ 0.937255, 0.937255, 0.937255, 1.0 ],
									"numoutlets" : 0,
									"bgcolor" : [ 0.968627, 0.968627, 0.968627, 1.0 ],
									"patching_rect" : [ 527.0, 325.0, 224.0, 67.0 ],
									"id" : "obj-142",
									"rounded" : 5
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 140.0, 448.0, 25.0, 25.0 ],
									"id" : "obj-51",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 26.0, 327.0, 25.0, 25.0 ],
									"id" : "obj-9",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 449.0, 25.0, 25.0 ],
									"id" : "obj-10",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-105", 0 ],
									"destination" : [ "obj-106", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-101", 0 ],
									"destination" : [ "obj-102", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-139", 0 ],
									"destination" : [ "obj-137", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-137", 0 ],
									"destination" : [ "obj-136", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-136", 0 ],
									"destination" : [ "obj-42", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-139", 0 ],
									"destination" : [ "obj-135", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-135", 0 ],
									"destination" : [ "obj-134", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-134", 0 ],
									"destination" : [ "obj-42", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-104", 0 ],
									"destination" : [ "obj-105", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-100", 0 ],
									"destination" : [ "obj-101", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-139", 0 ],
									"destination" : [ "obj-133", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-133", 0 ],
									"destination" : [ "obj-132", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-132", 0 ],
									"destination" : [ "obj-42", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-131", 0 ],
									"destination" : [ "obj-42", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-104", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-42", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 1 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 1 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-124", 1 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-124", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 1 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 1 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-102", 0 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 1 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 1 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 1 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-106", 0 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 1 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-124", 0 ],
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
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0thispoly",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 35.0, 150.0, 77.0, 19.0 ],
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 11.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl nth",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 11.0, 173.0, 43.0, 19.0 ],
					"id" : "obj-17",
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"fontsize" : 11.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 196.5, 278.5, 20.5, 278.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 87.5, 278.5, 20.5, 278.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 20.5, 196.0, 87.5, 196.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 1 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 453.5, 45.0, 365.5, 45.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 40.5, 335.5, 20.5, 335.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"color" : [ 0.407843, 0.658824, 0.909804, 1.0 ],
					"midpoints" : [ 198.5, 309.0, 198.5, 309.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"color" : [ 0.407843, 0.658824, 0.909804, 1.0 ],
					"midpoints" : [ 198.5, 308.0, 20.5, 308.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"color" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
					"midpoints" : [ 198.5, 437.0, 20.5, 437.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"color" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
					"midpoints" : [ 222.5, 444.0, 70.5, 444.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"color" : [ 0.407843, 0.658824, 0.909804, 1.0 ],
					"midpoints" : [ 198.5, 308.0, 104.5, 308.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-39", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
