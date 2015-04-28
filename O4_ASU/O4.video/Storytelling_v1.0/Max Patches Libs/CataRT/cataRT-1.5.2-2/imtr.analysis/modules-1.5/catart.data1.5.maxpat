{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 1.0, 330.0, 1338.0, 534.0 ],
		"bglocked" : 0,
		"defrect" : [ 1.0, 330.0, 1338.0, 534.0 ],
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
					"text" : "r #0_add-livefmat",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 405.0, 165.0, 122.0, 17.0 ],
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
					"text" : "p alias",
					"patching_rect" : [ 533.0, 240.0, 37.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-19",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 407.0, 1006.0, 481.0, 156.0 ],
						"bglocked" : 0,
						"defrect" : [ 407.0, 1006.0, 481.0, 156.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
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
									"maxclass" : "comment",
									"text" : "force refering to other unit: id, soundfile, start/end, starttime",
									"linecount" : 2,
									"patching_rect" : [ 60.0, 10.0, 129.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 4,
									"presentation_linecount" : 4,
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 20.0, 50.0, 153.0, 53.0 ],
									"fontname" : "Geneva",
									"id" : "obj-9",
									"numinlets" : 5,
									"#triggerall" : 0,
									"numins" : 5,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_set $1 $descrid[SoundFile] $2,", "_set $1 $descrid[StartSample] $3,", "_set $1 $descrid[SampleSize] $4,", "_set $1 $descrid[StartTime] $5" ],
									"ftm_scope" : 1,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 20.0, 50.0, 153.0, 53.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 20.0, 10.0, 25.0, 25.0 ],
									"id" : "obj-17",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 20.0, 120.0, 25.0, 25.0 ],
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Geneva",
						"fontname" : "Geneva",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "force refering to other unit: id, soundfile, start/end, starttime",
					"linecount" : 2,
					"patching_rect" : [ 543.0, 213.0, 129.0, 27.0 ],
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
					"text" : "r #0_alias-unit",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 533.0, 195.0, 102.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-16",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 15.0, 480.0, 48.186035, 29.0 ],
					"fontname" : "Geneva",
					"id" : "obj-214",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_send $1,", "_$corpus" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 15.0, 480.0, 48.186035, 29.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "forward",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"patching_rect" : [ 15.0, 510.0, 41.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-209",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1_catart.data.get-corpus",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"patching_rect" : [ 15.0, 450.0, 165.0, 17.0 ],
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
					"maxclass" : "ftm.object",
					"text" : "const ' '",
					"ftm_objref_conv" : 0,
					"patching_rect" : [ 345.0, 480.0, 116.022461, 18.0 ],
					"fontname" : "Geneva",
					"id" : "obj-216",
					"persistence" : 0,
					"editor_interface" : "",
					"description" : "const ' '",
					"name" : "emptysymbol",
					"numinlets" : 1,
					"scope" : 0,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"ftm_scope" : 0,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 345.0, 480.0, 116.022461, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 555.0, 330.0, 34.325684, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-1",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_#open" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 555.0, 330.0, 34.325684, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p l2fmat",
					"patching_rect" : [ 1220.0, 136.0, 43.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-221",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
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
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 50.0, 100.0, 149.525391, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-213",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_((new fmat (llen $*1) 1) fill $*1)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 50.0, 100.0, 149.525391, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-217",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 50.0, 177.0, 25.0, 25.0 ],
									"id" : "obj-219",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-217", 0 ],
									"destination" : [ "obj-213", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-213", 0 ],
									"destination" : [ "obj-219", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Geneva",
						"fontname" : "Geneva",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p find-units",
					"patching_rect" : [ 1240.0, 216.0, 55.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-212",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 1104.0, 1146.0, 458.0, 408.0 ],
						"bglocked" : 0,
						"defrect" : [ 1104.0, 1146.0, 458.0, 408.0 ],
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
									"maxclass" : "ftm.object",
									"text" : "expr '($x == $1)'",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 249.0, 223.0, 130.620605, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-1",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "expr '($x == $1)'",
									"name" : "findme3",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 249.0, 223.0, 130.620605, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l l",
									"patching_rect" : [ 3.0, 69.0, 121.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "descriptor index",
									"patching_rect" : [ 248.0, 106.0, 89.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
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
									"patching_rect" : [ 113.0, 130.0, 100.271484, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-4",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$corpus[descrid][$1]" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 113.0, 130.0, 100.271484, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 3.0, 289.0, 104.380371, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-5",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($1 find $findme3 $2)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 3.0, 289.0, 104.380371, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "out: column fmat with unit indices that match",
									"patching_rect" : [ 26.0, 324.0, 215.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.copy fmat",
									"patching_rect" : [ 3.0, 257.0, 74.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-7",
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
									"patching_rect" : [ 3.0, 229.0, 186.017578, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-8",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($descr4 refer $corpus[unitdata] col $2)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 3.0, 229.0, 186.017578, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "fvec",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 249.0, 249.0, 67.466797, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-9",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "fvec",
									"name" : "descr4",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 249.0, 249.0, 67.466797, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.print find-units",
									"patching_rect" : [ 262.0, 318.0, 98.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"saved_object_attributes" : 									{
										"ftm_objref_conv" : 0,
										"ftm_scope" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expression object",
									"patching_rect" : [ 386.0, 225.0, 89.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-11",
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
									"patching_rect" : [ 58.0, 175.0, 17.99707, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-12",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$2" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 58.0, 175.0, 17.99707, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "find unit ids that match:",
									"patching_rect" : [ 1.0, 22.0, 215.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 3.0, 322.0, 15.0, 15.0 ],
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 3.0, 41.0, 15.0, 15.0 ],
									"id" : "obj-15",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "in: descr, id",
									"patching_rect" : [ 28.0, 43.0, 215.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-5", 1 ],
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
					"text" : "p delete-soundfile",
					"patching_rect" : [ 1260.0, 154.0, 94.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-211",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 579.0, 1143.0, 489.0, 240.0 ],
						"bglocked" : 0,
						"defrect" : [ 579.0, 1143.0, 489.0, 240.0 ],
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
									"text" : "erase sound file in row, will not be loaded,\nNO renumbering necessary",
									"linecount" : 2,
									"patching_rect" : [ 45.0, 120.0, 180.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-20",
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
									"patching_rect" : [ 270.0, 105.0, 108.331055, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-19",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($soundfiles delete $1)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 270.0, 105.0, 108.331055, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "delete sound file row, needs to renumber sfid for sfid > $1 also in unitdata",
									"linecount" : 2,
									"patching_rect" : [ 270.0, 120.0, 180.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-18",
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
									"patching_rect" : [ 45.0, 105.0, 216.98584, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-17",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($soundfiles set $1 0 _deleted_ _deleted_ 0 0)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 45.0, 105.0, 216.98584, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"patching_rect" : [ 15.0, 75.0, 45.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 15.0, 150.0, 62.214844, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-5",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_SoundFile $1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 15.0, 150.0, 62.214844, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "delete unit indices that match",
									"patching_rect" : [ 38.0, 185.0, 215.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "find unit ids that match soundfile",
									"patching_rect" : [ 15.0, 15.0, 215.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 15.0, 183.0, 15.0, 15.0 ],
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 15.0, 45.0, 23.0, 23.0 ],
									"id" : "obj-15",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sfid",
									"patching_rect" : [ 45.0, 45.0, 215.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-14", 0 ],
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
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-2", 0 ],
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
					"text" : "p delete-unit",
					"patching_rect" : [ 1240.0, 236.0, 60.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-210",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 1061.0, 1152.0, 507.0, 294.0 ],
						"bglocked" : 0,
						"defrect" : [ 1061.0, 1152.0, 507.0, 294.0 ],
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
									"text" : "sort descending for backwards delete",
									"linecount" : 2,
									"patching_rect" : [ 180.0, 75.0, 93.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
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
									"patching_rect" : [ 135.0, 75.0, 46.543945, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-12",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($1 tros)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 135.0, 75.0, 46.543945, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 285.0, 135.0, 79.55127, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-10",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($unitdata rows)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 285.0, 135.0, 79.55127, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 90.0, 165.0, 140.503418, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-9",
									"numinlets" : 3,
									"#triggerall" : 0,
									"numins" : 3,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print deleted $2 of $*3 units)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 90.0, 165.0, 140.503418, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "N.B.: RelIndex is not renumbered!",
									"patching_rect" : [ 240.0, 225.0, 223.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "renumber all units\nNOT TODO: fix shift, but it's not used anymore",
									"linecount" : 2,
									"patching_rect" : [ 240.0, 195.0, 223.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b l b",
									"patching_rect" : [ 30.0, 30.0, 180.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "bang", "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 135.0, 240.0, 15.0, 15.0 ],
									"id" : "obj-2",
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
									"patching_rect" : [ 30.0, 196.0, 199.007812, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-5",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(($unitdata col 0) ramp 0 ($unitdata rows))" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 30.0, 196.0, 199.007812, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 30.0, 10.0, 15.0, 15.0 ],
									"id" : "obj-6",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "fmat or tuple of unit indices to delete",
									"patching_rect" : [ 53.0, 12.0, 155.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.iter",
									"patching_rect" : [ 135.0, 105.0, 46.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-11",
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
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 135.0, 135.0, 48.064453, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-14",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_delete $1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 135.0, 135.0, 48.064453, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "send to unitdata",
									"patching_rect" : [ 156.0, 242.0, 269.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 3 ],
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
					"text" : "r #0_delete-disabled",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1260.0, 176.0, 109.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-208",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_delete-soundfile",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1260.0, 136.0, 109.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-207",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_delete-units",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1221.0, 118.0, 94.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-206",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 1260.0, 196.0, 43.839844, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-215",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_Active 0" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 1260.0, 196.0, 43.839844, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_add-descriptorx",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 120.0, 165.0, 122.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-197",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "name, defmax, type",
					"patching_rect" : [ 165.0, 150.0, 90.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-93",
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
					"patching_rect" : [ 750.0, 300.0, 34.325684, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-90",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_#open" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 750.0, 300.0, 34.325684, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 195.0, 375.0, 34.325684, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-89",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_#open" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 195.0, 375.0, 34.325684, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route unitdata descriptors unitstat soundfiles",
					"patching_rect" : [ 795.0, 60.0, 249.0, 20.0 ],
					"fontname" : "Arial",
					"id" : "obj-196",
					"numinlets" : 1,
					"numoutlets" : 5,
					"fontsize" : 12.0,
					"outlettype" : [ "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_show",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 795.0, 30.0, 100.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-195",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 510.0, 300.0, 34.325684, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-193",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_#open" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 510.0, 300.0, 34.325684, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 315.0, 60.0, 20.0, 20.0 ],
					"id" : "obj-194",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 180.0, 321.0, 95.915039, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-192",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_set $1 $descrid[$2]" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 180.0, 321.0, 95.915039, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<alias> <name> ",
					"patching_rect" : [ 195.0, 125.0, 78.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-190",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_add-descriptor-alias",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 180.0, 111.0, 122.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-191",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print",
					"patching_rect" : [ 705.0, 345.0, 32.0, 15.0 ],
					"fontname" : "Arial",
					"id" : "obj-188",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "schema std min max range mean",
					"ftm_objref_conv" : 0,
					"patching_rect" : [ 735.0, 345.0, 221.022461, 18.0 ],
					"fontname" : "Geneva",
					"id" : "obj-189",
					"persistence" : 0,
					"editor_interface" : "",
					"description" : "schema std min max range mean",
					"name" : "unitstat_row",
					"numinlets" : 1,
					"scope" : 0,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"ftm_scope" : 0,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 735.0, 345.0, 221.022461, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print",
					"patching_rect" : [ 435.0, 375.0, 32.0, 15.0 ],
					"fontname" : "Arial",
					"id" : "obj-186",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "schema sfname path import-limit duration sfdict",
					"ftm_objref_conv" : 0,
					"patching_rect" : [ 465.0, 375.0, 314.022461, 18.0 ],
					"fontname" : "Geneva",
					"id" : "obj-187",
					"persistence" : 0,
					"editor_interface" : "",
					"description" : "schema sfname path import-limit duration sfdict",
					"name" : "schema_soundfiles",
					"numinlets" : 1,
					"scope" : 0,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"ftm_scope" : 0,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 465.0, 375.0, 314.022461, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print",
					"patching_rect" : [ 120.0, 420.0, 32.0, 15.0 ],
					"fontname" : "Arial",
					"id" : "obj-184",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "schema name number type group analyser-class analyser-name class vectorsize defmax hidden symbol-table symbol-lookup",
					"ftm_objref_conv" : 0,
					"patching_rect" : [ 150.0, 420.0, 648.022461, 18.0 ],
					"fontname" : "Geneva",
					"id" : "obj-185",
					"persistence" : 0,
					"editor_interface" : "",
					"description" : "schema name number type group analyser-class analyser-name class vectorsize defmax hidden symbol-table symbol-lookup",
					"name" : "schema_descriptors",
					"numinlets" : 1,
					"scope" : 0,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"ftm_scope" : 0,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 150.0, 420.0, 648.022461, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print",
					"patching_rect" : [ 285.0, 345.0, 32.0, 15.0 ],
					"fontname" : "Arial",
					"id" : "obj-182",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "schema",
					"ftm_objref_conv" : 0,
					"patching_rect" : [ 315.0, 345.0, 109.022461, 18.0 ],
					"fontname" : "Geneva",
					"id" : "obj-183",
					"persistence" : 0,
					"editor_interface" : "",
					"description" : "schema",
					"name" : "unitdata_col",
					"numinlets" : 1,
					"scope" : 0,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"ftm_scope" : 0,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 315.0, 345.0, 109.022461, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "descr name, data-type, descr-group, analyser-class, analyser-name, dyn.class, vector size, default max value, [hidden]",
					"linecount" : 3,
					"patching_rect" : [ 120.0, 180.0, 178.0, 38.0 ],
					"fontname" : "Arial",
					"id" : "obj-2",
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
					"patching_rect" : [ 1104.0, 371.0, 55.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-4",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_Active $1" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_enable-all",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1104.0, 352.0, 94.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-5",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<descriptor name or index> <value>",
					"linecount" : 3,
					"patching_rect" : [ 1283.0, 346.0, 74.0, 38.0 ],
					"fontname" : "Arial",
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p set-const",
					"patching_rect" : [ 1279.0, 387.0, 61.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 765.0, 701.0, 425.0, 192.0 ],
						"bglocked" : 0,
						"defrect" : [ 765.0, 701.0, 425.0, 192.0 ],
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
									"text" : "descriptor index",
									"patching_rect" : [ 139.0, 93.0, 89.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
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
									"patching_rect" : [ 2.0, 74.0, 229.681641, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-2",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(($descr2 refer $unitdata col $descrid[$1]) fill $2)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 2.0, 74.0, 229.681641, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "fvec",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 254.0, 73.0, 67.466797, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-3",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "fvec",
									"name" : "descr2",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 254.0, 73.0, 67.466797, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set descr to constant value",
									"patching_rect" : [ 0.0, 22.0, 215.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 2.0, 41.0, 15.0, 15.0 ],
									"id" : "obj-5",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "in: descriptor name or index, value",
									"patching_rect" : [ 27.0, 43.0, 307.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
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
					"text" : "r #0_set-descr",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1279.0, 325.0, 92.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-8",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<descriptor name or index> <value1> <value2> <flag>",
					"linecount" : 2,
					"patching_rect" : [ 1496.0, 267.0, 130.0, 27.0 ],
					"fontname" : "Arial",
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_enable-within",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1492.0, 250.0, 119.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-11",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_dirnames-to-soundsets",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1406.0, 432.0, 157.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-13",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p recreate-soundsets",
					"patching_rect" : [ 1406.0, 451.0, 106.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 931.0, 629.0, 435.0, 360.0 ],
						"bglocked" : 0,
						"defrect" : [ 931.0, 629.0, 435.0, 360.0 ],
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
									"text" : "<descriptor name or index> <operator> <value> <descr to set> <value>",
									"linecount" : 2,
									"patching_rect" : [ 50.0, 263.0, 182.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 50.0, 23.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 50.0, 92.0, 118.240723, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-3",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(basename (dirname $2))" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 50.0, 92.0, 118.240723, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 50.0, 50.0, 55.223145, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-4",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$soundfiles" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 50.0, 50.0, 55.223145, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.iter @mode row",
									"patching_rect" : [ 50.0, 71.0, 106.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-5",
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
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 50.0, 131.0, 117.150879, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-6",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_new-symbol SoundSet $1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 50.0, 131.0, 117.150879, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 50.0, 202.0, 136.666992, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-7",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_SoundFile == $2 SoundSet $1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 50.0, 202.0, 136.666992, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "catart.data.proxy #1",
									"patching_rect" : [ 50.0, 157.0, 110.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 50.0, 239.0, 15.0, 15.0 ],
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
									"patching_rect" : [ 83.0, 237.0, 235.873535, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-10",
									"numinlets" : 3,
									"#triggerall" : 0,
									"numins" : 3,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print Setting SoundSet $1 < $3 > for SoundFile $2)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 83.0, 237.0, 235.873535, 17.0 ],
									"#init" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
									"midpoints" : [ 59.5, 116.0, 59.5, 116.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-10", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
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
					"text" : "r #0_update-stat-for",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 819.0, 199.0, 105.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-15",
					"numinlets" : 0,
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
					"patching_rect" : [ 169.0, 231.0, 50.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-20",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_1" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "import to RAM? 0/1",
					"patching_rect" : [ 176.0, 268.0, 100.0, 17.0 ],
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
					"text" : "r #0_mem-import",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 169.0, 249.0, 112.0, 17.0 ],
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
					"maxclass" : "comment",
					"text" : "<descriptor name or index> <operator> <value> <descr to set> <value>",
					"linecount" : 3,
					"patching_rect" : [ 1360.0, 346.0, 129.0, 38.0 ],
					"fontname" : "Arial",
					"id" : "obj-23",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p find-units-where",
					"patching_rect" : [ 1356.0, 387.0, 95.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-24",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 732.0, 628.0, 458.0, 408.0 ],
						"bglocked" : 0,
						"defrect" : [ 732.0, 628.0, 458.0, 408.0 ],
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
									"text" : "t b l l l",
									"patching_rect" : [ 2.0, 69.0, 176.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "descriptor index",
									"patching_rect" : [ 247.0, 106.0, 89.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-2",
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
									"patching_rect" : [ 112.0, 105.0, 63.137695, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-3",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$descrid[$1]" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 112.0, 105.0, 63.137695, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "out: column fmat with unit indices that match, descr to set, value",
									"patching_rect" : [ 25.0, 324.0, 306.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.copy fmat",
									"patching_rect" : [ 2.0, 257.0, 74.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-5",
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
									"patching_rect" : [ 2.0, 229.0, 180.546387, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-6",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($comparandum refer $unitdata col $2)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 2.0, 229.0, 180.546387, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "fvec",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 257.0, 227.0, 105.12793, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-7",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "fvec",
									"name" : "comparandum1",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 257.0, 227.0, 105.12793, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.print set-descr",
									"patching_rect" : [ 52.0, 307.0, 98.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"saved_object_attributes" : 									{
										"ftm_objref_conv" : 0,
										"ftm_scope" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expression object",
									"patching_rect" : [ 249.0, 184.0, 89.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expression string",
									"patching_rect" : [ 247.0, 149.0, 89.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-10",
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
									"patching_rect" : [ 57.0, 145.0, 123.118652, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-11",
									"numinlets" : 3,
									"#triggerall" : 0,
									"numins" : 3,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(cat '($x '  $2  ' '  $3  ' )')" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 57.0, 145.0, 123.118652, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 57.0, 175.0, 68.345215, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-12",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(new expr $1)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 57.0, 175.0, 68.345215, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "find unit ids that match:",
									"patching_rect" : [ 0.0, 22.0, 215.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 2.0, 322.0, 15.0, 15.0 ],
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 2.0, 41.0, 15.0, 15.0 ],
									"id" : "obj-15",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "in: descriptor name or index, operator, value, descr to set, value",
									"patching_rect" : [ 27.0, 43.0, 307.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-16",
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
									"patching_rect" : [ 2.0, 289.0, 135.234375, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-17",
									"numinlets" : 7,
									"#triggerall" : 0,
									"numins" : 7,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($1 find $2) $descrid[$6] $7" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 2.0, 289.0, 135.234375, 17.0 ],
									"#init" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-17", 1 ],
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 3 ],
									"destination" : [ "obj-17", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
					"text" : "r #0_set-descr-where",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1356.0, 325.0, 114.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-25",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p set",
					"patching_rect" : [ 1356.0, 409.0, 32.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 694.0, 803.0, 595.0, 303.0 ],
						"bglocked" : 0,
						"defrect" : [ 694.0, 803.0, 595.0, 303.0 ],
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
									"text" : "init",
									"patching_rect" : [ 331.0, 42.0, 58.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 126.0, 222.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"patching_rect" : [ 126.0, 64.0, 89.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
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
									"patching_rect" : [ 126.0, 88.0, 17.99707, 17.0 ],
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
									"presentation_rect" : [ 126.0, 88.0, 17.99707, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.iter",
									"patching_rect" : [ 126.0, 112.0, 46.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-5",
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
									"maxclass" : "inlet",
									"patching_rect" : [ 126.0, 40.0, 15.0, 15.0 ],
									"id" : "obj-6",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "fmat with indices, descr, value",
									"patching_rect" : [ 154.0, 43.0, 151.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-7",
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
									"patching_rect" : [ 126.0, 147.0, 64.750488, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-8",
									"numinlets" : 4,
									"#triggerall" : 0,
									"numins" : 4,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_set $1 $3 $4" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 126.0, 147.0, 64.750488, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "send to unitdata --- faster than ($corpus[unitdata] set...)",
									"patching_rect" : [ 147.0, 224.0, 269.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-8", 1 ],
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
					"text" : "r #0_finish-soundfile",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 289.0, 182.0, 110.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-27",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "name, fmat",
					"patching_rect" : [ 405.0, 150.0, 76.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-28",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_add-soundfmat",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 395.0, 139.0, 100.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-29",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 864.0, 420.0, 50.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-30",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_status" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #1_catart.import",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"patching_rect" : [ 864.0, 445.0, 107.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<descriptor name or index> <operator> <value> <flag>",
					"linecount" : 2,
					"patching_rect" : [ 1362.0, 271.0, 130.0, 27.0 ],
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
					"text" : "p find-units-where",
					"patching_rect" : [ 1358.0, 303.0, 95.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-33",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 899.0, 450.0, 543.0, 399.0 ],
						"bglocked" : 0,
						"defrect" : [ 899.0, 450.0, 543.0, 399.0 ],
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
									"text" : "descriptor column",
									"linecount" : 2,
									"patching_rect" : [ 211.0, 226.0, 58.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
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
									"patching_rect" : [ 286.0, 145.0, 205.054688, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-2",
									"numinlets" : 4,
									"#triggerall" : 0,
									"numins" : 4,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(cat '(($x >= ' $2 ') && ($x <= '  $3  '))') $4" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 286.0, 145.0, 205.054688, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l l",
									"patching_rect" : [ 270.0, 71.0, 43.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 270.0, 43.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "in: descriptor name or index, value1, value2, flag",
									"linecount" : 2,
									"patching_rect" : [ 295.0, 45.0, 158.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-5",
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
									"patching_rect" : [ 302.0, 103.0, 121.505859, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-6",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$my[corpus][descrid][$1]" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 302.0, 103.0, 121.505859, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l l",
									"patching_rect" : [ 3.0, 69.0, 121.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "descriptor index",
									"linecount" : 2,
									"patching_rect" : [ 209.0, 101.0, 58.0, 27.0 ],
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
									"patching_rect" : [ 113.0, 105.0, 63.137695, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-9",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$descrid[$1]" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 113.0, 105.0, 63.137695, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 3.0, 289.0, 75.095215, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-10",
									"numinlets" : 3,
									"#triggerall" : 0,
									"numins" : 3,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($1 find $2) $3" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 3.0, 289.0, 75.095215, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "out: column fmat with unit indices that match, flag",
									"patching_rect" : [ 26.0, 324.0, 238.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.copy fmat",
									"patching_rect" : [ 3.0, 257.0, 74.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-12",
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
									"patching_rect" : [ 3.0, 229.0, 180.546387, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-13",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($comparandum refer $unitdata col $2)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 3.0, 229.0, 180.546387, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "fvec",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 258.0, 227.0, 99.129395, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-14",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "fvec",
									"name" : "comparandum",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 258.0, 227.0, 99.129395, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.print find-units",
									"patching_rect" : [ 174.0, 300.0, 98.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"saved_object_attributes" : 									{
										"ftm_objref_conv" : 0,
										"ftm_scope" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expression object, flag",
									"linecount" : 2,
									"patching_rect" : [ 209.0, 179.0, 58.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expression string, flag",
									"linecount" : 2,
									"patching_rect" : [ 209.0, 140.0, 58.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-17",
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
									"patching_rect" : [ 58.0, 145.0, 138.117188, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-18",
									"numinlets" : 4,
									"#triggerall" : 0,
									"numins" : 4,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(cat '($x '  $2  ' '  $3  ' )') $4" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 58.0, 145.0, 138.117188, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 58.0, 175.0, 83.34375, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-19",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(new expr $1) $2" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 58.0, 175.0, 83.34375, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "find unit ids that match:",
									"patching_rect" : [ 1.0, 22.0, 215.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-20",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 3.0, 322.0, 15.0, 15.0 ],
									"id" : "obj-21",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 3.0, 41.0, 15.0, 15.0 ],
									"id" : "obj-22",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "in: descriptor name or index, operator, value, flag",
									"linecount" : 2,
									"patching_rect" : [ 28.0, 43.0, 152.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-23",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 2 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-18", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [ 311.5, 216.0, 174.046387, 216.0 ]
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 2 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-2", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 295.5, 167.0, 67.5, 167.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-21", 0 ],
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
					"text" : "r #0_enable-where",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1358.0, 250.0, 119.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-34",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<fmat or mat or tuple of unit ids> <flag (0|1)>",
					"linecount" : 2,
					"patching_rect" : [ 1104.0, 275.0, 113.0, 27.0 ],
					"fontname" : "Arial",
					"id" : "obj-35",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_enable-units",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1104.0, 251.0, 94.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-36",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<unitid> <flag (0|1)>",
					"patching_rect" : [ 1107.0, 322.0, 100.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-37",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_enable-unit",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1104.0, 303.0, 94.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-38",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_clear-cache",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 323.0, 120.0, 112.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-39",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print",
					"patching_rect" : [ 97.0, 332.0, 32.0, 15.0 ],
					"fontname" : "Arial",
					"id" : "obj-40",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "mat",
					"ftm_objref_conv" : 0,
					"patching_rect" : [ 88.0, 350.0, 62.558105, 18.0 ],
					"fontname" : "Geneva",
					"id" : "obj-41",
					"persistence" : 0,
					"editor_interface" : "",
					"description" : "mat",
					"name" : "builtin",
					"numinlets" : 1,
					"scope" : 0,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"ftm_scope" : 0,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 88.0, 350.0, 62.558105, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p print-symbols",
					"patching_rect" : [ 345.0, 465.0, 82.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-42",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 393.0, 643.0, 417.0, 309.0 ],
						"bglocked" : 0,
						"defrect" : [ 393.0, 643.0, 417.0, 309.0 ],
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
									"patching_rect" : [ 33.0, 189.0, 185.982422, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-1",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print symbols for $1[0] :); (print $1[1])" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 33.0, 189.0, 185.982422, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 33.0, 103.0, 60.602051, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-2",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$descriptors" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 33.0, 103.0, 60.602051, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.iter @mode tuple",
									"patching_rect" : [ 33.0, 125.0, 105.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
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
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 33.0, 148.0, 224.083008, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-4",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(if ($1[2] == symbol) { $1[0] $1[$symbolcol] } )" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 33.0, 148.0, 224.083008, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 117.0, 63.0, 35.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "bang" ],
									"triscale" : 0.9,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 117.0, 81.0, 164.242676, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-6",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($descriptors[$1 $symbolcol] print)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 117.0, 81.0, 164.242676, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 33.0, 58.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
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
					"maxclass" : "ftm.object",
					"text" : "10",
					"ftm_objref_conv" : 0,
					"patching_rect" : [ 345.0, 448.0, 74.524414, 18.0 ],
					"fontname" : "Geneva",
					"id" : "obj-43",
					"persistence" : 0,
					"editor_interface" : "",
					"description" : "10",
					"name" : "symbolcol",
					"numinlets" : 1,
					"scope" : 0,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"ftm_scope" : 0,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 345.0, 448.0, 74.524414, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "columns: 0 descr-name, 1 number, 2 group, 3 analyser class, 4 analyser name, 5 class, 6 type, 7 vectorsize, 8 defmax, 9 hidden flag, 10 symbol table, 11 symbol lookup",
					"linecount" : 4,
					"patching_rect" : [ 360.0, 495.0, 196.0, 48.0 ],
					"fontname" : "Arial",
					"id" : "obj-44",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 750.0, 489.0, 124.0, 29.0 ],
					"fontname" : "Geneva",
					"id" : "obj-45",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_(print size ($1[0 0] size)", "_ max ($1[0 0] max))" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 750.0, 489.0, 124.0, 29.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p enable",
					"patching_rect" : [ 1493.0, 407.0, 62.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-46",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 402.0, 64.0, 515.0, 265.0 ],
						"bglocked" : 0,
						"defrect" : [ 402.0, 64.0, 515.0, 265.0 ],
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
									"patching_rect" : [ 317.0, 90.0, 116.091797, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-1",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$corpus[descrid][Active]" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 317.0, 90.0, 116.091797, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l b",
									"patching_rect" : [ 37.0, 66.0, 290.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 37.0, 90.0, 17.99707, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-3",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 37.0, 90.0, 17.99707, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.iter",
									"patching_rect" : [ 37.0, 114.0, 46.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-4",
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
									"maxclass" : "inlet",
									"patching_rect" : [ 37.0, 42.0, 15.0, 15.0 ],
									"id" : "obj-5",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "fmat with indices, flag",
									"patching_rect" : [ 65.0, 45.0, 109.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
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
									"patching_rect" : [ 37.0, 149.0, 154.899902, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-7",
									"numinlets" : 4,
									"#triggerall" : 0,
									"numins" : 4,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($corpus[unitdata] set $1 $4 $3)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 37.0, 149.0, 154.899902, 17.0 ],
									"#init" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
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
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-7", 1 ],
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
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 3 ],
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
					"maxclass" : "comment",
					"text" : "<descriptor name or index (SoundFile|SoundSet|UnitID)>, <float: id> <flag (0|1)>",
					"linecount" : 3,
					"patching_rect" : [ 1500.0, 346.0, 142.0, 38.0 ],
					"fontname" : "Arial",
					"id" : "obj-47",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p find-units-notequal",
					"patching_rect" : [ 1493.0, 386.0, 104.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-48",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 11.0, 62.0, 508.0, 408.0 ],
						"bglocked" : 0,
						"defrect" : [ 11.0, 62.0, 508.0, 408.0 ],
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
									"maxclass" : "ftm.object",
									"text" : "expr '($x != $1)'",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 249.0, 223.0, 127.351074, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-1",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "expr '($x != $1)'",
									"name" : "findme1",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 249.0, 223.0, 127.351074, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l l",
									"patching_rect" : [ 3.0, 69.0, 121.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "descriptor index",
									"patching_rect" : [ 248.0, 106.0, 89.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
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
									"patching_rect" : [ 113.0, 130.0, 100.271484, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-4",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$corpus[descrid][$1]" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 113.0, 130.0, 100.271484, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 3.0, 289.0, 119.378906, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-5",
									"numinlets" : 3,
									"#triggerall" : 0,
									"numins" : 3,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($1 find $findme1 $2) $3" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 3.0, 289.0, 119.378906, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "out: column fmat with unit indices that match",
									"patching_rect" : [ 26.0, 324.0, 215.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.copy fmat",
									"patching_rect" : [ 3.0, 257.0, 74.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-7",
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
									"patching_rect" : [ 3.0, 229.0, 186.017578, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-8",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($descr1 refer $corpus[unitdata] col $2)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 3.0, 229.0, 186.017578, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "fvec",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 249.0, 249.0, 67.466797, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-9",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "fvec",
									"name" : "descr1",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 249.0, 249.0, 67.466797, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.print find-units",
									"patching_rect" : [ 262.0, 318.0, 98.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"saved_object_attributes" : 									{
										"ftm_objref_conv" : 0,
										"ftm_scope" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expression object",
									"patching_rect" : [ 386.0, 225.0, 89.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-11",
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
									"patching_rect" : [ 58.0, 175.0, 32.995605, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-12",
									"numinlets" : 3,
									"#triggerall" : 0,
									"numins" : 3,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$2 $3" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 58.0, 175.0, 32.995605, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "find unit ids that match:",
									"patching_rect" : [ 1.0, 22.0, 215.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 3.0, 322.0, 15.0, 15.0 ],
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 3.0, 41.0, 15.0, 15.0 ],
									"id" : "obj-15",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "in: tag, id, value",
									"patching_rect" : [ 28.0, 43.0, 215.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-5", 1 ],
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
					"text" : "r #0_solo",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1493.0, 325.0, 56.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-49",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p imname",
					"patching_rect" : [ 1033.0, 191.0, 48.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-50",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 594.0, 361.0, 334.0, 420.0 ],
						"bglocked" : 0,
						"defrect" : [ 594.0, 361.0, 334.0, 420.0 ],
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
									"text" : "tosymbol",
									"patching_rect" : [ 20.0, 283.0, 51.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "test",
									"patching_rect" : [ 173.0, 73.0, 133.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-2",
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
									"patching_rect" : [ 260.0, 117.0, 109.429688, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-3",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_import test.unitdata.txt" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 260.0, 117.0, 109.429688, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.print name-out",
									"patching_rect" : [ 126.0, 319.0, 96.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 0,
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
									"text" : "loadmess substitute %0",
									"patching_rect" : [ 136.0, 217.0, 117.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 20.0, 320.0, 15.0, 15.0 ],
									"id" : "obj-6",
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
									"patching_rect" : [ 190.0, 116.0, 55.245117, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-7",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_import test" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 190.0, 116.0, 55.245117, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 237.0, 93.0, 40.910156, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-8",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_import -" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 237.0, 93.0, 40.910156, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.print name-in",
									"patching_rect" : [ 115.0, 194.0, 94.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 0,
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
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 179.0, 93.0, 34.498535, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-10",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_import" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 179.0, 93.0, 34.498535, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1_catart.data",
									"patching_rect" : [ 179.0, 151.0, 95.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 87.0, 201.0, 15.0, 15.0 ],
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog TEXT",
									"patching_rect" : [ 20.0, 168.0, 83.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 - bang",
									"patching_rect" : [ 20.0, 125.0, 63.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp \\\\.(descriptors|soundfiles|unitdata|ds|sf|ss|sy|ud)\\\\.txt",
									"patching_rect" : [ 20.0, 248.0, 293.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 5,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 20.0, 29.0, 15.0, 15.0 ],
									"id" : "obj-16",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "normalise import basename",
									"patching_rect" : [ 42.0, 31.0, 133.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-17",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl len",
									"patching_rect" : [ 106.0, 292.0, 34.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-18",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 3 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 3 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 2 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 0 ],
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
					"text" : "r #0_merge",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1033.0, 139.0, 65.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-51",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p merge",
					"patching_rect" : [ 1033.0, 212.0, 46.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-52",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 432.0, 610.0, 427.0, 410.0 ],
						"bglocked" : 0,
						"defrect" : [ 432.0, 610.0, 427.0, 410.0 ],
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
									"patching_rect" : [ 222.0, 243.0, 282.266602, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-1",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print Warning: merge of (cat $1 .sy.txt) not yet implemented)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 222.0, 243.0, 282.266602, 17.0 ],
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
									"patching_rect" : [ 357.0, 18.0, 214.0, 29.0 ],
									"fontname" : "Geneva",
									"id" : "obj-2",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($newdescriptors import (cat $1 .ds.txt));", "_(if ($newdescriptors == $descriptors) $1 error)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 357.0, 18.0, 214.0, 29.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "fmat",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 275.0, 316.0, 67.871094, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-3",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "fmat",
									"name" : "newud",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 275.0, 316.0, 67.871094, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p merge-unitdata",
									"patching_rect" : [ 77.0, 322.0, 87.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-4",
									"numinlets" : 2,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 800.0, 663.0, 397.0, 323.0 ],
										"bglocked" : 0,
										"defrect" : [ 800.0, 663.0, 397.0, 323.0 ],
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
													"patching_rect" : [ 29.0, 157.0, 291.442383, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-1",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_((($1 colref $descrid[SoundSet]) mul 0) add $corpus[soundset])" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 29.0, 157.0, 291.442383, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "TODO: merge soundset indices, merge identical soundfiles",
													"linecount" : 3,
													"patching_rect" : [ 194.0, 174.0, 119.0, 38.0 ],
													"fontname" : "Arial",
													"id" : "obj-2",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l l l",
													"patching_rect" : [ 14.0, 61.0, 57.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-3",
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "", "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 44.0, 129.0, 184.901367, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-4",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(($1 colref $descrid[SoundFile]) add $2)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 44.0, 129.0, 184.901367, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 59.0, 104.0, 230.191406, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-5",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(($1 colref $descrid[UnitId]) add ($unitdata rows))" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 59.0, 104.0, 230.191406, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "shift unitid and soundfile index, append matrix",
													"patching_rect" : [ 66.0, 60.0, 224.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-6",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "num soundfiles before",
													"patching_rect" : [ 228.0, 31.0, 111.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-7",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 205.0, 31.0, 15.0, 15.0 ],
													"id" : "obj-8",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 14.0, 31.0, 15.0, 15.0 ],
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
													"text" : "loaded unitdata matrix to merge",
													"patching_rect" : [ 36.0, 31.0, 154.0, 17.0 ],
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
													"patching_rect" : [ 14.0, 205.0, 105.681152, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-11",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($unitdata append $1)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 14.0, 205.0, 105.681152, 17.0 ],
													"#init" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 3 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 2 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-1", 0 ],
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
									"maxclass" : "comment",
									"text" : "symbols TODO",
									"patching_rect" : [ 274.0, 232.0, 100.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "get sizes",
									"patching_rect" : [ 274.0, 199.0, 100.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
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
									"patching_rect" : [ 149.0, 196.0, 86.802246, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-7",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($soundfiles rows)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 149.0, 196.0, 86.802246, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 3,
									"presentation_linecount" : 3,
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 1.0, 118.0, 250.0, 41.0 ],
									"fontname" : "Geneva",
									"id" : "obj-8",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print $newdescriptors); (print $descriptors);", "_(print •CataRT error•: Descriptors to be merged", "_from corpus $2 incompatible with present descriptors.);" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 1.0, 118.0, 250.0, 41.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route error",
									"patching_rect" : [ 1.0, 92.0, 62.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "mat",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 275.0, 66.0, 102.293457, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-10",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "mat",
									"name" : "newdescriptors",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 275.0, 66.0, 102.293457, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p merge-symbols",
									"patching_rect" : [ 125.0, 236.0, 95.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 779.0, 718.0, 360.0, 263.0 ],
										"bglocked" : 0,
										"defrect" : [ 779.0, 718.0, 360.0, 263.0 ],
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
													"patching_rect" : [ 50.0, 133.0, 134.548828, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-1",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($soundsetnames set $1 $2)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 50.0, 133.0, 134.548828, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ftm.iter @mode row",
													"patching_rect" : [ 50.0, 99.0, 101.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-2",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"saved_object_attributes" : 													{
														"ftm_objref_conv" : 0,
														"ftm_scope" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "recreate dict",
													"patching_rect" : [ 64.0, 81.0, 89.0, 17.0 ],
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
													"patching_rect" : [ 50.0, 46.0, 110.835938, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-4",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($soundsets import $1)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 50.0, 46.0, 110.835938, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 50.0, 21.0, 15.0, 15.0 ],
													"id" : "obj-5",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
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
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-1", 1 ],
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
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 125.0, 219.0, 73.860352, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-12",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(cat $1 .sy.txt)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 125.0, 219.0, 73.860352, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "unit data",
									"patching_rect" : [ 275.0, 302.0, 100.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l l l b",
									"patching_rect" : [ 53.0, 171.0, 109.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 5,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "", "", "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 53.0, 342.0, 15.0, 15.0 ],
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 1.0, 21.0, 15.0, 15.0 ],
									"id" : "obj-16",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p merge-soundfiles",
									"patching_rect" : [ 101.0, 275.0, 96.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-17",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 776.0, 545.0, 360.0, 263.0 ],
										"bglocked" : 0,
										"defrect" : [ 776.0, 545.0, 360.0, 263.0 ],
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
													"text" : "p load-absolute-or-from-path",
													"patching_rect" : [ 50.0, 138.0, 144.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 882.0, 715.0, 377.0, 334.0 ],
														"bglocked" : 0,
														"defrect" : [ 882.0, 715.0, 377.0, 334.0 ],
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
																	"text" : "t l l l",
																	"patching_rect" : [ 62.0, 63.0, 122.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "use file found in path as $1",
																	"linecount" : 2,
																	"patching_rect" : [ 188.0, 218.0, 74.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-2",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 127.0, 224.0, 32.995605, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-3",
																	"numinlets" : 4,
																	"#triggerall" : 0,
																	"numins" : 4,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_$1 $4" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 127.0, 224.0, 32.995605, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route notfound",
																	"patching_rect" : [ 62.0, 145.0, 75.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-4",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "use given full path $2",
																	"linecount" : 2,
																	"patching_rect" : [ 0.0, 196.0, 58.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-5",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 62.0, 200.0, 32.995605, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-6",
																	"numinlets" : 4,
																	"#triggerall" : 0,
																	"numins" : 4,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_$3 $4" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 62.0, 200.0, 32.995605, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "absolutepath",
																	"patching_rect" : [ 62.0, 117.0, 66.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "if given full path $2 not found, try in search path with $1 and import limit $3 (LATER: but compare duration $4!)",
																	"linecount" : 2,
																	"patching_rect" : [ 86.0, 28.0, 272.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 62.0, 90.0, 17.99707, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-9",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_$1" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 62.0, 90.0, 17.99707, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 62.0, 39.0, 15.0, 15.0 ],
																	"id" : "obj-10",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 62.0, 256.0, 15.0, 15.0 ],
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 1 ],
																	"destination" : [ "obj-6", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 2 ],
																	"destination" : [ "obj-3", 1 ],
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
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 50.0, 35.0, 51.51416, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-2",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(new mat)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 50.0, 35.0, 51.51416, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "sf name, import limit [s]",
													"linecount" : 2,
													"patching_rect" : [ 68.0, 194.0, 75.0, 27.0 ],
													"fontname" : "Arial",
													"id" : "obj-3",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_add-soundfile",
													"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
													"patching_rect" : [ 50.0, 171.0, 110.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-4",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ftm.print",
													"patching_rect" : [ 192.0, 173.0, 50.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-5",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"saved_object_attributes" : 													{
														"ftm_objref_conv" : 0,
														"ftm_scope" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ftm.iter @mode row",
													"patching_rect" : [ 50.0, 107.0, 101.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-6",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"saved_object_attributes" : 													{
														"ftm_objref_conv" : 0,
														"ftm_scope" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "reload sound files",
													"patching_rect" : [ 64.0, 88.0, 89.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-7",
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
													"patching_rect" : [ 50.0, 60.0, 90.265137, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-8",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($1 import $2); $1" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 50.0, 60.0, 90.265137, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 50.0, 10.0, 15.0, 15.0 ],
													"id" : "obj-9",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 1 ],
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
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
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
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 101.0, 257.0, 72.225586, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-18",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(cat $1 .sf.txt)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 101.0, 257.0, 72.225586, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 3,
									"presentation_linecount" : 3,
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 1.0, 47.0, 239.0, 41.0 ],
									"fontname" : "Geneva",
									"id" : "obj-19",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($newdescriptors import (cat $1 .ds.txt));", "_(if ((((new mat) set $newdescriptors) cols 1) equals", "_      (((new mat) set $descriptors) cols 1))  $1 error)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 1.0, 47.0, 239.0, 41.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 77.0, 302.0, 151.467773, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-20",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($newud import (cat $1 .ud.txt))" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 77.0, 302.0, 151.467773, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "merge into corpus from files named <name>.sf.txt <name>.ds.txt <name>.ud.txt",
									"linecount" : 2,
									"patching_rect" : [ 150.0, 21.0, 209.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-21",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "corpusfile prefix <name>",
									"patching_rect" : [ 21.0, 21.0, 122.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-22",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "descriptors",
									"patching_rect" : [ 275.0, 49.0, 100.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-23",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "soundfiles",
									"patching_rect" : [ 274.0, 258.0, 100.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-24",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 4 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 2 ],
									"destination" : [ "obj-18", 0 ],
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
									"source" : [ "obj-14", 3 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
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
					"maxclass" : "comment",
					"text" : "init descriptors",
					"linecount" : 3,
					"patching_rect" : [ 1022.0, 333.0, 39.0, 38.0 ],
					"fontname" : "Arial",
					"id" : "obj-53",
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
					"patching_rect" : [ 966.0, 354.0, 50.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-54",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_init" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #1_catart.select",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"patching_rect" : [ 966.0, 380.0, 101.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-55",
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
					"patching_rect" : [ 952.0, 335.0, 79.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-56",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_refresh-corpus" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "todo: tell import to give that to gbr.fmat.slice",
					"linecount" : 2,
					"patching_rect" : [ 1538.0, 180.0, 115.0, 27.0 ],
					"fontname" : "Arial",
					"id" : "obj-57",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #1_catart.import",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"patching_rect" : [ 1521.0, 224.0, 111.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-58",
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
					"patching_rect" : [ 1523.0, 163.0, 122.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-59",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_($corpus set channel $1)" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 1523.0, 163.0, 122.0, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_set-channel",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1523.0, 118.0, 120.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-60",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2",
					"patching_rect" : [ 1389.0, 184.0, 16.0, 15.0 ],
					"fontname" : "Arial",
					"id" : "obj-61",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"patching_rect" : [ 1361.0, 184.0, 16.0, 15.0 ],
					"fontname" : "Arial",
					"id" : "obj-62",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #1_catart.synthesis",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"patching_rect" : [ 1361.0, 225.0, 115.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-63",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel mono stereo all",
					"patching_rect" : [ 1361.0, 163.0, 95.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-64",
					"numinlets" : 1,
					"numoutlets" : 4,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "bang", "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set number of channel to analyse (default 0)",
					"linecount" : 2,
					"patching_rect" : [ 1538.0, 137.0, 115.0, 27.0 ],
					"fontname" : "Arial",
					"id" : "obj-65",
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
					"patching_rect" : [ 1361.0, 205.0, 223.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-66",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_($corpus set numchannels $1); numchannels $1" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 1361.0, 205.0, 223.0, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set number of channels to import (mono, stereo)",
					"linecount" : 2,
					"patching_rect" : [ 1371.0, 138.0, 136.0, 27.0 ],
					"fontname" : "Arial",
					"id" : "obj-67",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_channelmode",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1361.0, 118.0, 120.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-68",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 923.0, 419.0, 15.0, 15.0 ],
					"id" : "obj-69",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "import finished",
					"patching_rect" : [ 942.0, 421.0, 100.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-70",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p enable",
					"patching_rect" : [ 1168.0, 332.0, 100.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-71",
					"numinlets" : 3,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 935.0, 856.0, 595.0, 303.0 ],
						"bglocked" : 0,
						"defrect" : [ 935.0, 856.0, 595.0, 303.0 ],
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
									"text" : "init",
									"patching_rect" : [ 325.0, 42.0, 58.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 120.0, 222.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 303.0, 40.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 220.0, 168.0, 116.091797, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-4",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$corpus[descrid][Active]" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 220.0, 168.0, 116.091797, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 30.0, 196.0, 64.750488, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-5",
									"numinlets" : 3,
									"#triggerall" : 0,
									"numins" : 3,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_set $1 $3 $2" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 30.0, 196.0, 64.750488, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 30.0, 40.0, 15.0, 15.0 ],
									"id" : "obj-6",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "index, flag",
									"patching_rect" : [ 53.0, 42.0, 58.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-7",
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
									"patching_rect" : [ 400.0, 88.0, 116.091797, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-8",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$corpus[descrid][Active]" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 400.0, 88.0, 116.091797, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l b",
									"patching_rect" : [ 120.0, 64.0, 290.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 120.0, 88.0, 17.99707, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-10",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 120.0, 88.0, 17.99707, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.iter",
									"patching_rect" : [ 120.0, 112.0, 46.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-11",
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
									"maxclass" : "inlet",
									"patching_rect" : [ 120.0, 40.0, 15.0, 15.0 ],
									"id" : "obj-12",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "fmat with indices, flag",
									"patching_rect" : [ 148.0, 43.0, 109.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
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
									"patching_rect" : [ 120.0, 147.0, 64.750488, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-14",
									"numinlets" : 4,
									"#triggerall" : 0,
									"numins" : 4,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_set $1 $4 $3" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 120.0, 147.0, 64.750488, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "send to unitdata --- faster than ($corpus[unitdata] set...)",
									"patching_rect" : [ 141.0, 224.0, 269.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 2 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-14", 3 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 2 ],
									"hidden" : 0,
									"midpoints" : [ 229.5, 189.0, 85.250488, 189.0 ]
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
									"source" : [ "obj-14", 0 ],
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 0 ],
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
					"maxclass" : "comment",
					"text" : "<descriptor name or index (SoundFile|SoundSet|UnitID)>, <float: id> <flag (0|1)>",
					"linecount" : 3,
					"patching_rect" : [ 1222.0, 269.0, 142.0, 38.0 ],
					"fontname" : "Arial",
					"id" : "obj-72",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p find-units-equal",
					"patching_rect" : [ 1213.0, 306.0, 90.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-73",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 90.0, 518.0, 458.0, 408.0 ],
						"bglocked" : 0,
						"defrect" : [ 90.0, 518.0, 458.0, 408.0 ],
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
									"maxclass" : "ftm.object",
									"text" : "expr '($x == $1)'",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 249.0, 223.0, 124.62207, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-1",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "expr '($x == $1)'",
									"name" : "findme",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 249.0, 223.0, 124.62207, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l l",
									"patching_rect" : [ 3.0, 69.0, 121.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "descriptor index",
									"patching_rect" : [ 248.0, 106.0, 89.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
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
									"patching_rect" : [ 113.0, 130.0, 100.271484, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-4",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$corpus[descrid][$1]" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 113.0, 130.0, 100.271484, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 3.0, 289.0, 113.380371, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-5",
									"numinlets" : 3,
									"#triggerall" : 0,
									"numins" : 3,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($1 find $findme $2) $3" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 3.0, 289.0, 113.380371, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "out: column fmat with unit indices that match",
									"patching_rect" : [ 26.0, 324.0, 215.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.copy fmat",
									"patching_rect" : [ 3.0, 257.0, 74.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-7",
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
									"patching_rect" : [ 3.0, 229.0, 180.019043, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-8",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($descr refer $corpus[unitdata] col $2)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 3.0, 229.0, 180.019043, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "fvec",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 249.0, 249.0, 61.468262, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-9",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "fvec",
									"name" : "descr",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 249.0, 249.0, 61.468262, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.print find-units",
									"patching_rect" : [ 262.0, 318.0, 98.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"saved_object_attributes" : 									{
										"ftm_objref_conv" : 0,
										"ftm_scope" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expression object",
									"patching_rect" : [ 386.0, 225.0, 89.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-11",
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
									"patching_rect" : [ 58.0, 175.0, 32.995605, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-12",
									"numinlets" : 3,
									"#triggerall" : 0,
									"numins" : 3,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$2 $3" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 58.0, 175.0, 32.995605, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "find unit ids that match:",
									"patching_rect" : [ 1.0, 22.0, 215.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 3.0, 322.0, 15.0, 15.0 ],
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 3.0, 41.0, 15.0, 15.0 ],
									"id" : "obj-15",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "in: tag, id, value",
									"patching_rect" : [ 28.0, 43.0, 215.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-5", 1 ],
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
					"text" : "r #0_enable",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1213.0, 251.0, 94.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-74",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_export-set",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1159.0, 182.0, 90.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-75",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "filename prefix setname (same names are merged)",
					"linecount" : 2,
					"patching_rect" : [ 1111.0, 221.0, 130.0, 27.0 ],
					"fontname" : "Arial",
					"id" : "obj-76",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_import-set",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1103.0, 203.0, 90.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-77",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 671.0, 220.0, 139.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-78",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_($corpus set workingset $1)" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_workset",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 671.0, 198.0, 110.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-79",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "corpusname[2]",
					"text" : "route 0",
					"patching_rect" : [ 1064.0, 449.0, 43.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-80",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "corpusname[1]",
					"text" : "gate 1 1",
					"patching_rect" : [ 1027.0, 477.0, 47.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-81",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "corpusname",
					"text" : "pattr corpusname @autorestore 0",
					"patching_rect" : [ 1064.0, 429.0, 162.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-82",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"restore" : [ 0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1 s 0",
					"patching_rect" : [ 1049.0, 407.0, 40.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-83",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print",
					"patching_rect" : [ 69.0, 64.0, 32.0, 15.0 ],
					"fontname" : "Arial",
					"id" : "obj-84",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p imname",
					"patching_rect" : [ 968.0, 235.0, 48.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-85",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 353.0, 393.0, 338.0, 355.0 ],
						"bglocked" : 0,
						"defrect" : [ 353.0, 393.0, 338.0, 355.0 ],
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
									"text" : "test",
									"patching_rect" : [ 173.0, 73.0, 133.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
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
									"patching_rect" : [ 260.0, 117.0, 109.429688, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-2",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_import test.unitdata.txt" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 260.0, 117.0, 109.429688, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.print name-out",
									"patching_rect" : [ 112.0, 283.0, 96.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
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
									"text" : "loadmess substitute %0",
									"patching_rect" : [ 136.0, 217.0, 117.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 20.0, 289.0, 15.0, 15.0 ],
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
									"patching_rect" : [ 190.0, 116.0, 55.245117, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-6",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_import test" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 190.0, 116.0, 55.245117, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 237.0, 93.0, 40.910156, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-7",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_import -" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 237.0, 93.0, 40.910156, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.print name-in",
									"patching_rect" : [ 57.0, 64.0, 94.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 0,
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
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 179.0, 93.0, 34.498535, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-9",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_import" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 179.0, 93.0, 34.498535, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1_catart.data",
									"patching_rect" : [ 179.0, 151.0, 95.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 87.0, 201.0, 15.0, 15.0 ],
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog TEXT",
									"patching_rect" : [ 20.0, 168.0, 83.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 - bang",
									"patching_rect" : [ 20.0, 125.0, 63.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp \\\\.(descriptors|soundfiles|unitdata|ds|sf|ud)\\\\.txt",
									"patching_rect" : [ 20.0, 248.0, 268.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 5,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 20.0, 29.0, 15.0, 15.0 ],
									"id" : "obj-15",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "normalise import basename",
									"patching_rect" : [ 42.0, 31.0, 133.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 3 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 3 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 2 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-11", 0 ],
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
					"text" : "t b b",
					"patching_rect" : [ 968.0, 278.0, 30.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-86",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p reimport",
					"patching_rect" : [ 968.0, 256.0, 58.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-87",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 531.0, 490.0, 387.0, 291.0 ],
						"bglocked" : 0,
						"defrect" : [ 531.0, 490.0, 387.0, 291.0 ],
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
									"text" : "TODO: recompute unit data with import",
									"linecount" : 2,
									"patching_rect" : [ 40.0, 200.0, 101.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_clear",
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"patching_rect" : [ 109.0, 90.0, 84.0, 17.0 ],
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
									"text" : "t b l l l b",
									"patching_rect" : [ 13.0, 62.0, 109.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 5,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "", "", "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 13.0, 233.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 13.0, 21.0, 15.0, 15.0 ],
									"id" : "obj-5",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p import-soundfiles",
									"patching_rect" : [ 61.0, 173.0, 98.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 705.0, 513.0, 306.0, 261.0 ],
										"bglocked" : 0,
										"defrect" : [ 705.0, 513.0, 306.0, 261.0 ],
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
													"text" : "later: if given path $2 not found, try in search path with $1, but compare duration $4!",
													"linecount" : 2,
													"patching_rect" : [ 63.0, 130.0, 228.0, 27.0 ],
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
													"patching_rect" : [ 7.0, 139.0, 32.995605, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-2",
													"numinlets" : 3,
													"#triggerall" : 0,
													"numins" : 3,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_$2 $3" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 7.0, 139.0, 32.995605, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 7.0, 35.0, 51.51416, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-3",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(new mat)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 7.0, 35.0, 51.51416, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "sf name, import limit [s]",
													"linecount" : 2,
													"patching_rect" : [ 25.0, 194.0, 75.0, 27.0 ],
													"fontname" : "Arial",
													"id" : "obj-4",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_add-soundfile",
													"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
													"patching_rect" : [ 7.0, 171.0, 110.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-5",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ftm.print",
													"patching_rect" : [ 149.0, 173.0, 50.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-6",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"saved_object_attributes" : 													{
														"ftm_objref_conv" : 0,
														"ftm_scope" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ftm.iter @mode row",
													"patching_rect" : [ 7.0, 107.0, 101.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-7",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"saved_object_attributes" : 													{
														"ftm_objref_conv" : 0,
														"ftm_scope" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "reload sound files",
													"patching_rect" : [ 21.0, 88.0, 89.0, 17.0 ],
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
													"patching_rect" : [ 7.0, 60.0, 90.265137, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-9",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($1 import $2); $1" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 7.0, 60.0, 90.265137, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 7.0, 10.0, 15.0, 15.0 ],
													"id" : "obj-10",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-7", 0 ],
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-3", 0 ],
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
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 61.0, 152.0, 72.225586, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-7",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(cat $1 .sf.txt)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 61.0, 152.0, 72.225586, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "import corpus from files named <name>.soundfiles.txt <name>.descriptors.txt <name>.unitdata.txt Can be MPEG-7 and Cuidado descriptors calculcated in Matlab by Geoffroy's GDClass.m:",
									"linecount" : 5,
									"patching_rect" : [ 157.0, 21.0, 222.0, 58.0 ],
									"fontname" : "Arial",
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "corpusfile prefix <name>",
									"patching_rect" : [ 33.0, 21.0, 122.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "use descriptors as is",
									"patching_rect" : [ 272.0, 122.0, 100.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "soundfiles",
									"patching_rect" : [ 272.0, 153.0, 100.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 2 ],
									"destination" : [ "obj-7", 0 ],
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
									"source" : [ "obj-3", 4 ],
									"destination" : [ "obj-2", 0 ],
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
					"text" : "r #0_reimport",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 932.0, 171.0, 90.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-88",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p create-live-file",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"patching_rect" : [ 395.0, 221.0, 116.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-92",
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 1111.0, 310.0, 546.0, 216.0 ],
						"bglocked" : 0,
						"defrect" : [ 1111.0, 310.0, 546.0, 216.0 ],
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
									"linecount" : 2,
									"presentation_linecount" : 2,
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 165.0, 60.0, 139.895508, 29.0 ],
									"fontname" : "Geneva",
									"id" : "obj-18",
									"numinlets" : 4,
									"#triggerall" : 0,
									"numins" : 4,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($2 equals $4) ($2 rows) $3,", "_($4 = $2);" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 165.0, 60.0, 139.895508, 29.0 ],
									"#init" : "0 (new fmat) 0 (new fmat)"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 165.0, 0.0, 15.0, 15.0 ],
									"id" : "obj-15",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 180.0, 20.0, 0.0, 0.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "livefmat:<name> <fmat> <current sample position>  reset time offset on first append, keep offset to continue in fmat (later offset handles wraparound)",
									"linecount" : 2,
									"patching_rect" : [ 180.0, 0.0, 336.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"presentation_rect" : [ 203.0, 22.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "can't work!!!",
									"patching_rect" : [ 360.0, 60.0, 108.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"presentation_rect" : [ 349.0, 86.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 360.0, 75.0, 120.304688, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-12",
									"numinlets" : 3,
									"#triggerall" : 0,
									"numins" : 3,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(if ($2 == $3) ($2 rows))" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 360.0, 75.0, 120.304688, 17.0 ],
									"#init" : "0 (new fmat) (new fmat)"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "IF it is the same fmat as with last add-soundfmat message, DON't reset",
									"patching_rect" : [ 180.0, 45.0, 294.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"presentation_rect" : [ 169.0, 32.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 15.0, 60.0, 68.598633, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-1",
									"numinlets" : 3,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_0 ($2 rows) 0" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 15.0, 60.0, 68.598633, 17.0 ],
									"#init" : "0 (new fmat) (new fmat)"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 1.0, 130.0, 147.56543, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-2",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$1 0 (($2 rows) / $msr) $2 1 1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 1.0, 130.0, 147.56543, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 0.0, 0.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "name, fmat to add",
									"patching_rect" : [ 23.0, 0.0, 91.0, 17.0 ],
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
									"patching_rect" : [ 255.0, 150.0, 15.0, 15.0 ],
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set max sample size, reset record position",
									"linecount" : 2,
									"patching_rect" : [ 277.0, 150.0, 108.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 1.0, 159.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "out list of path, import limit [s], imported duration [ms], sound fmat, live flag, in RAM --> add-soundfile",
									"linecount" : 2,
									"patching_rect" : [ 23.0, 157.0, 226.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 0 ],
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
					"maxclass" : "comment",
					"text" : "live corpus input",
					"patching_rect" : [ 437.0, 124.0, 100.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-94",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_reserve-live",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 420.0, 182.0, 106.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-95",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p exname",
					"patching_rect" : [ 979.0, 191.0, 48.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-96",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 380.0, 718.0, 341.0, 311.0 ],
						"bglocked" : 0,
						"defrect" : [ 380.0, 718.0, 341.0, 311.0 ],
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
									"text" : "test",
									"patching_rect" : [ 173.0, 24.0, 133.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.print name-out",
									"linecount" : 2,
									"patching_rect" : [ 112.0, 234.0, 50.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
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
									"text" : "loadmess substitute %0",
									"patching_rect" : [ 136.0, 168.0, 117.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 20.0, 240.0, 15.0, 15.0 ],
									"id" : "obj-4",
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
									"patching_rect" : [ 190.0, 67.0, 55.038574, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-5",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_export test" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 190.0, 67.0, 55.038574, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 237.0, 44.0, 40.703613, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-6",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_export -" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 237.0, 44.0, 40.703613, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.print name-in",
									"patching_rect" : [ 61.0, 50.0, 94.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 0,
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
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 179.0, 44.0, 34.291992, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-8",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_export" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 179.0, 44.0, 34.291992, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1_catart.data",
									"patching_rect" : [ 179.0, 102.0, 95.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 87.0, 152.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "savedialog TEXT",
									"patching_rect" : [ 20.0, 119.0, 83.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 - bang",
									"patching_rect" : [ 20.0, 76.0, 73.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp \\\\.(descriptors|soundfiles|unitdata|ds|sf|ss|sy|ud)\\\\.txt",
									"patching_rect" : [ 20.0, 199.0, 293.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 5,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 20.0, 42.0, 15.0, 15.0 ],
									"id" : "obj-14",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "normalise import basename",
									"patching_rect" : [ 15.0, 25.0, 133.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-9", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 3 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 3 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-11", 0 ],
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
									"source" : [ "obj-11", 2 ],
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
					"text" : "p imname",
					"patching_rect" : [ 923.0, 191.0, 48.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-97",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 594.0, 361.0, 453.0, 418.0 ],
						"bglocked" : 0,
						"defrect" : [ 594.0, 361.0, 453.0, 418.0 ],
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
									"maxclass" : "message",
									"text" : "chinese-sil",
									"patching_rect" : [ 86.0, 121.0, 68.0, 15.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 87.0, 140.0, 281.185547, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-2",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_import (cat /Users/schwarz/patches/cataRT/0.7-corpora/ $1)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 87.0, 140.0, 281.185547, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"patching_rect" : [ 0.0, 283.0, 51.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "test",
									"patching_rect" : [ 153.0, 73.0, 133.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-4",
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
									"patching_rect" : [ 240.0, 117.0, 109.429688, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-5",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_import test.unitdata.txt" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 240.0, 117.0, 109.429688, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.print name-out",
									"patching_rect" : [ 106.0, 319.0, 96.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
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
									"text" : "loadmess substitute %0",
									"patching_rect" : [ 116.0, 217.0, 117.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 0.0, 320.0, 15.0, 15.0 ],
									"id" : "obj-8",
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
									"patching_rect" : [ 170.0, 116.0, 55.245117, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-9",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_import test" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 170.0, 116.0, 55.245117, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 217.0, 93.0, 40.910156, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-10",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_import -" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 217.0, 93.0, 40.910156, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.print name-in",
									"patching_rect" : [ 95.0, 194.0, 94.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
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
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 159.0, 93.0, 34.498535, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-12",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_import" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 159.0, 93.0, 34.498535, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1_catart.data",
									"patching_rect" : [ 159.0, 166.0, 95.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 67.0, 201.0, 15.0, 15.0 ],
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog TEXT",
									"patching_rect" : [ 0.0, 168.0, 83.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 - bang",
									"patching_rect" : [ 0.0, 125.0, 63.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp \\\\.(descriptors|soundfiles|unitdata|ds|sf|ss|sy|ud)\\\\.txt",
									"patching_rect" : [ 0.0, 248.0, 293.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-17",
									"numinlets" : 1,
									"numoutlets" : 5,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 0.0, 29.0, 15.0, 15.0 ],
									"id" : "obj-18",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "normalise import basename",
									"patching_rect" : [ 22.0, 31.0, 133.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-19",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl len",
									"patching_rect" : [ 86.0, 292.0, 34.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-20",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-13", 0 ],
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
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 3 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 3 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 2 ],
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
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
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
					"text" : "catart-license",
					"patching_rect" : [ 675.0, 15.0, 63.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-98",
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "cataRT - Copyright (C) 2005-2007 by Diemo Schwarz, Real-Time Music Interaction Team (IMTR), Ircam--Centre Pompidou",
					"patching_rect" : [ 4.0, 14.0, 684.0, 20.0 ],
					"fontname" : "Arial",
					"id" : "obj-99",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b b",
					"patching_rect" : [ 923.0, 234.0, 38.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-100",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "bang", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 937.0, 315.0, 50.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-101",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_redraw" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "update displays",
					"patching_rect" : [ 75.0, 498.0, 79.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-102",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b",
					"patching_rect" : [ 43.0, 193.0, 58.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-103",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #1_catart.lcd",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"patching_rect" : [ 74.0, 478.0, 107.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-104",
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
					"patching_rect" : [ 43.0, 311.0, 50.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-105",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_redraw" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1_catart.data",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"patching_rect" : [ 200.0, 35.0, 107.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-106",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p clear",
					"patching_rect" : [ 91.0, 233.0, 41.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-107",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 200.0, 525.0, 391.0, 244.0 ],
						"bglocked" : 0,
						"defrect" : [ 200.0, 525.0, 391.0, 244.0 ],
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
									"text" : "remove data (descriptors are removed by init)",
									"patching_rect" : [ 64.0, 38.0, 221.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 7,
									"presentation_linecount" : 7,
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 42.0, 77.0, 158.686523, 89.0 ],
									"fontname" : "Geneva",
									"id" : "obj-2",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($unitstat zero);", "_($unitdata rows 0);", "_($soundfiles rows 0);", "_($sounddata rows 0);", "_($corpus set addindex -1);", "_($corpus set lastsoundfile 0);", "_($corpus set lastsoundfileindex 0);" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 42.0, 77.0, 158.686523, 89.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 42.0, 37.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "stat?",
									"patching_rect" : [ 111.0, 62.0, 100.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
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
					"text" : "r #0_clear",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 43.0, 159.0, 73.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-108",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_export",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 979.0, 118.0, 90.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-109",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p export",
					"patching_rect" : [ 979.0, 212.0, 48.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-110",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 277.0, 486.0, 413.0, 284.0 ],
						"bglocked" : 0,
						"defrect" : [ 277.0, 486.0, 413.0, 284.0 ],
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
									"text" : "descriptor definitions",
									"linecount" : 2,
									"patching_rect" : [ 290.0, 71.0, 55.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p export-symbols",
									"patching_rect" : [ 40.0, 181.0, 90.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 103.0, 718.0, 443.0, 335.0 ],
										"bglocked" : 0,
										"defrect" : [ 103.0, 718.0, 443.0, 335.0 ],
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
													"patching_rect" : [ 324.0, 87.0, 26.658691, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-1",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_clear" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 324.0, 87.0, 26.658691, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.object",
													"text" : "dict",
													"ftm_objref_conv" : 0,
													"patching_rect" : [ 9.0, 258.0, 99.35791, 18.0 ],
													"fontname" : "Geneva",
													"id" : "obj-2",
													"persistence" : 0,
													"editor_interface" : "",
													"description" : "dict",
													"name" : "exportsymbols",
													"numinlets" : 1,
													"scope" : 0,
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"ftm_scope" : 0,
													"outlettype" : [ "", "" ],
													"presentation_rect" : [ 9.0, 258.0, 99.35791, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 107.0, 214.0, 195.197754, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-3",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($exportsymbols set $2[0] ($1 getrow 0))" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 107.0, 214.0, 195.197754, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ftm.iter @mode tuple",
													"patching_rect" : [ 107.0, 113.0, 106.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-4",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"saved_object_attributes" : 													{
														"ftm_objref_conv" : 0,
														"ftm_scope" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p reshape",
													"patching_rect" : [ 107.0, 176.0, 53.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-5",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 488.0, 718.0, 421.0, 371.0 ],
														"bglocked" : 0,
														"defrect" : [ 488.0, 718.0, 421.0, 371.0 ],
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
																	"text" : "ftm.value",
																	"patching_rect" : [ 48.0, 235.0, 106.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-1",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ],
																	"saved_object_attributes" : 																	{
																		"ftm_objref_conv" : 0,
																		"ftm_scope" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "ftm.iter @mode tuple",
																	"patching_rect" : [ 68.0, 153.0, 106.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-2",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "" ],
																	"saved_object_attributes" : 																	{
																		"ftm_objref_conv" : 0,
																		"ftm_scope" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l l",
																	"patching_rect" : [ 48.0, 88.0, 50.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-3",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"fontsize" : 9.0,
																	"outlettype" : [ "bang", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 260.0, 126.0, 107.091797, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-4",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_(new mat 1 ($1 rows))" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 260.0, 126.0, 107.091797, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "(workaround for missing mat reshape:) copy one-column mat to one-row mat",
																	"linecount" : 3,
																	"patching_rect" : [ 93.0, 38.0, 162.0, 38.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-5",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 48.0, 279.0, 15.0, 15.0 ],
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 48.0, 51.0, 15.0, 15.0 ],
																	"id" : "obj-7",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 68.0, 191.0, 95.833008, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-8",
																	"numinlets" : 3,
																	"#triggerall" : 0,
																	"numins" : 3,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_($3 set 0 $2 $1[0])" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 68.0, 191.0, 95.833008, 17.0 ],
																	"#init" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-8", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-1", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 2 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 1 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 1 ],
																	"destination" : [ "obj-8", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-6", 0 ],
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
													"maxclass" : "comment",
													"text" : "(workaround for missing mat reshape:) copy symbol table one-column mat to one-row mat",
													"linecount" : 4,
													"patching_rect" : [ 163.0, 158.0, 127.0, 48.0 ],
													"fontname" : "Arial",
													"id" : "obj-6",
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
													"patching_rect" : [ 9.0, 214.0, 74.607422, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-7",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_exportas txt $1" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 9.0, 214.0, 74.607422, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l b b",
													"patching_rect" : [ 9.0, 54.0, 206.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-8",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"outlettype" : [ "", "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 107.0, 87.0, 60.602051, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-9",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_$descriptors" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 107.0, 87.0, 60.602051, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 9.0, 30.0, 15.0, 15.0 ],
													"id" : "obj-10",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "construct dict with dscr. name --> symbol tuples, export in coll format (tuples become lists)",
													"linecount" : 3,
													"patching_rect" : [ 47.0, 9.0, 169.0, 38.0 ],
													"fontname" : "Arial",
													"id" : "obj-11",
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
													"patching_rect" : [ 107.0, 142.0, 75.345703, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-12",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_$1[$symbolcol]" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 107.0, 142.0, 75.345703, 17.0 ],
													"#init" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 2 ],
													"destination" : [ "obj-1", 0 ],
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [ 116.5, 135.0, 292.697754, 135.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 333.5, 245.0, 18.5, 245.0 ]
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
									"maxclass" : "comment",
									"text" : "symbols",
									"patching_rect" : [ 288.0, 158.0, 54.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
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
									"patching_rect" : [ 40.0, 161.0, 73.860352, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-4",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(cat $1 .sy.txt)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 40.0, 161.0, 73.860352, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "unit data",
									"patching_rect" : [ 290.0, 212.0, 49.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l l l",
									"patching_rect" : [ 14.0, 49.0, 89.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 14.0, 10.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p export-soundfile-names",
									"patching_rect" : [ 66.0, 132.0, 121.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 138.0, 499.0, 477.0, 270.0 ],
										"bglocked" : 0,
										"defrect" : [ 138.0, 499.0, 477.0, 270.0 ],
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
													"patching_rect" : [ 1.0, 154.0, 164.510742, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-1",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($1[sound] exportas aiff $1[name])" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 1.0, 154.0, 164.510742, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 1.0, 130.0, 72.194824, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-2",
													"numinlets" : 5,
													"#triggerall" : 0,
													"numins" : 5,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(if $5[live] $5)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 1.0, 130.0, 72.194824, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 1.0, 78.0, 55.223145, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-3",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_$soundfiles" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 1.0, 78.0, 55.223145, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b l",
													"patching_rect" : [ 121.0, 46.0, 146.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-4",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ftm.iter @mode row",
													"patching_rect" : [ 1.0, 100.0, 106.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-5",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"saved_object_attributes" : 													{
														"ftm_objref_conv" : 0,
														"ftm_scope" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 189.0, 151.0, 72.331055, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-6",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($1 export $2)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 189.0, 151.0, 72.331055, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 189.0, 98.0, 112.747559, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-7",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($1 set $soundfiles); $1" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 189.0, 98.0, 112.747559, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 189.0, 75.0, 51.51416, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-8",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(new mat)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 189.0, 75.0, 51.51416, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 193.0, 203.0, 159.830566, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-9",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(((new mat) set $soundfiles) print)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 193.0, 203.0, 159.830566, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 194.0, 182.0, 219.974121, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-10",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_((((new mat) set $soundfiles) cols 2) export $1)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 194.0, 182.0, 219.974121, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 189.0, 123.0, 251.210449, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-11",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($1 size ($soundfiles rows) (($soundfiles cols) - 1)); $1" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 189.0, 123.0, 251.210449, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 121.0, 22.0, 15.0, 15.0 ],
													"id" : "obj-12",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "copy and remove last column with soundfile dicts",
													"linecount" : 3,
													"patching_rect" : [ 319.0, 75.0, 90.0, 38.0 ],
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
													"text" : "export live recorded sound data (last in case we're short on space)",
													"linecount" : 6,
													"patching_rect" : [ 111.0, 80.0, 61.0, 69.0 ],
													"fontname" : "Arial",
													"id" : "obj-14",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-11", 0 ],
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
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-6", 0 ],
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
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 66.0, 110.0, 72.225586, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-9",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(cat $1 .sf.txt)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 66.0, 110.0, 72.225586, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 92.0, 77.0, 171.071777, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-10",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($descriptors export (cat $1 .ds.txt))" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 92.0, 77.0, 171.071777, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 14.0, 210.0, 159.109863, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-11",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($unitdata export (cat $1 .ud.txt))" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 14.0, 210.0, 159.109863, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "export corpus to ascii files named <name>.sf.txt <name>.ds.txt <name>.sy.txt <name>.ud.txt",
									"linecount" : 2,
									"patching_rect" : [ 159.0, 11.0, 225.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "corpusfile prefix <name>",
									"patching_rect" : [ 34.0, 10.0, 122.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "soundfiles",
									"patching_rect" : [ 290.0, 110.0, 55.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 2 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 3 ],
									"destination" : [ "obj-10", 0 ],
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
					"maxclass" : "comment",
					"text" : "columns: sfname, given path, import limit, duration, sfdict",
					"linecount" : 2,
					"patching_rect" : [ 570.0, 465.0, 147.0, 27.0 ],
					"fontname" : "Arial",
					"id" : "obj-111",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "filename prefix",
					"patching_rect" : [ 932.0, 157.0, 79.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-112",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_import",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 923.0, 139.0, 90.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-113",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p import",
					"patching_rect" : [ 923.0, 212.0, 48.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-114",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 895.0, 84.0, 386.0, 337.0 ],
						"bglocked" : 0,
						"defrect" : [ 895.0, 84.0, 386.0, 337.0 ],
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
									"maxclass" : "message",
									"text" : "chinese-sil",
									"patching_rect" : [ 232.0, 53.0, 68.0, 15.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 233.0, 72.0, 249.685547, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-2",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(cat /Users/schwarz/patches/cataRT/0.7-corpora/ $1)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 233.0, 72.0, 249.685547, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p import-data",
									"patching_rect" : [ 37.0, 253.0, 72.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 294.0, 44.0, 383.0, 347.0 ],
										"bglocked" : 0,
										"defrect" : [ 294.0, 44.0, 383.0, 347.0 ],
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
													"text" : "ftm.iter @mode tuple",
													"patching_rect" : [ 120.0, 229.0, 105.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"saved_object_attributes" : 													{
														"ftm_objref_conv" : 0,
														"ftm_scope" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 120.0, 207.0, 138.134766, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-2",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($descrid clear);  $descriptors" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 120.0, 207.0, 138.134766, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 120.0, 257.0, 141.931641, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-3",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($descrid set $1[0] $2 $2 $2)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 120.0, 257.0, 141.931641, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "recreate lookup",
													"patching_rect" : [ 240.0, 230.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-4",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p permute-fmat-cols",
													"patching_rect" : [ 0.0, 176.0, 105.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-5",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 7.0, 596.0, 551.0, 314.0 ],
														"bglocked" : 0,
														"defrect" : [ 7.0, 596.0, 551.0, 314.0 ],
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
																	"maxclass" : "comment",
																	"text" : "make-up descriptor definition (type, vectorsize, hidden) (TODO: check if types were already given!!!)",
																	"linecount" : 2,
																	"patching_rect" : [ 130.0, 244.0, 275.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "target fmat, source fmat",
																	"patching_rect" : [ 206.0, 132.0, 200.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-2",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 184.0, 114.0, 189.678223, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_(new fmat ($unitdata rows) ($1 cols)) $1" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 184.0, 114.0, 189.678223, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "ftm.print",
																	"patching_rect" : [ 8.0, 245.0, 115.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-4",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0,
																	"saved_object_attributes" : 																	{
																		"ftm_objref_conv" : 0,
																		"ftm_scope" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "copy permuted content(!) of target back to source",
																	"linecount" : 2,
																	"patching_rect" : [ 14.0, 169.0, 129.0, 27.0 ],
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
																	"text" : "t l l l",
																	"patching_rect" : [ 8.0, 73.0, 186.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "target index",
																	"linecount" : 2,
																	"patching_rect" : [ 103.0, 171.0, 36.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "source index",
																	"linecount" : 2,
																	"patching_rect" : [ 151.0, 171.0, 38.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 96.0, 115.0, 17.99707, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-9",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_$2" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 96.0, 115.0, 17.99707, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "ftm.iter",
																	"patching_rect" : [ 96.0, 150.0, 54.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "" ],
																	"saved_object_attributes" : 																	{
																		"ftm_objref_conv" : 0,
																		"ftm_scope" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "in: source mat, fmat mapping to be copied from imported index to current index",
																	"linecount" : 2,
																	"patching_rect" : [ 61.0, 24.0, 200.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "if anything was not at same place, copy descriptor rows and unit data column according to map to new space",
																	"linecount" : 3,
																	"patching_rect" : [ 261.0, 24.0, 228.0, 38.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 8.0, 24.0, 15.0, 15.0 ],
																	"id" : "obj-13",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 96.0, 203.0, 159.166992, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-14",
																	"numinlets" : 4,
																	"#triggerall" : 0,
																	"numins" : 4,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_(($3 colref $1) set ($4 colref $2))" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 96.0, 203.0, 159.166992, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 8.0, 151.0, 57.793945, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-15",
																	"numinlets" : 3,
																	"#triggerall" : 0,
																	"numins" : 3,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_($1 set $3)" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 8.0, 151.0, 57.793945, 17.0 ],
																	"#init" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-15", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-14", 1 ],
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
													"maxclass" : "newobj",
													"text" : "p permute-mat-rows",
													"patching_rect" : [ 120.0, 176.0, 105.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-6",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 578.0, 718.0, 669.0, 325.0 ],
														"bglocked" : 0,
														"defrect" : [ 578.0, 718.0, 669.0, 325.0 ],
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
																	"maxclass" : "comment",
																	"text" : "first copy whole row, then fix index",
																	"patching_rect" : [ 281.0, 219.0, 474.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 265.0, 170.0, 74.651367, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-2",
																	"numinlets" : 4,
																	"#triggerall" : 0,
																	"numins" : 4,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_($4 getrow $1)" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 265.0, 170.0, 74.651367, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 88.0, 261.0, 400.009277, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-3",
																	"numinlets" : 4,
																	"#triggerall" : 0,
																	"numins" : 4,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_($3 setrow $1  $4[$2 0] $1 $4[$2 2] $4[$2 3] $4[$2 4] $4[$2 5] $4[$2 6] $4[$2 7])" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 88.0, 261.0, 400.009277, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "columns: 0 descr-name, 1 number, 2 type, 3 vectorsize, 4 defmax, 5 hidden flag, 6 symbol table, 7 symbol lookup",
																	"linecount" : 4,
																	"patching_rect" : [ 416.0, 136.0, 159.0, 48.0 ],
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
																	"text" : "make-up descriptor definition (type, vectorsize, hidden) (TODO: check if types were already given!!!)",
																	"patching_rect" : [ 99.0, 246.0, 474.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-5",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "init target mat with builtin list",
																	"patching_rect" : [ 199.0, 122.0, 200.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 89.0, 190.0, 139.606934, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-7",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_(if ($1 >= ($builtin rows)) $1)" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 89.0, 190.0, 139.606934, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 239.0, 82.0, 164.233887, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-8",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_((new mat ($2 rows) ($1 cols))) $1" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 239.0, 82.0, 164.233887, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 177.0, 104.0, 204.791016, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-9",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_(((new mat) set $builtin) rows ($2 rows)) $1" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 177.0, 104.0, 204.791016, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "ftm.print",
																	"patching_rect" : [ 15.0, 195.0, 51.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0,
																	"saved_object_attributes" : 																	{
																		"ftm_objref_conv" : 0,
																		"ftm_scope" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "copy content(!) back to source",
																	"linecount" : 2,
																	"patching_rect" : [ 7.0, 159.0, 95.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t l l l",
																	"patching_rect" : [ 1.0, 63.0, 186.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "target index",
																	"linecount" : 2,
																	"patching_rect" : [ 96.0, 161.0, 36.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "source index",
																	"linecount" : 2,
																	"patching_rect" : [ 144.0, 161.0, 38.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-14",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 89.0, 105.0, 17.99707, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-15",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_$2" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 89.0, 105.0, 17.99707, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "ftm.iter",
																	"patching_rect" : [ 89.0, 140.0, 54.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-16",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "" ],
																	"saved_object_attributes" : 																	{
																		"ftm_objref_conv" : 0,
																		"ftm_scope" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "in: source mat, fmat mapping to be copied from imported index to current index",
																	"linecount" : 2,
																	"patching_rect" : [ 54.0, 14.0, 200.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-17",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "if anything was not at same place, copy descriptor rows and unit data column according to map to new space",
																	"linecount" : 3,
																	"patching_rect" : [ 254.0, 14.0, 228.0, 38.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-18",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 1.0, 14.0, 15.0, 15.0 ],
																	"id" : "obj-19",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 1.0, 141.0, 57.793945, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-20",
																	"numinlets" : 3,
																	"#triggerall" : 0,
																	"numins" : 3,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_($1 set $3)" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 1.0, 141.0, 57.793945, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 1.0, 241.0, 15.0, 15.0 ],
																	"id" : "obj-21",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "ftm.list",
																	"patching_rect" : [ 265.0, 192.0, 51.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-22",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ],
																	"saved_object_attributes" : 																	{
																		"ftm_objref_conv" : 0,
																		"ftm_scope" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"linecount" : 2,
																	"presentation_linecount" : 2,
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 89.0, 217.0, 89.0, 29.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-23",
																	"numinlets" : 5,
																	"#triggerall" : 0,
																	"numins" : 5,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_($3 set $1 0 $*5),", "_($3 set $1 1 $1)" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 89.0, 217.0, 89.0, 29.0 ],
																	"#init" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-23", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-20", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-2", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-23", 4 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 1 ],
																	"destination" : [ "obj-23", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 1 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 2 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 1 ],
																	"destination" : [ "obj-15", 0 ],
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
													"maxclass" : "newobj",
													"text" : "p NOT-WORKING-permute-mat-rows-using-var",
													"linecount" : 3,
													"patching_rect" : [ 233.0, 176.0, 105.0, 38.0 ],
													"fontname" : "Arial",
													"id" : "obj-7",
													"hidden" : 1,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 567.0, 594.0, 551.0, 307.0 ],
														"bglocked" : 0,
														"defrect" : [ 567.0, 594.0, 551.0, 307.0 ],
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
																	"text" : "ftm.print matpoat",
																	"patching_rect" : [ 145.0, 148.0, 115.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0,
																	"saved_object_attributes" : 																	{
																		"ftm_objref_conv" : 0,
																		"ftm_scope" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 464.0, 97.0, 77.793457, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_(($tomat) print)" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 464.0, 97.0, 77.793457, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 464.0, 73.0, 80.794922, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_($frommat print)" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 464.0, 73.0, 80.794922, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "var",
																	"ftm_objref_conv" : 0,
																	"patching_rect" : [ 383.0, 118.0, 68.213867, 18.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-4",
																	"persistence" : 0,
																	"editor_interface" : "",
																	"description" : "var",
																	"name" : "mapmat",
																	"numinlets" : 1,
																	"scope" : 0,
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"ftm_scope" : 0,
																	"outlettype" : [ "", "" ],
																	"presentation_rect" : [ 383.0, 118.0, 68.213867, 18.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"linecount" : 3,
																	"presentation_linecount" : 3,
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 62.0, 76.0, 265.0, 41.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-5",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_($frommat set $1);", "_($mapmat set $2);", "_($tomat set (new mat ($mapmat rows) ($frommat cols)));" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 62.0, 76.0, 265.0, 41.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "ftm.print",
																	"patching_rect" : [ 1.0, 245.0, 115.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0,
																	"saved_object_attributes" : 																	{
																		"ftm_objref_conv" : 0,
																		"ftm_scope" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "copy content(!) back to source",
																	"patching_rect" : [ 99.0, 221.0, 174.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t l l l",
																	"patching_rect" : [ 8.0, 50.0, 65.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 8.0, 220.0, 78.254883, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-9",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_($1 set $tomat)" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 8.0, 220.0, 78.254883, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "target index",
																	"patching_rect" : [ 43.0, 174.0, 65.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "source index",
																	"patching_rect" : [ 123.0, 174.0, 67.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 35.0, 196.0, 190.412109, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-12",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_($tomat set $1 0 ($frommat getrow $2))" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 35.0, 196.0, 190.412109, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "var",
																	"ftm_objref_conv" : 0,
																	"patching_rect" : [ 383.0, 95.0, 59.213867, 18.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-13",
																	"persistence" : 0,
																	"editor_interface" : "",
																	"description" : "var",
																	"name" : "tomat",
																	"numinlets" : 1,
																	"scope" : 0,
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"ftm_scope" : 0,
																	"outlettype" : [ "", "" ],
																	"presentation_rect" : [ 383.0, 95.0, 59.213867, 18.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "var",
																	"ftm_objref_conv" : 0,
																	"patching_rect" : [ 383.0, 73.0, 70.257324, 18.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-14",
																	"persistence" : 0,
																	"editor_interface" : "",
																	"description" : "var",
																	"name" : "frommat",
																	"numinlets" : 1,
																	"scope" : 0,
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"ftm_scope" : 0,
																	"outlettype" : [ "", "" ],
																	"presentation_rect" : [ 383.0, 73.0, 70.257324, 18.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 35.0, 124.0, 47.458008, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-15",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_$mapmat" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 35.0, 124.0, 47.458008, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "ftm.iter",
																	"patching_rect" : [ 35.0, 150.0, 87.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-16",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "" ],
																	"saved_object_attributes" : 																	{
																		"ftm_objref_conv" : 0,
																		"ftm_scope" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "from, to, fmat mapping to be copied from imported index to current index",
																	"linecount" : 2,
																	"patching_rect" : [ 61.0, 24.0, 174.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-17",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "if anything was not at same place, copy descriptor rows and unit data column according to map to new space",
																	"linecount" : 3,
																	"patching_rect" : [ 261.0, 24.0, 228.0, 38.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-18",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "ftm.print copymatrows",
																	"patching_rect" : [ 119.0, 51.0, 115.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-19",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0,
																	"saved_object_attributes" : 																	{
																		"ftm_objref_conv" : 0,
																		"ftm_scope" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 8.0, 24.0, 15.0, 15.0 ],
																	"id" : "obj-20",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 2 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 1 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 1 ],
																	"destination" : [ "obj-12", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
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
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 0.0, 150.0, 62.970703, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-8",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_$unitdata $1" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 0.0, 150.0, 62.970703, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 120.0, 150.0, 75.600586, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-9",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_$descriptors $1" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 120.0, 150.0, 75.600586, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 0.0, 54.0, 102.512695, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-10",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($unitdata import $1)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 0.0, 54.0, 102.512695, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "backwards compatibility: reorder/complete columns of builtin descriptors to be able to load any old corpus",
													"linecount" : 2,
													"patching_rect" : [ 92.0, 75.0, 252.0, 27.0 ],
													"fontname" : "Arial",
													"id" : "obj-11",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p make-map",
													"patching_rect" : [ 0.0, 80.0, 64.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-12",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 358.0, 346.0, 951.0, 578.0 ],
														"bglocked" : 0,
														"defrect" : [ 358.0, 346.0, 951.0, 578.0 ],
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
																	"text" : "p make-up",
																	"patching_rect" : [ 207.0, 317.0, 56.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "int", "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 790.0, 150.0, 565.0, 359.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 790.0, 150.0, 565.0, 359.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "p make-up-shift",
																					"patching_rect" : [ 119.0, 240.0, 82.0, 17.0 ],
																					"fontname" : "Arial",
																					"id" : "obj-1",
																					"numinlets" : 2,
																					"numoutlets" : 0,
																					"fontsize" : 9.0,
																					"patcher" : 																					{
																						"fileversion" : 1,
																						"rect" : [ 974.0, 264.0, 478.0, 458.0 ],
																						"bglocked" : 0,
																						"defrect" : [ 974.0, 264.0, 478.0, 458.0 ],
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
																						"boxes" : [ 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "p alternate implementation",
																									"patching_rect" : [ 31.0, 296.0, 130.0, 17.0 ],
																									"fontname" : "Arial",
																									"id" : "obj-1",
																									"numinlets" : 0,
																									"numoutlets" : 0,
																									"fontsize" : 9.0,
																									"patcher" : 																									{
																										"fileversion" : 1,
																										"rect" : [ 20.0, 74.0, 600.0, 426.0 ],
																										"bglocked" : 0,
																										"defrect" : [ 20.0, 74.0, 600.0, 426.0 ],
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
																										"boxes" : [ 																											{
																												"box" : 																												{
																													"maxclass" : "ftm.object",
																													"text" : "fmat",
																													"ftm_objref_conv" : 0,
																													"patching_rect" : [ 302.0, 109.0, 52.666016, 18.0 ],
																													"fontname" : "Geneva",
																													"id" : "obj-1",
																													"persistence" : 0,
																													"editor_interface" : "",
																													"description" : "fmat",
																													"name" : "rot",
																													"numinlets" : 1,
																													"scope" : 0,
																													"numoutlets" : 2,
																													"fontsize" : 9.0,
																													"ftm_scope" : 0,
																													"outlettype" : [ "", "" ],
																													"presentation_rect" : [ 302.0, 109.0, 52.666016, 18.0 ]
																												}

																											}
, 																											{
																												"box" : 																												{
																													"maxclass" : "comment",
																													"text" : "rotate indices (copy to work around ftm bug)",
																													"linecount" : 2,
																													"patching_rect" : [ 60.0, 116.0, 131.0, 27.0 ],
																													"fontname" : "Arial",
																													"id" : "obj-2",
																													"numinlets" : 1,
																													"numoutlets" : 0,
																													"fontsize" : 9.0
																												}

																											}
, 																											{
																												"box" : 																												{
																													"maxclass" : "comment",
																													"text" : "index of last unit",
																													"patching_rect" : [ 285.0, 70.0, 103.0, 17.0 ],
																													"fontname" : "Arial",
																													"id" : "obj-3",
																													"numinlets" : 1,
																													"numoutlets" : 0,
																													"fontsize" : 9.0
																												}

																											}
, 																											{
																												"box" : 																												{
																													"maxclass" : "comment",
																													"text" : "number of units in sf",
																													"patching_rect" : [ 252.0, 50.0, 103.0, 17.0 ],
																													"fontname" : "Arial",
																													"id" : "obj-4",
																													"numinlets" : 1,
																													"numoutlets" : 0,
																													"fontsize" : 9.0
																												}

																											}
, 																											{
																												"box" : 																												{
																													"maxclass" : "ftm.mess",
																													"ftm_objref_conv" : 0,
																													"#loadbang" : 0,
																													"patching_rect" : [ 50.0, 144.0, 151.625977, 17.0 ],
																													"fontname" : "Geneva",
																													"id" : "obj-5",
																													"numinlets" : 2,
																													"#triggerall" : 0,
																													"numoutlets" : 1,
																													"fontsize" : 9.0,
																													"#untuple" : 0,
																													"text" : [ "_($1 set (($rot set $1) rotate 1))" ],
																													"ftm_scope" : 0,
																													"outlettype" : [ "" ],
																													"presentation_rect" : [ 50.0, 144.0, 151.625977, 17.0 ],
																													"#init" : ""
																												}

																											}
, 																											{
																												"box" : 																												{
																													"maxclass" : "ftm.mess",
																													"ftm_objref_conv" : 0,
																													"#loadbang" : 0,
																													"patching_rect" : [ 214.0, 70.0, 62.922363, 17.0 ],
																													"fontname" : "Geneva",
																													"id" : "obj-6",
																													"numinlets" : 2,
																													"#triggerall" : 0,
																													"numoutlets" : 1,
																													"fontsize" : 9.0,
																													"#untuple" : 0,
																													"text" : [ "_($1 [UnitID])" ],
																													"ftm_scope" : 0,
																													"outlettype" : [ "" ],
																													"presentation_rect" : [ 214.0, 70.0, 62.922363, 17.0 ],
																													"#init" : ""
																												}

																											}
, 																											{
																												"box" : 																												{
																													"maxclass" : "ftm.mess",
																													"ftm_objref_conv" : 0,
																													"#loadbang" : 0,
																													"patching_rect" : [ 194.0, 50.0, 58.316895, 17.0 ],
																													"fontname" : "Geneva",
																													"id" : "obj-7",
																													"numinlets" : 2,
																													"#triggerall" : 0,
																													"numoutlets" : 1,
																													"fontsize" : 9.0,
																													"#untuple" : 0,
																													"text" : [ "_($1 [RelID])" ],
																													"ftm_scope" : 0,
																													"outlettype" : [ "" ],
																													"presentation_rect" : [ 194.0, 50.0, 58.316895, 17.0 ],
																													"#init" : ""
																												}

																											}
, 																											{
																												"box" : 																												{
																													"maxclass" : "ftm.mess",
																													"ftm_objref_conv" : 0,
																													"#loadbang" : 0,
																													"patching_rect" : [ 50.0, 94.0, 146.132812, 17.0 ],
																													"fontname" : "Geneva",
																													"id" : "obj-8",
																													"numinlets" : 4,
																													"#triggerall" : 0,
																													"numins" : 4,
																													"numoutlets" : 1,
																													"fontsize" : 9.0,
																													"#untuple" : 0,
																													"text" : [ "_($1 colref $2 ($4 - $3 + 1) $3)" ],
																													"ftm_scope" : 0,
																													"outlettype" : [ "" ],
																													"presentation_rect" : [ 50.0, 94.0, 146.132812, 17.0 ],
																													"#init" : ""
																												}

																											}
, 																											{
																												"box" : 																												{
																													"maxclass" : "comment",
																													"text" : "last soundfile's shift vector (offset = first unit index)",
																													"linecount" : 2,
																													"patching_rect" : [ 59.0, 52.0, 131.0, 27.0 ],
																													"fontname" : "Arial",
																													"id" : "obj-9",
																													"numinlets" : 1,
																													"numoutlets" : 0,
																													"fontsize" : 9.0
																												}

																											}
 ],
																										"lines" : [ 																											{
																												"patchline" : 																												{
																													"source" : [ "obj-8", 0 ],
																													"destination" : [ "obj-5", 0 ],
																													"hidden" : 0,
																													"midpoints" : [  ]
																												}

																											}
, 																											{
																												"patchline" : 																												{
																													"source" : [ "obj-7", 0 ],
																													"destination" : [ "obj-8", 2 ],
																													"hidden" : 0,
																													"midpoints" : [  ]
																												}

																											}
, 																											{
																												"patchline" : 																												{
																													"source" : [ "obj-6", 0 ],
																													"destination" : [ "obj-8", 3 ],
																													"hidden" : 0,
																													"midpoints" : [  ]
																												}

																											}
 ]
																									}
,
																									"saved_object_attributes" : 																									{
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
, 																							{
																								"box" : 																								{
																									"maxclass" : "comment",
																									"text" : "current soundfile start index in unitdata",
																									"patching_rect" : [ 242.0, 63.0, 190.0, 17.0 ],
																									"fontname" : "Arial",
																									"id" : "obj-2",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"fontsize" : 9.0
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "ftm.mess",
																									"ftm_objref_conv" : 0,
																									"#loadbang" : 0,
																									"patching_rect" : [ 168.0, 44.0, 28.754883, 17.0 ],
																									"fontname" : "Geneva",
																									"id" : "obj-3",
																									"numinlets" : 2,
																									"#triggerall" : 0,
																									"numoutlets" : 1,
																									"fontsize" : 9.0,
																									"#untuple" : 0,
																									"text" : [ "_set 0" ],
																									"ftm_scope" : 0,
																									"outlettype" : [ "" ],
																									"presentation_rect" : [ 168.0, 44.0, 28.754883, 17.0 ],
																									"#init" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "ftm.object",
																									"text" : "var 0",
																									"ftm_objref_conv" : 0,
																									"patching_rect" : [ 168.0, 64.0, 62.773438, 18.0 ],
																									"fontname" : "Geneva",
																									"id" : "obj-4",
																									"persistence" : 0,
																									"editor_interface" : "",
																									"description" : "var 0",
																									"name" : "start",
																									"numinlets" : 1,
																									"scope" : 0,
																									"numoutlets" : 2,
																									"fontsize" : 9.0,
																									"ftm_scope" : 0,
																									"outlettype" : [ "", "" ],
																									"presentation_rect" : [ 168.0, 64.0, 62.773438, 18.0 ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "ftm.mess",
																									"ftm_objref_conv" : 0,
																									"#loadbang" : 0,
																									"patching_rect" : [ 35.0, 227.0, 65.058105, 17.0 ],
																									"fontname" : "Geneva",
																									"id" : "obj-5",
																									"numinlets" : 2,
																									"#triggerall" : 0,
																									"numoutlets" : 1,
																									"fontsize" : 9.0,
																									"#untuple" : 0,
																									"text" : [ "_($start = $2)" ],
																									"ftm_scope" : 0,
																									"outlettype" : [ "" ],
																									"presentation_rect" : [ 35.0, 227.0, 65.058105, 17.0 ],
																									"#init" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "comment",
																									"text" : "bang: go",
																									"patching_rect" : [ 9.0, 5.0, 47.0, 17.0 ],
																									"fontname" : "Arial",
																									"id" : "obj-6",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"fontsize" : 9.0
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "comment",
																									"text" : "fcol to make make up in",
																									"patching_rect" : [ 70.0, 23.0, 115.0, 17.0 ],
																									"fontname" : "Arial",
																									"id" : "obj-7",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"fontsize" : 9.0
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "t i i i",
																									"patching_rect" : [ 51.0, 134.0, 177.0, 17.0 ],
																									"fontname" : "Arial",
																									"id" : "obj-8",
																									"numinlets" : 1,
																									"numoutlets" : 3,
																									"fontsize" : 9.0,
																									"outlettype" : [ "int", "int", "int" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "ftm.mess",
																									"ftm_objref_conv" : 0,
																									"#loadbang" : 0,
																									"patching_rect" : [ 80.0, 44.0, 32.165039, 17.0 ],
																									"fontname" : "Geneva",
																									"id" : "obj-9",
																									"numinlets" : 2,
																									"#triggerall" : 0,
																									"numoutlets" : 1,
																									"fontsize" : 9.0,
																									"#untuple" : 0,
																									"text" : [ "_set -1" ],
																									"ftm_scope" : 0,
																									"outlettype" : [ "" ],
																									"presentation_rect" : [ 80.0, 44.0, 32.165039, 17.0 ],
																									"#init" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "change -1",
																									"patching_rect" : [ 51.0, 188.0, 50.0, 17.0 ],
																									"fontname" : "Arial",
																									"id" : "obj-10",
																									"numinlets" : 1,
																									"numoutlets" : 3,
																									"fontsize" : 9.0,
																									"outlettype" : [ "", "int", "int" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "ftm.mess",
																									"ftm_objref_conv" : 0,
																									"#loadbang" : 0,
																									"patching_rect" : [ 51.0, 165.0, 157.369629, 17.0 ],
																									"fontname" : "Geneva",
																									"id" : "obj-11",
																									"numinlets" : 2,
																									"#triggerall" : 0,
																									"numoutlets" : 1,
																									"fontsize" : 9.0,
																									"#untuple" : 0,
																									"text" : [ "_$unitdata[$1 $descrid[SoundFile]]" ],
																									"ftm_scope" : 0,
																									"outlettype" : [ "" ],
																									"presentation_rect" : [ 51.0, 165.0, 157.369629, 17.0 ],
																									"#init" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "ftm.iter",
																									"patching_rect" : [ 11.0, 107.0, 50.0, 17.0 ],
																									"fontname" : "Arial",
																									"id" : "obj-12",
																									"numinlets" : 1,
																									"numoutlets" : 2,
																									"fontsize" : 9.0,
																									"outlettype" : [ "", "" ],
																									"saved_object_attributes" : 																									{
																										"ftm_objref_conv" : 0,
																										"ftm_scope" : 0
																									}

																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "ftm.mess",
																									"ftm_objref_conv" : 0,
																									"#loadbang" : 0,
																									"patching_rect" : [ 11.0, 44.0, 17.99707, 17.0 ],
																									"fontname" : "Geneva",
																									"id" : "obj-13",
																									"numinlets" : 2,
																									"#triggerall" : 0,
																									"numoutlets" : 1,
																									"fontsize" : 9.0,
																									"#untuple" : 0,
																									"text" : [ "_$2" ],
																									"ftm_scope" : 0,
																									"outlettype" : [ "" ],
																									"presentation_rect" : [ 11.0, 44.0, 17.99707, 17.0 ],
																									"#init" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "ftm.mess",
																									"ftm_objref_conv" : 0,
																									"#loadbang" : 0,
																									"patching_rect" : [ 209.0, 259.0, 96.246094, 17.0 ],
																									"fontname" : "Geneva",
																									"id" : "obj-14",
																									"numinlets" : 3,
																									"#triggerall" : 0,
																									"numins" : 3,
																									"numoutlets" : 1,
																									"fontsize" : 9.0,
																									"#untuple" : 0,
																									"text" : [ "_($3 set $1 ($1 - 1))" ],
																									"ftm_scope" : 0,
																									"outlettype" : [ "" ],
																									"presentation_rect" : [ 209.0, 259.0, 96.246094, 17.0 ],
																									"#init" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "comment",
																									"text" : "soundfile changed: overwrite first unit to point to last",
																									"linecount" : 3,
																									"patching_rect" : [ 125.0, 197.0, 119.0, 38.0 ],
																									"fontname" : "Arial",
																									"id" : "obj-15",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"fontsize" : 9.0
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 51.0, 22.0, 15.0, 15.0 ],
																									"id" : "obj-16",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"outlettype" : [ "" ],
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 11.0, 22.0, 15.0, 15.0 ],
																									"id" : "obj-17",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"outlettype" : [ "" ],
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "ftm.mess",
																									"ftm_objref_conv" : 0,
																									"#loadbang" : 0,
																									"patching_rect" : [ 51.0, 260.0, 111.266602, 17.0 ],
																									"fontname" : "Geneva",
																									"id" : "obj-18",
																									"numinlets" : 3,
																									"#triggerall" : 0,
																									"numins" : 3,
																									"numoutlets" : 1,
																									"fontsize" : 9.0,
																									"#untuple" : 0,
																									"text" : [ "_($3 set $start ($2 - 1))" ],
																									"ftm_scope" : 0,
																									"outlettype" : [ "" ],
																									"presentation_rect" : [ 51.0, 260.0, 111.266602, 17.0 ],
																									"#init" : ""
																								}

																							}
 ],
																						"lines" : [ 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-9", 0 ],
																									"destination" : [ "obj-10", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-8", 1 ],
																									"destination" : [ "obj-5", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-8", 1 ],
																									"destination" : [ "obj-18", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-8", 2 ],
																									"destination" : [ "obj-14", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-8", 0 ],
																									"destination" : [ "obj-11", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-3", 0 ],
																									"destination" : [ "obj-4", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-17", 0 ],
																									"destination" : [ "obj-13", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-16", 0 ],
																									"destination" : [ "obj-9", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-16", 0 ],
																									"destination" : [ "obj-3", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-16", 0 ],
																									"destination" : [ "obj-13", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-13", 0 ],
																									"destination" : [ "obj-18", 2 ],
																									"hidden" : 0,
																									"midpoints" : [ 20.5, 93.0, 152.766602, 93.0 ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-13", 0 ],
																									"destination" : [ "obj-14", 2 ],
																									"hidden" : 0,
																									"midpoints" : [ 20.5, 93.0, 295.746094, 93.0 ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-13", 0 ],
																									"destination" : [ "obj-12", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-12", 1 ],
																									"destination" : [ "obj-8", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-11", 0 ],
																									"destination" : [ "obj-10", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-10", 0 ],
																									"destination" : [ "obj-5", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-10", 0 ],
																									"destination" : [ "obj-18", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
 ]
																					}
,
																					"saved_object_attributes" : 																					{
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
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t i i i i i",
																					"patching_rect" : [ 224.0, 75.0, 153.0, 17.0 ],
																					"fontname" : "Arial",
																					"id" : "obj-2",
																					"numinlets" : 1,
																					"numoutlets" : 5,
																					"fontsize" : 9.0,
																					"outlettype" : [ "int", "int", "int", "int", "int" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "make up data here",
																					"patching_rect" : [ 280.0, 143.0, 91.0, 17.0 ],
																					"fontname" : "Arial",
																					"id" : "obj-3",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "extend map by one row",
																					"linecount" : 2,
																					"patching_rect" : [ 427.0, 167.0, 76.0, 27.0 ],
																					"fontname" : "Arial",
																					"id" : "obj-4",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"patching_rect" : [ 417.0, 266.0, 15.0, 15.0 ],
																					"id" : "obj-5",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"ftm_objref_conv" : 0,
																					"#loadbang" : 0,
																					"patching_rect" : [ 417.0, 152.0, 67.576172, 17.0 ],
																					"fontname" : "Geneva",
																					"id" : "obj-6",
																					"numinlets" : 2,
																					"#triggerall" : 0,
																					"numoutlets" : 1,
																					"fontsize" : 9.0,
																					"#untuple" : 0,
																					"text" : [ "_rows ($1 + 1)" ],
																					"ftm_scope" : 0,
																					"outlettype" : [ "" ],
																					"presentation_rect" : [ 417.0, 152.0, 67.576172, 17.0 ],
																					"#init" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"ftm_objref_conv" : 0,
																					"#loadbang" : 0,
																					"patching_rect" : [ 171.0, 78.0, 27.137695, 17.0 ],
																					"fontname" : "Geneva",
																					"id" : "obj-7",
																					"numinlets" : 2,
																					"#triggerall" : 0,
																					"numoutlets" : 1,
																					"fontsize" : 9.0,
																					"#untuple" : 0,
																					"text" : [ "_none" ],
																					"ftm_scope" : 0,
																					"outlettype" : [ "" ],
																					"presentation_rect" : [ 171.0, 78.0, 27.137695, 17.0 ],
																					"#init" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"ftm_objref_conv" : 0,
																					"#loadbang" : 0,
																					"patching_rect" : [ 0.0, 264.0, 153.9375, 17.0 ],
																					"fontname" : "Geneva",
																					"id" : "obj-8",
																					"numinlets" : 2,
																					"#triggerall" : 0,
																					"numoutlets" : 1,
																					"fontsize" : 9.0,
																					"#untuple" : 0,
																					"text" : [ "_(print made up $1 at position $2)" ],
																					"ftm_scope" : 0,
																					"outlettype" : [ "" ],
																					"presentation_rect" : [ 0.0, 264.0, 153.9375, 17.0 ],
																					"#init" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "p make-up-relid",
																					"patching_rect" : [ 15.0, 196.0, 82.0, 17.0 ],
																					"fontname" : "Arial",
																					"id" : "obj-9",
																					"numinlets" : 2,
																					"numoutlets" : 0,
																					"fontsize" : 9.0,
																					"patcher" : 																					{
																						"fileversion" : 1,
																						"rect" : [ 32.0, 564.0, 365.0, 354.0 ],
																						"bglocked" : 0,
																						"defrect" : [ 32.0, 564.0, 365.0, 354.0 ],
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
																						"boxes" : [ 																							{
																								"box" : 																								{
																									"maxclass" : "comment",
																									"text" : "bang: go",
																									"patching_rect" : [ 48.0, 14.0, 115.0, 17.0 ],
																									"fontname" : "Arial",
																									"id" : "obj-1",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"fontsize" : 9.0
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "t i i i",
																									"patching_rect" : [ 90.0, 127.0, 50.0, 17.0 ],
																									"fontname" : "Arial",
																									"id" : "obj-2",
																									"numinlets" : 1,
																									"numoutlets" : 3,
																									"fontsize" : 9.0,
																									"outlettype" : [ "int", "int", "int" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "ftm.mess",
																									"ftm_objref_conv" : 0,
																									"#loadbang" : 0,
																									"patching_rect" : [ 110.0, 207.0, 17.99707, 17.0 ],
																									"fontname" : "Geneva",
																									"id" : "obj-3",
																									"numinlets" : 2,
																									"#triggerall" : 0,
																									"numoutlets" : 1,
																									"fontsize" : 9.0,
																									"#untuple" : 0,
																									"text" : [ "_$2" ],
																									"ftm_scope" : 0,
																									"outlettype" : [ "" ],
																									"presentation_rect" : [ 110.0, 207.0, 17.99707, 17.0 ],
																									"#init" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "ftm.mess",
																									"ftm_objref_conv" : 0,
																									"#loadbang" : 0,
																									"patching_rect" : [ 162.0, 57.0, 32.165039, 17.0 ],
																									"fontname" : "Geneva",
																									"id" : "obj-4",
																									"numinlets" : 2,
																									"#triggerall" : 0,
																									"numoutlets" : 1,
																									"fontsize" : 9.0,
																									"#untuple" : 0,
																									"text" : [ "_set -1" ],
																									"ftm_scope" : 0,
																									"outlettype" : [ "" ],
																									"presentation_rect" : [ 162.0, 57.0, 32.165039, 17.0 ],
																									"#init" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "change -1",
																									"patching_rect" : [ 110.0, 181.0, 50.0, 17.0 ],
																									"fontname" : "Arial",
																									"id" : "obj-5",
																									"numinlets" : 1,
																									"numoutlets" : 3,
																									"fontsize" : 9.0,
																									"outlettype" : [ "", "int", "int" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "ftm.mess",
																									"ftm_objref_conv" : 0,
																									"#loadbang" : 0,
																									"patching_rect" : [ 110.0, 158.0, 157.369629, 17.0 ],
																									"fontname" : "Geneva",
																									"id" : "obj-6",
																									"numinlets" : 2,
																									"#triggerall" : 0,
																									"numoutlets" : 1,
																									"fontsize" : 9.0,
																									"#untuple" : 0,
																									"text" : [ "_$unitdata[$1 $descrid[SoundFile]]" ],
																									"ftm_scope" : 0,
																									"outlettype" : [ "" ],
																									"presentation_rect" : [ 110.0, 158.0, 157.369629, 17.0 ],
																									"#init" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "ftm.iter",
																									"patching_rect" : [ 50.0, 100.0, 50.0, 17.0 ],
																									"fontname" : "Arial",
																									"id" : "obj-7",
																									"numinlets" : 1,
																									"numoutlets" : 2,
																									"fontsize" : 9.0,
																									"outlettype" : [ "", "" ],
																									"saved_object_attributes" : 																									{
																										"ftm_objref_conv" : 0,
																										"ftm_scope" : 0
																									}

																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "ftm.mess",
																									"ftm_objref_conv" : 0,
																									"#loadbang" : 0,
																									"patching_rect" : [ 50.0, 53.0, 17.99707, 17.0 ],
																									"fontname" : "Geneva",
																									"id" : "obj-8",
																									"numinlets" : 2,
																									"#triggerall" : 0,
																									"numoutlets" : 1,
																									"fontsize" : 9.0,
																									"#untuple" : 0,
																									"text" : [ "_$2" ],
																									"ftm_scope" : 0,
																									"outlettype" : [ "" ],
																									"presentation_rect" : [ 50.0, 53.0, 17.99707, 17.0 ],
																									"#init" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 90.0, 30.0, 15.0, 15.0 ],
																									"id" : "obj-9",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"outlettype" : [ "" ],
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
																									"id" : "obj-10",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"outlettype" : [ "" ],
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "ftm.mess",
																									"ftm_objref_conv" : 0,
																									"#loadbang" : 0,
																									"patching_rect" : [ 90.0, 235.0, 102.244629, 17.0 ],
																									"fontname" : "Geneva",
																									"id" : "obj-11",
																									"numinlets" : 3,
																									"#triggerall" : 0,
																									"numins" : 3,
																									"numoutlets" : 1,
																									"fontsize" : 9.0,
																									"#untuple" : 0,
																									"text" : [ "_($3 set $1 ($1 - $2))" ],
																									"ftm_scope" : 0,
																									"outlettype" : [ "" ],
																									"presentation_rect" : [ 90.0, 235.0, 102.244629, 17.0 ],
																									"#init" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "comment",
																									"text" : "soundfile changed: remember base index to be subtracted",
																									"linecount" : 3,
																									"patching_rect" : [ 199.0, 184.0, 121.0, 38.0 ],
																									"fontname" : "Arial",
																									"id" : "obj-12",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"fontsize" : 9.0
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "comment",
																									"text" : "fcol to make make up in",
																									"patching_rect" : [ 117.0, 31.0, 115.0, 17.0 ],
																									"fontname" : "Arial",
																									"id" : "obj-13",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"fontsize" : 9.0
																								}

																							}
 ],
																						"lines" : [ 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-9", 0 ],
																									"destination" : [ "obj-8", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-9", 0 ],
																									"destination" : [ "obj-4", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-8", 0 ],
																									"destination" : [ "obj-7", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-8", 0 ],
																									"destination" : [ "obj-11", 2 ],
																									"hidden" : 0,
																									"midpoints" : [ 59.5, 87.0, 182.744629, 87.0 ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-7", 1 ],
																									"destination" : [ "obj-2", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-6", 0 ],
																									"destination" : [ "obj-5", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-5", 0 ],
																									"destination" : [ "obj-3", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-4", 0 ],
																									"destination" : [ "obj-5", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-3", 0 ],
																									"destination" : [ "obj-11", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-2", 1 ],
																									"destination" : [ "obj-6", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-2", 2 ],
																									"destination" : [ "obj-3", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-2", 0 ],
																									"destination" : [ "obj-11", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-10", 0 ],
																									"destination" : [ "obj-8", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
 ]
																					}
,
																					"saved_object_attributes" : 																					{
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
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"ftm_objref_conv" : 0,
																					"#loadbang" : 0,
																					"patching_rect" : [ 67.0, 222.0, 47.655762, 17.0 ],
																					"fontname" : "Geneva",
																					"id" : "obj-10",
																					"numinlets" : 2,
																					"#triggerall" : 0,
																					"numoutlets" : 1,
																					"fontsize" : 9.0,
																					"#untuple" : 0,
																					"text" : [ "_($2 fill 1)" ],
																					"ftm_scope" : 0,
																					"outlettype" : [ "" ],
																					"presentation_rect" : [ 67.0, 222.0, 47.655762, 17.0 ],
																					"#init" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"ftm_objref_conv" : 0,
																					"#loadbang" : 0,
																					"patching_rect" : [ 259.0, 126.0, 98.658691, 17.0 ],
																					"fontname" : "Geneva",
																					"id" : "obj-11",
																					"numinlets" : 2,
																					"#triggerall" : 0,
																					"numoutlets" : 1,
																					"fontsize" : 9.0,
																					"#untuple" : 0,
																					"text" : [ "_($unitdata colref $1)" ],
																					"ftm_scope" : 0,
																					"outlettype" : [ "" ],
																					"presentation_rect" : [ 259.0, 126.0, 98.658691, 17.0 ],
																					"#init" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"ftm_objref_conv" : 0,
																					"#loadbang" : 0,
																					"patching_rect" : [ 224.0, 54.0, 76.075195, 17.0 ],
																					"fontname" : "Geneva",
																					"id" : "obj-12",
																					"numinlets" : 2,
																					"#triggerall" : 0,
																					"numoutlets" : 1,
																					"fontsize" : 9.0,
																					"#untuple" : 0,
																					"text" : [ "_($unitdata cols)" ],
																					"ftm_scope" : 0,
																					"outlettype" : [ "" ],
																					"presentation_rect" : [ 224.0, 54.0, 76.075195, 17.0 ],
																					"#init" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"ftm_objref_conv" : 0,
																					"#loadbang" : 0,
																					"patching_rect" : [ 329.0, 204.0, 117.115723, 17.0 ],
																					"fontname" : "Geneva",
																					"id" : "obj-13",
																					"numinlets" : 2,
																					"#triggerall" : 0,
																					"numoutlets" : 1,
																					"fontsize" : 9.0,
																					"#untuple" : 0,
																					"text" : [ "_($unitdata cols ($1 + 1))" ],
																					"ftm_scope" : 0,
																					"outlettype" : [ "" ],
																					"presentation_rect" : [ 329.0, 204.0, 117.115723, 17.0 ],
																					"#init" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"patching_rect" : [ 15.0, 10.0, 15.0, 15.0 ],
																					"id" : "obj-14",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "route RelID Active Shift",
																					"patching_rect" : [ 15.0, 54.0, 167.0, 17.0 ],
																					"fontname" : "Arial",
																					"id" : "obj-15",
																					"numinlets" : 1,
																					"numoutlets" : 4,
																					"fontsize" : 9.0,
																					"outlettype" : [ "", "", "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "others like UnitType SoundSet are initialised to zero and don't need to be made up, but need to be marked to reserve space",
																					"linecount" : 4,
																					"patching_rect" : [ 191.0, 0.0, 184.0, 48.0 ],
																					"fontname" : "Arial",
																					"id" : "obj-16",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "extend imported data by one column to put made-up descr, mark in map",
																					"linecount" : 3,
																					"patching_rect" : [ 301.0, 224.0, 121.0, 38.0 ],
																					"fontname" : "Arial",
																					"id" : "obj-17",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"patching_rect" : [ 294.0, 266.0, 15.0, 15.0 ],
																					"id" : "obj-18",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-8", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 4 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 2 ],
																					"destination" : [ "obj-18", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 3 ],
																					"destination" : [ "obj-13", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 1 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 3 ],
																					"destination" : [ "obj-7", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 1 ],
																					"destination" : [ "obj-10", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 2 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-14", 0 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 24.0, 39.0, 9.5, 39.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-14", 0 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-14", 0 ],
																					"destination" : [ "obj-12", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-12", 0 ],
																					"destination" : [ "obj-2", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-9", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-10", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-1", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
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
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0",
																	"patching_rect" : [ 176.0, 111.0, 16.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 301.0, 502.0, 324.506836, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_(print shift from $2 : ($map col 0 $2 + 1) add (($builtin rows) - $2 - 1))" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 301.0, 502.0, 324.506836, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 298.0, 343.0, 84.433594, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-4",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_(if ($1 != $2) $1)" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 298.0, 343.0, 84.433594, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "no: try to make up data",
																	"linecount" : 2,
																	"patching_rect" : [ 213.0, 292.0, 71.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-5",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "yes: mark mapping",
																	"linecount" : 2,
																	"patching_rect" : [ 309.0, 292.0, 62.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "if anything was not at same place, send map that commands how to copy descriptor rows and unit data column",
																	"linecount" : 3,
																	"patching_rect" : [ 39.0, 487.0, 237.0, 38.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "peak",
																	"patching_rect" : [ 151.0, 370.0, 35.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-8",
																	"numinlets" : 2,
																	"numoutlets" : 3,
																	"fontsize" : 9.0,
																	"outlettype" : [ "int", "int", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "keep highest found index in imported descr (= number of imported builtin descrs - 1) --> have to shift everything from that until number of original descriptors to make space for new builtin descrs",
																	"linecount" : 8,
																	"patching_rect" : [ 31.0, 288.0, 121.0, 89.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "num. imported descriptors",
																	"patching_rect" : [ 621.0, 75.0, 126.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "any imported descriptor not in new builtin list was defined by import and is appended to the list",
																	"linecount" : 4,
																	"patching_rect" : [ 29.0, 192.0, 130.0, 48.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 5.0, 467.0, 62.109375, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-12",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_(if $2 $map)" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 5.0, 467.0, 62.109375, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 243.0, 429.0, 13.0, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-13",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_1" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 243.0, 429.0, 13.0, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 589.0, 116.0, 93.183105, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_rows $1, ramp 0 $1" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 589.0, 116.0, 93.183105, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "print",
																	"patching_rect" : [ 310.0, 411.0, 32.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-15",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "descriptor mapping to be copied from imported index to current index",
																	"linecount" : 2,
																	"patching_rect" : [ 301.0, 451.0, 174.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-16",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 298.0, 371.0, 58.751953, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_set $1 0 $2" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 298.0, 371.0, 58.751953, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 589.0, 90.0, 76.075195, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_($unitdata cols)" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 589.0, 90.0, 76.075195, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "fmat 0 1",
																	"ftm_objref_conv" : 0,
																	"patching_rect" : [ 298.0, 429.0, 76.189941, 18.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-19",
																	"persistence" : 0,
																	"editor_interface" : "",
																	"description" : "fmat 0 1",
																	"name" : "map",
																	"numinlets" : 1,
																	"scope" : 0,
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"ftm_scope" : 0,
																	"outlettype" : [ "", "" ],
																	"presentation_rect" : [ 298.0, 429.0, 76.189941, 18.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "if columns changed, mark descriptor rows and unit data columns to be copied in descriptor mapping fmat",
																	"linecount" : 3,
																	"patching_rect" : [ 396.0, 343.0, 189.0, 38.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-20",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "imported descriptor index",
																	"patching_rect" : [ 396.0, 319.0, 126.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-21",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 207.0, 255.0, 151.770996, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-22",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_(if (not ($descrid exists $1)) $1)" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 207.0, 255.0, 151.770996, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "current descriptor name",
																	"patching_rect" : [ 396.0, 215.0, 126.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-23",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 207.0, 214.0, 32.037598, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-24",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_$1[0]" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 207.0, 214.0, 32.037598, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "does imported descriptor under the same name exist?",
																	"linecount" : 2,
																	"patching_rect" : [ 396.0, 255.0, 136.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-25",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 298.0, 317.0, 63.137695, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-26",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_$descrid[$1]" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 298.0, 317.0, 63.137695, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "ftm.iter @mode tuple",
																	"patching_rect" : [ 207.0, 185.0, 181.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-27",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "" ],
																	"saved_object_attributes" : 																	{
																		"ftm_objref_conv" : 0,
																		"ftm_scope" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 207.0, 166.0, 38.321777, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-28",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_$builtin" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 207.0, 166.0, 38.321777, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "check each column of current builtin descr with loaded descr: if present, put at right place, else try to recreate",
																	"linecount" : 2,
																	"patching_rect" : [ 273.0, 151.0, 270.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-29",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b b b b l",
																	"patching_rect" : [ 5.0, 49.0, 416.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-30",
																	"numinlets" : 1,
																	"numoutlets" : 5,
																	"fontsize" : 9.0,
																	"outlettype" : [ "bang", "bang", "bang", "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 398.0, 431.0, 333.660645, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-31",
																	"numinlets" : 5,
																	"#triggerall" : 0,
																	"numins" : 5,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_(print mapping imported builtin descriptor $5 from index $2 to current $4)" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 398.0, 431.0, 333.660645, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 5.0, 29.0, 15.0, 15.0 ],
																	"id" : "obj-32",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 5.0, 487.0, 15.0, 15.0 ],
																	"id" : "obj-33",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"linecount" : 2,
																	"presentation_linecount" : 2,
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 17.0, 394.0, 198.0, 29.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-34",
																	"numinlets" : 3,
																	"#triggerall" : 0,
																	"numins" : 3,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_(($map colref 0 ($2 + 1) ($3 - $2 - 1)) add", "_ (($builtin rows) - $2 - 1))" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 17.0, 394.0, 198.0, 29.0 ],
																	"#init" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-34", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 1 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 113.75, 113.0, 26.5, 113.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 2 ],
																	"destination" : [ "obj-28", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 3 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 4 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-28", 0 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 1 ],
																	"destination" : [ "obj-4", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 1 ],
																	"destination" : [ "obj-17", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-31", 4 ],
																	"hidden" : 0,
																	"midpoints" : [ 216.5, 234.0, 722.160645, 234.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-8", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-12", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-34", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 598.5, 402.0, 307.5, 402.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-12", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 1 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-17", 0 ],
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
													"maxclass" : "comment",
													"text" : "if anything was not at same place, copy descriptor rows and unit data column according to map",
													"linecount" : 2,
													"patching_rect" : [ 92.0, 112.0, 237.0, 27.0 ],
													"fontname" : "Arial",
													"id" : "obj-13",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 0.0, 25.0, 15.0, 15.0 ],
													"id" : "obj-14",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-2", 0 ],
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
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-9", 0 ],
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
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 1 ],
													"destination" : [ "obj-3", 1 ],
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
									"maxclass" : "newobj",
									"text" : "p import-descriptors",
									"patching_rect" : [ 109.0, 120.0, 105.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 881.0, 603.0, 363.0, 206.0 ],
										"bglocked" : 0,
										"defrect" : [ 881.0, 603.0, 363.0, 206.0 ],
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
													"text" : "workaround",
													"patching_rect" : [ 241.0, 35.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ftm.iter @mode tuple",
													"patching_rect" : [ 50.0, 86.0, 105.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-2",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"saved_object_attributes" : 													{
														"ftm_objref_conv" : 0,
														"ftm_scope" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 50.0, 50.0, 250.006348, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-3",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($descrid clear); ($descriptors import $1); $descriptors" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 50.0, 50.0, 250.006348, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"id" : "obj-4",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 50.0, 126.0, 141.931641, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-5",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($descrid set $1[0] $2 $2 $2)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 50.0, 126.0, 141.931641, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "recreate lookup",
													"patching_rect" : [ 187.0, 87.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-6",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
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
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-5", 1 ],
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
									"maxclass" : "comment",
									"text" : "symbols",
									"patching_rect" : [ 225.0, 153.0, 100.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p import-symbols",
									"patching_rect" : [ 85.0, 166.0, 98.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 575.0, 370.0, 390.0, 446.0 ],
										"bglocked" : 0,
										"defrect" : [ 575.0, 370.0, 390.0, 446.0 ],
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
													"patching_rect" : [ 49.0, 274.0, 166.519043, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-1",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(if ((typeof $1) == tuple) $1 { $1 })" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 49.0, 274.0, 166.519043, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "new structs to fill",
													"patching_rect" : [ 179.0, 182.0, 89.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-2",
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
													"patching_rect" : [ 0.0, 356.0, 279.291504, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-3",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($descriptors set $descrid[SoundFile] $symbolcol $soundfiles)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 0.0, 356.0, 279.291504, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "soundfiles symbol table is the soundfiles mat!",
													"patching_rect" : [ 20.0, 375.0, 227.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-4",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "recreate special soundfile mapping",
													"linecount" : 2,
													"patching_rect" : [ 256.0, 351.0, 89.0, 27.0 ],
													"fontname" : "Arial",
													"id" : "obj-5",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "descriptor's symbols as tuple (even if stored as single atom by dict)",
													"linecount" : 3,
													"patching_rect" : [ 255.0, 252.0, 112.0, 38.0 ],
													"fontname" : "Arial",
													"id" : "obj-6",
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
													"patching_rect" : [ 145.0, 198.0, 117.445312, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-7",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(new mat 0 1) (new dict)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 145.0, 198.0, 117.445312, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ftm.iter",
													"patching_rect" : [ 49.0, 302.0, 46.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-8",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"saved_object_attributes" : 													{
														"ftm_objref_conv" : 0,
														"ftm_scope" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 49.0, 253.0, 95.95166, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-9",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_$importsymbols[$1]" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 49.0, 253.0, 95.95166, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ftm.iter @mode row",
													"patching_rect" : [ 49.0, 165.0, 106.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-10",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"saved_object_attributes" : 													{
														"ftm_objref_conv" : 0,
														"ftm_scope" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 49.0, 139.0, 60.602051, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-11",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_$descriptors" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 49.0, 139.0, 60.602051, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.object",
													"text" : "dict",
													"ftm_objref_conv" : 0,
													"patching_rect" : [ 98.0, 99.0, 99.564453, 18.0 ],
													"fontname" : "Geneva",
													"id" : "obj-12",
													"persistence" : 0,
													"editor_interface" : "",
													"description" : "dict",
													"name" : "importsymbols",
													"numinlets" : 1,
													"scope" : 0,
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"ftm_scope" : 0,
													"outlettype" : [ "", "" ],
													"presentation_rect" : [ 98.0, 99.0, 99.564453, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "fill symbol table, recreate dict",
													"linecount" : 2,
													"patching_rect" : [ 255.0, 313.0, 89.0, 27.0 ],
													"fontname" : "Arial",
													"id" : "obj-13",
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
													"patching_rect" : [ 98.0, 76.0, 106.384277, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-14",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_clear, importas text $1" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 98.0, 76.0, 106.384277, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 0.0, 5.0, 15.0, 15.0 ],
													"id" : "obj-15",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "load dict (descr.name --> symbols tuple) in coll-format, copy back to symbol table mat, recreate symbol-lookup dict. soundfiles must come afterwards, they overwrite the soundfile symbol table",
													"linecount" : 5,
													"patching_rect" : [ 120.0, 5.0, 193.0, 58.0 ],
													"fontname" : "Arial",
													"id" : "obj-16",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b l",
													"patching_rect" : [ 0.0, 32.0, 109.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-17",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 83.0, 226.0, 182.704102, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-18",
													"numinlets" : 3,
													"#triggerall" : 0,
													"numins" : 3,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($descriptors set $1 $symbolcol $2 $3)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 83.0, 226.0, 182.704102, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 49.0, 331.0, 148.229004, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-19",
													"numinlets" : 4,
													"#triggerall" : 0,
													"numins" : 4,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($3 append $1); ($4 set $1 $2)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 49.0, 331.0, 148.229004, 17.0 ],
													"#init" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-19", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-19", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-18", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 2 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 1 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
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
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 85.0, 149.0, 73.860352, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-7",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(cat $1 .sy.txt)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 85.0, 149.0, 73.860352, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "unit data",
									"patching_rect" : [ 225.0, 233.0, 49.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_clear",
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"patching_rect" : [ 133.0, 76.0, 84.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l l l l b",
									"patching_rect" : [ 13.0, 48.0, 134.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 6,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "", "", "", "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 13.0, 276.0, 15.0, 15.0 ],
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 13.0, 21.0, 15.0, 15.0 ],
									"id" : "obj-12",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p import-soundfiles",
									"patching_rect" : [ 61.0, 210.0, 98.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 877.0, 317.0, 399.0, 366.0 ],
										"bglocked" : 0,
										"defrect" : [ 877.0, 317.0, 399.0, 366.0 ],
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
													"text" : "full path of first file found",
													"linecount" : 2,
													"patching_rect" : [ 24.0, 239.0, 93.0, 27.0 ],
													"fontname" : "Arial",
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "TODO: check if path exists, keep in dict, prune searches in non-existing paths",
													"linecount" : 4,
													"patching_rect" : [ 141.0, 212.0, 120.0, 48.0 ],
													"fontname" : "Arial",
													"id" : "obj-2",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "if given full path $2 not found, try in search path with $1, then try to load flac-compressed versions, and also keep import limit $3 (LATER: but compare duration $4!)",
													"linecount" : 4,
													"patching_rect" : [ 140.0, 157.0, 214.0, 48.0 ],
													"fontname" : "Arial",
													"id" : "obj-3",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p first-found",
													"patching_rect" : [ 16.0, 218.0, 68.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-4",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 873.0, 690.0, 349.0, 378.0 ],
														"bglocked" : 0,
														"defrect" : [ 873.0, 690.0, 349.0, 378.0 ],
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
																	"text" : "iter",
																	"patching_rect" : [ 40.0, 61.0, 25.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 25.0, 203.0, 48.583008, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_not found" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 25.0, 203.0, 48.583008, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 120.0, 223.0, 45.884766, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_found $1" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 120.0, 223.0, 45.884766, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "tosymbol",
																	"patching_rect" : [ 25.0, 125.0, 51.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-4",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "output only first that was found",
																	"patching_rect" : [ 127.0, 250.0, 153.0, 17.0 ],
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
																	"text" : "t l 1",
																	"patching_rect" : [ 40.0, 26.0, 33.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate",
																	"patching_rect" : [ 25.0, 100.0, 26.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-7",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0 l l",
																	"patching_rect" : [ 90.0, 202.0, 41.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"fontsize" : 9.0,
																	"outlettype" : [ "int", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route notfound",
																	"patching_rect" : [ 25.0, 175.0, 75.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "absolutepath",
																	"patching_rect" : [ 25.0, 150.0, 66.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 40.0, 1.0, 15.0, 15.0 ],
																	"id" : "obj-11",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 105.0, 249.0, 15.0, 15.0 ],
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "list of sound files to check for existence",
																	"linecount" : 2,
																	"patching_rect" : [ 61.0, 0.0, 100.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"ftm_objref_conv" : 0,
																	"#loadbang" : 0,
																	"patching_rect" : [ 25.0, 284.0, 173.115234, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-14",
																	"numinlets" : 3,
																	"#triggerall" : 0,
																	"numins" : 3,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_(print trying to import file $3 : $1 $2)" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 25.0, 284.0, 173.115234, 17.0 ],
																	"#init" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 1 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-14", 2 ],
																	"hidden" : 0,
																	"midpoints" : [ 34.5, 121.0, 188.615234, 121.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 129.5, 273.0, 34.5, 273.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-7", 1 ],
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
													"maxclass" : "ftm.mess",
													"linecount" : 4,
													"presentation_linecount" : 4,
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 16.0, 155.0, 108.0, 53.0 ],
													"fontname" : "Geneva",
													"id" : "obj-5",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_$2", "_$1", "_(cat (stripext $2) .flac)", "_(cat (stripext $1) .flac)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 16.0, 155.0, 108.0, 53.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "import limit",
													"patching_rect" : [ 122.0, 136.0, 89.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-6",
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
													"patching_rect" : [ 16.0, 35.0, 51.51416, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-7",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(new mat)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 16.0, 35.0, 51.51416, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "sf name, import limit [s]",
													"patching_rect" : [ 131.0, 288.0, 121.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-8",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_add-soundfile",
													"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
													"patching_rect" : [ 16.0, 288.0, 110.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-9",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ftm.iter @mode row",
													"patching_rect" : [ 16.0, 107.0, 101.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-10",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"saved_object_attributes" : 													{
														"ftm_objref_conv" : 0,
														"ftm_scope" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "reload sound files",
													"patching_rect" : [ 30.0, 88.0, 89.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-11",
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
													"patching_rect" : [ 16.0, 60.0, 90.265137, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-12",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($1 import $2); $1" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 16.0, 60.0, 90.265137, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 16.0, 10.0, 15.0, 15.0 ],
													"id" : "obj-13",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 16.0, 269.0, 32.995605, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-14",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_$1 $2" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 16.0, 269.0, 32.995605, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 64.0, 135.0, 17.99707, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-15",
													"numinlets" : 3,
													"#triggerall" : 0,
													"numins" : 3,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_$3" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 64.0, 135.0, 17.99707, 17.0 ],
													"#init" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-14", 1 ],
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
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-15", 0 ],
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
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 61.0, 192.0, 72.225586, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-14",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(cat $1 .sf.txt)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 61.0, 192.0, 72.225586, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 109.0, 101.0, 74.132812, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-15",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(cat $1 .ds.txt)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 109.0, 101.0, 74.132812, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 37.0, 234.0, 74.800781, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-16",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(cat $1 .ud.txt)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 37.0, 234.0, 74.800781, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "import corpus from files named <name>.sf.txt <name>.ds.txt <name>.sy.txt <name>.ud.txt",
									"linecount" : 2,
									"patching_rect" : [ 156.0, 21.0, 218.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-17",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "corpusfile prefix <name>",
									"patching_rect" : [ 33.0, 21.0, 122.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "descriptors",
									"patching_rect" : [ 225.0, 113.0, 100.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-19",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "soundfiles (N.B.: full paths will be adapted to where the file was actually found!)",
									"linecount" : 3,
									"patching_rect" : [ 225.0, 193.0, 135.0, 38.0 ],
									"fontname" : "Arial",
									"id" : "obj-20",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 5 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 3 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 4 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 2 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
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
					"text" : "r catart.data",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"patching_rect" : [ 127.0, 35.0, 68.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-115",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1_catart.data.get-corpus",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"patching_rect" : [ 11.0, 118.0, 165.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-116",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #1_catart.proxy.set-corpus",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"patching_rect" : [ 7.0, 432.0, 145.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-117",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "initialise proxys",
					"patching_rect" : [ 15.0, 416.0, 100.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-118",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p init",
					"patching_rect" : [ 11.0, 349.0, 36.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-119",
					"numinlets" : 3,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 134.0, 556.0, 510.0, 226.0 ],
						"bglocked" : 0,
						"defrect" : [ 134.0, 556.0, 510.0, 226.0 ],
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
									"patching_rect" : [ 19.0, 28.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 113.0, 71.0, 217.289062, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-2",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print #1_numadddescr $corpus[numadddescr])" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 113.0, 71.0, 217.289062, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 89.0, 114.0, 213.641602, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-3",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print #1_numstddescr $corpus[numstddescr])" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 89.0, 114.0, 213.641602, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 50.0, 158.0, 15.0, 15.0 ],
									"id" : "obj-4",
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
									"patching_rect" : [ 50.0, 136.0, 41.090332, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-5",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$corpus" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 50.0, 136.0, 41.090332, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"patching_rect" : [ 50.0, 53.0, 30.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 96.0, 53.0, 369.836426, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-7",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($corpus set numadddescr (($corpus[descriptors] rows) - $corpus[numstddescr]))" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 96.0, 53.0, 369.836426, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 96.0, 30.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 70.0, 96.0, 251.315918, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-9",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($corpus set numstddescr ($corpus[descriptors] rows))" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 70.0, 96.0, 251.315918, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "initialise proxys",
									"patching_rect" : [ 123.0, 133.0, 100.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-9", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
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
					"maxclass" : "message",
					"text" : "print",
					"patching_rect" : [ 750.0, 450.0, 32.0, 15.0 ],
					"fontname" : "Arial",
					"id" : "obj-120",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "mat 0 1",
					"ftm_objref_conv" : 0,
					"patching_rect" : [ 750.0, 468.0, 99.560059, 18.0 ],
					"fontname" : "Geneva",
					"id" : "obj-121",
					"persistence" : 0,
					"editor_interface" : "",
					"description" : "mat 0 1",
					"name" : "sounddata",
					"numinlets" : 1,
					"scope" : 0,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"ftm_scope" : 0,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 750.0, 468.0, 99.560059, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "new number of units",
					"patching_rect" : [ 664.0, 269.0, 120.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-122",
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
					"patching_rect" : [ 648.0, 246.0, 51.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-123",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_($2 size)" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p previsional-stat",
					"patching_rect" : [ 567.0, 267.0, 91.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-124",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 572.0, 385.0, 398.0, 392.0 ],
						"bglocked" : 0,
						"defrect" : [ 572.0, 385.0, 398.0, 392.0 ],
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
									"text" : "sf path, import limit [s], imported duration [ms], sound fmat",
									"linecount" : 2,
									"patching_rect" : [ 48.0, 55.0, 208.0, 27.0 ],
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
									"text" : "num. units",
									"patching_rect" : [ 289.0, 55.0, 56.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 263.0, 55.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 25.0, 224.0, 78.13623, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-4",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$descrid[$1] $2" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 25.0, 224.0, 78.13623, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 25.0, 151.0, 206.887207, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-5",
									"numinlets" : 4,
									"#triggerall" : 0,
									"numins" : 4,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_StartSample ($4 rows), SampleSize ($4 rows)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 25.0, 151.0, 206.887207, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 55.0, 124.0, 179.223633, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-6",
									"numinlets" : 3,
									"#triggerall" : 0,
									"numins" : 3,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_StartTime $3, EndTime $3, Duration $3" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 55.0, 124.0, 179.223633, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "previsionally update stat for bookkeeping descriptors in order to properly display added units on the fly",
									"linecount" : 2,
									"patching_rect" : [ 13.0, 21.0, 353.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-7",
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
									"patching_rect" : [ 85.0, 97.0, 131.02002, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-8",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_SoundFile ($soundfiles rows)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 85.0, 97.0, 131.02002, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 263.0, 186.0, 46.838379, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-9",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_UnitID $1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 263.0, 186.0, 46.838379, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "update min, max, range",
									"patching_rect" : [ 40.0, 243.0, 116.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 3,
									"presentation_linecount" : 3,
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 25.0, 258.0, 202.0, 41.0 ],
									"fontname" : "Geneva",
									"id" : "obj-11",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_set 1 $1 (min  $2 $unitstat[1 $1]),", "_set 2 $1 (max $2 $unitstat[2 $1]),", "_set 3 $1 ($unitstat[2 $1] - $unitstat[1 $1])" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 25.0, 258.0, 202.0, 41.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 25.0, 321.0, 15.0, 15.0 ],
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 25.0, 55.0, 15.0, 15.0 ],
									"id" : "obj-13",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "out to unitstat",
									"patching_rect" : [ 49.0, 320.0, 100.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-4", 0 ],
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
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
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
					"maxclass" : "message",
					"text" : "print",
					"patching_rect" : [ 165.0, 345.0, 32.0, 15.0 ],
					"fontname" : "Arial",
					"id" : "obj-125",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print",
					"patching_rect" : [ 120.0, 405.0, 32.0, 15.0 ],
					"fontname" : "Arial",
					"id" : "obj-126",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bang to update stat",
					"patching_rect" : [ 816.0, 157.0, 100.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-127",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p add-unit-and-data",
					"patching_rect" : [ 395.0, 267.0, 165.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-128",
					"numinlets" : 4,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 623.0, 574.0, 1016.0, 447.0 ],
						"bglocked" : 0,
						"defrect" : [ 623.0, 574.0, 1016.0, 447.0 ],
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
									"maxclass" : "number",
									"patching_rect" : [ 460.0, 100.0, 83.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-84",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "bang" ],
									"presentation_rect" : [ 533.0, 109.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 580.0, 75.0, 83.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-83",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "bang" ],
									"presentation_rect" : [ 576.0, 75.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "same fmat: set offset to given sample pos: continue recording new soundfile in same fmat!!!",
									"patching_rect" : [ 570.0, 145.0, 373.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-82",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"presentation_rect" : [ 560.0, 168.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 560.0, 160.0, 140.308594, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-81",
									"numinlets" : 3,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($offset = (-1 * ($2 / $msr)))" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 560.0, 160.0, 140.308594, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "new fmat: reset offset",
									"patching_rect" : [ 455.0, 145.0, 96.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-80",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 0 1",
									"patching_rect" : [ 450.0, 125.0, 238.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-79",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 630.0, 280.0, 83.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-78",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "bang" ],
									"presentation_rect" : [ 569.0, 366.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 200.0, 55.0, 28.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-75",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "bang" ],
									"presentation_rect" : [ 224.0, 80.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 183.0, 261.0, 83.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-74",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "bang" ],
									"presentation_rect" : [ 299.0, 273.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 349.0, 260.0, 83.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-73",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "print",
									"patching_rect" : [ 60.0, 300.0, 34.0, 18.0 ],
									"fontname" : "Arial",
									"id" : "obj-72",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set shift of first unit of soundfile to point to last unit",
									"linecount" : 3,
									"patching_rect" : [ 362.0, 400.0, 119.0, 38.0 ],
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
									"text" : "sound file finished",
									"patching_rect" : [ 716.0, 10.0, 91.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 695.0, 10.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 163.0, 284.0, 132.703125, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-4",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_onset $corpus[numstddescr]" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 163.0, 284.0, 132.703125, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 100.0, 284.0, 43.73584, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-5",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_index $1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 100.0, 284.0, 43.73584, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "fvec $unitdata row",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 100.0, 303.0, 133.595703, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-6",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "fvec $unitdata row",
									"name" : "addrow",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 100.0, 303.0, 133.595703, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "index of last added unit for display",
									"linecount" : 2,
									"patching_rect" : [ 256.0, 400.0, 93.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-7",
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
									"patching_rect" : [ 580.0, 55.0, 94.737305, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-8",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($length = (int $2))" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 580.0, 55.0, 94.737305, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 888.0, 55.0, 125.478516, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-9",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print length = $length ms)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 888.0, 55.0, 125.478516, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sound file size [samples]",
									"patching_rect" : [ 765.0, 55.0, 118.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "var 0",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 681.0, 55.0, 69.03125, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-11",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "var 0",
									"name" : "length",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 681.0, 55.0, 69.03125, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 693.0, 377.0, 15.0, 15.0 ],
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 487.0, 305.0, 169.001953, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-13",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print UNIT WRAPAROUND at $2 ms!)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 487.0, 305.0, 169.001953, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "suppress first 0 index",
									"linecount" : 3,
									"patching_rect" : [ 520.0, 264.0, 48.0, 38.0 ],
									"fontname" : "Arial",
									"id" : "obj-14",
									"hidden" : 1,
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
									"patching_rect" : [ 450.0, 160.0, 65.293945, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-15",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($offset = 0)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 450.0, 160.0, 65.293945, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "limit to trigger wraparound",
									"patching_rect" : [ 545.0, 100.0, 133.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-16",
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
									"patching_rect" : [ 460.0, 80.0, 112.820801, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-17",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(($2 / $msr) - $margin)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 460.0, 80.0, 112.820801, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "correct by wraparound",
									"patching_rect" : [ 178.0, 208.0, 114.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-18",
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
									"patching_rect" : [ 888.0, 78.0, 123.386719, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-19",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print offset = $offset ms)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 888.0, 78.0, 123.386719, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 693.0, 420.0, 176.327637, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-20",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print AUDIO WRAPAROUND at $1 ms!)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 693.0, 420.0, 176.327637, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"patching_rect" : [ 693.0, 396.0, 47.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-21",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 714.0, 288.0, 15.0, 15.0 ],
									"id" : "obj-22",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "safety margin for next unit",
									"patching_rect" : [ 765.0, 101.0, 133.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-23",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "time of last wraparound [ms]",
									"patching_rect" : [ 765.0, 78.0, 142.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-24",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "10000",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 681.0, 98.0, 78.567383, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-25",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "10000",
									"name" : "margin",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 681.0, 98.0, 78.567383, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "wraparound live sound buffer when next unit might be too long to fit",
									"linecount" : 2,
									"patching_rect" : [ 636.0, 231.0, 170.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-26",
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
									"patching_rect" : [ 714.0, 261.0, 17.99707, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-27",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 714.0, 261.0, 17.99707, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 628.0, 261.0, 76.268555, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-28",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($offset += $1)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 628.0, 261.0, 76.268555, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "var 0",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 681.0, 77.0, 67.985352, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-29",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "var 0",
									"name" : "offset",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 681.0, 77.0, 67.985352, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "$1 = starttime $2 = endtime, $3 = unit frow",
									"linecount" : 3,
									"patching_rect" : [ 28.0, 203.0, 68.0, 38.0 ],
									"fontname" : "Arial",
									"id" : "obj-30",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "$6 = rel. unit id (in soundfile)",
									"patching_rect" : [ 360.0, 280.0, 143.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-31",
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
									"patching_rect" : [ 410.0, 80.0, 13.0, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-32",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_0" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 410.0, 80.0, 13.0, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter 0 999999",
									"patching_rect" : [ 349.0, 237.0, 92.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-33",
									"numinlets" : 5,
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "", "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.print UNITDATA:",
									"patching_rect" : [ 3.0, 417.0, 105.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-34",
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
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
									"linecount" : 5,
									"presentation_linecount" : 5,
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 743.0, 352.0, 262.845703, 65.0 ],
									"fontname" : "Geneva",
									"id" : "obj-35",
									"numinlets" : 6,
									"#triggerall" : 0,
									"numins" : 6,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print #1: add-unit $2 $3 $4 at index $1 -- offset $offset", "_--> rel. unit ($2 - $offset) ($3 - $offset)", "_-- samples ((int (($2 - $offset) * $msr)) % (int $6))", "_-- write $corpus[writepointer]", "_-- unitdata ($unitdata size) -- max $5 -- numsamples $*6)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 743.0, 352.0, 262.845703, 65.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 183.0, 403.0, 64.416504, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-36",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_erase-unit $1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 183.0, 403.0, 64.416504, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1_catart.lcd",
									"patching_rect" : [ 183.0, 423.0, 89.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-37",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<bool: fmat equal to last> <sound sample size>  <current sample position> = start new file",
									"linecount" : 2,
									"patching_rect" : [ 471.0, 10.0, 203.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-38",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 450.0, 10.0, 15.0, 15.0 ],
									"id" : "obj-39",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "grow unitdata matrix up to max size",
									"patching_rect" : [ 212.0, 170.0, 174.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-40",
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
									"patching_rect" : [ 202.0, 154.0, 223.599609, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-41",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($unitdata rows (min (($unitdata rows) + 1) $2))" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 202.0, 154.0, 223.599609, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "$5 = index of currently added unit",
									"patching_rect" : [ 192.0, 247.0, 190.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-42",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"types" : [  ],
									"patching_rect" : [ 743.0, 278.0, 39.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-43",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "", "" ],
									"items" : [ "off", ",", "file", ",", "live" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2 0",
									"patching_rect" : [ 743.0, 298.0, 47.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-44",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "starttime, endtime, unit descriptor fmat, external descr dict",
									"linecount" : 2,
									"patching_rect" : [ 1.0, 10.0, 174.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-45",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "extend by one line",
									"patching_rect" : [ 41.0, 175.0, 91.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-46",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l b b",
									"patching_rect" : [ 3.0, 104.0, 60.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-47",
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 35.0, 158.0, 120.591797, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-48",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($unitdata rows ($1 + 1))" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 35.0, 158.0, 120.591797, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 35.0, 129.0, 79.55127, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-49",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($unitdata rows)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 35.0, 129.0, 79.55127, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l b b",
									"patching_rect" : [ 170.0, 101.0, 45.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-50",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 183.0, 232.0, 140.169434, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-51",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($corpus set addindex $1); $1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 183.0, 232.0, 140.169434, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "to unitdata",
									"patching_rect" : [ 27.0, 397.0, 58.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-52",
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
									"patching_rect" : [ 183.0, 124.0, 147.916992, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-53",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(($corpus[addindex] + 1) % $2)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 183.0, 124.0, 147.916992, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 200.0, 34.0, 71.103516, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-54",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(($1 > 0) + 1)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 200.0, 34.0, 71.103516, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set max corpus size (0 for unlimited)",
									"linecount" : 2,
									"patching_rect" : [ 336.0, 10.0, 101.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-55",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 312.0, 10.0, 15.0, 15.0 ],
									"id" : "obj-56",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2 1",
									"patching_rect" : [ 3.0, 81.0, 177.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-57",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set standard descriptors, then copy additional unit descriptors to rowref addrow",
									"linecount" : 3,
									"patching_rect" : [ 351.0, 334.0, 141.0, 38.0 ],
									"fontname" : "Arial",
									"id" : "obj-58",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<-- fvec set fmat takes column DUH!",
									"patching_rect" : [ 110.0, 371.0, 174.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-59",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 170.0, 10.0, 15.0, 15.0 ],
									"id" : "obj-60",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 3.0, 397.0, 15.0, 15.0 ],
									"id" : "obj-61",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 743.0, 321.0, 261.180176, 29.0 ],
									"fontname" : "Geneva",
									"id" : "obj-62",
									"numinlets" : 6,
									"#triggerall" : 0,
									"numins" : 6,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print #1: add-unit $2 $3 $4 at index $1", "_-- unitdata ($unitdata size) -- max $5 -- numsamples $*6)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 743.0, 321.0, 261.180176, 29.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 4,
									"presentation_linecount" : 4,
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 19.0, 333.0, 324.0, 53.0 ],
									"fontname" : "Geneva",
									"id" : "obj-63",
									"numinlets" : 6,
									"#triggerall" : 0,
									"numins" : 6,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_set $5 0   $5 $6 0 $corpus[lastsoundfileindex] $corpus[soundset]", "_$corpus[workingset] 1 ((int ($1 * $msr)) % $length) (($2 - $1) * $msr)", "_$1 ($2 - $1) ($1 / $corpus[lastsoundfile][duration]) ($5 - 1),", "_($addrow set $3);" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 19.0, 333.0, 324.0, 53.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 628.0, 215.0, 81.70459, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-64",
									"numinlets" : 4,
									"#triggerall" : 0,
									"numins" : 4,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(if ($2 > $4) $2)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 628.0, 215.0, 81.70459, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 170.0, 189.0, 147.363281, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-65",
									"numinlets" : 3,
									"#triggerall" : 0,
									"numins" : 3,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($1 - $offset) ($2 - $offset) $3" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 170.0, 189.0, 147.363281, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "unit buffer wraparound should occur before and must'nt trigger record buffer wraparound",
									"linecount" : 4,
									"patching_rect" : [ 520.0, 210.0, 107.0, 48.0 ],
									"fontname" : "Arial",
									"id" : "obj-66",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 b",
									"patching_rect" : [ 487.0, 262.0, 31.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-67",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"patching_rect" : [ 487.0, 285.0, 31.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-68",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"patching_rect" : [ 487.0, 240.0, 32.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-69",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 351.0, 381.0, 147.666504, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-70",
									"numinlets" : 6,
									"#triggerall" : 0,
									"numins" : 6,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_set ($5 - $6) $descrid[Shift] $5" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 351.0, 381.0, 147.666504, 17.0 ],
									"#init" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 1 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-64", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-83", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [ 209.5, 78.0, 12.5, 78.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-63", 4 ],
									"hidden" : 0,
									"midpoints" : [ 192.5, 280.0, 272.5, 280.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-73", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-63", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 1 ],
									"destination" : [ "obj-68", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [ 179.5, 210.0, 637.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-21", 1 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.541176, 0.843137, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-62", 1 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"midpoints" : [ 179.0, 74.0, 800.936035, 74.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-57", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-35", 1 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.541176, 0.843137, 1.0 ],
									"midpoints" : [ 179.0, 75.0, 801.269165, 75.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.541176, 0.843137, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 1 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-62", 4 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"midpoints" : [ 321.0, 50.0, 946.244141, 50.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [ 321.0, 29.0, 209.5, 29.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-53", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-41", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-35", 4 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.541176, 0.843137, 1.0 ],
									"midpoints" : [ 321.0, 50.0, 947.576538, 50.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-44", 1 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.541176, 0.843137, 1.0 ],
									"midpoints" : [ 192.5, 145.0, 780.5, 145.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-70", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 1 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 2 ],
									"destination" : [ "obj-33", 0 ],
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
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-44", 1 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.541176, 0.843137, 1.0 ],
									"midpoints" : [ 44.5, 145.0, 780.5, 145.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 1 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 2 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 3 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 1 ],
									"destination" : [ "obj-35", 0 ],
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
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 172.5, 301.5, 109.5, 301.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-62", 5 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"midpoints" : [ 459.0, 45.0, 994.680176, 45.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-35", 5 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.541176, 0.843137, 1.0 ],
									"midpoints" : [ 459.0, 45.0, 996.345703, 45.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-70", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-33", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-22", 0 ],
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-21", 0 ],
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
					"maxclass" : "button",
					"patching_rect" : [ 435.0, 450.0, 15.0, 15.0 ],
					"id" : "obj-129",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_update-stat",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 807.0, 139.0, 105.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-130",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p print-descriptor-head",
					"patching_rect" : [ 435.0, 465.0, 117.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-131",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 39.0, 217.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 39.0, 217.0, 600.0, 426.0 ],
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
									"patching_rect" : [ 219.0, 170.0, 36.379395, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-1",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(cat '')" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 219.0, 170.0, 36.379395, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 63.0, 44.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 11.0, 259.0, 49.290527, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-3",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print $2)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 11.0, 259.0, 49.290527, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 221.0, 217.0, 17.99707, 17.0 ],
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
									"presentation_rect" : [ 221.0, 217.0, 17.99707, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b",
									"patching_rect" : [ 36.0, 73.0, 40.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.iter @mode row",
									"patching_rect" : [ 35.0, 133.0, 101.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
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
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 35.0, 105.0, 60.602051, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-7",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$descriptors" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 35.0, 105.0, 60.602051, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 35.0, 45.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 35.0, 195.0, 69.37793, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-9",
									"numinlets" : 3,
									"#triggerall" : 0,
									"numins" : 3,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(cat $3 ' ' $1)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 35.0, 195.0, 69.37793, 17.0 ],
									"#init" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 2 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-9", 2 ],
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
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
					"text" : "p calc-stat",
					"patching_rect" : [ 807.0, 262.0, 59.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-132",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 517.0, 184.0, 642.0, 414.0 ],
						"bglocked" : 0,
						"defrect" : [ 517.0, 184.0, 642.0, 414.0 ],
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
									"text" : "iter",
									"patching_rect" : [ 426.0, 83.0, 25.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 426.0, 22.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 514.0, 255.0, 52.498535, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-3",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($1 mean)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 514.0, 255.0, 52.498535, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set zero or NaN variance to 1",
									"linecount" : 2,
									"patching_rect" : [ 79.0, 146.0, 105.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-4",
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
									"patching_rect" : [ 1.0, 186.0, 165.56543, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-5",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(if (($1 == 0)  ||  (($1 * 0) != 0)) 1)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 1.0, 186.0, 165.56543, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set NaN variance to 1, min 0, max 1, range 1",
									"patching_rect" : [ 15.0, 247.0, 221.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
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
									"patching_rect" : [ 49.0, 308.0, 53.99707, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-7",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_1 $2 0 1 1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 49.0, 308.0, 53.99707, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 49.0, 282.0, 105.092285, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-8",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(if ((($1 * 0) != 0)) 1)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 49.0, 282.0, 105.092285, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 440.0, 255.0, 46.838379, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-9",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($1 max)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 440.0, 255.0, 46.838379, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 352.0, 255.0, 44.452148, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-10",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($1 min)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 352.0, 255.0, 44.452148, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"patching_rect" : [ 190.0, 188.0, 137.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 190.0, 229.0, 86.490234, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-12",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($unitdata col $1)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 190.0, 229.0, 86.490234, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 114.0, 66.0, 60.602051, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-13",
									"numinlets" : 2,
									"#triggerall" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$descriptors" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 114.0, 66.0, 60.602051, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 190.0, 255.0, 93.521484, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-14",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(sqrt ($1 variance))" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 190.0, 255.0, 93.521484, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.iter @mode row",
									"patching_rect" : [ 190.0, 154.0, 137.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-15",
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
									"maxclass" : "newobj",
									"text" : "t b l i",
									"patching_rect" : [ 114.0, 99.0, 162.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 266.0, 127.0, 129.279785, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-17",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_size 5 ($unitdata cols), fill 0" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 266.0, 127.0, 129.279785, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 114.0, 22.0, 15.0, 15.0 ],
									"id" : "obj-18",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 266.0, 367.0, 15.0, 15.0 ],
									"id" : "obj-19",
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
									"patching_rect" : [ 10.0, 353.0, 193.141113, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-20",
									"numinlets" : 3,
									"#triggerall" : 0,
									"numins" : 3,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print fixing stats of descr. $2 = $3 to $1)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 10.0, 353.0, 193.141113, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "for all descriptors",
									"patching_rect" : [ 334.0, 155.0, 100.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-21",
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
									"patching_rect" : [ 190.0, 324.0, 322.133789, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-22",
									"numinlets" : 5,
									"#triggerall" : 0,
									"numins" : 5,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_set 0 $2 $1, set 1 $2 $3, set 2 $2 $4, set 3 $2 ($4 - $3), set 4 $2 $5" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 190.0, 324.0, 322.133789, 17.0 ],
									"#init" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-22", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-22", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-19", 0 ],
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
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 2 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-20", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-16", 0 ],
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-20", 1 ],
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-22", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-11", 0 ],
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
					"maxclass" : "message",
					"text" : "print",
					"patching_rect" : [ 705.0, 330.0, 32.0, 15.0 ],
					"fontname" : "Arial",
					"id" : "obj-133",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "fmat 4 0, schema row $unitstat_row, schema col $unitdata_col",
					"ftm_objref_conv" : 0,
					"patching_rect" : [ 735.0, 330.0, 335.022461, 18.0 ],
					"fontname" : "Geneva",
					"id" : "obj-134",
					"persistence" : 0,
					"editor_interface" : "",
					"description" : "fmat 4 0, schema row $unitstat_row, schema col $unitdata_col",
					"name" : "unitstat",
					"numinlets" : 1,
					"scope" : 0,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"ftm_scope" : 0,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 735.0, 330.0, 335.022461, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "colums: descriptors;\rrows: variance, min, max, range, mean",
					"linecount" : 3,
					"patching_rect" : [ 808.0, 371.0, 104.0, 38.0 ],
					"fontname" : "Arial",
					"id" : "obj-135",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print",
					"patching_rect" : [ 285.0, 330.0, 32.0, 15.0 ],
					"fontname" : "Arial",
					"id" : "obj-136",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 195.0, 474.0, 137.0, 29.0 ],
					"fontname" : "Geneva",
					"id" : "obj-137",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_(print add-descriptor $1 --", "_num $corpus[numadddescr])" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 195.0, 474.0, 137.0, 29.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 466.0, 42.0, 123.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-138",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_(print sr $sr  msr $msr)" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "$FTM.audio.sr",
					"ftm_objref_conv" : 0,
					"patching_rect" : [ 353.0, 37.0, 87.844238, 18.0 ],
					"fontname" : "Geneva",
					"id" : "obj-139",
					"persistence" : 0,
					"editor_interface" : "",
					"description" : "$FTM.audio.sr",
					"name" : "sr",
					"numinlets" : 1,
					"scope" : 0,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"ftm_scope" : 0,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 353.0, 37.0, 87.844238, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "($sr / 1000.)",
					"ftm_objref_conv" : 0,
					"patching_rect" : [ 352.0, 61.0, 94.994141, 18.0 ],
					"fontname" : "Geneva",
					"id" : "obj-140",
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
					"presentation_rect" : [ 352.0, 61.0, 94.994141, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "samples per millisecond (ms * $msr -> samples, sample / $msr -> ms)",
					"patching_rect" : [ 466.0, 65.0, 333.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-141",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p import-soundfile",
					"patching_rect" : [ 282.0, 221.0, 93.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-142",
					"numinlets" : 4,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "", "int", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 624.0, 500.0, 713.0, 364.0 ],
						"bglocked" : 0,
						"defrect" : [ 624.0, 500.0, 713.0, 364.0 ],
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
									"patching_rect" : [ 405.0, 285.0, 22.020996, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-32",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_0 0" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 405.0, 285.0, 22.020996, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 195.0, 255.0, 64.025391, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-31",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(new fmat) 0" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 195.0, 255.0, 64.025391, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route load dontload",
									"patching_rect" : [ 120.0, 150.0, 88.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-30",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 120.0, 120.0, 191.682129, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-29",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 1,
									"text" : [ "_(if ($1 == _none_) {dontload} {load $*1})" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 120.0, 120.0, 191.682129, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 65.0, 253.0, 26.99707, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-1",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$1 1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 65.0, 253.0, 26.99707, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 391.0, 330.0, 274.404785, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-2",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print --- NOT loading $2 - size ($1 / 1000) s - into memory)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 391.0, 330.0, 274.404785, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 127.0, 253.0, 64.025391, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-3",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(new fmat) 0" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 127.0, 253.0, 64.025391, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 66.0, 108.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 295.0, 234.0, 69.241699, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-5",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_open $1, bang" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 295.0, 234.0, 69.241699, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 328.0, 280.0, 68.739258, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-6",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_0 ($1 * $msr)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 328.0, 280.0, 68.739258, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sfinfo~",
									"patching_rect" : [ 295.0, 253.0, 68.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 6,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "int", "float", "float", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!- 2",
									"patching_rect" : [ 65.0, 126.0, 27.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-8",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "clear cache",
									"patching_rect" : [ 223.0, 21.0, 61.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 122.0, 36.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "import into RAM",
									"patching_rect" : [ 121.0, 23.0, 92.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2 1",
									"patching_rect" : [ 65.0, 177.0, 72.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-12",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 317.0, 35.0, 15.0, 15.0 ],
									"id" : "obj-13",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "init bang",
									"patching_rect" : [ 315.0, 21.0, 48.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p soundfile-cache",
									"patching_rect" : [ 65.0, 203.0, 164.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-15",
									"numinlets" : 3,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 509.0, 353.0, 927.0, 305.0 ],
										"bglocked" : 0,
										"defrect" : [ 509.0, 353.0, 927.0, 305.0 ],
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
													"text" : "resampling wrong way round in 2.3.5",
													"patching_rect" : [ 228.0, 74.0, 178.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-1",
													"hidden" : 1,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"bgcolor" : [ 0.988235, 0.690196, 0.180392, 1.0 ],
													"#loadbang" : 0,
													"patching_rect" : [ 225.0, 90.0, 192.297363, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-2",
													"hidden" : 1,
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_((new fmat) import $1 0 ($2 * $sr) 0 $sr)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 225.0, 90.0, 192.297363, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "channel selection doesn't work...",
													"patching_rect" : [ 190.0, 109.0, 156.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-3",
													"hidden" : 1,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"linecount" : 3,
													"presentation_linecount" : 3,
													"ftm_objref_conv" : 0,
													"bgcolor" : [ 0.988235, 0.690196, 0.180392, 1.0 ],
													"#loadbang" : 0,
													"patching_rect" : [ 188.0, 124.0, 241.0, 41.0 ],
													"fontname" : "Geneva",
													"id" : "obj-4",
													"hidden" : 1,
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_((new fmat) import $1 0 ($2 * $sr)", "_ (if ($corpus[numchannels] > 1) '-' $corpus[channel])", "_ $sr)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 188.0, 124.0, 241.0, 41.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "import and convert to target sampling rate, use all channels",
													"linecount" : 2,
													"patching_rect" : [ 190.0, 165.0, 168.0, 27.0 ],
													"fontname" : "Arial",
													"id" : "obj-5",
													"hidden" : 1,
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
													"patching_rect" : [ 186.0, 192.0, 233.025879, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-6",
													"hidden" : 1,
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_((new fmat) import $1 0 ($2 * $sr) allchannels $sr)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 186.0, 192.0, 233.025879, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "clear cache",
													"patching_rect" : [ 309.0, 25.0, 61.0, 17.0 ],
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
													"text" : "t b 0",
													"patching_rect" : [ 292.0, 54.0, 50.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-8",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 95.0, 235.0, 617.547363, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-9",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(print SFCACHE: MISS for $2 corpus #1: (($1 rows) / $sr) seconds -- ($1 cols) channels -- (($1 rows) * ($1 cols) * 4 / 1024. / 1024.) MB)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 95.0, 235.0, 617.547363, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 28.0, 139.0, 137.251465, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-10",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($corpus[sfcache] set $2 $1)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 28.0, 139.0, 137.251465, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 472.0, 212.0, 113.749512, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-11",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(print $corpus[sfcache])" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 472.0, 212.0, 113.749512, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 125.0, 213.0, 313.867676, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-12",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(print SFCACHE: HIT for $2 : (($1 rows) / $sr) seconds for corpus #1)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 125.0, 213.0, 313.867676, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p cache-lookup",
													"patching_rect" : [ 15.0, 46.0, 157.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-13",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"outlettype" : [ "", "", "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 1317.0, 44.0, 318.0, 315.0 ],
														"bglocked" : 0,
														"defrect" : [ 1317.0, 44.0, 318.0, 315.0 ],
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
																	"maxclass" : "comment",
																	"text" : "file path to load if not in cache",
																	"linecount" : 2,
																	"patching_rect" : [ 66.0, 181.0, 85.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "fmat from cache if found",
																	"linecount" : 2,
																	"patching_rect" : [ 161.0, 181.0, 83.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-2",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 239.0, 218.0, 15.0, 15.0 ],
																	"id" : "obj-3",
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
																	"patching_rect" : [ 126.0, 131.0, 13.0, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-4",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_0" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 126.0, 131.0, 13.0, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate",
																	"patching_rect" : [ 31.0, 178.0, 29.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-5",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "sf name, import limit [s]",
																	"patching_rect" : [ 76.0, 32.0, 122.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 158.0, 219.0, 15.0, 15.0 ],
																	"id" : "obj-7",
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
																	"patching_rect" : [ 126.0, 103.0, 102.495117, 17.0 ],
																	"fontname" : "Geneva",
																	"id" : "obj-8",
																	"numinlets" : 2,
																	"#triggerall" : 0,
																	"numoutlets" : 1,
																	"fontsize" : 9.0,
																	"#untuple" : 0,
																	"text" : [ "_$corpus[sfcache][$1]" ],
																	"ftm_scope" : 0,
																	"outlettype" : [ "" ],
																	"presentation_rect" : [ 126.0, 103.0, 102.495117, 17.0 ],
																	"#init" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "strippath",
																	"patching_rect" : [ 126.0, 75.0, 51.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t l l 1 l",
																	"patching_rect" : [ 50.0, 50.0, 240.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "", "int", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
																	"id" : "obj-11",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 31.0, 220.0, 15.0, 15.0 ],
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "base name (cache key)",
																	"linecount" : 2,
																	"patching_rect" : [ 236.0, 181.0, 61.0, 27.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontsize" : 9.0
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 133.0, 156.0, 40.5, 156.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-5", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 2 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 206.833328, 156.0, 40.5, 156.0 ]
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
													"maxclass" : "comment",
													"text" : "sf name, import limit [s]",
													"patching_rect" : [ 38.0, 26.0, 122.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-14",
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
													"patching_rect" : [ 612.0, 92.0, 252.818848, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-15",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(print SFCACHE: create $corpus[sfcache] for corpus #1)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 612.0, 92.0, 252.818848, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r CATART.data.sfcache",
													"patching_rect" : [ 371.0, 137.0, 123.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-16",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s CATART.data.sfcache",
													"patching_rect" : [ 371.0, 115.0, 115.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-17",
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
													"patching_rect" : [ 613.0, 160.0, 238.857422, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-18",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(print SFCACHE: set $corpus[sfcache] for corpus #1)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 613.0, 160.0, 238.857422, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 371.0, 163.0, 117.212402, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-19",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($corpus set sfcache $1)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 371.0, 163.0, 117.212402, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 371.0, 92.0, 226.003418, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-20",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(if ((typeof $corpus[sfcache]) != dict) (new dict))" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 371.0, 92.0, 226.003418, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "init bang: set up cache",
													"patching_rect" : [ 401.0, 25.0, 110.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-21",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 371.0, 25.0, 15.0, 15.0 ],
													"id" : "obj-22",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "import and convert to target sampling rate, use only left channel",
													"linecount" : 2,
													"patching_rect" : [ 45.0, 67.0, 168.0, 27.0 ],
													"fontname" : "Arial",
													"id" : "obj-23",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"bgcolor" : [ 0.988235, 0.690196, 0.180392, 1.0 ],
													"#loadbang" : 0,
													"patching_rect" : [ 15.0, 95.0, 175.237793, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-24",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_((new fmat) import $1 0 ($2 * $sr) 0)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 15.0, 95.0, 175.237793, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 15.0, 25.0, 15.0, 15.0 ],
													"id" : "obj-25",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 15.0, 218.0, 15.0, 15.0 ],
													"id" : "obj-26",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 292.0, 25.0, 15.0, 15.0 ],
													"id" : "obj-27",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "sound fmat out",
													"patching_rect" : [ 11.0, 238.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-28",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 2 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 2 ],
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 2 ],
													"destination" : [ "obj-10", 1 ],
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
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 266.0, 280.0, 59.598633, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-16",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_0 ($1 rows)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 266.0, 280.0, 59.598633, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 328.0, 305.0, 15.0, 15.0 ],
									"id" : "obj-17",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sample size",
									"linecount" : 2,
									"patching_rect" : [ 325.0, 321.0, 46.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 252.0, 304.0, 15.0, 15.0 ],
									"id" : "obj-19",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "unset max size mode",
									"linecount" : 2,
									"patching_rect" : [ 252.0, 322.0, 55.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-20",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 223.0, 35.0, 15.0, 15.0 ],
									"id" : "obj-21",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 16.0, 55.0, 300.0, 29.0 ],
									"fontname" : "Geneva",
									"id" : "obj-22",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print --------- loading (if $2 (cat 'first ' $2 ' seconds of') complete)", "_ soundfile $1)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 16.0, 55.0, 300.0, 29.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 2.0, 274.0, 15.0, 15.0 ],
									"id" : "obj-23",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l 0",
									"patching_rect" : [ 2.0, 88.0, 260.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-24",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 2.0, 39.0, 15.0, 15.0 ],
									"id" : "obj-25",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "in: filename [import limit in seconds]",
									"linecount" : 2,
									"patching_rect" : [ 20.0, 24.0, 96.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-26",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "out list of path, import limit [s], imported duration [ms], sound fmat, live flag (always 0), in RAM --> add-soundfile",
									"linecount" : 3,
									"patching_rect" : [ 22.0, 311.0, 194.0, 38.0 ],
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
									"patching_rect" : [ 2.0, 280.0, 159.5625, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-28",
									"numinlets" : 4,
									"#triggerall" : 0,
									"numins" : 4,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_$1 $2 (($3 rows) / $msr) $3 0 $4" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 2.0, 280.0, 159.5625, 17.0 ],
									"#init" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 3 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 3 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-28", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-28", 2 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-23", 0 ],
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
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 2 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"midpoints" : [ 74.5, 237.0, 275.5, 237.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-15", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.541176, 0.843137, 1.0 ],
									"midpoints" : [ 127.5, 226.0, 304.5, 226.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
									"midpoints" : [ 127.5, 197.0, 655.904785, 197.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-28", 2 ],
									"hidden" : 0,
									"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
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
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 1229.0, 474.0, 254.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-143",
					"numinlets" : 4,
					"#triggerall" : 0,
					"numins" : 4,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_($corpus[lastsoundfile][datafile] append $1 $2 $3 $4)" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_add-datafile",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1229.0, 428.0, 110.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-144",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "descriptor name, raw data track, file name, duration",
					"linecount" : 2,
					"patching_rect" : [ 1239.0, 447.0, 140.0, 27.0 ],
					"fontname" : "Arial",
					"id" : "obj-145",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p add-soundfile",
					"patching_rect" : [ 282.0, 267.0, 78.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-146",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 414.0, 68.0, 641.0, 457.0 ],
						"bglocked" : 0,
						"defrect" : [ 414.0, 68.0, 641.0, 457.0 ],
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
									"text" : "fix stupid sfinfo~ output of zeros if (flac) file not found",
									"patching_rect" : [ 222.0, 250.0, 259.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"patching_rect" : [ 184.0, 250.0, 35.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p maybe-resample",
									"patching_rect" : [ 48.0, 250.0, 93.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 807.0, 44.0, 503.0, 341.0 ],
										"bglocked" : 0,
										"defrect" : [ 807.0, 44.0, 503.0, 341.0 ],
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
													"text" : "copy back into original fmat, because that's the one in the cache",
													"patching_rect" : [ 150.0, 236.0, 297.0, 17.0 ],
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
													"linecount" : 2,
													"presentation_linecount" : 2,
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 215.0, 154.0, 171.0, 29.0 ],
													"fontname" : "Geneva",
													"id" : "obj-2",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(print resampling sound file $1[name]", "_ from $1[sr] to $sr)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 215.0, 154.0, 171.0, 29.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l l l",
													"patching_rect" : [ 50.0, 95.0, 235.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-3",
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "", "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 50.0, 234.0, 91.794434, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-4",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($2[sound] set $1)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 50.0, 234.0, 91.794434, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 50.0, 154.0, 51.997559, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-5",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_$1[sound]" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 50.0, 154.0, 51.997559, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 125.0, 154.0, 67.044434, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-6",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_($1[sr] / $sr)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 125.0, 154.0, 67.044434, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gbr.resample",
													"patching_rect" : [ 50.0, 188.0, 85.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-7",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"saved_object_attributes" : 													{
														"ftm_objref_conv" : 0,
														"ftm_scope" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"ftm_objref_conv" : 0,
													"#loadbang" : 0,
													"patching_rect" : [ 50.0, 63.0, 102.596191, 17.0 ],
													"fontname" : "Geneva",
													"id" : "obj-8",
													"numinlets" : 2,
													"#triggerall" : 0,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"#untuple" : 0,
													"text" : [ "_(if ($1[sr] != $sr) $1)" ],
													"ftm_scope" : 0,
													"outlettype" : [ "" ],
													"presentation_rect" : [ 50.0, 63.0, 102.596191, 17.0 ],
													"#init" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
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
													"text" : "workaround bug in ftm 2.3.5: fmat import resampling was wrong-way",
													"patching_rect" : [ 82.0, 33.0, 327.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-10",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 2 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [ 203.5, 218.0, 132.294434, 218.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 3 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 275.5, 133.0, 224.5, 133.0 ]
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
									"maxclass" : "comment",
									"text" : "<-- soundfiles symbol lookup managed here!",
									"patching_rect" : [ 383.0, 385.0, 227.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<-- soundfiles symbol table is the soundfiles mat!",
									"patching_rect" : [ 383.0, 362.0, 227.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "get sample format data from file",
									"patching_rect" : [ 268.0, 161.0, 157.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "provide default sample format data (for live recording or filetypes unknown to sfinfo~ like flac) TODO: get this from somewhere!!!",
									"linecount" : 3,
									"patching_rect" : [ 361.0, 41.0, 245.0, 38.0 ],
									"fontname" : "Arial",
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "absolutepath",
									"patching_rect" : [ 157.0, 159.0, 66.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 337.0, 88.0, 93.864258, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-9",
									"numinlets" : 3,
									"#triggerall" : 0,
									"numins" : 3,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_1 32 $sr $3 float32" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 337.0, 88.0, 93.864258, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 229.0, 87.0, 75.402832, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-10",
									"numinlets" : 5,
									"#triggerall" : 0,
									"numins" : 5,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(if (not $5) $1)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 229.0, 87.0, 75.402832, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 3,
									"presentation_linecount" : 3,
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 25.0, 284.0, 447.0, 41.0 ],
									"fontname" : "Geneva",
									"id" : "obj-11",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print imported sound file no. $1[index] -- name $1[name] -- duration ($1[duration] / 1000.) sec", "_ -- length ($1[sound] rows) samples -- filelength (($1[fileduration] / 1000.) * $1[sr]) sample-frames", "_ (if ($1[sr] != $sr) (cat '-- resampled from ' $1[sr] ' Hz to ' $sr ' Hz'))  -- path $1[path])" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 25.0, 284.0, 447.0, 41.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "strippath",
									"patching_rect" : [ 85.0, 159.0, 51.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l s l l",
									"patching_rect" : [ 13.0, 44.0, 336.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 229.0, 106.0, 69.241699, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-14",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_open $1, bang" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 229.0, 106.0, 69.241699, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sampletype",
									"patching_rect" : [ 527.0, 191.0, 63.0, 17.0 ],
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
									"text" : "duration in milliseconds",
									"linecount" : 2,
									"patching_rect" : [ 453.0, 188.0, 63.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sampling rate",
									"linecount" : 2,
									"patching_rect" : [ 383.0, 188.0, 52.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-17",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sample size in bits",
									"linecount" : 2,
									"patching_rect" : [ 309.0, 188.0, 59.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sfinfo~",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 229.0, 159.0, 372.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-19",
									"numinlets" : 1,
									"numoutlets" : 6,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "int", "float", "float", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "number of channels",
									"linecount" : 2,
									"patching_rect" : [ 238.0, 188.0, 54.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-20",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sf name, import limit, duration, sounddata, live flag, in RAM",
									"patching_rect" : [ 31.0, 22.0, 284.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-21",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 13.0, 21.0, 15.0, 15.0 ],
									"id" : "obj-22",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 5,
									"presentation_linecount" : 5,
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 13.0, 81.0, 124.0, 65.0 ],
									"fontname" : "Geneva",
									"id" : "obj-23",
									"numinlets" : 5,
									"#triggerall" : 0,
									"numins" : 5,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(new dict  importname $1", "_ limit $2 duration $3", "_ sound $4 live $5 inram $6", "_ datafile (new mat 0 4)", "_ index ($soundfiles rows))" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 13.0, 81.0, 124.0, 65.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 5,
									"presentation_linecount" : 5,
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 13.0, 336.0, 353.0, 65.0 ],
									"fontname" : "Geneva",
									"id" : "obj-24",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($corpus set lastsoundfileindex $1[index]);", "_($corpus set lastsoundfile $1);", "_($soundfiles append $1[name] $1[path] $1[limit] $1[duration] $1);", "_($sounddata append $1[sound]);", "_($descriptors[$descrid[SoundFile] ($symbolcol + 1)] set $1[name] $1[index]);" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 13.0, 336.0, 353.0, 65.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 13.0, 224.0, 503.10498, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-25",
									"numinlets" : 8,
									"#triggerall" : 0,
									"numins" : 8,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($1 set name $2 path $3 dirname (dirname $3)  numchannels $4 numbits $5 sr $6 fileduration $7 samptype $8)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 13.0, 224.0, 503.10498, 17.0 ],
									"#init" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-25", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-25", 2 ],
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
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 193.5, 276.0, 613.0, 276.0, 613.0, 78.0, 346.5, 78.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-25", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-25", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 2 ],
									"destination" : [ "obj-25", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 3 ],
									"destination" : [ "obj-25", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 4 ],
									"destination" : [ "obj-25", 7 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 3 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 2 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
					"maxclass" : "comment",
					"text" : "marker file name, marker track",
					"linecount" : 2,
					"patching_rect" : [ 666.0, 158.0, 87.0, 27.0 ],
					"fontname" : "Arial",
					"id" : "obj-147",
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
					"patching_rect" : [ 655.0, 179.0, 266.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-148",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_($corpus[lastsoundfile] set segmentfile $1 segments $2)" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_add-markers",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 655.0, 139.0, 110.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-149",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gswitch2",
					"patching_rect" : [ 166.0, 439.0, 39.0, 32.0 ],
					"id" : "obj-150",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 24.0, 171.0, 15.0, 15.0 ],
					"id" : "obj-151",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "starttime, endtime, unit descriptor fmat, external descr. dict",
					"linecount" : 3,
					"patching_rect" : [ 531.0, 157.0, 108.0, 38.0 ],
					"fontname" : "Arial",
					"id" : "obj-152",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "sf name, import limit [s]",
					"linecount" : 2,
					"patching_rect" : [ 290.0, 158.0, 100.0, 27.0 ],
					"fontname" : "Arial",
					"id" : "obj-153",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_bang",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1.0, 63.0, 66.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-154",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b b",
					"patching_rect" : [ 24.0, 216.0, 64.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-155",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "bang", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_add-soundfile",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 282.0, 139.0, 110.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-156",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "fmat 1000 0, schema $unitdata_col",
					"ftm_objref_conv" : 0,
					"bgcolor" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"patching_rect" : [ 315.0, 330.0, 216.022461, 18.0 ],
					"fontname" : "Geneva",
					"id" : "obj-157",
					"persistence" : 0,
					"editor_interface" : "",
					"description" : "fmat 1000 0, schema $unitdata_col",
					"name" : "unitdata",
					"numinlets" : 1,
					"scope" : 0,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"ftm_scope" : 0,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 315.0, 330.0, 216.022461, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_add-unit-and-data",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 521.0, 139.0, 131.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-158",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 465.0, 405.0, 164.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-159",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_($soundfiles[-1 1][datafile] print)" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 465.0, 405.0, 164.0, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print",
					"patching_rect" : [ 435.0, 360.0, 32.5, 15.0 ],
					"fontname" : "Arial",
					"id" : "obj-160",
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
					"#loadbang" : 0,
					"patching_rect" : [ 465.0, 389.0, 122.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-161",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_($soundfiles[-1 1] print)" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 465.0, 389.0, 122.0, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "mat 0 5, schema $schema_soundfiles",
					"ftm_objref_conv" : 0,
					"patching_rect" : [ 465.0, 360.0, 230.022461, 18.0 ],
					"fontname" : "Geneva",
					"id" : "obj-162",
					"persistence" : 0,
					"editor_interface" : "",
					"description" : "mat 0 5, schema $schema_soundfiles",
					"name" : "soundfiles",
					"numinlets" : 1,
					"scope" : 0,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"ftm_scope" : 0,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 465.0, 360.0, 230.022461, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_add-descriptor",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 150.0, 139.0, 122.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-163",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_init",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 24.0, 139.0, 61.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-164",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p add-descriptor",
					"patching_rect" : [ 150.0, 300.0, 341.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-165",
					"numinlets" : 1,
					"numoutlets" : 5,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 542.0, 44.0, 741.0, 338.0 ],
						"bglocked" : 0,
						"defrect" : [ 542.0, 44.0, 741.0, 338.0 ],
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
									"maxclass" : "message",
									"text" : "print",
									"patching_rect" : [ 345.0, 60.0, 32.0, 15.0 ],
									"fontname" : "Arial",
									"id" : "obj-33",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "var 0",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 380.0, 60.0, 77.363281, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-34",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "var 0",
									"name" : "numcols",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 380.0, 60.0, 77.363281, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 150.0, 150.0, 52.665527, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-32",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_append $1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 150.0, 150.0, 52.665527, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "to schema",
									"patching_rect" : [ 285.0, 285.0, 57.0, 17.0 ],
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
									"patching_rect" : [ 284.0, 266.0, 15.0, 15.0 ],
									"id" : "obj-31",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "print",
									"patching_rect" : [ 209.0, 64.0, 32.0, 15.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "build descriptor table mat",
									"patching_rect" : [ 134.0, 198.0, 126.0, 17.0 ],
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
									"text" : "to descrid",
									"patching_rect" : [ 137.0, 273.0, 57.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "to unitdata",
									"patching_rect" : [ 343.0, 273.0, 57.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "to unitstat",
									"patching_rect" : [ 540.0, 273.0, 57.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 45.0, 105.0, 82.0, 29.0 ],
									"fontname" : "Geneva",
									"id" : "obj-6",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_($numdescr = 0);", "_($numcols = 0)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 45.0, 105.0, 82.0, 29.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "var 0",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 244.0, 64.0, 83.871582, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-7",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "var 0",
									"name" : "numdescr",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 244.0, 64.0, 83.871582, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "defaults",
									"patching_rect" : [ 528.0, 127.0, 46.0, 17.0 ],
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
									"patching_rect" : [ 177.0, 127.0, 342.414551, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-9",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_list float no_group unknown_anaclass unknown_analyser dynamic 1 1. visible" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 177.0, 127.0, 342.414551, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "add line defining descriptor, empty symbol 0 just in case",
									"patching_rect" : [ 403.0, 184.0, 233.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "init unitstat with default max value",
									"patching_rect" : [ 365.0, 232.0, 169.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 539.0, 254.0, 15.0, 15.0 ],
									"id" : "obj-12",
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
									"patching_rect" : [ 28.0, 137.0, 40.857422, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-13",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_size 0 0" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 28.0, 137.0, 40.857422, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "extend unitdata (by vector size) and unitstat columns first",
									"linecount" : 2,
									"patching_rect" : [ 559.0, 232.0, 154.0, 27.0 ],
									"fontname" : "Arial",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 342.0, 254.0, 15.0, 15.0 ],
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l b l l l",
									"patching_rect" : [ 120.0, 90.0, 307.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 5,
									"fontsize" : 9.0,
									"outlettype" : [ "", "bang", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 539.0, 215.0, 128.176758, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-17",
									"numinlets" : 7,
									"#triggerall" : 0,
									"numins" : 7,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_cols (($unitdata cols) + $7)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 539.0, 215.0, 128.176758, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 137.0, 254.0, 15.0, 15.0 ],
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 13.0, 254.0, 15.0, 15.0 ],
									"id" : "obj-19",
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
									"patching_rect" : [ 13.0, 159.0, 26.658691, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-20",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_clear" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 13.0, 159.0, 26.658691, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route clear",
									"patching_rect" : [ 13.0, 57.0, 122.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-21",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 13.0, 23.0, 15.0, 15.0 ],
									"id" : "obj-22",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "build lookup table descriptor name -> index in mat and index -> index as dict",
									"linecount" : 3,
									"patching_rect" : [ 163.0, 230.0, 124.0, 38.0 ],
									"fontname" : "Arial",
									"id" : "obj-23",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "to descriptor table",
									"patching_rect" : [ 9.0, 273.0, 94.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-24",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "increment descriptor number",
									"patching_rect" : [ 261.0, 197.0, 141.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-25",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "descr name, descr. group, analyser class (signal, fft, segmentation, tempmod, const), analyser name, class (const,  dynamic), data type (int, float, symbol, vector, category), vector size, default max value, [hidden]",
									"linecount" : 3,
									"patching_rect" : [ 32.0, 22.0, 433.0, 38.0 ],
									"fontname" : "Arial",
									"id" : "obj-26",
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
									"patching_rect" : [ 347.0, 215.0, 171.22998, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-27",
									"numinlets" : 8,
									"#triggerall" : 0,
									"numins" : 8,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_setcol $numdescr 1 0 $8 $8 ($8 / 2)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 347.0, 215.0, 171.22998, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 137.0, 215.0, 188.10498, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-28",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_set $1 $numdescr $numdescr $numdescr" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 137.0, 215.0, 188.10498, 17.0 ],
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
									"patching_rect" : [ 125.0, 171.0, 539.0, 29.0 ],
									"fontname" : "Geneva",
									"id" : "obj-29",
									"numinlets" : 9,
									"#triggerall" : 0,
									"numins" : 9,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_append $1 $numdescr $2 $3 $4 $5 $6 $7 $8 ($9 == hidden) (new mat 1 1 $emptysymbol) (new dict $emptysymbol 0),", "_($numdescr += 1);" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 125.0, 171.0, 539.0, 29.0 ],
									"#init" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-32", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-29", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-34", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 22.5, 87.0, 54.5, 87.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 22.5, 87.0, 22.5, 87.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 22.5, 87.0, 37.5, 87.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-31", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 22.5, 247.0, 146.0, 247.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 2 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 3 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 4 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 37.5, 242.0, 351.0, 242.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
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
					"maxclass" : "ftm.object",
					"text" : "mat 0 12, schema $schema_descriptors",
					"ftm_objref_conv" : 0,
					"patching_rect" : [ 150.0, 405.0, 247.022461, 18.0 ],
					"fontname" : "Geneva",
					"id" : "obj-166",
					"persistence" : 0,
					"editor_interface" : "",
					"description" : "mat 0 12, schema $schema_descriptors",
					"name" : "descriptors",
					"numinlets" : 1,
					"scope" : 0,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"ftm_scope" : 0,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 150.0, 405.0, 247.022461, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "dict",
					"ftm_objref_conv" : 0,
					"patching_rect" : [ 195.0, 345.0, 66.750488, 18.0 ],
					"fontname" : "Geneva",
					"id" : "obj-167",
					"persistence" : 0,
					"editor_interface" : "",
					"description" : "dict",
					"name" : "descrid",
					"numinlets" : 1,
					"scope" : 0,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"ftm_scope" : 0,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 195.0, 345.0, 66.750488, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p builtin-descriptors",
					"linecount" : 2,
					"patching_rect" : [ 51.0, 254.0, 85.0, 27.0 ],
					"fontname" : "Arial",
					"id" : "obj-168",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 66.0, 405.0, 506.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 66.0, 405.0, 506.0 ],
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
									"text" : "descr name, data type (int, float, symbol, vector, category), descr. group, analyser class (signal, fft, segmentation, tempmod, const), analyser name, class (const,  dynamic),  vector size, default max value, [hidden]",
									"linecount" : 4,
									"patching_rect" : [ 99.0, 294.0, 262.0, 48.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 4.0, 429.0, 15.0, 15.0 ],
									"id" : "obj-2",
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
									"patching_rect" : [ 4.0, 407.0, 77.358398, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-3",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_set $descriptors" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 4.0, 407.0, 77.358398, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "copy builtin descriptors only",
									"patching_rect" : [ 28.0, 431.0, 227.0, 17.0 ],
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
									"patching_rect" : [ 43.0, 383.0, 15.0, 15.0 ],
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
									"patching_rect" : [ 43.0, 360.0, 213.645996, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-6",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_set $descrid[SoundFile] $symbolcol $soundfiles" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 43.0, 360.0, 213.645996, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"linecount" : 13,
									"presentation_linecount" : 13,
									"ftm_objref_conv" : 0,
									"#loadbang" : 1,
									"patching_rect" : [ 79.0, 63.0, 253.0, 161.0 ],
									"fontname" : "Geneva",
									"id" : "obj-7",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_clear,", "_UnitID int unit const builtin const 1 400,", "_RelID int unit const builtin const 1 400,", "_UnitType symbol unit const builtin const 1 5 hidden,", "_SoundFile symbol unit const builtin const 1 1,", "_SoundSet symbol unit const builtin const 1 1,", "_WorkingSet int unit const builtin const 1 1 hidden,", "_Active bool unit const builtin const 1 1 hidden,", "_StartSample int unit const builtin const 1 99999 hidden,", "_SampleSize int unit const builtin const 1 44100 hidden,", "_StartTime float unit const builtin const 1 100000,", "_Duration float unit const builtin const 1 1000,", "_Relstart float unit const builtin const 1 1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 79.0, 63.0, 253.0, 161.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 79.0, 22.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 79.0, 342.0, 15.0, 15.0 ],
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "soundfiles symbol table is the soundfiles mat!",
									"patching_rect" : [ 67.0, 384.0, 227.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 88.0, 46.0, 88.5, 46.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 88.0, 51.0, 52.5, 51.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 88.0, 51.0, 13.5, 51.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
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
					"text" : "ftm.mdispatch #0_ catart.data",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 106.0, 63.0, 200.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-169",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 106.0, 35.0, 15.0, 15.0 ],
					"id" : "obj-170",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "dict descriptors $descriptors  descrid $descrid  soundfiles $soundfiles sounddata $sounddata numchannels 1 channel 0  sfcache 0  unitdata $unitdata  addrow $addrow addindex -1  unitstat $unitstat  numstddescr 0 numadddescr 0 workingset 0 soundset 0 symbolcol $symbolcol",
					"ftm_objref_conv" : 0,
					"patching_rect" : [ 1.0, 91.0, 1694.363281, 22.0 ],
					"fontname" : "Geneva",
					"id" : "obj-171",
					"persistence" : 0,
					"editor_interface" : "",
					"description" : "dict descriptors $descriptors  descrid $descrid  soundfiles $soundfiles sounddata $sounddata numchannels 1 channel 0  sfcache 0  unitdata $unitdata  addrow $addrow addindex -1  unitstat $unitstat  numstddescr 0 numadddescr 0 workingset 0 soundset 0 symbolcol $symbolcol",
					"name" : "corpus",
					"numinlets" : 1,
					"scope" : 0,
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"ftm_scope" : 0,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 1.0, 91.0, 1694.363281, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ -3.0, 475.0, 15.0, 15.0 ],
					"id" : "obj-172",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "out: $corpus",
					"linecount" : 2,
					"patching_rect" : [ -3.0, 493.0, 42.0, 27.0 ],
					"fontname" : "Arial",
					"id" : "obj-173",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "remove data",
					"patching_rect" : [ 43.0, 177.0, 66.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-174",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 734.0, 450.0, 15.0, 15.0 ],
					"id" : "obj-175",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 1100.0, 166.0, 128.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-176",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_($corpus set soundset $1)" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set soundset number to use for next imports",
					"linecount" : 2,
					"patching_rect" : [ 1110.0, 138.0, 116.0, 27.0 ],
					"fontname" : "Arial",
					"id" : "obj-177",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_set-soundset",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"patching_rect" : [ 1100.0, 118.0, 109.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-178",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 329.0, 466.0, 15.0, 15.0 ],
					"id" : "obj-179",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 323.0, 200.0, 15.0, 15.0 ],
					"id" : "obj-180",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 150.0, 210.0, 338.088867, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-91",
					"numinlets" : 3,
					"#triggerall" : 0,
					"numins" : 3,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_$1 $3 no_group unknown_anaclass unknown_analyser dynamic 1 $2 visible" ],
					"ftm_scope" : 2,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 150.0, 210.0, 338.088867, 17.0 ],
					"#init" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-92", 1 ],
					"hidden" : 0,
					"midpoints" : [ 414.5, 207.0, 501.5, 207.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-114", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 0 ],
					"destination" : [ "obj-110", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-128", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-146", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 1 ],
					"destination" : [ "obj-128", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-165", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-134", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-166", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 1 ],
					"destination" : [ "obj-132", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-171", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 1 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 2 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-114", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 1 ],
					"destination" : [ "obj-81", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-71", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-157", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1177.5, 358.0, 751.0, 358.0, 751.0, 320.0, 324.5, 320.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 1 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [ 961.5, 409.0, 83.5, 409.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-180", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1113.5, 332.0, 1177.5, 332.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-71", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-71", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-214", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-128", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-157", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1365.5, 435.0, 845.0, 435.0, 845.0, 320.0, 324.5, 320.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-221", 0 ],
					"destination" : [ "obj-210", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1229.5, 234.0, 1249.5, 234.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-142", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-215", 0 ],
					"destination" : [ "obj-212", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1269.5, 214.0, 1249.5, 214.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-214", 0 ],
					"destination" : [ "obj-209", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-212", 0 ],
					"destination" : [ "obj-210", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-211", 0 ],
					"destination" : [ "obj-212", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1269.5, 173.0, 1249.5, 173.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-210", 0 ],
					"destination" : [ "obj-157", 0 ],
					"hidden" : 0,
					"color" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"midpoints" : [ 1249.5, 291.0, 324.5, 291.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-208", 0 ],
					"destination" : [ "obj-215", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-207", 0 ],
					"destination" : [ "obj-211", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-206", 0 ],
					"destination" : [ "obj-221", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-142", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-197", 0 ],
					"destination" : [ "obj-165", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-196", 2 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-196", 1 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-196", 0 ],
					"destination" : [ "obj-193", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-196", 3 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-195", 0 ],
					"destination" : [ "obj-196", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-194", 0 ],
					"destination" : [ "obj-169", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-193", 0 ],
					"destination" : [ "obj-157", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-192", 0 ],
					"destination" : [ "obj-167", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-191", 0 ],
					"destination" : [ "obj-192", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-157", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-188", 0 ],
					"destination" : [ "obj-189", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-186", 0 ],
					"destination" : [ "obj-187", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-184", 0 ],
					"destination" : [ "obj-185", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-182", 0 ],
					"destination" : [ "obj-183", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-180", 0 ],
					"destination" : [ "obj-142", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-179", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-178", 0 ],
					"destination" : [ "obj-176", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-175", 0 ],
					"destination" : [ "obj-121", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 0 ],
					"destination" : [ "obj-172", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-170", 0 ],
					"destination" : [ "obj-169", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-168", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-168", 1 ],
					"destination" : [ "obj-166", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-168", 2 ],
					"destination" : [ "obj-165", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-165", 2 ],
					"destination" : [ "obj-183", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-165", 1 ],
					"destination" : [ "obj-167", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-165", 0 ],
					"destination" : [ "obj-166", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-165", 3 ],
					"destination" : [ "obj-157", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-165", 0 ],
					"destination" : [ "obj-150", 1 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [ 159.5, 343.0, 195.5, 343.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-165", 4 ],
					"destination" : [ "obj-134", 0 ],
					"hidden" : 0,
					"midpoints" : [ 481.5, 326.0, 744.5, 326.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-165", 0 ],
					"destination" : [ "obj-119", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-164", 0 ],
					"destination" : [ "obj-151", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-163", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-160", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-158", 0 ],
					"destination" : [ "obj-128", 0 ],
					"hidden" : 0,
					"midpoints" : [ 530.5, 257.0, 404.5, 257.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-156", 0 ],
					"destination" : [ "obj-142", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-155", 0 ],
					"destination" : [ "obj-71", 2 ],
					"hidden" : 0,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 33.5, 294.0, 1258.5, 294.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-155", 1 ],
					"destination" : [ "obj-168", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-155", 0 ],
					"destination" : [ "obj-119", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-155", 2 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-154", 0 ],
					"destination" : [ "obj-171", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-151", 0 ],
					"destination" : [ "obj-155", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-151", 0 ],
					"destination" : [ "obj-142", 3 ],
					"hidden" : 0,
					"midpoints" : [ 33.0, 201.0, 365.5, 201.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-150", 1 ],
					"destination" : [ "obj-137", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-132", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-149", 0 ],
					"destination" : [ "obj-148", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-149", 0 ],
					"destination" : [ "obj-123", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-144", 0 ],
					"destination" : [ "obj-143", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-142", 0 ],
					"destination" : [ "obj-146", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-142", 1 ],
					"destination" : [ "obj-128", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-142", 2 ],
					"destination" : [ "obj-128", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-142", 0 ],
					"destination" : [ "obj-124", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-136", 0 ],
					"destination" : [ "obj-157", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-133", 0 ],
					"destination" : [ "obj-134", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-132", 0 ],
					"destination" : [ "obj-134", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-130", 0 ],
					"destination" : [ "obj-132", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-128", 0 ],
					"destination" : [ "obj-157", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 0 ],
					"destination" : [ "obj-166", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-125", 0 ],
					"destination" : [ "obj-167", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-124", 0 ],
					"destination" : [ "obj-134", 0 ],
					"hidden" : 0,
					"midpoints" : [ 576.5, 288.0, 744.5, 288.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-123", 0 ],
					"destination" : [ "obj-124", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-121", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-120", 0 ],
					"destination" : [ "obj-121", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-119", 0 ],
					"destination" : [ "obj-117", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-116", 0 ],
					"destination" : [ "obj-119", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-115", 0 ],
					"destination" : [ "obj-169", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-114", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-33", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-109", 0 ],
					"destination" : [ "obj-96", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-108", 0 ],
					"destination" : [ "obj-103", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-169", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 0 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [ 52.5, 334.0, 83.5, 334.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 1 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 0 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [ 946.5, 409.0, 83.5, 409.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 1 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 1 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 2 ],
					"destination" : [ "obj-132", 0 ],
					"hidden" : 0,
					"midpoints" : [ 951.5, 257.0, 816.5, 257.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 1 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
