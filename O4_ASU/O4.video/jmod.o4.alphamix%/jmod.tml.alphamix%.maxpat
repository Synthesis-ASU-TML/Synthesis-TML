{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 8
		}
,
		"rect" : [ 495.0, 119.0, 1280.0, 706.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
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
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 635.0, 75.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -0.000002, 80.0, 75.0, 19.0 ],
					"text" : "fsmenubar"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Toggle window floating.",
					"id" : "obj-32",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 90.0, 635.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 59.999996, 80.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 150.0, 635.0, 690.0, 19.0 ],
					"text" : "jcom.parameter fsmenubar @type generic @range/clipmode none @repetitions/allow 0 @description \"Toggle menu bar in fullscreen.\"",
					"varname" : "reset[12]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Enable or disable layer 8.",
					"id" : "obj-18",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 1633.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 180.0, 14.0, 14.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 120.0, 1633.0, 682.0, 19.0 ],
					"text" : "jcom.parameter layer8/enable @type generic @range/clipmode none @repetitions/allow 0 @description \"Enable or disable layer 8.\"",
					"varname" : "reset[8]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Enable or disable layer 7.",
					"id" : "obj-25",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 1603.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.0, 180.0, 14.0, 14.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 120.0, 1603.0, 682.0, 19.0 ],
					"text" : "jcom.parameter layer7/enable @type generic @range/clipmode none @repetitions/allow 0 @description \"Enable or disable layer 7.\"",
					"varname" : "reset[9]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Enable or disable layer 6.",
					"id" : "obj-28",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 1573.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.0, 180.0, 14.0, 14.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 120.0, 1573.0, 682.0, 19.0 ],
					"text" : "jcom.parameter layer6/enable @type generic @range/clipmode none @repetitions/allow 0 @description \"Enable or disable layer 6.\"",
					"varname" : "reset[10]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Enable or disable layer 5.",
					"id" : "obj-30",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 1543.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 75.0, 180.0, 14.0, 14.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 120.0, 1543.0, 682.0, 19.0 ],
					"text" : "jcom.parameter layer5/enable @type generic @range/clipmode none @repetitions/allow 0 @description \"Enable or disable layer 5.\"",
					"varname" : "reset[11]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Enable or disable layer 4.",
					"id" : "obj-10",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 1513.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 60.0, 180.0, 14.0, 14.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 120.0, 1513.0, 682.0, 19.0 ],
					"text" : "jcom.parameter layer4/enable @type generic @range/clipmode none @repetitions/allow 0 @description \"Enable or disable layer 4.\"",
					"varname" : "reset[6]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Enable or disable layer 3.",
					"id" : "obj-12",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 1483.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 45.0, 180.0, 14.0, 14.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 120.0, 1483.0, 682.0, 19.0 ],
					"text" : "jcom.parameter layer3/enable @type generic @range/clipmode none @repetitions/allow 0 @description \"Enable or disable layer 3.\"",
					"varname" : "reset[7]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Enable or disable layer 2.",
					"id" : "obj-6",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 1453.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.0, 180.0, 14.0, 14.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 120.0, 1453.0, 682.0, 19.0 ],
					"text" : "jcom.parameter layer2/enable @type generic @range/clipmode none @repetitions/allow 0 @description \"Enable or disable layer 2.\"",
					"varname" : "reset[5]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Enable or disable layer 1.",
					"id" : "obj-2",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 1423.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 180.0, 14.0, 14.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 120.0, 1423.0, 682.0, 19.0 ],
					"text" : "jcom.parameter layer1/enable @type generic @range/clipmode none @repetitions/allow 0 @description \"Enable or disable layer 1.\"",
					"varname" : "reset[4]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-126",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 600.0, 60.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.000001, 60.0, 60.0, 19.0 ],
					"text" : "floating"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-125",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 555.0, 60.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.000004, 40.0, 60.0, 19.0 ],
					"text" : "fullscreen"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-124",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 479.999969, 60.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.000004, 20.0, 60.0, 19.0 ],
					"text" : "on/off"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-122",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 748.0, 75.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -0.000001, 100.0, 30.0, 19.0 ],
					"text" : "dest"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-117",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 1363.0, 17.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 190.0, 17.0, 19.0 ],
					"text" : "8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-118",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 1288.0, 17.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.0, 190.0, 17.0, 19.0 ],
					"text" : "7"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-119",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 1213.0, 17.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.0, 190.0, 17.0, 19.0 ],
					"text" : "6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-120",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 1138.0, 17.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 75.0, 190.0, 17.0, 19.0 ],
					"text" : "5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-115",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 1063.0, 17.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 59.999996, 190.0, 17.0, 19.0 ],
					"text" : "4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-116",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 988.0, 17.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 44.999996, 190.0, 17.0, 19.0 ],
					"text" : "3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-114",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 913.0, 17.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.999996, 190.0, 17.0, 19.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-113",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 838.0, 17.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.999996, 190.0, 17.0, 19.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-108",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 120.0, 1363.0, 454.0, 31.0 ],
					"text" : "jcom.parameter layer8/level @type decimal @range/clipmode both @range/bounds 0. 1. @repetitions/allow 0 @ramp/drive none @description \"Opacity of layer 8.\"",
					"varname" : "viscosity[6]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Opacity of layer 8.",
					"contdata" : 1,
					"id" : "obj-109",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 1348.0, 15.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 125.0, 15.0, 55.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-110",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 120.0, 1288.0, 454.0, 31.0 ],
					"text" : "jcom.parameter layer7/level @type decimal @range/clipmode both @range/bounds 0. 1. @repetitions/allow 0 @ramp/drive none @description \"Opacity of layer 7.\"",
					"varname" : "viscosity[7]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Opacity of layer 7.",
					"contdata" : 1,
					"id" : "obj-111",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 1273.0, 15.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.0, 125.0, 15.0, 55.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-106",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 120.0, 1213.0, 454.0, 31.0 ],
					"text" : "jcom.parameter layer6/level @type decimal @range/clipmode both @range/bounds 0. 1. @repetitions/allow 0 @ramp/drive none @description \"Opacity of layer 6.\"",
					"varname" : "viscosity[5]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Opacity of layer 6.",
					"contdata" : 1,
					"id" : "obj-107",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 1198.0, 15.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.0, 125.0, 15.0, 55.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-104",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 120.0, 1138.0, 460.0, 31.0 ],
					"text" : "jcom.parameter layer5/level @type decimal @range/clipmode both @range/bounds 0. 1. @repetitions/allow 0 @ramp/drive none @description \"Opacity of layer 5.\"",
					"varname" : "viscosity[4]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Opacity of layer 5.",
					"contdata" : 1,
					"id" : "obj-105",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 1123.0, 15.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 75.0, 125.0, 15.0, 55.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-102",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 120.0, 1063.0, 447.0, 31.0 ],
					"text" : "jcom.parameter layer4/level @type decimal @range/clipmode both @range/bounds 0. 1. @repetitions/allow 0 @ramp/drive none @description \"Opacity of layer 4.\"",
					"varname" : "viscosity[3]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Opacity of layer 4.",
					"contdata" : 1,
					"id" : "obj-103",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 1048.0, 15.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 60.0, 125.0, 15.0, 55.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-100",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 120.0, 988.0, 454.0, 31.0 ],
					"text" : "jcom.parameter layer3/level @type decimal @range/clipmode both @range/bounds 0. 1. @repetitions/allow 0 @ramp/drive none @description \"Opacity of layer 3.\"",
					"varname" : "viscosity[2]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Opacity of layer 3.",
					"contdata" : 1,
					"id" : "obj-101",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 973.0, 15.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 45.0, 125.0, 15.0, 55.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-98",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 120.0, 913.0, 465.0, 31.0 ],
					"text" : "jcom.parameter layer2/level @type decimal @range/clipmode both @range/bounds 0. 1. @repetitions/allow 0 @ramp/drive none @description \"Opacity of layer 2.\"",
					"varname" : "viscosity[1]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Opacity of layer 2.",
					"contdata" : 1,
					"id" : "obj-99",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 898.0, 15.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.0, 125.0, 15.0, 55.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-97",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 485.0, 180.0, 130.0, 17.0 ],
					"text" : "/destination avantgarde"
				}

			}
