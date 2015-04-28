{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 2.0, 46.0, 800.0, 690.0 ],
		"bglocked" : 0,
		"defrect" : [ 2.0, 46.0, 800.0, 690.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 9.0,
		"default_fontface" : 0,
		"default_fontname" : "Lucida Grande",
		"gridonopen" : 0,
		"gridsize" : [ 12.0, 12.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 170.0, 516.0, 69.0, 15.0 ],
					"text" : "clientwindow",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lucida Grande",
					"fontsize" : 9.0,
					"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 57.5, 516.0, 114.0, 17.0 ],
					"text" : "and it's fully pattr-ized:",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"arrowbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"arrowcolor" : [ 0.756863, 0.756863, 0.756863, 1.0 ],
					"arrowframe" : 0,
					"arrowlink" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"framecolor" : [ 0.698039, 0.698039, 0.698039, 0.415686 ],
					"hltcolor" : [ 0.909804, 0.788235, 0.670588, 1.0 ],
					"id" : "obj-61",
					"items" : [ "icst.floatui", ",", "icst.intui", ",", "icst.button", ",", "-", ",", "ambimonitor" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 578.0, 622.0, 157.0, 19.0 ],
					"pattrmode" : 1,
					"textcolor" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"textcolor2" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Lucida Grande Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
					"id" : "obj-79",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 574.0, 601.0, 55.0, 18.0 ],
					"text" : "see also:",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ],
					"varname" : "autohelp_see_title"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"hidden" : 1,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 498.0, 581.0, 115.0, 98.0 ],
						"bglocked" : 0,
						"defrect" : [ 498.0, 581.0, 115.0, 98.0 ],
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
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 11.0, 61.0, 62.0, 20.0 ],
									"text" : "pcontrol"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 11.0, 37.0, 88.0, 20.0 ],
									"text" : "prepend help"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 11.0, 9.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-3", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 647.0, 645.0, 19.0, 19.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"hidden" : 1,
					"id" : "obj-58",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 59.0, 620.762512, 75.0, 37.0 ],
					"text" : "window size 2 46 802 736, window exec",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 4.0,
					"hidden" : 1,
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 60.0, 641.587524, 31.0, 11.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"hidden" : 1,
					"id" : "obj-71",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 725.0, 87.0, 195.0, 26.0 ],
					"text" : ";\rmax launch_browser http://www.icst.net",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bgoncolor" : [ 0.54902, 0.54902, 0.54902, 0.0 ],
					"bgovercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bgoveroncolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"border" : 0,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"id" : "obj-48",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 696.0, 57.0, 77.0, 19.0 ],
					"rounded" : 0.0,
					"text" : "www.icst.net",
					"textcolor" : [ 0.0, 0.145098, 0.717647, 1.0 ],
					"textoncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textovercolor" : [ 0.85098, 0.0, 0.0, 1.0 ],
					"textoveroncolor" : [ 0.0, 0.298039, 1.0, 1.0 ],
					"underline" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Lucida Grande",
					"fontsize" : 10.0,
					"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 573.0, 453.0, 86.0, 18.0 ],
					"text" : "more features:",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 490.0, 282.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 490.0, 282.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 12.0, 12.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "icst.button",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 116.0, 127.0, 16.0, 16.0 ],
									"varname" : "celllock[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "icst.button",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 95.0, 127.0, 16.0, 16.0 ],
									"varname" : "celllock[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "icst.button",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 74.0, 127.0, 16.0, 16.0 ],
									"varname" : "celllock[0]"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.882353, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 73.0, 149.0, 94.0, 17.0 ],
									"text" : "pak celllocks 0 0 0",
									"textcolor" : [ 0.47451, 0.47451, 0.47451, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 357.0, 182.745667, 56.0, 17.0 ],
									"restore" : 									{
										"celllock[0]" : [ 0 ],
										"celllock[1]" : [ 0 ],
										"celllock[2]" : [ 0 ],
										"listui_test[11]" : [ "non-editable", -0.29, "non-editable" ]
									}
,
									"text" : "autopattr",
									"varname" : "u046002646"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lucida Grande Bold",
									"fontsize" : 11.0,
									"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
									"id" : "obj-84",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 42.0, 37.0, 75.0, 19.0 ],
									"text" : "cell editing",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
									"id" : "obj-54",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 78.0, 90.0, 240.0, 17.0 ],
									"text" : "inputing a new type will change he cell's character",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
									"id" : "obj-53",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 78.0, 73.0, 328.0, 17.0 ],
									"text" : "you can prevent certain cell from being edited by mouse or key input.",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
									"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"gradient" : 1,
									"id" : "obj-78",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 74.0, 36.0, 15.0 ],
									"text" : "reset",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"celllocks" : [ 0, 1, 0 ],
									"celltypes" : [ "s", 0.0, "s" ],
									"cellwidth" : [ 80.0, 50.0, 80.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ "non-editable", 0.0, "non-editable" ],
									"focusbgcolor" : [ 1.0, 0.866667, 0.992157, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.0, 0.498039, 1.0 ],
									"focusfontstyle" : 0,
									"fontname" : "Lucida Grande",
									"id" : "obj-77",
									"labelbgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
									"labelbordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"labelfontstyle" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "cell #2 is editable",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 40.0, 182.745667, 213.0, 18.0 ],
									"prefixtext" : "/designator/name/first",
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"textalignment" : 1,
									"varname" : "listui_test[11]"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-5", 3 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [ 82.5, 176.372833, 49.5, 176.372833 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [ 49.5, 114.0, 49.5, 114.0 ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-5", 2 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 582.0, 544.0, 148.0, 17.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}
,
					"text" : "p cell editing",
					"textcolor" : [ 0.266667, 0.266667, 0.266667, 1.0 ],
					"varname" : "editing"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 640.0, 490.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 640.0, 490.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 12.0, 12.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
									"id" : "obj-15",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 334.0, 139.0, 277.0, 17.0 ],
									"text" : "set the target cell for the input (also an offset for listinput)",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
									"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
									"fontname" : "Lucida Grande",
									"fontsize" : 9.0,
									"gradient" : 1,
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 400.0, 187.0, 67.0, 15.0 ],
									"text" : "inputoffset 0",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 134.0, 24.0, 17.0 ],
									"text" : "or:",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
									"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"gradient" : 1,
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 270.0, 164.0, 32.0, 15.0 ],
									"text" : "tiger",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
									"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"gradient" : 1,
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 219.0, 164.0, 45.0, 15.0 ],
									"text" : "tortoise",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
									"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"gradient" : 1,
									"id" : "obj-29",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 174.0, 164.0, 41.0, 15.0 ],
									"text" : "toucan",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
									"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
									"fontname" : "Lucida Grande",
									"fontsize" : 9.0,
									"gradient" : 1,
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 52.0, 103.0, 103.0, 15.0 ],
									"text" : "celltypes s s 0 0 0. 0.",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 79.0, 240.0, 17.0 ],
									"text" : "cell types are set using atoms, like so:",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
									"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"gradient" : 1,
									"id" : "obj-36",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 52.0, 164.0, 33.0, 15.0 ],
									"text" : "4096",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 0.709804, 0.694118, 0.545098, 1.0 ],
									"bordersize" : 0.0,
									"borderstyle" : 4,
									"focusbgcolor" : [ 1.0, 0.501961, 0.0, 0.101961 ],
									"focusbordersize" : 0.0,
									"focusborderstyle" : 4,
									"fontname" : "Lucida Grande Bold",
									"fontsize" : 9.0,
									"id" : "obj-35",
									"maxclass" : "icst.floatui",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 110.0, 182.0, 52.0, 17.0 ],
									"precision" : 4
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
									"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"gradient" : 1,
									"id" : "obj-24",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 110.0, 164.0, 54.0, 15.0 ],
									"text" : "3.141593",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 0.709804, 0.694118, 0.545098, 1.0 ],
									"bordersize" : 0.0,
									"borderstyle" : 4,
									"focusbgcolor" : [ 1.0, 0.501961, 0.0, 0.101961 ],
									"focusbordersize" : 0.0,
									"focusborderstyle" : 4,
									"fontname" : "Lucida Grande Bold",
									"fontsize" : 9.0,
									"id" : "obj-3",
									"maxclass" : "icst.intui",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 52.0, 182.0, 37.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
									"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"gradient" : 1,
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 290.0, 376.0, 120.0, 15.0 ],
									"text" : "defaults aed 1 0. 0. 1. 1",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.0,
									"id" : "obj-6",
									"maxclass" : "icst.button",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"off_down_bg_color" : [ 0.831373, 0.752941, 0.658824, 1.0 ],
									"off_down_fg_color" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"off_up_fg_color" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"offdisplaytext" : "reset",
									"on_down_draw1_color" : [ 0.65098, 0.65098, 0.65098, 1.0 ],
									"on_down_fg_color" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"on_up_fg_color" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"outlettype" : [ "", "" ],
									"outmess" : "reset",
									"patching_rect" : [ 419.0, 377.0, 54.0, 16.0 ],
									"usedisplaytext" : 1,
									"useoutmess" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
									"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"gradient" : 1,
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 52.0, 376.0, 232.0, 15.0 ],
									"text" : "defaults helium neon argon krypton xenon radon",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lucida Grande Bold",
									"fontsize" : 11.0,
									"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 53.0, 346.0, 67.0, 19.0 ],
									"text" : "defaults",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 532.0, 252.745667, 56.0, 17.0 ],
									"restore" : 									{
										"listui_test[11]" : [ "tiger", 0.32, 0, 0, 0.0, "tortoise" ],
										"listui_test[1]" : [ 0 ],
										"listui_test[2]" : [ "helium", "neon", "argon", "krypton", "xenon", "radon" ]
									}
