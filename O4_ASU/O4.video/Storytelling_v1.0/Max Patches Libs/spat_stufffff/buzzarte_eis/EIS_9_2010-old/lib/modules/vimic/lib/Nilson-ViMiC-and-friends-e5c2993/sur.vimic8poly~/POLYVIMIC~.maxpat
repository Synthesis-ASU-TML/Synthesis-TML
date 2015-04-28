{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 246.0, 156.0, 1009.0, 610.0 ],
		"bglocked" : 0,
		"defrect" : [ 246.0, 156.0, 1009.0, 610.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-15",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 311.0, 92.0, 150.0, 48.0 ],
					"text" : "BEFORE SAVING CHANGES DELETE THE jcom.vimic~ OBJECT",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.239216, 0.643137, 0.709804, 1.0 ],
					"id" : "obj-11",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 845.0, 141.0, 150.0, 62.0 ],
					"text" : "creates jcom.vimic~ passing to it two first arguments of POLYVIMIC~",
					"textcolor" : [ 0.239216, 0.643137, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.145098, 0.07451, 0.376471, 1.0 ],
					"id" : "obj-7",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 263.0, 259.0, 150.0, 48.0 ],
					"text" : "connects an audio input according to instance reported by thispoly",
					"textcolor" : [ 0.145098, 0.07451, 0.376471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.87451, 0.25098, 0.717647, 1.0 ],
					"id" : "obj-6",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 563.0, 214.0, 150.0, 48.0 ],
					"text" : "connects an audio input according to instance reported by thispoly",
					"textcolor" : [ 0.87451, 0.25098, 0.717647, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.415686, 0.239216, 0.109804, 1.0 ],
					"id" : "obj-5",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 847.0, 317.0, 160.0, 62.0 ],
					"text" : "connects appropriate number of outputs according to the first argument ",
					"textcolor" : [ 0.415686, 0.239216, 0.109804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 729.0, 240.0, 32.5, 20.0 ],
					"text" : "i #1",
					"textcolor" : [ 0.415686, 0.239216, 0.109804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 729.0, 388.0, 238.0, 20.0 ],
					"text" : "sprintf script connect VIMIC %ld out~%ld 0",
					"textcolor" : [ 0.415686, 0.239216, 0.109804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-101",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 729.0, 264.0, 32.5, 20.0 ],
					"text" : "t b i",
					"textcolor" : [ 0.415686, 0.239216, 0.109804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 758.0, 309.0, 32.5, 20.0 ],
					"text" : "i 0",
					"textcolor" : [ 0.415686, 0.239216, 0.109804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 763.0, 358.0, 32.0, 20.0 ],
					"text" : "+ 1",
					"textcolor" : [ 0.415686, 0.239216, 0.109804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 729.0, 334.0, 73.0, 20.0 ],
					"text" : "counter",
					"textcolor" : [ 0.415686, 0.239216, 0.109804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "int" ],
					"patching_rect" : [ 729.0, 288.0, 46.0, 20.0 ],
					"text" : "uzi 8",
					"textcolor" : [ 0.415686, 0.239216, 0.109804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 421.0, 266.0, 124.0, 34.0 ],
					"text" : "sprintf script connect in~%ld 0 VIMIC 0",
					"textcolor" : [ 0.145098, 0.07451, 0.376471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 421.0, 231.0, 32.5, 20.0 ],
					"text" : "t i i",
					"textcolor" : [ 0.145098, 0.07451, 0.376471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 568.0, 266.0, 129.0, 34.0 ],
					"text" : "sprintf script connect in%ld 0 VIMIC 0",
					"textcolor" : [ 0.87451, 0.25098, 0.717647, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-187",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 736.0, 151.0, 46.0, 20.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-183",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 763.0, 183.0, 69.0, 20.0 ],
					"text" : "pack #1 #2",
					"textcolor" : [ 0.239216, 0.643137, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-181",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 763.0, 212.0, 229.0, 32.0 ],
					"text" : "script new VIMIC newex 100 100 200 12 jcom.vimic~ $1 $2",
					"textcolor" : [ 0.239216, 0.643137, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-179",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 421.0, 205.0, 58.0, 20.0 ],
					"text" : "thispoly~",
					"textcolor" : [ 0.145098, 0.07451, 0.376471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-178",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 736.0, 122.0, 60.0, 20.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 764.0, 455.0, 69.0, 20.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 14.0, 10.0, 30.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 30.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "in 1",
					"varname" : "in1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 64.0, 10.0, 30.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 30.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "in 2",
					"varname" : "in2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 114.0, 10.0, 30.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 30.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "in 3",
					"varname" : "in3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 164.0, 10.0, 30.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 30.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "in 4",
					"varname" : "in4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 214.0, 10.0, 30.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 30.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "in 5",
					"varname" : "in5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 264.0, 10.0, 30.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 30.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "in 6",
					"varname" : "in6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 314.0, 10.0, 30.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 30.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "in 7",
					"varname" : "in7"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 364.0, 10.0, 30.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 30.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "in 8",
					"varname" : "in8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 15.0, 48.0, 48.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 48.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "in~ 1",
					"varname" : "in~1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 65.0, 48.0, 48.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 48.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "in~ 2",
					"varname" : "in~2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 115.0, 48.0, 48.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 48.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "in~ 3",
					"varname" : "in~3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 165.0, 48.0, 48.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 48.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "in~ 4",
					"varname" : "in~4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 215.0, 48.0, 48.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 48.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "in~ 5",
					"varname" : "in~5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 265.0, 48.0, 48.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 48.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "in~ 6",
					"varname" : "in~6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-98",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 315.0, 48.0, 48.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 48.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "in~ 7",
					"varname" : "in~7"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 365.0, 48.0, 48.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 48.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "in~ 8",
					"varname" : "in~8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-153",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 360.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 1",
					"varname" : "out~1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-154",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 80.0, 360.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 2",
					"varname" : "out~2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-155",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 150.0, 360.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 3",
					"varname" : "out~3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-156",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.0, 360.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 4",
					"varname" : "out~4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-157",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 290.0, 360.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 5",
					"varname" : "out~5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-158",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 360.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 6",
					"varname" : "out~6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-159",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 390.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 7",
					"varname" : "out~7"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-160",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 80.0, 390.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 8",
					"varname" : "out~8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-161",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 150.0, 390.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 9",
					"varname" : "out~9"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-162",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.0, 390.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 10",
					"varname" : "out~10"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-163",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 290.0, 390.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 11",
					"varname" : "out~11"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-164",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 390.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 12",
					"varname" : "out~12"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-165",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 420.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 13",
					"varname" : "out~13"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-166",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 80.0, 420.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 14",
					"varname" : "out~14"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-167",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 150.0, 420.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 15",
					"varname" : "out~15"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-168",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.0, 420.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 16",
					"varname" : "out~16"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-169",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 290.0, 420.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 17",
					"varname" : "out~17"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-170",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 420.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 18",
					"varname" : "out~18"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-171",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 450.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 19",
					"varname" : "out~19"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-172",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 80.0, 450.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 20",
					"varname" : "out~20"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-173",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 150.0, 450.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 21",
					"varname" : "out~21"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-174",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.0, 450.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 22",
					"varname" : "out~22"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-175",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 290.0, 450.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 23",
					"varname" : "out~23"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-176",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 450.0, 65.0, 20.0 ],
					"presentation_rect" : [ 0.0, 0.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{

					}
,
					"text" : "out~ 24",
					"varname" : "out~24"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-101", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-187", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-183", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-187", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-183", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-187", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-187", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-21", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ]
	}

}