, 			{
				"box" : 				{
					"comment" : "in8",
					"id" : "obj-94",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 345.0, 285.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "in7",
					"id" : "obj-95",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 315.0, 285.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "in6",
					"id" : "obj-91",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 285.0, 285.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "in5",
					"id" : "obj-92",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 254.999985, 285.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "in4",
					"id" : "obj-93",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 225.0, 285.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 0,
							"revision" : 8
						}
,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
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
									"comment" : "",
									"id" : "obj-8",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 284.0, 224.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 284.0, 137.0, 43.0, 20.0 ],
									"text" : "sel 27"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 284.0, 110.0, 59.5, 20.0 ],
									"text" : "key"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 90.0, 525.0, 42.0, 21.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p esc"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Toggle window floating.",
					"id" : "obj-76",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 90.0, 600.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 60.0, 59.999985, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 150.0, 600.0, 682.0, 19.0 ],
					"text" : "jcom.parameter floating @type generic @range/clipmode none @repetitions/allow 0 @description \"Toggle window floating.\"",
					"varname" : "reset[3]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Toggle window fullscreen.",
					"id" : "obj-73",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 90.0, 555.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 60.0, 39.999989, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 150.0, 555.0, 660.0, 19.0 ],
					"text" : "jcom.parameter fullscreen @type generic @range/clipmode none @repetitions/allow 0 @description \"Toggle window fullscreen.\"",
					"varname" : "reset[2]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Turn rendering on or off.",
					"id" : "obj-70",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 90.0, 479.999969, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 60.000004, 19.999996, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 150.0, 479.999969, 660.0, 19.0 ],
					"text" : "jcom.parameter onOff @type generic @range/clipmode none @repetitions/allow 0 @description \"Turn rendering on or off.\"",
					"varname" : "reset[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-64",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 120.0, 838.0, 454.0, 31.0 ],
					"text" : "jcom.parameter layer1/level @type decimal @range/clipmode both @range/bounds 0. 1. @repetitions/allow 0 @ramp/drive none @description \"Opacity of layer 1.\"",
					"varname" : "viscosity[8]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Opacity of layer 1.",
					"contdata" : 1,
					"id" : "obj-61",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 823.0, 15.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 125.0, 15.0, 55.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 105.0, 778.0, 100.0, 19.0 ],
					"text" : "route text"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Sets the name of the render destination for all vidoplanes and the jit.gl.render object as well as the built-in jit.window.",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-3",
					"keymode" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 105.0, 748.0, 105.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 40.000004, 100.0, 95.0, 20.0 ],
					"text" : "test"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 75.0, 255.0, 290.0, 17.0 ],
					"text" : "/view/highlight none"
				}

			}