,
									"text" : "autopattr",
									"varname" : "u516002648"
								}

							}
, 							{
								"box" : 								{
									"arrowbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"arrowcolor" : [ 0.756863, 0.756863, 0.756863, 1.0 ],
									"arrowframe" : 0,
									"arrowlink" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"framecolor" : [ 0.698039, 0.698039, 0.698039, 0.415686 ],
									"hltcolor" : [ 0.909804, 0.788235, 0.670588, 1.0 ],
									"id" : "obj-88",
									"items" : [ "helium", ",", "neon", ",", "argon", ",", "krypton", ",", "xenon", ",", "radon" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 300.0, 215.0, 70.0, 17.0 ],
									"pattrmode" : 1,
									"textcolor" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
									"textcolor2" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"types" : [  ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lucida Grande Bold",
									"fontsize" : 11.0,
									"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
									"id" : "obj-84",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 48.0, 99.0, 19.0 ],
									"text" : "cell atom types",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.0,
									"id" : "obj-82",
									"maxclass" : "icst.button",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"off_up_textcolor" : [ 0.235294, 0.235294, 0.235294, 1.0 ],
									"offdisplaytext" : "ella",
									"outlettype" : [ "", "" ],
									"outmess" : "ella",
									"patching_rect" : [ 185.0, 215.0, 38.0, 18.0 ],
									"usedisplaytext" : 1,
									"useoutmess" : 1
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.0,
									"id" : "obj-81",
									"maxclass" : "icst.button",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"off_up_textcolor" : [ 0.235294, 0.235294, 0.235294, 1.0 ],
									"offdisplaytext" : "lulu",
									"outlettype" : [ "", "" ],
									"outmess" : "lulu",
									"patching_rect" : [ 224.0, 215.0, 37.0, 18.0 ],
									"usedisplaytext" : 1,
									"useoutmess" : 1
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.0,
									"id" : "obj-76",
									"maxclass" : "icst.button",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"off_up_textcolor" : [ 0.235294, 0.235294, 0.235294, 1.0 ],
									"offdisplaytext" : "lilly",
									"outlettype" : [ "", "" ],
									"outmess" : "lilly",
									"patching_rect" : [ 109.0, 215.0, 37.0, 18.0 ],
									"usedisplaytext" : 1,
									"useoutmess" : 1
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.0,
									"id" : "obj-72",
									"maxclass" : "icst.button",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"off_up_textcolor" : [ 0.235294, 0.235294, 0.235294, 1.0 ],
									"offdisplaytext" : "UBU",
									"outlettype" : [ "", "" ],
									"outmess" : "UBU",
									"patching_rect" : [ 147.0, 215.0, 37.0, 18.0 ],
									"usedisplaytext" : 1,
									"useoutmess" : 1
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.0,
									"id" : "obj-63",
									"maxclass" : "icst.button",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"off_up_textcolor" : [ 0.235294, 0.235294, 0.235294, 1.0 ],
									"offdisplaytext" : "anna",
									"outlettype" : [ "", "" ],
									"outmess" : "anna",
									"patching_rect" : [ 262.0, 215.0, 37.0, 18.0 ],
									"usedisplaytext" : 1,
									"useoutmess" : 1
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.0,
									"id" : "obj-61",
									"maxclass" : "icst.button",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"off_up_textcolor" : [ 0.235294, 0.235294, 0.235294, 1.0 ],
									"offdisplaytext" : "otto",
									"outlettype" : [ "", "" ],
									"outmess" : "otto",
									"patching_rect" : [ 70.0, 215.0, 38.0, 18.0 ],
									"usedisplaytext" : 1,
									"useoutmess" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
									"id" : "obj-54",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 89.0, 134.0, 197.0, 17.0 ],
									"text" : "by inputing a a value of a new atom type",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
									"id" : "obj-53",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 430.0, 469.0, 17.0 ],
									"text" : "resets to default types (all floats set to zero, unless default values attribute is set to something else)",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
									"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
									"fontname" : "Lucida Grande",
									"fontsize" : 9.0,
									"gradient" : 1,
									"id" : "obj-34",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 52.0, 284.0, 358.0, 15.0 ],
									"text" : "/designator/name/first tiger 0.32 0 0 0. tortoise",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"celllocks" : [ 1, 1, 1, 1, 1, 1 ],
									"celltypes" : [ "s", 0.0, 0, 0, 0.0, "s" ],
									"cellwidth" : [ 50.0, 50.0, 50.0, 50.0, 50.0, 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ "aed", 1, 0.0, 0.0, 1.0, 1 ],
									"focusbgcolor" : [ 1.0, 0.866667, 0.992157, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.0, 0.498039, 1.0 ],
									"focusfontstyle" : 0,
									"fontname" : "Lucida Grande",
									"id" : "obj-77",
									"labelbgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
									"labelbordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"labelfontstyle" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "names",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 6,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 52.0, 252.745667, 350.0, 16.0 ],
									"prefixtext" : "/designator/name/first",
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"useprefix" : 1,
									"varname" : "listui_test[11]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 1.0,
									"borderstyle" : 4,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"celllocks" : [ 1 ],
									"celltypes" : [ 0 ],
									"cellwidth" : [ 30.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0 ],
									"focusbgcolor" : [ 1.0, 0.960784, 0.866667, 0.337255 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focusborderstyle" : 4,
									"focuscellbordercolor" : [ 1.0, 0.501961, 0.0, 0.603922 ],
									"focusfontstyle" : 0,
									"fontname" : "Lucida Grande Bold",
									"id" : "obj-57",
									"inputoffset" : 1,
									"labelbgcolor" : [ 0.94902, 0.94902, 0.94902, 0.0 ],
									"labelbordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"labelposition" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "input target cell",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"maximum" : 5.0,
									"numcells" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 382.0, 164.0, 139.0, 17.0 ],
									"prefixtext" : "inputoffset",
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"usemax" : 1,
									"usemin" : 1,
									"useprefix" : 1,
									"varname" : "listui_test[1]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"celllocks" : [ 1, 1, 1, 1, 1, 1 ],
									"celltypes" : [ "s", "s", "s", "s", "s", "s" ],
									"cellwidth" : [ 50.0, 50.0, 50.0, 50.0, 50.0, 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ "helium", "neon", "argon", "krypton", "xenon", "radon" ],
									"focusbgcolor" : [ 1.0, 0.866667, 0.992157, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.0, 0.498039, 1.0 ],
									"focusfontstyle" : 0,
									"fontname" : "Lucida Grande",
									"id" : "obj-8",
									"inputoffset" : 4,
									"labelbgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
									"labelbordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"labelfontstyle" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "names",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 6,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 52.0, 405.745667, 350.0, 16.0 ],
									"prefixtext" : "/designator/name/first",
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"useprefix" : 1,
									"varname" : "listui_test[2]"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [ 279.5, 202.372833, 61.5, 202.372833 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [ 228.5, 202.372833, 61.5, 202.372833 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [ 183.5, 202.372833, 61.5, 202.372833 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [ 119.5, 204.372833, 61.5, 204.372833 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 299.5, 397.872833, 61.5, 397.872833 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 1,
									"midpoints" : [ 391.5, 185.5, 457.5, 185.5 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [ 391.5, 235.372803, 61.5, 235.372803 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [ 428.5, 426.0, 52.0, 426.0, 52.0, 395.745667, 61.5, 395.745667 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [ 79.5, 235.372803, 61.5, 235.372803 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [ 271.5, 235.372803, 61.5, 235.372803 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 61.5, 396.872833, 61.5, 396.872833 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [ 156.5, 235.372803, 61.5, 235.372803 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 235.372803, 61.5, 235.372803 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-34", 1 ],
									"hidden" : 0,
									"midpoints" : [ 61.5, 276.372803, 400.5, 276.372803 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [ 233.5, 235.372803, 61.5, 235.372803 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [ 194.5, 235.372803, 61.5, 235.372803 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [ 335.0, 235.372803, 61.5, 235.372803 ],
									"source" : [ "obj-88", 1 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 582.0, 523.0, 148.0, 17.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}
,
					"text" : "p cell types & defaults",
					"textcolor" : [ 0.266667, 0.266667, 0.266667, 1.0 ],
					"varname" : "types&defaults"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 12.0, 12.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 1,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 493.0, 267.0, 59.5, 19.0 ],
									"restore" : 									{
										"listui_test[13]" : [ 0.0 ],
										"listui_test[1]" : [ 0.0, 0.0, 0.0, 1.0 ],
										"listui_test[2]" : [ 0.56, 1.0, 1.0 ],
										"listui_test[3]" : [ 1.63, 0.0, 0.0 ],
										"listui_test[4]" : [ 0.0, 0.0, 0.0 ],
										"listui_test[5]" : [ 400.0, 410.0 ],
										"listui_test[6]" : [ 400.0, 430.0 ]
									}
,
									"text" : "autopattr",
									"varname" : "u803002650"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lucida Grande Bold",
									"fontsize" : 11.0,
									"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.5, 38.0, 104.0, 19.0 ],
									"text" : "label and prefix",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lucida Grande",
									"fontsize" : 9.0,
									"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 56.5, 68.0, 477.0, 17.0 ],
									"text" : "labels are just that, the prefix text to output is different. but  the label text can also be set for output.",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "icst.button",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"off_down_fg_color" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"off_up_fg_color" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"offdisplaytext" : "reset",
									"on_down_draw1_color" : [ 0.65098, 0.65098, 0.65098, 1.0 ],
									"on_down_fg_color" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"on_up_fg_color" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"outlettype" : [ "", "" ],
									"outmess" : "reset",
									"patching_rect" : [ 455.0, 128.0, 54.0, 18.0 ],
									"usedisplaytext" : 1,
									"useoutmess" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
									"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"gradient" : 1,
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 244.0, 314.0, 144.0, 15.0 ],
									"text" : "scale 0.56 1. 1.",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 0.709804, 0.694118, 0.545098, 1.0 ],
									"bordersize" : 0.0,
									"borderstyle" : 4,
									"focusbgcolor" : [ 1.0, 0.501961, 0.0, 0.101961 ],
									"focusbordersize" : 0.0,
									"focusborderstyle" : 4,
									"fontname" : "Lucida Grande Bold",
									"fontsize" : 9.0,
									"id" : "obj-7",
									"maxclass" : "icst.floatui",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 184.0, 105.0, 52.0, 17.0 ],
									"precision" : 4,
									"usemax" : 1,
									"usemin" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
									"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"gradient" : 1,
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 183.0, 167.0, 177.0, 15.0 ],
									"text" : "erase_color 0. 0. 0. 1.",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
									"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"gradient" : 1,
									"id" : "obj-88",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 59.0, 167.0, 85.0, 15.0 ],
									"text" : "xfade 0.",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 0.709804, 0.694118, 0.545098, 1.0 ],
									"bordersize" : 0.0,
									"borderstyle" : 4,
									"focusbgcolor" : [ 1.0, 0.501961, 0.0, 0.101961 ],
									"focusbordersize" : 0.0,
									"focusborderstyle" : 4,
									"fontname" : "Lucida Grande Bold",
									"fontsize" : 9.0,
									"id" : "obj-87",
									"maxclass" : "icst.floatui",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 60.0, 105.0, 52.0, 17.0 ],
									"precision" : 4,
									"usemax" : 1,
									"usemin" : 1
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.890196, 0.890196, 0.890196, 1.0 ],
									"bordercode" : 1,
									"borderstyle" : 0,
									"borderwidth" : 3.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"cellgapwidth" : 0.0,
									"celllocks" : [ 1, 1 ],
									"celltypes" : [ 0.0, 0.0 ],
									"cellwidth" : [ 50.0, 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0, 0.0 ],
									"floatprecision" : 3,
									"focusbgcolor" : [ 1.0, 0.952941, 0.866667, 1.0 ],
									"focusbordercode" : 1,
									"focusbordersize" : 6.0,
									"focusborderstyle" : 6,
									"focusborderwidth" : 3.0,
									"focuscellbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"fontname" : "Lucida Grande Bold",
									"id" : "obj-14",
									"labelalignment" : 1,
									"labelbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"labelbordercode" : 1,
									"labelbordercolor" : [ 0.6, 0.54902, 0.501961, 0.501961 ],
									"labelborderwidth" : 2.0,
									"labelfontstyle" : 2,
									"labelprefix" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "position",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 2,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 400.0, 410.0, 173.0, 17.0 ],
									"prefixtext" : "position",
									"presentation_rect" : [ 400.0, 410.0, 0.0, 0.0 ],
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 0.447059, 0.0, 0.180392 ],
									"uselabel" : 1,
									"useprefix" : 1,
									"varname" : "listui_test[6]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.890196, 0.890196, 0.890196, 1.0 ],
									"bordercode" : 1,
									"borderstyle" : 0,
									"borderwidth" : 3.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"cellgapwidth" : 0.0,
									"celllocks" : [ 1, 1 ],
									"celltypes" : [ 0.0, 0.0 ],
									"cellwidth" : [ 50.0, 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0, 0.0 ],
									"floatprecision" : 3,
									"focusbgcolor" : [ 1.0, 0.952941, 0.866667, 1.0 ],
									"focusbordercode" : 1,
									"focusbordersize" : 6.0,
									"focusborderstyle" : 6,
									"focusborderwidth" : 3.0,
									"focuscellbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"fontname" : "Lucida Grande Bold",
									"id" : "obj-13",
									"labelalignment" : 1,
									"labelbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"labelbordercode" : 1,
									"labelbordercolor" : [ 0.6, 0.54902, 0.501961, 0.501961 ],
									"labelborderwidth" : 2.0,
									"labelfontstyle" : 2,
									"labelprefix" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "position",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 2,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 400.0, 430.0, 173.0, 17.0 ],
									"prefixtext" : "position",
									"presentation_rect" : [ 400.0, 430.0, 0.0, 0.0 ],
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 0.447059, 0.0, 0.180392 ],
									"uselabel" : 1,
									"useprefix" : 1,
									"varname" : "listui_test[5]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"celllocks" : [ 1, 1, 1 ],
									"celltypes" : [ 0.0, 0.0, 0.0 ],
									"cellwidth" : [ 50.0, 50.0, 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0, 0.0, 0.0 ],
									"floatprecision" : 3,
									"focusbgcolor" : [ 1.0, 0.952941, 0.866667, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"fontname" : "Lucida Grande Bold",
									"id" : "obj-10",
									"labelalignment" : 1,
									"labelbgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
									"labelbordercode" : 9,
									"labelbordercolor" : [ 0.6, 0.54902, 0.501961, 0.501961 ],
									"labelborderstyle" : 5,
									"labelprefix" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "position",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 205.0, 280.745667, 214.0, 17.0 ],
									"prefixtext" : "position",
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"useprefix" : 1,
									"varname" : "listui_test[4]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"celllocks" : [ 1, 1, 1 ],
									"celltypes" : [ 0.0, 0.0, 0.0 ],
									"cellwidth" : [ 50.0, 50.0, 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0, 0.0, 0.0 ],
									"floatprecision" : 3,
									"focusbgcolor" : [ 1.0, 0.952941, 0.866667, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"fontname" : "Lucida Grande Bold",
									"id" : "obj-9",
									"labelalignment" : 1,
									"labelbgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
									"labelbordercode" : 9,
									"labelbordercolor" : [ 0.6, 0.54902, 0.501961, 0.501961 ],
									"labelborderstyle" : 5,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "orientation",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 205.0, 262.745667, 214.0, 17.0 ],
									"prefixtext" : "rotate",
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"useprefix" : 1,
									"varname" : "listui_test[3]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"celllocks" : [ 1, 1, 1 ],
									"celltypes" : [ 0.0, 0.0, 0.0 ],
									"cellwidth" : [ 50.0, 50.0, 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0, 0.0, 0.0 ],
									"floatprecision" : 3,
									"focusbgcolor" : [ 1.0, 0.952941, 0.866667, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"fontname" : "Lucida Grande Bold",
									"id" : "obj-8",
									"labelalignment" : 1,
									"labelbgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
									"labelbordercode" : 9,
									"labelbordercolor" : [ 0.6, 0.54902, 0.501961, 0.501961 ],
									"labelborderstyle" : 5,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "size",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 205.0, 244.745667, 214.0, 17.0 ],
									"prefixtext" : "scale",
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"usemax" : 1,
									"usemin" : 1,
									"useprefix" : 1,
									"varname" : "listui_test[2]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.101961 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"celllocks" : [ 1, 1, 1, 1 ],
									"celltypes" : [ 0.0, 0.0, 0.0, 0.0 ],
									"cellwidth" : [ 50.0, 50.0, 50.0, 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0, 0.0, 0.0, 1.0 ],
									"focusbgcolor" : [ 1.0, 0.952941, 0.866667, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"fontname" : "Lucida Grande Bold",
									"id" : "obj-2",
									"labelbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"labelbordercode" : 5,
									"labelbordercolor" : [ 1.0, 0.6, 0.0, 1.0 ],
									"labelbordersize" : 16.0,
									"labelborderstyle" : 1,
									"labelsize" : [ 45.0, 12.0 ],
									"labeltext" : "background",
									"labeltextcolor" : [ 0.0, 0.0, 0.0, 0.501961 ],
									"maxclass" : "icst.listui",
									"numcells" : 4,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 183.0, 127.745667, 270.0, 18.0 ],
									"prefixtext" : "erase_color",
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"usemax" : 1,
									"usemin" : 1,
									"useprefix" : 1,
									"varname" : "listui_test[1]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"celllocks" : [ 1 ],
									"celltypes" : [ 0.0 ],
									"cellwidth" : [ 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0 ],
									"focusbgcolor" : [ 1.0, 0.952941, 0.866667, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"fontname" : "Lucida Grande",
									"id" : "obj-84",
									"labelbgcolor" : [ 1.0, 1.0, 1.0, 0.25098 ],
									"labelbordercolor" : [ 0.133333, 0.101961, 0.101961, 1.0 ],
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "mix",
									"labeltextcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 59.0, 127.745667, 88.0, 17.0 ],
									"prefixtext" : "xfade",
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"usemax" : 1,
									"usemin" : 1,
									"useprefix" : 1,
									"varname" : "listui_test[13]"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [ 464.5, 151.0, 174.0, 151.0, 174.0, 122.745667, 192.5, 122.745667 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.478431, 0.0, 0.501961 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 1,
									"midpoints" : [ 214.5, 313.372833, 378.5, 313.372833 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.478431, 0.0, 0.501961 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [ 279.5, 309.745667, 194.0, 309.745667, 194.0, 234.745667, 214.5, 234.745667 ],
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.478431, 0.0, 0.501961 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"midpoints" : [ 344.5, 309.745667, 195.5, 309.745667, 195.5, 259.745667, 214.5, 259.745667 ],
									"source" : [ "obj-10", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [ 512.166687, 398.0, 460.833344, 398.0, 460.833344, 398.0, 409.5, 398.0 ],
									"source" : [ "obj-13", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [ 460.833344, 456.0, 381.166656, 456.0, 381.166656, 399.0, 409.5, 399.0 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.478431, 0.0, 0.501961 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 409.5, 455.0, 387.5, 455.0, 387.5, 401.0, 409.5, 401.0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [ 512.166687, 461.0, 409.5, 461.0 ],
									"source" : [ "obj-14", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [ 460.833344, 430.0, 409.5, 430.0 ],
									"source" : [ "obj-14", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.478431, 0.0, 0.501961 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 409.5, 429.0, 409.5, 429.0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 1,
									"midpoints" : [ 192.5, 161.872833, 350.5, 161.872833 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.478431, 0.0, 0.501961 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [ 344.5, 322.245667, 214.5, 322.245667 ],
									"source" : [ "obj-8", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.478431, 0.0, 0.501961 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 1,
									"midpoints" : [ 214.5, 307.372833, 378.5, 307.372833 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.478431, 0.0, 0.501961 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"midpoints" : [ 279.5, 261.745667, 214.5, 261.745667 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-88", 1 ],
									"hidden" : 1,
									"midpoints" : [ 68.5, 157.372803, 134.5, 157.372803 ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.478431, 0.0, 0.501961 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [ 279.5, 280.245667, 214.5, 280.245667 ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.478431, 0.0, 0.501961 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 1,
									"midpoints" : [ 214.5, 305.372833, 378.5, 305.372833 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.478431, 0.0, 0.501961 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [ 344.5, 312.745667, 190.5, 312.745667, 190.5, 234.745667, 214.5, 234.745667 ],
									"source" : [ "obj-9", 2 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 582.0, 480.0, 148.0, 17.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}
,
					"text" : "p label_prefix",
					"textcolor" : [ 0.266667, 0.266667, 0.266667, 1.0 ],
					"varname" : "prefix"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"id" : "obj-92",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 49.0, 108.0, 33.0, 15.0 ],
					"text" : "clear",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.890196, 0.890196, 0.890196, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 52.0, 442.0, 64.0, 17.0 ],
					"text" : "prepend set",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 4.0,
					"hidden" : 1,
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 96.700012, 606.0, 27.0, 11.0 ],
					"text" : "loadbang",
					"varname" : "u626000356[1]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"hidden" : 1,
					"id" : "obj-75",
					"linecount" : 4,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 96.700012, 619.450012, 225.0, 48.0 ],
					"text" : "message gradient 1, message color 0.95 0.92 0.85 0.5, message bgcolor2 0.9 0.87 0.82 0.5, message textcolor 0.3 0.3 0.2 1., message fontsize 9, comment textcolor 0.3 0.3 0.2 1.",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 4.0,
					"hidden" : 1,
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 96.0, 643.643738, 31.0, 11.0 ],
					"text" : "universal 1",
					"varname" : "u626000356"
				}

			}
, 			{
				"box" : 				{
					"arrowbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"arrowcolor" : [ 0.756863, 0.756863, 0.756863, 1.0 ],
					"arrowframe" : 0,
					"arrowlink" : 0,
					"fontface" : 1,
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"framecolor" : [ 0.698039, 0.698039, 0.698039, 0.415686 ],
					"hltcolor" : [ 0.909804, 0.788235, 0.670588, 1.0 ],
					"id" : "obj-64",
					"items" : [ "ottos", "mops", "trotzt", ",", "otto:", "fort", "mops", "fort", ",", "ottos", "mops", "hopst", "fort", ",", "otto:", "soso", ",", "otto", "holt", "koks", ",", "otto", "holt", "obst", ",", "otto", "horcht", ",", "otto:", "mops", "mops", ",", "otto", "hofft", ",", "ottos", "mops", "klopft", ",", "otto:", "komm", "mops", "komm", ",", "ottos", "mops", "kommt", ",", "ottos", "mops", "kotzt", ",", "otto:", "ogottogott" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 540.0, 201.0, 116.0, 17.0 ],
					"pattrmode" : 1,
					"textcolor" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"textcolor2" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 617.0, 372.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 617.0, 372.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 12.0, 12.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"bordercode" : 4,
									"bordersize" : 8.0,
									"iconbackground" : 0,
									"iconsize" : 12.0,
									"iconstyle" : 0,
									"id" : "obj-62",
									"maxclass" : "icst.button",
									"numinlets" : 1,
									"numoutlets" : 2,
									"off_down_bg_color" : [ 0.0, 0.0, 0.0, 0.0 ],
									"off_down_draw2_color" : [ 0.74902, 0.74902, 0.74902, 0.2 ],
									"off_down_fg_color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"off_up_bg_color" : [ 0.0, 0.0, 0.0, 0.0 ],
									"off_up_draw2_color" : [ 0.698039, 0.698039, 0.698039, 1.0 ],
									"off_up_fg_color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"offdisplaytext" : "loop off",
									"on_borderwidth" : 1.0,
									"on_down_bg_color" : [ 0.411765, 0.901961, 0.87451, 0.0 ],
									"on_down_draw1_color" : [ 0.0, 0.0, 0.0, 0.603922 ],
									"on_down_draw2_color" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"on_down_fg_color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"on_up_bg_color" : [ 0.533333, 1.0, 0.807843, 0.0 ],
									"on_up_draw1_color" : [ 0.0, 0.176471, 0.14902, 1.0 ],
									"on_up_draw2_color" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"on_up_fg_color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"ondisplaytext" : "loop on",
									"outlettype" : [ "", "" ],
									"outmess" : "looptab",
									"patching_rect" : [ 64.676941, 267.0, 57.0, 15.0 ],
									"usedisplaytext" : 1,
									"useoutmess" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lucida Grande",
									"fontsize" : 9.0,
									"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
									"id" : "obj-20",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 64.5, 311.0, 257.0, 28.0 ],
									"text" : "loop attr gets overridden by select and select_last messages to different box",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lucida Grande",
									"fontsize" : 9.0,
									"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 64.5, 247.0, 257.0, 17.0 ],
									"text" : "loop tab attribute makes tab action loop around the box",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 0.101961 ],
									"bordercode" : 3,
									"borderendcaps" : 3,
									"bordersize" : 0.0,
									"borderstyle" : 4,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellgapwidth" : -1.0,
									"celllocks" : [ 1, 0, 0, 0, 1, 0 ],
									"celltypes" : [ 0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
									"cellwidth" : [ 50.0, 50.0, 50.0, 50.0, 50.0, 50.0 ],
									"defaults" : [ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
									"focusbgcolor" : [ 1.0, 0.94902, 0.901961, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"fontname" : "Lucida Grande Bold",
									"id" : "obj-7",
									"labelalignment" : 33,
									"labelsize" : [ 0.0, 0.0 ],
									"looptab" : 0,
									"maxclass" : "icst.listui",
									"numcells" : 6,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 64.5, 286.161987, 295.0, 17.0 ],
									"resetboxsize" : 10.0,
									"varname" : "listui_test[12]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
									"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"gradient" : 1,
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 415.5, 43.0, 37.0, 15.0 ],
									"text" : "select",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lucida Grande Bold",
									"fontsize" : 11.0,
									"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 64.5, 33.0, 60.0, 19.0 ],
									"text" : "tab keys",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lucida Grande",
									"fontsize" : 9.0,
									"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 64.5, 77.0, 146.0, 17.0 ],
									"text" : "move backwards with shift-tab",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lucida Grande",
									"fontsize" : 9.0,
									"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
									"id" : "obj-1",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 64.5, 59.0, 113.0, 17.0 ],
									"text" : "move forwards with tab",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
									"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"gradient" : 1,
									"id" : "obj-33",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 105.5, 107.0, 65.0, 15.0 ],
									"text" : "select_last",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
									"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"gradient" : 1,
									"id" : "obj-61",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 64.5, 107.0, 37.0, 15.0 ],
									"text" : "select",
									"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 0.101961 ],
									"bordercode" : 3,
									"borderendcaps" : 3,
									"bordersize" : 0.0,
									"borderstyle" : 4,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellgapwidth" : -1.0,
									"celllocks" : [ 1, 0, 0, 0, 1, 0 ],
									"celltypes" : [ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
									"cellwidth" : [ 50.0, 50.0, 50.0, 50.0, 50.0, 50.0 ],
									"defaults" : [ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
									"focusbgcolor" : [ 1.0, 0.94902, 0.901961, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"fontname" : "Lucida Grande Bold",
									"id" : "obj-60",
									"labelalignment" : 33,
									"labelsize" : [ 0.0, 0.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 6,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 64.5, 185.161987, 295.0, 18.0 ],
									"resetboxsize" : 10.0,
									"varname" : "listui_test[4]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 0.101961 ],
									"bordercode" : 3,
									"borderendcaps" : 3,
									"bordersize" : 0.0,
									"borderstyle" : 4,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellgapwidth" : -1.0,
									"celllocks" : [ 1, 0, 0, 0, 1, 0 ],
									"celltypes" : [ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
									"cellwidth" : [ 50.0, 50.0, 50.0, 50.0, 50.0, 50.0 ],
									"defaults" : [ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
									"focusbgcolor" : [ 1.0, 0.94902, 0.901961, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"fontname" : "Lucida Grande Bold",
									"id" : "obj-59",
									"labelalignment" : 33,
									"labelsize" : [ 0.0, 0.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 6,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 64.5, 167.982727, 295.0, 18.0 ],
									"resetboxsize" : 10.0,
									"varname" : "listui_test[3]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 0.101961 ],
									"bordercode" : 3,
									"borderendcaps" : 3,
									"bordersize" : 0.0,
									"borderstyle" : 4,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellgapwidth" : -1.0,
									"celllocks" : [ 1, 0, 0, 0, 1, 0 ],
									"celltypes" : [ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
									"cellwidth" : [ 50.0, 50.0, 50.0, 50.0, 50.0, 50.0 ],
									"defaults" : [ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
									"focusbgcolor" : [ 1.0, 0.94902, 0.901961, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"fontname" : "Lucida Grande Bold",
									"id" : "obj-58",
									"labelalignment" : 33,
									"labelsize" : [ 0.0, 0.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 6,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 64.5, 151.0, 295.0, 18.0 ],
									"resetboxsize" : 10.0,
									"varname" : "listui_test[2]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 0.101961 ],
									"bordercode" : 3,
									"borderendcaps" : 3,
									"bordersize" : 0.0,
									"borderstyle" : 4,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellgapwidth" : -1.0,
									"celllocks" : [ 1, 0, 0, 0, 1, 0 ],
									"celltypes" : [ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
									"cellwidth" : [ 50.0, 50.0, 50.0, 50.0, 50.0, 50.0 ],
									"defaults" : [ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
									"focusbgcolor" : [ 1.0, 0.94902, 0.901961, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"fontname" : "Lucida Grande Bold",
									"id" : "obj-57",
									"labelalignment" : 33,
									"labelsize" : [ 0.0, 0.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 6,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 64.5, 133.606934, 295.0, 18.0 ],
									"resetboxsize" : 10.0,
									"varname" : "listui_test[1]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"celllocks" : [ 1 ],
									"celltypes" : [ 0.0 ],
									"cellwidth" : [ 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0 ],
									"focusbgcolor" : [ 1.0, 0.866667, 0.992157, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.0, 0.498039, 1.0 ],
									"focusfontstyle" : 0,
									"fontname" : "Lucida Grande",
									"id" : "obj-98",
									"labelbgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
									"labelbordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"labelfontstyle" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "Param",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 415.5, 324.245667, 97.0, 17.0 ],
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"varname" : "listui_test[18]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"celllocks" : [ 1 ],
									"celltypes" : [ 0.0 ],
									"cellwidth" : [ 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0 ],
									"focusbgcolor" : [ 1.0, 0.866667, 0.992157, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.0, 0.498039, 1.0 ],
									"focusfontstyle" : 0,
									"fontname" : "Lucida Grande",
									"id" : "obj-99",
									"labelbgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
									"labelbordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"labelfontstyle" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "Param",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 415.5, 306.245667, 97.0, 17.0 ],
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"varname" : "listui_test[19]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"celllocks" : [ 1 ],
									"celltypes" : [ 0.0 ],
									"cellwidth" : [ 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0 ],
									"focusbgcolor" : [ 1.0, 0.866667, 0.992157, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.0, 0.498039, 1.0 ],
									"focusfontstyle" : 0,
									"fontname" : "Lucida Grande",
									"id" : "obj-100",
									"labelbgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
									"labelbordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"labelfontstyle" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "Param",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 415.5, 288.245667, 97.0, 17.0 ],
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"varname" : "listui_test[20]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"celllocks" : [ 1 ],
									"celltypes" : [ 0.0 ],
									"cellwidth" : [ 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0 ],
									"focusbgcolor" : [ 1.0, 0.866667, 0.992157, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.0, 0.498039, 1.0 ],
									"focusfontstyle" : 0,
									"fontname" : "Lucida Grande",
									"id" : "obj-95",
									"labelbgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
									"labelbordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"labelfontstyle" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "Param",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 415.5, 270.245667, 97.0, 17.0 ],
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"varname" : "listui_test[15]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"celllocks" : [ 1 ],
									"celltypes" : [ 0.0 ],
									"cellwidth" : [ 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0 ],
									"focusbgcolor" : [ 1.0, 0.866667, 0.992157, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.0, 0.498039, 1.0 ],
									"focusfontstyle" : 0,
									"fontname" : "Lucida Grande",
									"id" : "obj-96",
									"labelbgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
									"labelbordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"labelfontstyle" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "Param",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 415.5, 252.245667, 97.0, 17.0 ],
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"varname" : "listui_test[16]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"celllocks" : [ 1 ],
									"celltypes" : [ 0.0 ],
									"cellwidth" : [ 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0 ],
									"focusbgcolor" : [ 1.0, 0.866667, 0.992157, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.0, 0.498039, 1.0 ],
									"focusfontstyle" : 0,
									"fontname" : "Lucida Grande",
									"id" : "obj-97",
									"labelbgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
									"labelbordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"labelfontstyle" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "Param",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 415.5, 234.245667, 97.0, 17.0 ],
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"varname" : "listui_test[17]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"celllocks" : [ 1 ],
									"celltypes" : [ 0.0 ],
									"cellwidth" : [ 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0 ],
									"focusbgcolor" : [ 1.0, 0.866667, 0.992157, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.0, 0.498039, 1.0 ],
									"focusfontstyle" : 0,
									"fontname" : "Lucida Grande",
									"id" : "obj-89",
									"labelbgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
									"labelbordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"labelfontstyle" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "Param",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 415.5, 216.245667, 97.0, 17.0 ],
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"varname" : "listui_test[8]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"celllocks" : [ 1 ],
									"celltypes" : [ 0.0 ],
									"cellwidth" : [ 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0 ],
									"focusbgcolor" : [ 1.0, 0.866667, 0.992157, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.0, 0.498039, 1.0 ],
									"focusfontstyle" : 0,
									"fontname" : "Lucida Grande",
									"id" : "obj-93",
									"labelbgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
									"labelbordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"labelfontstyle" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "Param",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 415.5, 198.245667, 97.0, 17.0 ],
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"varname" : "listui_test[13]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"celllocks" : [ 1 ],
									"celltypes" : [ 0.0 ],
									"cellwidth" : [ 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0 ],
									"focusbgcolor" : [ 1.0, 0.866667, 0.992157, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.0, 0.498039, 1.0 ],
									"focusfontstyle" : 0,
									"fontname" : "Lucida Grande",
									"id" : "obj-94",
									"labelbgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
									"labelbordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"labelfontstyle" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "Param",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 415.5, 180.245667, 97.0, 17.0 ],
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"varname" : "listui_test[14]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"celllocks" : [ 1 ],
									"celltypes" : [ 0.0 ],
									"cellwidth" : [ 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0 ],
									"focusbgcolor" : [ 1.0, 0.866667, 0.992157, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.0, 0.498039, 1.0 ],
									"focusfontstyle" : 0,
									"fontname" : "Lucida Grande",
									"id" : "obj-84",
									"labelbgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
									"labelbordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"labelfontstyle" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "Param",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 415.5, 162.245667, 97.0, 17.0 ],
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"varname" : "listui_test[5]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"celllocks" : [ 1 ],
									"celltypes" : [ 0.0 ],
									"cellwidth" : [ 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0 ],
									"focusbgcolor" : [ 1.0, 0.866667, 0.992157, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.0, 0.498039, 1.0 ],
									"focusfontstyle" : 0,
									"fontname" : "Lucida Grande",
									"id" : "obj-87",
									"labelbgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
									"labelbordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"labelfontstyle" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "Param",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 415.5, 144.245667, 97.0, 17.0 ],
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"varname" : "listui_test[6]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"celllocks" : [ 1 ],
									"celltypes" : [ 0.0 ],
									"cellwidth" : [ 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0 ],
									"focusbgcolor" : [ 1.0, 0.866667, 0.992157, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.0, 0.498039, 1.0 ],
									"focusfontstyle" : 0,
									"fontname" : "Lucida Grande",
									"id" : "obj-88",
									"labelbgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
									"labelbordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"labelfontstyle" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "Param",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 415.5, 126.245667, 97.0, 17.0 ],
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"varname" : "listui_test[7]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"celllocks" : [ 1 ],
									"celltypes" : [ 0.0 ],
									"cellwidth" : [ 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0 ],
									"focusbgcolor" : [ 1.0, 0.866667, 0.992157, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.0, 0.498039, 1.0 ],
									"focusfontstyle" : 0,
									"fontname" : "Lucida Grande",
									"id" : "obj-53",
									"labelbgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
									"labelbordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"labelfontstyle" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "Param",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 415.5, 108.245667, 97.0, 17.0 ],
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"varname" : "listui_test[9]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"celllocks" : [ 1 ],
									"celltypes" : [ 0.0 ],
									"cellwidth" : [ 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0 ],
									"focusbgcolor" : [ 1.0, 0.866667, 0.992157, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.0, 0.498039, 1.0 ],
									"focusfontstyle" : 0,
									"fontname" : "Lucida Grande",
									"id" : "obj-34",
									"labelbgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
									"labelbordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"labelfontstyle" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "Param",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 415.5, 90.245667, 97.0, 17.0 ],
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"varname" : "listui_test[10]"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercode" : 3,
									"bordersize" : 0.0,
									"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"cellbordercolor" : [ 0.741176, 0.741176, 0.741176, 1.0 ],
									"celllocks" : [ 1 ],
									"celltypes" : [ 0.0 ],
									"cellwidth" : [ 50.0 ],
									"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
									"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"defaults" : [ 0.0 ],
									"focusbgcolor" : [ 1.0, 0.866667, 0.992157, 1.0 ],
									"focusbordercode" : 3,
									"focusbordersize" : 0.0,
									"focuscellbordercolor" : [ 1.0, 0.0, 0.498039, 1.0 ],
									"focusfontstyle" : 0,
									"fontname" : "Lucida Grande",
									"id" : "obj-4",
									"labelbgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
									"labelbordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"labelfontstyle" : 1,
									"labelsize" : [ 50.0, 10.0 ],
									"labeltext" : "Param",
									"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
									"maxclass" : "icst.listui",
									"numcells" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 415.5, 72.245667, 97.0, 17.0 ],
									"pviewfontsize" : 22.470015,
									"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
									"resetboxsize" : 15.0,
									"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
									"resetwidth" : 0.45,
									"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
									"uselabel" : 1,
									"varname" : "listui_test[11]"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-100", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-100", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-34", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-34", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-98", 0 ],
									"hidden" : 1,
									"midpoints" : [ 477.0, 326.245667, 425.0, 326.245667 ],
									"source" : [ "obj-4", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-53", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-53", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.478431, 0.0, 1.0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-57", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-57", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.478431, 0.0, 1.0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-58", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.478431, 0.0, 1.0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-58", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.478431, 0.0, 1.0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-59", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.478431, 0.0, 1.0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-59", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.478431, 0.0, 1.0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 1,
									"midpoints" : [ 166.0, 216.0, 52.333344, 216.0, 52.333344, 124.0, 74.0, 124.0 ],
									"source" : [ "obj-60", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.478431, 0.0, 1.0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-60", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-84", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-84", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-87", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-87", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-88", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-88", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-89", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-89", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-93", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-93", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-94", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-94", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-95", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-95", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-96", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-96", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-97", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-97", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [ 451.0, 350.245667, 409.333374, 350.245667, 409.333374, 62.245667, 425.0, 62.245667 ],
									"source" : [ "obj-98", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-98", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-99", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-98", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-99", 1 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 582.0, 501.0, 148.0, 17.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}
,
					"text" : "p tab-key",
					"textcolor" : [ 0.266667, 0.266667, 0.266667, 1.0 ],
					"varname" : "tab"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.101961 ],
					"bordercode" : 2,
					"bordersize" : 0.0,
					"borderstyle" : 0,
					"borderwidth" : 0.5,
					"cellbgcolor" : [ 1.0, 1.0, 1.0, 0.101961 ],
					"cellgapwidth" : -1.0,
					"celllocks" : [ 1, 1, 1, 1, 1, 1 ],
					"celltypes" : [ "s", 0, 0.0, 0.0, 0.0, 0 ],
					"cellwidth" : [ 20.0, 10.0, 30.0, 30.0, 30.0, 10.0 ],
					"defaults" : [ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
					"focusbgcolor" : [ 1.0, 0.501961, 0.0, 0.0 ],
					"focusbordercode" : 2,
					"focusbordersize" : 0.0,
					"focusborderstyle" : 0,
					"fontname" : "Lucida Grande",
					"id" : "obj-68",
					"labelalignment" : 33,
					"labelsize" : [ 0.0, 0.0 ],
					"maxclass" : "icst.listui",
					"numcells" : 6,
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 51.0, 417.0, 134.0, 18.0 ],
					"resetboxsize" : 10.0,
					"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.101961 ],
					"textalignment" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.101961 ],
					"bordercode" : 13,
					"bordersize" : 0.0,
					"borderstyle" : 0,
					"borderwidth" : 0.5,
					"cellbgcolor" : [ 1.0, 1.0, 1.0, 0.101961 ],
					"cellgapwidth" : -1.0,
					"celllocks" : [ 1, 1, 1, 1, 1, 1 ],
					"celltypes" : [ "s", 0, 0.0, 0.0, 0.0, 0 ],
					"cellwidth" : [ 20.0, 10.0, 30.0, 30.0, 30.0, 10.0 ],
					"defaults" : [ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
					"focusbgcolor" : [ 1.0, 0.501961, 0.0, 0.0 ],
					"focusbordercode" : 13,
					"focusbordersize" : 0.0,
					"focusborderstyle" : 0,
					"fontname" : "Lucida Grande",
					"id" : "obj-56",
					"labelalignment" : 33,
					"labelsize" : [ 0.0, 0.0 ],
					"maxclass" : "icst.listui",
					"numcells" : 6,
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 51.0, 400.0, 134.0, 18.0 ],
					"resetboxsize" : 10.0,
					"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.101961 ],
					"textalignment" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"id" : "obj-51",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 239.0, 516.0, 199.0, 15.0 ],
					"text" : "send listui_test, array 0.1 0.2 0.3 0.4 0.5",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.890196, 0.890196, 0.890196, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 239.0, 533.0, 67.0, 17.0 ],
					"text" : "pattrforward",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"varname" : "u223000098"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 287.0, 210.0, 15.0 ],
					"text" : "set helium neon argon krypton xenon radon",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.709804, 0.694118, 0.545098, 1.0 ],
					"bordersize" : 0.0,
					"borderstyle" : 4,
					"focusbgcolor" : [ 1.0, 0.501961, 0.0, 0.101961 ],
					"focusbordersize" : 0.0,
					"focusborderstyle" : 4,
					"fontname" : "Lucida Grande Bold",
					"id" : "obj-43",
					"maxclass" : "icst.floatui",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 579.0, 324.0, 52.0, 17.0 ],
					"precision" : 4
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.709804, 0.694118, 0.545098, 1.0 ],
					"bordersize" : 0.0,
					"borderstyle" : 4,
					"focusbgcolor" : [ 1.0, 0.501961, 0.0, 0.101961 ],
					"focusbordersize" : 0.0,
					"focusborderstyle" : 4,
					"fontname" : "Lucida Grande Bold",
					"id" : "obj-42",
					"maxclass" : "icst.intui",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 540.0, 324.0, 37.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 343.0, 39.0, 15.0 ],
					"text" : "set $1",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"circle_color" : [ 0.94902, 0.921569, 0.85098, 1.0 ],
					"grid" : 1,
					"grid_color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"gridunit_ae" : 4,
					"hi_border_color" : [ 0.509804, 0.423529, 0.262745, 1.0 ],
					"hi_grid_color" : [ 0.298039, 0.262745, 0.227451, 0.25098 ],
					"id" : "obj-22",
					"maxclass" : "ambimonitor",
					"mode" : 2,
					"name_color" : [ 0.301961, 0.301961, 0.2, 1.0 ],
					"number_font_size" : 9.0,
					"numbers" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 51.0, 129.0, 124.0, 248.0 ],
					"point_color" : [ 0.301961, 0.301961, 0.2, 1.0 ],
					"point_size" : 5.0,
					"presentation_rect" : [ 0.0, 0.0, 20.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 640.0, 130.0, 32.0, 15.0 ],
					"text" : "tiger",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 589.0, 130.0, 45.0, 15.0 ],
					"text" : "tortoise",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bordercode" : 4,
					"bordersize" : 8.0,
					"iconbackground" : 3,
					"iconsize" : 12.0,
					"iconstyle" : 2,
					"id" : "obj-62",
					"maxclass" : "icst.button",
					"numinlets" : 1,
					"numoutlets" : 2,
					"off_down_bg_color" : [ 0.0, 0.0, 0.0, 0.0 ],
					"off_down_draw2_color" : [ 0.74902, 0.74902, 0.74902, 0.2 ],
					"off_down_fg_color" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"off_up_bg_color" : [ 0.0, 0.0, 0.0, 0.0 ],
					"off_up_draw2_color" : [ 0.698039, 0.698039, 0.698039, 1.0 ],
					"off_up_fg_color" : [ 0.0, 0.0, 0.0, 0.0 ],
					"on_down_bg_color" : [ 0.411765, 0.901961, 0.87451, 0.0 ],
					"on_down_draw1_color" : [ 0.0, 0.0, 0.0, 0.603922 ],
					"on_down_draw2_color" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"on_down_fg_color" : [ 0.831373, 0.631373, 0.631373, 0.0 ],
					"on_up_bg_color" : [ 0.533333, 1.0, 0.807843, 0.0 ],
					"on_up_draw1_color" : [ 0.0, 0.176471, 0.14902, 1.0 ],
					"on_up_draw2_color" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"on_up_fg_color" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 256.676941, 130.0, 14.0, 14.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lucida Grande Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 540.0, 227.0, 56.0, 18.0 ],
					"text" : "set",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Lucida Grande",
					"fontsize" : 10.0,
					"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
					"id" : "obj-46",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 540.0, 106.0, 59.0, 18.0 ],
					"text" : "anything",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Lucida Grande",
					"fontsize" : 10.0,
					"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
					"id" : "obj-45",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 416.0, 106.0, 41.0, 18.0 ],
					"text" : "list",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Lucida Grande",
					"fontsize" : 10.0,
					"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
					"id" : "obj-44",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 328.0, 106.0, 39.0, 18.0 ],
					"text" : "float",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Lucida Grande",
					"fontsize" : 10.0,
					"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 268.0, 106.0, 37.0, 18.0 ],
					"text" : "int",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Lucida Grande",
					"fontsize" : 10.0,
					"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 203.0, 106.0, 39.0, 18.0 ],
					"text" : "bang",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"id" : "obj-36",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 272.0, 130.0, 33.0, 15.0 ],
					"text" : "4096",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.709804, 0.694118, 0.545098, 1.0 ],
					"bordersize" : 0.0,
					"borderstyle" : 4,
					"focusbgcolor" : [ 1.0, 0.501961, 0.0, 0.101961 ],
					"focusbordersize" : 0.0,
					"focusborderstyle" : 4,
					"fontname" : "Lucida Grande Bold",
					"fontsize" : 9.0,
					"id" : "obj-35",
					"maxclass" : "icst.floatui",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 332.0, 148.0, 52.0, 17.0 ],
					"precision" : 4
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"id" : "obj-29",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 130.0, 41.0, 15.0 ],
					"text" : "toucan",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 184.0, 193.0, 15.0 ],
					"text" : "helium neon argon krypton xenon radon",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 332.0, 130.0, 54.0, 15.0 ],
					"text" : "3.141593",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 166.0, 167.0, 15.0 ],
					"text" : "ernst jandl sagt: otto's mops kotzt",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 416.0, 166.0, 98.0, 15.0 ],
					"text" : "3.141593 1 2 3 4 5",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 305.0, 71.0, 15.0 ],
					"text" : "set 3.141593",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 269.0, 182.0, 15.0 ],
					"text" : "set ernst jandl sagt: ottos mops kotzt",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 251.0, 140.0, 15.0 ],
					"text" : "set array 0.1 0.2 0.3 0.4 0.5",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.890196, 0.890196, 0.890196, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 170.0, 533.0, 66.0, 17.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"paraminitmode" : 0,
						"storage_rect" : [ 200, 200, 800, 500 ],
						"client_rect" : [ 515, 97, 1257, 530 ]
					}
