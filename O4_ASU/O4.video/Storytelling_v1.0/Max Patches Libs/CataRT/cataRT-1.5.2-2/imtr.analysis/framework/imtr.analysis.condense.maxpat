{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 641.0, 316.0, 798.0, 556.0 ],
		"bglocked" : 0,
		"defrect" : [ 641.0, 316.0, 798.0, 556.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 9.0,
		"default_fontface" : 0,
		"default_fontname" : "Geneva",
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
					"maxclass" : "comment",
					"text" : "TODO: properly handle  seg. in past",
					"patching_rect" : [ 10.0, 180.0, 165.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-61",
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
					"patching_rect" : [ 0.0, 160.0, 94.183594, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-57",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_(clip $1 $*2 $1) $2" ],
					"ftm_scope" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 160.0, 94.183594, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "TODO: if seg. in past, keep lines",
					"linecount" : 3,
					"patching_rect" : [ 590.0, 210.0, 75.0, 43.0 ],
					"fontname" : "Geneva",
					"id" : "obj-27",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "'keep' flag 0 suppresses all further analysis",
					"linecount" : 3,
					"patching_rect" : [ 10.0, 340.0, 87.0, 43.0 ],
					"fontname" : "Geneva",
					"id" : "obj-63",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0. 1",
					"patching_rect" : [ 394.0, 315.0, 62.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-59",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gswitch2",
					"patching_rect" : [ 80.0, 340.0, 39.0, 32.0 ],
					"id" : "obj-54",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 280.0, 365.0, 50.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-53",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 230.0, 365.0, 50.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-52",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t l l l b",
					"patching_rect" : [ 100.0, 375.0, 110.5, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 4,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "debug: print before clearing",
					"linecount" : 2,
					"patching_rect" : [ 670.0, 265.0, 76.0, 31.0 ],
					"fontname" : "Geneva",
					"id" : "obj-25",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gswitch2",
					"patching_rect" : [ 630.0, 265.0, 39.0, 32.0 ],
					"id" : "obj-22",
					"int" : 1,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 581.0, 395.0, 27.681152, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-23",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_clear" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 581.0, 395.0, 27.681152, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "schema",
					"ftm_objref_conv" : 0,
					"patching_rect" : [ 581.0, 425.0, 94.022461, 18.0 ],
					"fontname" : "Geneva",
					"id" : "obj-19",
					"persistence" : 0,
					"editor_interface" : "",
					"description" : "schema",
					"name" : "cols_inst",
					"numinlets" : 1,
					"scope" : 0,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"ftm_scope" : 0,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 581.0, 425.0, 94.022461, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print",
					"patching_rect" : [ 548.0, 425.0, 32.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-20",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "TBD: who triggers that when no condense module present? (e.g. when using frames as units)",
					"patching_rect" : [ 10.0, 525.0, 425.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-51",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1_imtr.analysis.store.unitrow",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"patching_rect" : [ 200.0, 405.0, 190.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-50",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "call unit-rate converters",
					"patching_rect" : [ 160.0, 455.0, 115.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-47",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tell store module to  finalise unit in corpus",
					"linecount" : 2,
					"patching_rect" : [ 20.0, 455.0, 103.0, 31.0 ],
					"fontname" : "Geneva",
					"id" : "obj-28",
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
					"patching_rect" : [ 0.0, 435.0, 72.852539, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-1",
					"numinlets" : 3,
					"#triggerall" : 0,
					"numins" : 3,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_add-unit $3 $1" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 435.0, 72.852539, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #1_imtr.analysis.store",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"patching_rect" : [ 0.0, 485.0, 140.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-18",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 600.0, 315.0, 20.0, 20.0 ],
					"id" : "obj-60",
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
					"patching_rect" : [ 630.0, 315.0, 60.253418, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-58",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_(print $inst)" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 630.0, 315.0, 60.253418, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "frow in corpus into unitdata",
					"patching_rect" : [ 150.0, 120.0, 135.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-31",
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
					"patching_rect" : [ 139.0, 140.0, 62.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-32",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_get-addrow" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 139.0, 140.0, 62.0, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.data.proxy #1",
					"patching_rect" : [ 139.0, 160.0, 122.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-33",
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
					"#loadbang" : 0,
					"patching_rect" : [ 150.0, 435.0, 69.253418, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-56",
					"numinlets" : 3,
					"#triggerall" : 0,
					"numins" : 3,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_analyse $1 $3" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 150.0, 435.0, 69.253418, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #1_imtr.analysis.const",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"patching_rect" : [ 150.0, 485.0, 149.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-55",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "send to imtr.analysis.files (to extend)  and collect (to output last row to segmenters and converters) ",
					"linecount" : 4,
					"patching_rect" : [ 510.0, 495.0, 138.0, 55.0 ],
					"fontname" : "Geneva",
					"id" : "obj-49",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b",
					"patching_rect" : [ 570.0, 315.0, 30.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-48",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "segment <frame time> <keep flag> -> condense raw inst fmat by temporal modeling",
					"linecount" : 4,
					"patching_rect" : [ 10.0, 110.0, 125.0, 55.0 ],
					"fontname" : "Geneva",
					"id" : "obj-34",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #1_imtr.analysis.condense.inst",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"patching_rect" : [ 510.0, 475.0, 186.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1_imtr.analysis.tempmod",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"patching_rect" : [ 320.0, 475.0, 180.0, 19.0 ],
					"fontname" : "Geneva",
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
					"text" : "forward registration responses from analyser modules",
					"linecount" : 2,
					"patching_rect" : [ 510.0, 90.0, 170.0, 31.0 ],
					"fontname" : "Geneva",
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #1_imtr.analysis.store",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"patching_rect" : [ 360.0, 90.0, 150.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "to temp.mod",
					"patching_rect" : [ 320.0, 505.0, 72.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 510.0, 20.0, 17.0, 17.0 ],
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "forwarded from other importer modules",
					"linecount" : 3,
					"patching_rect" : [ 260.0, 40.0, 79.0, 43.0 ],
					"fontname" : "Geneva",
					"id" : "obj-8",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1_imtr.analysis.condense",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"patching_rect" : [ 110.0, 40.0, 166.0, 19.0 ],
					"fontname" : "Geneva",
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
					"text" : "r catart.import.debug",
					"patching_rect" : [ 510.0, 0.0, 107.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-10",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"patching_rect" : [ 510.0, 40.0, 29.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-11",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ftm.print #1_imtr.analysis.condense-from-analysers",
					"linecount" : 2,
					"patching_rect" : [ 510.0, 60.0, 227.0, 31.0 ],
					"fontname" : "Geneva",
					"id" : "obj-12",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"saved_object_attributes" : 					{
						"ftm_objref_conv" : 0,
						"ftm_scope" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route segment inst init start end cur-time",
					"patching_rect" : [ 0.0, 90.0, 349.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-13",
					"numinlets" : 1,
					"numoutlets" : 7,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 0.0, 45.0, 15.0, 15.0 ],
					"id" : "obj-14",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "from segmenters and frame-rate converters",
					"linecount" : 3,
					"patching_rect" : [ 20.0, 40.0, 87.0, 43.0 ],
					"fontname" : "Geneva",
					"id" : "obj-15",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "imtr.analysis.condense receives converted instantaneous descriptors produced by frame-rate converters and segmentation commands and outputs raw unit descriptors to temporal modeling or const converters",
					"linecount" : 2,
					"patching_rect" : [ 0.0, 0.0, 513.0, 31.0 ],
					"fontname" : "Geneva",
					"id" : "obj-16",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 300.0, 505.0, 15.0, 15.0 ],
					"id" : "obj-17",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : "status messages and catart.lcd messages"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "raw inst. descriptor collection",
					"patching_rect" : [ 520.0, 365.0, 145.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-21",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "fmat 1000 50, rows 0, schema $cols_inst",
					"ftm_objref_conv" : 0,
					"patching_rect" : [ 510.0, 345.0, 222.022461, 18.0 ],
					"fontname" : "Geneva",
					"id" : "obj-24",
					"persistence" : 0,
					"editor_interface" : "",
					"description" : "fmat 1000 50, rows 0, schema $cols_inst",
					"name" : "inst",
					"numinlets" : 1,
					"scope" : 0,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"ftm_scope" : 0,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 510.0, 345.0, 222.022461, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print",
					"patching_rect" : [ 477.0, 345.0, 32.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-29",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p count",
					"patching_rect" : [ 230.0, 345.0, 69.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-30",
					"numinlets" : 3,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "int" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 1060.0, 520.0, 416.0, 205.0 ],
						"bglocked" : 0,
						"defrect" : [ 1060.0, 520.0, 416.0, 205.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
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
									"patching_rect" : [ 195.0, 60.0, 23.0, 19.0 ],
									"fontname" : "Geneva",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"patching_rect" : [ 50.0, 61.0, 23.0, 19.0 ],
									"fontname" : "Geneva",
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
									"text" : "count included segments",
									"patching_rect" : [ 74.0, 105.0, 117.0, 19.0 ],
									"fontname" : "Geneva",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"patching_rect" : [ 110.0, 50.0, 23.0, 19.0 ],
									"fontname" : "Geneva",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter 0 999999",
									"patching_rect" : [ 50.0, 84.0, 92.0, 19.0 ],
									"fontname" : "Geneva",
									"id" : "obj-4",
									"numinlets" : 5,
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "", "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "count dropped segments",
									"patching_rect" : [ 218.0, 105.0, 117.0, 19.0 ],
									"fontname" : "Geneva",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"patching_rect" : [ 254.0, 50.0, 23.0, 19.0 ],
									"fontname" : "Geneva",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter 0 999999",
									"patching_rect" : [ 194.0, 84.0, 92.0, 19.0 ],
									"fontname" : "Geneva",
									"id" : "obj-7",
									"numinlets" : 5,
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "", "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 250.0, 30.0, 15.0, 15.0 ],
									"id" : "obj-9",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 194.0, 30.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 50.0, 106.0, 15.0, 15.0 ],
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 194.0, 106.0, 15.0, 15.0 ],
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 3 ],
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
									"destination" : [ "obj-4", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-7", 0 ],
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
									"destination" : [ "obj-4", 0 ],
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
						"default_fontsize" : 9.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "min duration for a unit to be accepted. default: hopsize",
					"linecount" : 2,
					"patching_rect" : [ 167.0, 225.0, 144.0, 31.0 ],
					"fontname" : "Geneva",
					"id" : "obj-35",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r catart.segmentation.minsize",
					"patching_rect" : [ 167.0, 252.0, 145.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-36",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p check-minsize",
					"patching_rect" : [ 100.0, 315.0, 119.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-37",
					"numinlets" : 4,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 836.0, 76.0, 554.0, 394.0 ],
						"bglocked" : 0,
						"defrect" : [ 836.0, 76.0, 554.0, 394.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Geneva",
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
									"text" : "output segmentation time (unit end time) if long enough",
									"patching_rect" : [ 0.0, 345.0, 375.0, 19.0 ],
									"fontname" : "Geneva",
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "init",
									"patching_rect" : [ 375.0, 30.0, 56.0, 19.0 ],
									"fontname" : "Geneva",
									"id" : "obj-27",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 348.0, 32.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"patching_rect" : [ 3.0, 168.0, 34.0, 19.0 ],
									"fontname" : "Geneva",
									"id" : "obj-2",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 3.0, 147.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "> 0.",
									"patching_rect" : [ 3.0, 126.0, 34.0, 19.0 ],
									"fontname" : "Geneva",
									"id" : "obj-4",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 3.0, 226.0, 115.393066, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-5",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(if ($inst rows) $1 bang)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 3.0, 226.0, 115.393066, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2 1",
									"patching_rect" : [ 3.0, 189.0, 57.0, 19.0 ],
									"fontname" : "Geneva",
									"id" : "obj-6",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 1,
									"patching_rect" : [ 333.0, 60.0, 13.0, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-7",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_0" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 333.0, 60.0, 13.0, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 301.0, 84.0, 55.0, 19.0 ],
									"fontname" : "Geneva",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 301.0, 59.0, 15.0, 15.0 ],
									"id" : "obj-10",
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
									"patching_rect" : [ 301.0, 157.0, 202.646484, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-11",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(print minimum segment size = $minsize ms)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 301.0, 157.0, 202.646484, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"ftm_objref_conv" : 0,
									"#loadbang" : 0,
									"patching_rect" : [ 301.0, 110.0, 34.753418, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-12",
									"numinlets" : 2,
									"#triggerall" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_set $1" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 301.0, 110.0, 34.753418, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"text" : "var 0\r",
									"ftm_objref_conv" : 0,
									"patching_rect" : [ 301.0, 130.0, 83.023438, 18.0 ],
									"fontname" : "Geneva",
									"id" : "obj-13",
									"persistence" : 0,
									"editor_interface" : "",
									"description" : "var 0\r",
									"name" : "minsize2",
									"numinlets" : 1,
									"scope" : 0,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"ftm_scope" : 0,
									"outlettype" : [ "", "" ],
									"presentation_rect" : [ 301.0, 130.0, 83.023438, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "min duration for a unit to be accepted. default: hopsize",
									"linecount" : 2,
									"patching_rect" : [ 390.0, 122.0, 144.0, 31.0 ],
									"fontname" : "Geneva",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "last start time and keep flag",
									"linecount" : 2,
									"patching_rect" : [ 218.0, 58.0, 76.0, 31.0 ],
									"fontname" : "Geneva",
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "start time",
									"patching_rect" : [ 70.0, 58.0, 56.0, 19.0 ],
									"fontname" : "Geneva",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bang for display count of units dropped because of short size (minsize or no data)",
									"patching_rect" : [ 73.0, 323.0, 375.0, 19.0 ],
									"fontname" : "Geneva",
									"id" : "obj-17",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "new, more flexible protection against short units: if minsize is 0 (new default), units are dropped if no instantaneaous descriptor data is present",
									"linecount" : 5,
									"patching_rect" : [ 235.0, 219.0, 139.0, 67.0 ],
									"fontname" : "Geneva",
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "output unit if last keep flag was 1 AND long enough TODO: fuse with previous",
									"linecount" : 2,
									"patching_rect" : [ 5.0, 21.0, 237.0, 31.0 ],
									"fontname" : "Geneva",
									"id" : "obj-19",
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
									"patching_rect" : [ 75.0, 90.0, 49.664062, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-20",
									"numinlets" : 3,
									"#triggerall" : 0,
									"numins" : 3,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(if $3 $1)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 75.0, 90.0, 49.664062, 17.0 ],
									"#init" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route bang",
									"patching_rect" : [ 50.0, 286.0, 57.0, 19.0 ],
									"fontname" : "Geneva",
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
									"patching_rect" : [ 192.0, 58.0, 15.0, 15.0 ],
									"id" : "obj-22",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 50.0, 58.0, 15.0, 15.0 ],
									"id" : "obj-23",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 50.0, 320.0, 15.0, 15.0 ],
									"id" : "obj-24",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 11.0, 320.0, 15.0, 15.0 ],
									"id" : "obj-25",
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
									"patching_rect" : [ 50.0, 253.0, 141.364746, 17.0 ],
									"fontname" : "Geneva",
									"id" : "obj-26",
									"numinlets" : 4,
									"#triggerall" : 0,
									"numins" : 4,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"#untuple" : 0,
									"text" : [ "_(if (($1 - $2) >= $4) $1 bang)" ],
									"ftm_scope" : 0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 50.0, 253.0, 141.364746, 17.0 ],
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
									"destination" : [ "obj-26", 3 ],
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
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-26", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-6", 0 ],
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
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
						"default_fontname" : "Geneva",
						"fontname" : "Geneva",
						"default_fontsize" : 9.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "last start time and keep flag",
					"linecount" : 2,
					"patching_rect" : [ 405.0, 255.0, 87.0, 31.0 ],
					"fontname" : "Geneva",
					"id" : "obj-38",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "start time = end time of current segment",
					"linecount" : 4,
					"patching_rect" : [ 110.0, 255.0, 73.0, 55.0 ],
					"fontname" : "Geneva",
					"id" : "obj-39",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0 1",
					"patching_rect" : [ 100.0, 235.0, 59.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-40",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_objref_conv" : 0,
					"#loadbang" : 0,
					"patching_rect" : [ 394.0, 240.0, 50.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-41",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_0 1" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 394.0, 240.0, 50.0, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "keep starttime as next endtime",
					"linecount" : 4,
					"patching_rect" : [ 10.0, 235.0, 54.0, 55.0 ],
					"fontname" : "Geneva",
					"id" : "obj-42",
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
					"patching_rect" : [ 510.0, 240.0, 50.0, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-44",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_rows 0" ],
					"ftm_scope" : 0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 510.0, 240.0, 50.0, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "clear raw descr buffer",
					"linecount" : 2,
					"patching_rect" : [ 525.0, 255.0, 67.0, 31.0 ],
					"fontname" : "Geneva",
					"id" : "obj-45",
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
					"patching_rect" : [ 300.0, 435.0, 112.855957, 17.0 ],
					"fontname" : "Geneva",
					"id" : "obj-46",
					"numinlets" : 2,
					"#triggerall" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"#untuple" : 0,
					"text" : [ "_analyse-seg $2 $1 $inst" ],
					"ftm_scope" : 2,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 300.0, 435.0, 112.855957, 17.0 ],
					"#init" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t l b l",
					"patching_rect" : [ 0.0, 195.0, 119.0, 19.0 ],
					"fontname" : "Geneva",
					"id" : "obj-43",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "", "bang", "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 0,
					"midpoints" : [ 403.5, 295.5, 63.352539, 295.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [ 119.5, 79.5, 529.5, 79.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 1 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 446.5, 336.5, 89.5, 336.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-46", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-30", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-56", 2 ],
					"hidden" : 0,
					"midpoints" : [ 209.5, 434.0, 209.753418, 434.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 579.5, 339.0, 519.5, 339.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 1 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 590.5, 389.0, 590.5, 389.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0,
					"midpoints" : [ 519.5, 260.5, 659.5, 260.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-46", 1 ],
					"hidden" : 0,
					"midpoints" : [ 9.5, 399.5, 403.355957, 399.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 1 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 59.5, 216.0, 153.0, 216.0, 153.0, 216.0, 519.5, 216.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 2 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 225.0, 109.5, 225.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 0,
					"midpoints" : [ 9.5, 308.5, 142.833328, 308.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 0,
					"midpoints" : [ 9.5, 419.0, 63.352539, 419.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 1 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-54", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-30", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-37", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 329.5, 499.0, 309.0, 499.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 2 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 3 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-1", 0 ],
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [ 9.0, 85.5, 529.5, 85.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 5 ],
					"destination" : [ "obj-57", 1 ],
					"hidden" : 0,
					"midpoints" : [ 284.5, 111.0, 284.0, 111.0, 284.0, 158.0, 84.683594, 158.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 6 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 2 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [ 119.5, 121.0, 579.5, 121.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 3 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 174.5, 129.5, 519.5, 129.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 3 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 174.5, 129.5, 403.5, 129.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 2 ],
					"destination" : [ "obj-37", 3 ],
					"hidden" : 0,
					"midpoints" : [ 119.5, 121.5, 209.5, 121.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 2 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 2 ],
					"destination" : [ "obj-30", 2 ],
					"hidden" : 0,
					"midpoints" : [ 119.5, 135.0, 135.0, 135.0, 135.0, 207.0, 324.0, 207.0, 324.0, 302.0, 289.5, 302.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