, 			{
				"box" : 				{
					"comment" : "in3",
					"id" : "obj-166",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 195.0, 285.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "in2",
					"id" : "obj-165",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 165.0, 285.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "message",
					"id" : "obj-163",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 120.0, 445.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 120.0, 375.0, 165.0, 19.0 ],
					"text" : "jalg.tml.alphamix%"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 236.0, 22.0, 60.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 85.0, 20.0, 60.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-20",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 241.0, 173.0, 199.0, 31.0 ],
					"text" : "<-- this message creates your xml preset file and a default state "
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 190.0, 151.0, 275.0, 19.0 ],
					"text" : "<-- this message creates your html reference page "
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 43.0, 174.0, 198.0, 17.0 ],
					"text" : "/preset/store 1 default, /preset/write"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 43.0, 152.0, 145.0, 17.0 ],
					"text" : "/documentation/generate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-26",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 172.0, 106.0, 305.0, 43.0 ],
					"text" : "In order to create all jcom.parameters/messages/returns, you can use the jcom.parameterCreate utility to the left : just double-click on it and choose the desired attributes",
					"textcolor" : [ 0.709804, 0.101961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 41.0, 128.0, 131.0, 19.0 ],
					"text" : "jcom.parameterCreate"
				}

			}
, 			{
				"box" : 				{
					"comment" : "in1",
					"id" : "obj-7",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 135.0, 285.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 120.0, 420.0, 65.0, 19.0 ],
					"text" : "jcom.out 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-45",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 330.0, 141.0, 19.0 ],
					"text" : "algorithm section"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 0,
							"revision" : 8
						}