,
					"text" : "pattrstorage",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"varname" : "u812002635"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.890196, 0.890196, 0.890196, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 308.0, 533.0, 56.0, 17.0 ],
					"restore" : 					{
						"listui_main" : [ "aed", 1, 35.272415, 11.26176, 0.825895, 1 ]
					}
,
					"text" : "autopattr",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"varname" : "u620002652"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 416.0, 130.0, 61.0, 15.0 ],
					"text" : "1 2 3 4 5 6",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"borderstyle" : 0,
					"iconbackground" : 4,
					"iconlinewidth" : 5.0,
					"iconoffset" : [ 1.0, 1.0 ],
					"iconsize" : 11.0,
					"iconstyle" : 13,
					"id" : "obj-13",
					"maxclass" : "icst.button",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"off_down_bg_color" : [ 1.0, 0.8, 0.0, 0.0 ],
					"off_down_draw1_color" : [ 1.0, 0.25098, 0.0, 1.0 ],
					"off_down_draw2_color" : [ 1.0, 0.8, 0.0, 1.0 ],
					"off_down_fg_color" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"off_up_draw2_color" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
					"on_borderstyle" : 0,
					"on_down_draw1_color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"on_down_draw2_color" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"on_up_draw1_color" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 207.0, 130.0, 14.0, 14.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 220.0, 416.0, 243.0, 15.0 ],
					"text" : "aed 1 35.272415 11.26176 0.825895 1",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 148.0, 123.0, 15.0 ],
					"text" : "array 0.1 0.2 0.3 0.4 0.5",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.95, 0.92, 0.85, 0.5 ],
					"bgcolor2" : [ 0.9, 0.87, 0.82, 0.5 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"gradient" : 1,
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 416.0, 148.0, 43.0, 15.0 ],
					"text" : "1 2 3 4",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.709804, 0.694118, 0.545098, 1.0 ],
					"bordersize" : 0.0,
					"borderstyle" : 4,
					"focusbgcolor" : [ 1.0, 0.501961, 0.0, 0.101961 ],
					"focusbordersize" : 0.0,
					"focusborderstyle" : 4,
					"fontname" : "Lucida Grande Bold",
					"fontsize" : 9.0,
					"id" : "obj-3",
					"maxclass" : "icst.intui",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 272.0, 148.0, 37.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.6, 0.54902, 0.501961, 0.145098 ],
					"border" : 1,
					"bordercolor" : [ 0.6, 0.54902, 0.501961, 0.509804 ],
					"id" : "obj-14",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 564.0, 446.0, 180.0, 128.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercode" : 3,
					"bordersize" : 0.0,
					"cellbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"cellbordercolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"celllocks" : [ 0, 0, 1, 1, 1, 0 ],
					"celltypes" : [ "s", 0, 0.0, 0.0, 0.0, 0 ],
					"cellwidth" : [ 50.0, 50.0, 50.0, 50.0, 50.0, 50.0 ],
					"clickedresetbgcolor" : [ 0.909804, 0.909804, 0.909804, 0.74902 ],
					"clickedresetfgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"defaults" : [ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
					"focusbgcolor" : [ 1.0, 0.952941, 0.866667, 1.0 ],
					"focusbordercode" : 3,
					"focusbordersize" : 0.0,
					"focuscellbordercolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontname" : "Lucida Grande Bold",
					"id" : "obj-1",
					"labelbgcolor" : [ 0.423529, 0.356863, 0.356863, 0.25098 ],
					"labelbordercolor" : [ 0.133333, 0.101961, 0.101961, 1.0 ],
					"labelsize" : [ 50.0, 10.0 ],
					"labeltext" : "point",
					"labeltextcolor" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
					"maxclass" : "icst.listui",
					"numcells" : 6,
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 203.0, 384.745697, 341.0, 16.0 ],
					"prefixtext" : "oops",
					"pviewfontsize" : 22.470015,
					"resetbgcolor" : [ 0.623529, 0.623529, 0.623529, 0.501961 ],
					"resetboxsize" : 15.0,
					"resetfgcolor" : [ 1.0, 1.0, 1.0, 0.992157 ],
					"resetwidth" : 0.45,
					"scrollbgcolor" : [ 1.0, 1.0, 1.0, 0.8 ],
					"symclick" : 0,
					"uselabel" : 1,
					"varname" : "listui_main"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.6, 0.54902, 0.501961, 0.145098 ],
					"border" : 1,
					"bordercolor" : [ 0.6, 0.54902, 0.501961, 0.509804 ],
					"id" : "obj-63",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 564.0, 595.0, 179.0, 61.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
					"id" : "obj-50",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 632.0, 46.0, 138.0, 17.0 ],
					"text" : "Zurich University of the Arts",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
					"id" : "obj-52",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 32.0, 51.0, 114.0, 19.0 ],
					"text" : "a GUI object for lists",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
					"id" : "obj-53",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 599.0, 20.0, 170.0, 17.0 ],
					"text" : "Copyright © 2009 by Jan Schacher",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
					"id" : "obj-54",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 499.0, 33.0, 270.0, 17.0 ],
					"text" : "ICST Institute for Computer Music and Sound Technology",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 20.0,
					"frgb" : [ 0.3, 0.3, 0.2, 1.0 ],
					"id" : "obj-55",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 32.0, 25.0, 99.0, 31.0 ],
					"text" : "icst.listui",
					"textcolor" : [ 0.3, 0.3, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
					"id" : "obj-57",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 12.0, 12.0, 776.0, 72.0 ],
					"rounded" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [ 212.5, 412.872864, 453.5, 412.872864 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 0,
					"midpoints" : [ 212.5, 440.872864, 61.5, 440.872864 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [ 113.0, 256.5, 60.5, 256.5 ],
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 588.5, 341.5, 549.5, 341.5 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-48", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-61", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 261.676941, 145.5, 281.5, 145.5 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-64", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 61.5, 467.0, 42.5, 467.0, 42.5, 119.0, 60.5, 119.0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.6, 0.54902, 0.501961, 0.25098 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-92", 0 ]
				}

			}
 ],
		"parameters" : 		{

		}

	}

}
