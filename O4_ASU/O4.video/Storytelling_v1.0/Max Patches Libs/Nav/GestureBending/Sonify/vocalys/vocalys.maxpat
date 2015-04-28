{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 498.0, 44.0, 917.0, 747.0 ],
		"bglocked" : 0,
		"defrect" : [ 498.0, 44.0, 917.0, 747.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 127",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 120.0, 73.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-45",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 30.0, 0.0, 52.0, 18.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-44",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 360.0, 690.0, 50.0, 18.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-41",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\r---mlys.in noise-level $1",
					"linecount" : 2,
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 420.0, 690.0, 116.0, 27.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-42",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numinlets" : 1,
					"size" : 1.0,
					"numoutlets" : 1,
					"patching_rect" : [ 420.0, 645.0, 390.0, 30.0 ],
					"outlettype" : [ "" ],
					"floatoutput" : 1,
					"id" : "obj-43",
					"orientation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "append 0.01",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 555.0, 330.0, 72.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-40",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s ---mlys.in",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 555.0, 360.0, 59.0, 18.0 ],
					"id" : "obj-39",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend blend",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 555.0, 300.0, 74.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-38",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0.5 .5.",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 735.0, 60.0, 38.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-34",
					"fontname" : "Optima Regular"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numinlets" : 1,
					"size" : 4,
					"numoutlets" : 2,
					"patching_rect" : [ 555.0, 195.0, 195.0, 90.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-35",
					"setminmax" : [ 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "nodenumber 4",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 555.0, 30.0, 74.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-36",
					"fontname" : "Optima Regular"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "nodes",
					"numinlets" : 1,
					"yplace" : [ 0.31, 0.41, 0.72, 0.88 ],
					"numoutlets" : 3,
					"nodenumber" : 4,
					"patching_rect" : [ 555.0, 75.0, 100.0, 100.0 ],
					"outlettype" : [ "", "", "" ],
					"nsize" : [ 0.31, 0.35, 0.39, 0.4 ],
					"id" : "obj-37",
					"displayknob" : 1,
					"xplace" : [ 0.24, 0.74, 0.31, 0.89 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 105.0, 630.0, 50.0, 18.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-31",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\r---mlys.in pitch-corrector-period $1",
					"linecount" : 2,
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 165.0, 630.0, 164.0, 27.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-32",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numinlets" : 1,
					"size" : 100.0,
					"numoutlets" : 1,
					"patching_rect" : [ 165.0, 585.0, 390.0, 30.0 ],
					"outlettype" : [ "" ],
					"floatoutput" : 1,
					"mult" : 0.001,
					"id" : "obj-33",
					"orientation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 105.0, 540.0, 50.0, 18.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-28",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\r---mlys.in pitch-corrector-rate $1",
					"linecount" : 2,
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 165.0, 540.0, 153.0, 27.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-29",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numinlets" : 1,
					"size" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 165.0, 495.0, 390.0, 30.0 ],
					"outlettype" : [ "" ],
					"floatoutput" : 1,
					"id" : "obj-30",
					"orientation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 180.0, 135.0, 50.0, 18.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-26",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 105.0, 450.0, 50.0, 18.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-14",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 90.0, 330.0, 56.0, 18.0 ],
					"outlettype" : [ "signal", "float" ],
					"id" : "obj-27",
					"mode" : 2,
					"fontname" : "Arial",
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\r---mlys.in gamma $1",
					"linecount" : 2,
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 165.0, 450.0, 102.0, 27.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numinlets" : 1,
					"size" : 3.0,
					"numoutlets" : 1,
					"patching_rect" : [ 165.0, 405.0, 390.0, 30.0 ],
					"outlettype" : [ "" ],
					"floatoutput" : 1,
					"id" : "obj-24",
					"orientation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 180.0, 240.0, 50.0, 18.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-22",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mtof",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 195.0, 210.0, 30.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl nth 1",
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 195.0, 180.0, 43.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-13",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 90.0, 285.0, 50.0, 18.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-12",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "yin~",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"patching_rect" : [ 90.0, 255.0, 46.0, 18.0 ],
					"outlettype" : [ "float", "float", "float" ],
					"id" : "obj-9",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print mlys.out",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 90.0, 210.0, 70.0, 18.0 ],
					"id" : "obj-23",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s ---mlys.in",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 420.0, 315.0, 59.0, 18.0 ],
					"id" : "obj-21",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s ---mlys.in",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 255.0, 315.0, 59.0, 18.0 ],
					"id" : "obj-20",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl rot 1",
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 420.0, 240.0, 41.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-17",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl join",
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 420.0, 210.0, 36.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-18",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend midi-note-off",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 420.0, 285.0, 106.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-19",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl rot 1",
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 255.0, 240.0, 41.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-16",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl join",
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 255.0, 210.0, 36.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-11",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend midi-note-on",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 255.0, 285.0, 106.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-10",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $i2!=0 then $i1 $i2 else out2 $i1 $i2",
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 255.0, 150.0, 179.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-8",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiparse",
					"numinlets" : 1,
					"numoutlets" : 7,
					"fontsize" : 10.0,
					"patching_rect" : [ 255.0, 60.0, 100.0, 18.0 ],
					"outlettype" : [ "", "", "", "int", "int", "int", "int" ],
					"id" : "obj-7",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiin",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 255.0, 30.0, 37.0, 18.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-6",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 30.0, 210.0, 20.0, 140.0 ],
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 375.0, 45.0, 45.0 ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r ---mlys.in",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 30.0, 150.0, 58.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\r---mlys.in read vocalys.mlys",
					"linecount" : 2,
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 30.0, 30.0, 134.0, 27.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "modalys~ 0 2",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"patching_rect" : [ 30.0, 180.0, 70.0, 18.0 ],
					"outlettype" : [ "signal", "signal", "" ],
					"id" : "obj-1",
					"fontname" : "Arial"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 200.0, 38.0, 200.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 429.5, 682.0, 369.5, 682.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 174.5, 622.0, 114.5, 622.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 174.5, 532.0, 114.5, 532.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 204.5, 202.0, 174.0, 202.0, 174.0, 128.0, 189.5, 128.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 65.0, 205.0, 75.0, 205.0, 75.0, 317.0, 99.5, 317.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 174.5, 442.0, 114.5, 442.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 424.5, 180.0, 429.5, 180.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 6 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0,
					"midpoints" : [ 345.5, 135.0, 454.0, 135.0, 454.0, 198.0, 446.5, 198.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 6 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [ 345.5, 135.0, 248.0, 135.0, 248.0, 197.0, 281.5, 197.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-11", 0 ],
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 1 ],
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 175.0, 204.5, 175.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 39.5, 203.0, 62.0, 203.0, 62.0, 248.0, 99.5, 248.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
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
					"source" : [ "obj-1", 2 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