,
						"rect" : [ 0.0, 45.0, 120.0, 290.0 ],
						"bgcolor" : [ 0.967391, 0.967391, 0.967391, 1.0 ],
						"bglocked" : 0,
						"openinpresentation" : 1,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 1,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"format" : 0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-95",
									"ignoreclick" : 0,
									"maxclass" : "number",
									"maximum" : 10,
									"minimum" : 0,
									"mouseup" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 105.0, 495.0, 50.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 69.999908, 34.999939, 35.0, 21.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"format" : 0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-96",
									"ignoreclick" : 0,
									"maxclass" : "number",
									"maximum" : 10,
									"minimum" : 0,
									"mouseup" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 60.0, 495.0, 50.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 35.0, 35.0, 35.0, 21.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-97",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 60.0, 465.0, 165.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.list2parameter 2",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"format" : 0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-83",
									"ignoreclick" : 0,
									"maxclass" : "number",
									"maximum" : 10,
									"minimum" : 0,
									"mouseup" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 110.000015, 1575.0, 50.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 70.0, 235.0, 35.0, 21.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"format" : 0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-84",
									"ignoreclick" : 0,
									"maxclass" : "number",
									"maximum" : 10,
									"minimum" : 0,
									"mouseup" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 60.0, 1575.0, 50.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 35.000069, 235.000061, 35.0, 21.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-85",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 60.0, 1545.0, 165.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.list2parameter 2",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"format" : 0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-86",
									"ignoreclick" : 0,
									"maxclass" : "number",
									"maximum" : 10,
									"minimum" : 0,
									"mouseup" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 109.999977, 1440.0, 50.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 69.999954, 210.0, 35.0, 21.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"format" : 0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-87",
									"ignoreclick" : 0,
									"maxclass" : "number",
									"maximum" : 10,
									"minimum" : 0,
									"mouseup" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 60.0, 1440.0, 50.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 35.000031, 210.000061, 35.0, 21.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-88",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 60.0, 1410.0, 165.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.list2parameter 2",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"format" : 0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-89",
									"ignoreclick" : 0,
									"maxclass" : "number",
									"maximum" : 10,
									"minimum" : 0,
									"mouseup" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 110.000008, 1305.0, 50.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 69.999954, 185.0, 35.0, 21.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"format" : 0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-90",
									"ignoreclick" : 0,
									"maxclass" : "number",
									"maximum" : 10,
									"minimum" : 0,
									"mouseup" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 60.0, 1305.0, 50.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 35.000023, 185.000061, 35.0, 21.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-91",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 60.0, 1275.0, 165.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.list2parameter 2",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"format" : 0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-92",
									"ignoreclick" : 0,
									"maxclass" : "number",
									"maximum" : 10,
									"minimum" : 0,
									"mouseup" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 110.000008, 1170.0, 50.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 69.999939, 160.0, 35.0, 21.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"format" : 0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-93",
									"ignoreclick" : 0,
									"maxclass" : "number",
									"maximum" : 10,
									"minimum" : 0,
									"mouseup" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 60.0, 1170.0, 50.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 35.000023, 160.000061, 35.0, 21.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-94",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 60.0, 1140.0, 165.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.list2parameter 2",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"format" : 0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-77",
									"ignoreclick" : 0,
									"maxclass" : "number",
									"maximum" : 10,
									"minimum" : 0,
									"mouseup" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 110.000008, 1035.0, 50.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 69.999939, 135.0, 35.0, 21.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"format" : 0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-78",
									"ignoreclick" : 0,
									"maxclass" : "number",
									"maximum" : 10,
									"minimum" : 0,
									"mouseup" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 59.999992, 1035.0, 50.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 35.000015, 135.000061, 35.0, 21.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-79",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 60.0, 1005.0, 165.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.list2parameter 2",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"format" : 0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-80",
									"ignoreclick" : 0,
									"maxclass" : "number",
									"maximum" : 10,
									"minimum" : 0,
									"mouseup" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 110.000008, 900.0, 50.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 69.999939, 110.0, 35.0, 21.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"format" : 0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-81",
									"ignoreclick" : 0,
									"maxclass" : "number",
									"maximum" : 10,
									"minimum" : 0,
									"mouseup" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 60.0, 900.0, 50.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 35.000015, 110.000061, 35.0, 21.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-82",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 60.0, 870.0, 165.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.list2parameter 2",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"format" : 0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-74",
									"ignoreclick" : 0,
									"maxclass" : "number",
									"maximum" : 10,
									"minimum" : 0,
									"mouseup" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 110.000008, 765.0, 50.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 69.999939, 85.0, 35.0, 21.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"format" : 0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-75",
									"ignoreclick" : 0,
									"maxclass" : "number",
									"maximum" : 10,
									"minimum" : 0,
									"mouseup" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 60.0, 765.0, 50.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 35.000015, 85.000061, 35.0, 21.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-76",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 60.0, 735.0, 165.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.list2parameter 2",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-43",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 255.0, 465.0, 870.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.parameter blendmodesetall @type array @range/clipmode none @repetitions/allow 1 @ramp/drive none @description \"Set compositing mode for all layers.\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"varname" : "/layer1/blendmode[9]"
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-44",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 255.000031, 1545.0, 870.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.parameter layer8/blendmode @type array @range/clipmode none @repetitions/allow 1 @ramp/drive none @description \"Set compositing mode for layer 1.\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"varname" : "/layer1/blendmode[10]"
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-45",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 255.000015, 1410.0, 870.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.parameter layer7/blendmode @type array @range/clipmode none @repetitions/allow 1 @ramp/drive none @description \"Set compositing mode for layer 1.\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"varname" : "/layer1/blendmode[11]"
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-46",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 255.000015, 1275.0, 870.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.parameter layer6/blendmode @type array @range/clipmode none @repetitions/allow 1 @ramp/drive none @description \"Set compositing mode for layer 1.\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"varname" : "/layer1/blendmode[12]"
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-47",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 255.000015, 1140.0, 870.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.parameter layer5/blendmode @type array @range/clipmode none @repetitions/allow 1 @ramp/drive none @description \"Set compositing mode for layer 1.\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"varname" : "/layer1/blendmode[13]"
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-48",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 255.000015, 1005.0, 870.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.parameter layer4/blendmode @type array @range/clipmode none @repetitions/allow 1 @ramp/drive none @description \"Set compositing mode for layer 1.\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"varname" : "/layer1/blendmode[14]"
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-49",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 255.0, 870.0, 870.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.parameter layer3/blendmode @type array @range/clipmode none @repetitions/allow 1 @ramp/drive none @description \"Set compositing mode for layer 1.\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"varname" : "/layer1/blendmode[15]"
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-50",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 255.0, 735.0, 870.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.parameter layer2/blendmode @type array @range/clipmode none @repetitions/allow 1 @ramp/drive none @description \"Set compositing mode for layer 1.\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"varname" : "/layer1/blendmode[16]"
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-51",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 255.0, 600.000061, 870.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.parameter layer1/blendmode @type array @range/clipmode none @repetitions/allow 1 @ramp/drive none @description \"Set compositing mode for layer 1.\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"varname" : "/layer1/blendmode[17]"
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"format" : 0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-42",
									"ignoreclick" : 0,
									"maxclass" : "number",
									"maximum" : 10,
									"minimum" : 0,
									"mouseup" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 110.000015, 630.000061, 50.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 69.999924, 60.0, 35.0, 21.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"format" : 0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-40",
									"ignoreclick" : 0,
									"maxclass" : "number",
									"maximum" : 10,
									"minimum" : 0,
									"mouseup" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 60.000008, 630.000061, 50.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 35.000008, 60.000061, 35.0, 21.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-38",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 60.000011, 600.000061, 165.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.list2parameter 2",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-36",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 145.0, 45.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 35.0, 25.0, 21.0 ],
									"text" : "all",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-29",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 390.0, 19.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 230.0, 19.0, 21.0 ],
									"text" : "8",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-31",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 360.0, 19.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 205.0, 19.0, 21.0 ],
									"text" : "7",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-32",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 330.0, 19.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 180.0, 19.0, 21.0 ],
									"text" : "6",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-33",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 300.0, 19.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 155.0, 19.0, 21.0 ],
									"text" : "5",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-25",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 270.0, 19.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 130.0, 19.0, 21.0 ],
									"text" : "4",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-28",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 240.0, 19.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 105.000015, 19.0, 21.0 ],
									"text" : "3",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-24",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 210.0, 19.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 80.000015, 19.0, 21.0 ],
									"text" : "2",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-23",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 180.0, 19.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 55.000015, 19.0, 21.0 ],
									"text" : "1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-14",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 825.0, 90.0, 50.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "front",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-9",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 0,
											"revision" : 8
										}
,
										"rect" : [ 24.0, 44.0, 211.0, 211.0 ],
										"bglocked" : 0,
										"openinpresentation" : 1,
										"default_fontsize" : 12.0,
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"frgb" : 0.0,
													"id" : "obj-6",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 15.0, 75.0, 150.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 15.0, 15.0, 150.0, 20.0 ],
													"text" : "blendmodes"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"frgb" : 0.0,
													"id" : "obj-4",
													"linecount" : 11,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 15.0, 105.0, 180.0, 154.0 ],
													"presentation" : 1,
													"presentation_linecount" : 11,
													"presentation_rect" : [ 15.0, 45.0, 180.0, 154.0 ],
													"text" : "0: zero\n1: one\n2: destination color\n3: source color\n4: one minus destination color\n5: one minus source color\n6: source alpha\n7: one minus source alpha\n8: destination alpha\n9: one minus destination alpha\n10: source alpha saturate"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"hidden" : 1,
													"id" : "obj-2",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 15.0, 15.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"hidden" : 1,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 15.0, 45.0, 100.0, 20.0 ],
													"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
													"text" : "thispatcher"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"disabled" : 0,
													"hidden" : 1,
													"source" : [ "obj-2", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 675.0, 120.0, 195.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Arial",
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p alphamix_compositing_help",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.380435, 0.380435, 0.380435, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 14.814557,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-8",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 825.0, 45.0, 53.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 260.0, 50.0, 22.0 ],
									"text" : "help?",
									"textcolor" : [ 0.842391, 0.842391, 0.842391, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 16.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-6",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 105.0, 177.0, 26.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 5.0, 112.0, 26.0 ],
									"text" : "Blendmodes",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-26",
									"ignoreclick" : 0,
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 75.0, 35.0, 109.0, 29.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "window flags grow, window exec",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-27",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 195.0, 35.000008, 448.0, 17.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "window size 0 45 120 335, window flags grow, window exec, savewindow 1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-30",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "front" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 0,
											"revision" : 8
										}
,
										"rect" : [ 840.0, 548.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 50.0, 144.0, 19.0 ],
													"text" : "jcom.oscroute /view/panel"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "front" ],
													"patching_rect" : [ 50.0, 92.0, 40.0, 19.0 ],
													"text" : "t front"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-4",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-5",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 114.0, 15.0, 15.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-4", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 15.0, 35.000008, 42.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Verdana",
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p front",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-34",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 15.0, 75.0, 65.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ],
									"text" : "thispatcher",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"comment" : "",
									"hidden" : 0,
									"id" : "obj-35",
									"ignoreclick" : 0,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 5.000006, 15.0, 15.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-34", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"midpoints" : [ 84.5, 69.000008, 24.5, 69.000008 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-34", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"midpoints" : [ 204.5, 69.000008, 24.5, 69.000008 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-34", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-30", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-40", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-42", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-38", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-51", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-38", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-38", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 69.500008, 660.000061, 49.500008, 660.000061, 49.500008, 590.000061, 69.500015, 590.000061 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-38", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 119.500015, 669.000061, 42.800011, 669.000061, 42.800011, 577.000061, 84.100014, 577.000061 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-97", 10 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-85", 10 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-88", 10 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-91", 10 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-94", 10 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-79", 10 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-82", 10 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-76", 10 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-38", 10 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-76", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 119.500008, 804.0, 42.799999, 804.0, 42.799999, 712.0, 84.099998, 712.0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-76", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 69.5, 795.0, 49.499996, 795.0, 49.499996, 725.0, 69.5, 725.0 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-50", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-76", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-74", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-76", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-75", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-79", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 119.500008, 1074.0, 42.799995, 1074.0, 42.799995, 982.0, 84.099998, 982.0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-79", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 69.499992, 1065.0, 49.499992, 1065.0, 49.499992, 995.0, 69.5, 995.0 ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-48", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-79", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-77", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-79", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-78", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-82", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 119.500008, 939.0, 42.799999, 939.0, 42.799999, 847.0, 84.099998, 847.0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-82", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 69.5, 930.0, 49.499996, 930.0, 49.499996, 860.0, 69.5, 860.0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-49", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-82", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-80", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-82", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-81", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-85", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 119.500015, 1614.0, 42.799999, 1614.0, 42.799999, 1522.0, 84.099998, 1522.0 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-85", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 69.5, 1605.0, 49.499996, 1605.0, 49.499996, 1535.0, 69.5, 1535.0 ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-44", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-85", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-83", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-85", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-84", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-88", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 119.499977, 1479.0, 42.799965, 1479.0, 42.799965, 1387.0, 84.099998, 1387.0 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-88", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 69.5, 1470.0, 49.499962, 1470.0, 49.499962, 1400.0, 69.5, 1400.0 ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-45", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-88", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-86", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-88", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-87", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-91", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 119.500008, 1344.0, 42.799995, 1344.0, 42.799995, 1252.0, 84.099998, 1252.0 ],
									"source" : [ "obj-89", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-91", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 69.5, 1335.0, 49.499992, 1335.0, 49.499992, 1265.0, 69.5, 1265.0 ],
									"source" : [ "obj-90", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-46", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-91", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-89", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-91", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-90", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-91", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-94", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 119.500008, 1209.0, 42.799999, 1209.0, 42.799999, 1117.0, 84.099998, 1117.0 ],
									"source" : [ "obj-92", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-94", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 69.5, 1200.0, 49.499996, 1200.0, 49.499996, 1130.0, 69.5, 1130.0 ],
									"source" : [ "obj-93", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-47", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-94", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-92", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-94", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-93", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-94", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-38", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 114.5, 538.088501, 84.100014, 538.088501 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-76", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 114.5, 537.40387, 13.390921, 537.40387, 13.390921, 690.454529, 84.099998, 690.454529 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-79", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 114.5, 540.336365, 14.300014, 540.336365, 14.300014, 961.131592, 84.099998, 961.131592 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-82", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 114.5, 536.410828, 13.390922, 536.410828, 13.390922, 823.565796, 84.099998, 823.565796 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-85", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 114.5, 537.357361, 10.505187, 537.357361, 10.505187, 1499.286743, 84.099998, 1499.286743 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-88", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 114.5, 538.000732, 12.481815, 538.000732, 12.481815, 1364.078979, 84.099998, 1364.078979 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-91", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 114.5, 540.45459, 11.345463, 540.45459, 11.345463, 1231.363647, 84.099998, 1231.363647 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-94", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 114.5, 539.13092, 10.901445, 539.13092, 10.901445, 1094.592041, 84.099998, 1094.592041 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-97", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 114.5, 529.545471, 30.890923, 529.545471, 30.890923, 447.727264, 84.099998, 447.727264 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-38", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 69.5, 557.5, 69.500015, 557.5 ],
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-76", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 69.5, 542.289734, 13.818184, 542.289734, 13.818184, 690.454529, 69.5, 690.454529 ],
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-79", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 69.5, 538.000732, 11.090912, 538.000732, 11.090912, 960.618408, 69.5, 960.618408 ],
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-82", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 69.5, 536.052002, 12.909093, 536.052002, 12.909093, 824.078918, 69.5, 824.078918 ],
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-85", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 69.5, 539.949463, 11.090911, 539.949463, 11.090911, 1499.078979, 69.5, 1499.078979 ],
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-88", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 69.5, 540.468994, 11.999986, 540.468994, 11.999986, 1364.078979, 69.5, 1364.078979 ],
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-91", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 69.5, 536.052002, 11.090911, 536.052002, 11.090911, 1230.618408, 69.5, 1230.618408 ],
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-94", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 69.5, 536.052002, 13.818184, 536.052002, 13.818184, 1094.078979, 69.5, 1094.078979 ],
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-97", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 69.5, 525.0, 48.590912, 525.0, 48.590912, 455.0, 69.5, 455.0 ],
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-43", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-97", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-95", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 84.099998, 490.0, 114.5, 490.0 ],
									"source" : [ "obj-97", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-96", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 69.5, 490.0, 69.5, 490.0 ],
									"source" : [ "obj-97", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 300.0, 375.0, 46.0, 19.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Verdana",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p panel"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 10,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 135.0, 330.0, 180.0, 19.0 ],
					"text" : "jcom.in 8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 14.0, 211.0, 526.0, 19.0 ],
					"text" : "jcom.hub @module_type video @description \"Fluid simulation based on the Navier-Stokes equations.\"",
					"varname" : "jcom.hub"
				}

			}
, 			{
				"box" : 				{
					"comment" : "osc_messages",
					"id" : "obj-38",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 14.0, 139.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "message",
					"id" : "obj-39",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 251.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 360.0, 375.0, 216.0, 17.0 ],
					"text" : "/panel/open"
				}

			}
, 			{
				"box" : 				{
					"has_bypass" : 1,
					"has_mute" : 1,
					"has_panel" : 1,
					"has_preview" : 1,
					"id" : "obj-16",
					"maxclass" : "jcom.ui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"prefix" : "video",
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 210.0 ],
					"text" : "/editing_this_module"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 255.0, 778.0, 1124.0, 19.0 ],
					"text" : "jcom.parameter destination @type string @range/clipmode none @repetitions/allow 1 @description \"Sets the name of the render destination for all vidoplanes and the jit.gl.render object as well as the built-in jit.window.\"",
					"varname" : "destination"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-165", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 287.611115, 361.5, 129.5, 361.5 ],
					"source" : [ "obj-24", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 8 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 7 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 6 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 4 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
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
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 275.5, 406.5, 129.5, 406.5 ],
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 4 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 7 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 6 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "jcom.list2parameter.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/components/list2parameter",
				"patcherrelativepath" : "../../../../../../Applications/Max6/Cycling '74/Jamoma/library/components/list2parameter",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.parameterCreate.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/components/parameterCreate",
				"patcherrelativepath" : "../../../../../../Applications/Max6/Cycling '74/Jamoma/library/components/parameterCreate",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.tml.alphamix%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ilya_active/alphamix",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.tml.alphamix%.layer.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ilya_active/alphamix",
				"patcherrelativepath" : "",
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
				"name" : "jcom.in.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.oscroute.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.out.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.map.mxo",
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
 ]
	}

}
