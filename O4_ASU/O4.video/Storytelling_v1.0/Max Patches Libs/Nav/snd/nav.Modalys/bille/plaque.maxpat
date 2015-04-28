{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 145.0, 44.0, 1041.0, 700.0 ],
		"bglocked" : 0,
		"defrect" : [ 145.0, 44.0, 1041.0, 700.0 ],
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
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 675.0, 165.0, 20.0, 20.0 ],
					"id" : "obj-107",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate~",
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"patching_rect" : [ 660.0, 195.0, 36.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-8",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 100",
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"patching_rect" : [ 735.0, 195.0, 40.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-7",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noise~",
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"patching_rect" : [ 735.0, 165.0, 49.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sig~ 0",
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"patching_rect" : [ 735.0, 225.0, 37.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r mlys.in",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 195.0, 195.0, 48.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-110",
					"numinlets" : 0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r parameters",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 585.0, 570.0, 67.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-175",
					"numinlets" : 0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend from_mlys",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 735.0, 585.0, 94.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-64",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r mlys.out",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 735.0, 555.0, 54.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-78",
					"numinlets" : 0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "create",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 660.0, 570.0, 38.0, 16.0 ],
					"fontsize" : 10.0,
					"id" : "obj-85",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess autowatch 1",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 615.0, 540.0, 110.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-105",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js automator.js",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 630.0, 600.0, 75.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-106",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "plaque-entree-1-y $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 780.0, 450.0, 94.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-56",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "plaque-frappe-y $1 0.1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 630.0, 450.0, 101.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-49",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "plaque-ecoute-2-y $1 0.2",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 495.0, 450.0, 111.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-48",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "plaque-ecoute-1-y $1 0.5",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 345.0, 450.0, 111.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-42",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.0, 2.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"patching_rect" : [ 270.0, 195.0, 13.0, 58.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"contdata" : 1,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"id" : "obj-21",
					"numinlets" : 1,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"numoutlets" : 2,
					"setstyle" : 1,
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 270.0, 260.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-23",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "noise-weight $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 270.0, 280.0, 78.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-41",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "trigger 1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 360.0, 510.0, 48.0, 16.0 ],
					"fontsize" : 10.0,
					"id" : "obj-20",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"patching_rect" : [ 180.0, 495.0, 45.0, 45.0 ],
					"id" : "obj-9",
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "127",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 135.0, 345.0, 32.5, 16.0 ],
					"fontsize" : 10.0,
					"id" : "obj-5",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 127",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 150.0, 330.0, 73.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 240.0, 585.0, 80.0, 13.0 ],
					"id" : "obj-104",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 135.0, 585.0, 80.0, 13.0 ],
					"id" : "obj-103",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 390.0, 540.0, 33.0, 16.0 ],
					"fontsize" : 10.0,
					"id" : "obj-102",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 345.0, 555.0, 20.0, 20.0 ],
					"id" : "obj-101",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfrecord~ 2",
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"patching_rect" : [ 345.0, 585.0, 61.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-100",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attention ! | v",
					"linecount" : 3,
					"fontname" : "Arial",
					"frgb" : [ 0.772549, 0.066667, 0.219608, 1.0 ],
					"patching_rect" : [ 847.0, -2.0, 34.0, 38.0 ],
					"textcolor" : [ 0.772549, 0.066667, 0.219608, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attention ! des variations brusques de réglages peuvent provoquer des sons TRES forts, notamment lors du changement de presets",
					"linecount" : 8,
					"fontname" : "Arial",
					"frgb" : [ 0.772549, 0.066667, 0.219608, 1.0 ],
					"patching_rect" : [ 495.0, 150.0, 102.0, 89.0 ],
					"textcolor" : [ 0.772549, 0.066667, 0.219608, 1.0 ],
					"fontsize" : 9.0,
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "preset",
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"bubblesize" : 8,
					"patching_rect" : [ 774.0, 35.0, 145.0, 68.0 ],
					"margin" : 4,
					"spacing" : 2,
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 4,
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-96", "flonum", "float", 2.0, 6, "obj-91", "pictslider", "list", 37, 53, 5, "obj-89", "flonum", "float", 0.289062, 5, "obj-87", "flonum", "float", 0.414062, 6, "obj-84", "pictslider", "list", 1, 1, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-80", "flonum", "float", 0.0, 5, "obj-76", "flonum", "float", -0.000781, 5, "obj-75", "slider", "float", 0.0, 5, "obj-70", "toggle", "int", 0, 5, "obj-69", "flonum", "float", -0.001, 5, "obj-65", "flonum", "float", 0.0, 6, "obj-62", "pictslider", "list", 42, 21, 5, "obj-60", "flonum", "float", 0.328125, 5, "obj-58", "flonum", "float", 0.164062, 6, "obj-55", "pictslider", "list", 51, 44, 5, "obj-53", "flonum", "float", 0.398438, 5, "obj-51", "flonum", "float", 0.34375, 5, "obj-47", "multislider", "list", 2.0, 5, "obj-45", "flonum", "float", 2.0, 5, "obj-44", "multislider", "list", 2.0, 6, "obj-40", "gain~", "list", 151, 10.0, 6, "obj-39", "gain~", "list", 151, 10.0, 5, "obj-37", "flonum", "float", 0.004536, 5, "obj-36", "multislider", "list", 0.004536, 5, "obj-34", "flonum", "float", 19643.035156, 5, "obj-33", "multislider", "list", 19643.035156, 5, "obj-31", "flonum", "float", -1.285714, 5, "obj-30", "multislider", "list", -1.285714, 5, "obj-28", "flonum", "float", 0.0001, 5, "obj-27", "multislider", "list", 0.0001, 5, "obj-25", "slider", "float", 255.0, 5, "obj-24", "number", "int", 514, 5, "obj-22", "multislider", "list", 0.0, 5, "<invalid>", "toggle", "int", 1, 5, "obj-18", "flonum", "float", 0.0001, 5, "obj-17", "multislider", "list", 0.0001, 5, "obj-15", "flonum", "float", 57.143284, 5, "obj-14", "multislider", "list", 57.143284, 5, "obj-12", "flonum", "float", 15.00025, 5, "obj-11", "multislider", "list", 15.00025, 5, "<invalid>", "toggle", "int", 1, 5, "obj-101", "toggle", "int", 0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-96", "flonum", "float", 2.0, 6, "obj-91", "pictslider", "list", 37, 53, 5, "obj-89", "flonum", "float", 0.289062, 5, "obj-87", "flonum", "float", 0.414062, 6, "obj-84", "pictslider", "list", 1, 1, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-80", "flonum", "float", 0.0, 5, "obj-76", "flonum", "float", -0.000781, 5, "obj-75", "slider", "float", 0.0, 5, "obj-70", "toggle", "int", 0, 5, "obj-69", "flonum", "float", -0.001, 5, "obj-65", "flonum", "float", 46.42857, 6, "obj-62", "pictslider", "list", 42, 21, 5, "obj-60", "flonum", "float", 0.328125, 5, "obj-58", "flonum", "float", 0.164062, 6, "obj-55", "pictslider", "list", 51, 44, 5, "obj-53", "flonum", "float", 0.398438, 5, "obj-51", "flonum", "float", 0.34375, 5, "obj-47", "multislider", "list", 2.0, 5, "obj-45", "flonum", "float", 2.0, 5, "obj-44", "multislider", "list", 2.0, 6, "obj-40", "gain~", "list", 151, 10.0, 6, "obj-39", "gain~", "list", 151, 10.0, 5, "obj-37", "flonum", "float", 0.006304, 5, "obj-36", "multislider", "list", 0.006304, 5, "obj-34", "flonum", "float", 18572.142578, 5, "obj-33", "multislider", "list", 18572.142578, 5, "obj-31", "flonum", "float", -0.428571, 5, "obj-30", "multislider", "list", -0.428571, 5, "obj-28", "flonum", "float", 0.0001, 5, "obj-27", "multislider", "list", 0.0001, 5, "obj-25", "slider", "float", 255.0, 5, "obj-24", "number", "int", 514, 5, "obj-22", "multislider", "list", 46.42857, 5, "<invalid>", "toggle", "int", 1, 5, "obj-18", "flonum", "float", 0.0001, 5, "obj-17", "multislider", "list", 0.0001, 5, "obj-15", "flonum", "float", 57.143284, 5, "obj-14", "multislider", "list", 57.143284, 5, "obj-12", "flonum", "float", 15.00025, 5, "obj-11", "multislider", "list", 15.00025, 5, "<invalid>", "toggle", "int", 1, 5, "obj-101", "toggle", "int", 0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-96", "flonum", "float", 0.898393, 6, "obj-91", "pictslider", "list", 35, 89, 5, "obj-89", "flonum", "float", 0.273438, 5, "obj-87", "flonum", "float", 0.695312, 6, "obj-84", "pictslider", "list", 1, 1, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-80", "flonum", "float", 0.0, 5, "obj-76", "flonum", "float", -0.000781, 5, "obj-75", "slider", "float", 0.0, 5, "obj-70", "toggle", "int", 0, 5, "obj-69", "flonum", "float", -0.001, 5, "obj-65", "flonum", "float", 0.0, 6, "obj-62", "pictslider", "list", 77, 79, 5, "obj-60", "flonum", "float", 0.601562, 5, "obj-58", "flonum", "float", 0.617188, 6, "obj-55", "pictslider", "list", 51, 44, 5, "obj-53", "flonum", "float", 0.398438, 5, "obj-51", "flonum", "float", 0.34375, 5, "obj-47", "multislider", "list", 0.898393, 5, "obj-45", "flonum", "float", 1.040536, 5, "obj-44", "multislider", "list", 1.040536, 6, "obj-40", "gain~", "list", 151, 10.0, 6, "obj-39", "gain~", "list", 151, 10.0, 5, "obj-37", "flonum", "float", 0.045196, 5, "obj-36", "multislider", "list", 0.045196, 5, "obj-34", "flonum", "float", 7506.25, 5, "obj-33", "multislider", "list", 7506.25, 5, "obj-31", "flonum", "float", -0.321429, 5, "obj-30", "multislider", "list", -0.321429, 5, "obj-28", "flonum", "float", 2.321505, 5, "obj-27", "multislider", "list", 2.321505, 5, "obj-25", "slider", "float", 255.0, 5, "obj-24", "number", "int", 514, 5, "obj-22", "multislider", "list", 0.0, 5, "<invalid>", "toggle", "int", 1, 5, "obj-18", "flonum", "float", 0.0001, 5, "obj-17", "multislider", "list", 0.0001, 5, "obj-15", "flonum", "float", 71.428856, 5, "obj-14", "multislider", "list", 71.428856, 5, "obj-12", "flonum", "float", 16.428749, 5, "obj-11", "multislider", "list", 16.428749, 5, "<invalid>", "toggle", "int", 1, 5, "obj-101", "toggle", "int", 0 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-96", "flonum", "float", 0.898393, 6, "obj-91", "pictslider", "list", 38, 78, 5, "obj-89", "flonum", "float", 0.296875, 5, "obj-87", "flonum", "float", 0.609375, 6, "obj-84", "pictslider", "list", 1, 1, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-80", "flonum", "float", 0.0, 5, "obj-76", "flonum", "float", -0.000781, 5, "obj-75", "slider", "float", 0.0, 5, "obj-70", "toggle", "int", 0, 5, "obj-69", "flonum", "float", -0.001, 5, "obj-65", "flonum", "float", 0.0, 6, "obj-62", "pictslider", "list", 77, 79, 5, "obj-60", "flonum", "float", 0.601562, 5, "obj-58", "flonum", "float", 0.617188, 6, "obj-55", "pictslider", "list", 51, 44, 5, "obj-53", "flonum", "float", 0.398438, 5, "obj-51", "flonum", "float", 0.34375, 5, "obj-47", "multislider", "list", 0.898393, 5, "obj-45", "flonum", "float", 1.040536, 5, "obj-44", "multislider", "list", 1.040536, 6, "obj-40", "gain~", "list", 151, 10.0, 6, "obj-39", "gain~", "list", 151, 10.0, 5, "obj-37", "flonum", "float", 0.045196, 5, "obj-36", "multislider", "list", 0.045196, 5, "obj-34", "flonum", "float", 11432.857422, 5, "obj-33", "multislider", "list", 11432.857422, 5, "obj-31", "flonum", "float", -1.392857, 5, "obj-30", "multislider", "list", -1.392857, 5, "obj-28", "flonum", "float", 3.035784, 5, "obj-27", "multislider", "list", 3.035784, 5, "obj-25", "slider", "float", 120.0, 5, "obj-24", "number", "int", 244, 5, "obj-22", "multislider", "list", 0.0, 5, "<invalid>", "toggle", "int", 1, 5, "obj-18", "flonum", "float", 0.0, 5, "obj-17", "multislider", "list", 0.0, 5, "obj-15", "flonum", "float", 91.071518, 5, "obj-14", "multislider", "list", 91.071518, 5, "obj-12", "flonum", "float", 2.500875, 5, "obj-11", "multislider", "list", 2.500875, 5, "<invalid>", "toggle", "int", 1, 5, "obj-101", "toggle", "int", 0 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-96", "flonum", "float", 1.609107, 6, "obj-91", "pictslider", "list", 69, 104, 5, "obj-89", "flonum", "float", 0.539062, 5, "obj-87", "flonum", "float", 0.8125, 6, "obj-84", "pictslider", "list", 1, 1, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-80", "flonum", "float", 0.0, 5, "obj-76", "flonum", "float", -0.000781, 5, "obj-75", "slider", "float", 0.0, 5, "obj-70", "toggle", "int", 1, 5, "obj-69", "flonum", "float", 0.099, 5, "obj-65", "flonum", "float", 0.0, 6, "obj-62", "pictslider", "list", 77, 79, 5, "obj-60", "flonum", "float", 0.601562, 5, "obj-58", "flonum", "float", 0.617188, 6, "obj-55", "pictslider", "list", 51, 44, 5, "obj-53", "flonum", "float", 0.398438, 5, "obj-51", "flonum", "float", 0.34375, 5, "obj-47", "multislider", "list", 1.609107, 5, "obj-45", "flonum", "float", 1.040536, 5, "obj-44", "multislider", "list", 1.040536, 6, "obj-40", "gain~", "list", 151, 10.0, 6, "obj-39", "gain~", "list", 151, 10.0, 5, "obj-37", "flonum", "float", 0.045196, 5, "obj-36", "multislider", "list", 0.045196, 5, "obj-34", "flonum", "float", 11432.857422, 5, "obj-33", "multislider", "list", 11432.857422, 5, "obj-31", "flonum", "float", -0.535714, 5, "obj-30", "multislider", "list", -0.535714, 5, "obj-28", "flonum", "float", 0.357239, 5, "obj-27", "multislider", "list", 0.357239, 5, "obj-25", "slider", "float", 96.0, 5, "obj-24", "number", "int", 196, 5, "obj-22", "multislider", "list", 0.0, 5, "<invalid>", "toggle", "int", 1, 5, "obj-18", "flonum", "float", 0.0, 5, "obj-17", "multislider", "list", 0.0, 5, "obj-15", "flonum", "float", 91.071518, 5, "obj-14", "multislider", "list", 91.071518, 5, "obj-12", "flonum", "float", 2.500875, 5, "obj-11", "multislider", "list", 2.500875, 5, "<invalid>", "toggle", "int", 1, 5, "obj-101", "toggle", "int", 0 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-96", "flonum", "float", 1.182679, 6, "obj-91", "pictslider", "list", 38, 114, 5, "obj-89", "flonum", "float", 0.296875, 5, "obj-87", "flonum", "float", 0.890625, 6, "obj-84", "pictslider", "list", 1, 1, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-80", "flonum", "float", 0.0, 5, "obj-76", "flonum", "float", -0.000781, 5, "obj-75", "slider", "float", 0.0, 5, "obj-70", "toggle", "int", 1, 5, "obj-69", "flonum", "float", 0.099, 5, "obj-65", "flonum", "float", 0.0, 6, "obj-62", "pictslider", "list", 108, 56, 5, "obj-60", "flonum", "float", 0.84375, 5, "obj-58", "flonum", "float", 0.4375, 6, "obj-55", "pictslider", "list", 34, 106, 5, "obj-53", "flonum", "float", 0.265625, 5, "obj-51", "flonum", "float", 0.828125, 5, "obj-47", "multislider", "list", 1.182679, 5, "obj-45", "flonum", "float", 0.720714, 5, "obj-44", "multislider", "list", 0.720714, 6, "obj-40", "gain~", "list", 151, 10.0, 6, "obj-39", "gain~", "list", 151, 10.0, 5, "obj-37", "flonum", "float", 0.027518, 5, "obj-36", "multislider", "list", 0.027518, 5, "obj-34", "flonum", "float", 19643.035156, 5, "obj-33", "multislider", "list", 19643.035156, 5, "obj-31", "flonum", "float", -1.714286, 5, "obj-30", "multislider", "list", -1.714286, 5, "obj-28", "flonum", "float", 0.0001, 5, "obj-27", "multislider", "list", 0.0001, 5, "obj-25", "slider", "float", 255.0, 5, "obj-24", "number", "int", 514, 5, "obj-22", "multislider", "list", 0.0, 5, "<invalid>", "toggle", "int", 1, 5, "obj-18", "flonum", "float", 0.0, 5, "obj-17", "multislider", "list", 0.0, 5, "obj-15", "flonum", "float", 91.071518, 5, "obj-14", "multislider", "list", 91.071518, 5, "obj-12", "flonum", "float", 2.500875, 5, "obj-11", "multislider", "list", 2.500875, 5, "<invalid>", "toggle", "int", 1, 5, "obj-101", "toggle", "int", 0 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-96", "flonum", "float", 1.182679, 6, "obj-91", "pictslider", "list", 38, 114, 5, "obj-89", "flonum", "float", 0.296875, 5, "obj-87", "flonum", "float", 0.890625, 6, "obj-84", "pictslider", "list", 1, 1, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-80", "flonum", "float", 0.0, 5, "obj-76", "flonum", "float", -0.000781, 5, "obj-75", "slider", "float", 0.0, 5, "obj-70", "toggle", "int", 1, 5, "obj-69", "flonum", "float", 0.099, 5, "obj-65", "flonum", "float", 0.0, 6, "obj-62", "pictslider", "list", 108, 56, 5, "obj-60", "flonum", "float", 0.84375, 5, "obj-58", "flonum", "float", 0.4375, 6, "obj-55", "pictslider", "list", 34, 106, 5, "obj-53", "flonum", "float", 0.265625, 5, "obj-51", "flonum", "float", 0.828125, 5, "obj-47", "multislider", "list", 1.182679, 5, "obj-45", "flonum", "float", 0.720714, 5, "obj-44", "multislider", "list", 0.720714, 6, "obj-40", "gain~", "list", 151, 10.0, 6, "obj-39", "gain~", "list", 151, 10.0, 5, "obj-37", "flonum", "float", 0.027518, 5, "obj-36", "multislider", "list", 0.027518, 5, "obj-34", "flonum", "float", 19643.035156, 5, "obj-33", "multislider", "list", 19643.035156, 5, "obj-31", "flonum", "float", -0.75, 5, "obj-30", "multislider", "list", -0.75, 5, "obj-28", "flonum", "float", 0.0001, 5, "obj-27", "multislider", "list", 0.0001, 5, "obj-25", "slider", "float", 255.0, 5, "obj-24", "number", "int", 514, 5, "obj-22", "multislider", "list", 0.0, 5, "<invalid>", "toggle", "int", 1, 5, "obj-18", "flonum", "float", 0.0, 5, "obj-17", "multislider", "list", 0.0, 5, "obj-15", "flonum", "float", 91.071518, 5, "obj-14", "multislider", "list", 91.071518, 5, "obj-12", "flonum", "float", 2.500875, 5, "obj-11", "multislider", "list", 2.500875, 5, "<invalid>", "toggle", "int", 1, 5, "obj-101", "toggle", "int", 0 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-96", "flonum", "float", 0.685179, 6, "obj-91", "pictslider", "list", 59, 77, 5, "obj-89", "flonum", "float", 0.460938, 5, "obj-87", "flonum", "float", 0.601562, 6, "obj-84", "pictslider", "list", 1, 1, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-80", "flonum", "float", 0.0, 5, "obj-76", "flonum", "float", -0.000781, 5, "obj-75", "slider", "float", 0.0, 5, "obj-70", "toggle", "int", 1, 5, "obj-69", "flonum", "float", 0.099, 5, "obj-65", "flonum", "float", 0.0, 6, "obj-62", "pictslider", "list", 46, 15, 5, "obj-60", "flonum", "float", 0.359375, 5, "obj-58", "flonum", "float", 0.117188, 6, "obj-55", "pictslider", "list", 34, 106, 5, "obj-53", "flonum", "float", 0.265625, 5, "obj-51", "flonum", "float", 0.828125, 5, "obj-47", "multislider", "list", 0.685179, 5, "obj-45", "flonum", "float", 1.395893, 5, "obj-44", "multislider", "list", 1.395893, 6, "obj-40", "gain~", "list", 118, 10.0, 6, "obj-39", "gain~", "list", 118, 10.0, 5, "obj-37", "flonum", "float", 0.094696, 5, "obj-36", "multislider", "list", 0.094696, 5, "obj-34", "flonum", "float", 3936.607178, 5, "obj-33", "multislider", "list", 3936.607178, 5, "obj-31", "flonum", "float", -0.75, 5, "obj-30", "multislider", "list", -0.75, 5, "obj-28", "flonum", "float", 6.964316, 5, "obj-27", "multislider", "list", 6.964316, 5, "obj-25", "slider", "float", 11.0, 5, "obj-24", "number", "int", 26, 5, "obj-22", "multislider", "list", 0.0, 5, "<invalid>", "toggle", "int", 1, 5, "obj-18", "flonum", "float", 0.0, 5, "obj-17", "multislider", "list", 0.0, 5, "obj-15", "flonum", "float", 91.071518, 5, "obj-14", "multislider", "list", 91.071518, 5, "obj-12", "flonum", "float", 2.500875, 5, "obj-11", "multislider", "list", 2.500875, 5, "<invalid>", "toggle", "int", 1, 5, "obj-101", "toggle", "int", 0 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "obj-96", "flonum", "float", 1.609107, 6, "obj-91", "pictslider", "list", 98, 12, 5, "obj-89", "flonum", "float", 0.765625, 5, "obj-87", "flonum", "float", 0.09375, 6, "obj-84", "pictslider", "list", 1, 1, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-80", "flonum", "float", 0.0, 5, "obj-76", "flonum", "float", -0.000781, 5, "obj-75", "slider", "float", 0.0, 5, "obj-70", "toggle", "int", 0, 5, "obj-69", "flonum", "float", -0.001, 5, "obj-65", "flonum", "float", 51.785713, 6, "obj-62", "pictslider", "list", 77, 79, 5, "obj-60", "flonum", "float", 0.601562, 5, "obj-58", "flonum", "float", 0.617188, 6, "obj-55", "pictslider", "list", 51, 44, 5, "obj-53", "flonum", "float", 0.398438, 5, "obj-51", "flonum", "float", 0.34375, 5, "obj-47", "multislider", "list", 1.609107, 5, "obj-45", "flonum", "float", 1.040536, 5, "obj-44", "multislider", "list", 1.040536, 6, "obj-40", "gain~", "list", 151, 10.0, 6, "obj-39", "gain~", "list", 151, 10.0, 5, "obj-37", "flonum", "float", 0.045196, 5, "obj-36", "multislider", "list", 0.045196, 5, "obj-34", "flonum", "float", 11432.857422, 5, "obj-33", "multislider", "list", 11432.857422, 5, "obj-31", "flonum", "float", -1.392857, 5, "obj-30", "multislider", "list", -1.392857, 5, "obj-28", "flonum", "float", 0.357239, 5, "obj-27", "multislider", "list", 0.357239, 5, "obj-25", "slider", "float", 96.0, 5, "obj-24", "number", "int", 196, 5, "obj-22", "multislider", "list", 51.785713, 5, "<invalid>", "toggle", "int", 1, 5, "obj-18", "flonum", "float", 0.0, 5, "obj-17", "multislider", "list", 0.0, 5, "obj-15", "flonum", "float", 91.071518, 5, "obj-14", "multislider", "list", 91.071518, 5, "obj-12", "flonum", "float", 2.500875, 5, "obj-11", "multislider", "list", 2.500875, 5, "<invalid>", "toggle", "int", 1, 5, "obj-101", "toggle", "int", 0 ]
						}
, 						{
							"number" : 10,
							"data" : [ 5, "obj-96", "flonum", "float", 1.431429, 6, "obj-91", "pictslider", "list", 17, 63, 5, "obj-89", "flonum", "float", 0.132812, 5, "obj-87", "flonum", "float", 0.492188, 6, "obj-84", "pictslider", "list", 1, 1, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-80", "flonum", "float", 0.0, 5, "obj-76", "flonum", "float", -0.000781, 5, "obj-75", "slider", "float", 0.0, 5, "obj-70", "toggle", "int", 1, 5, "obj-69", "flonum", "float", 0.099, 5, "obj-65", "flonum", "float", 0.0, 6, "obj-62", "pictslider", "list", 108, 106, 5, "obj-60", "flonum", "float", 0.84375, 5, "obj-58", "flonum", "float", 0.828125, 6, "obj-55", "pictslider", "list", 34, 106, 5, "obj-53", "flonum", "float", 0.265625, 5, "obj-51", "flonum", "float", 0.828125, 5, "obj-47", "multislider", "list", 1.431429, 5, "obj-45", "flonum", "float", 1.466964, 5, "obj-44", "multislider", "list", 1.466964, 6, "obj-40", "gain~", "list", 151, 10.0, 6, "obj-39", "gain~", "list", 151, 10.0, 5, "obj-37", "flonum", "float", 0.029286, 5, "obj-36", "multislider", "list", 0.029286, 5, "obj-34", "flonum", "float", 16787.322266, 5, "obj-33", "multislider", "list", 16787.322266, 5, "obj-31", "flonum", "float", -1.714286, 5, "obj-30", "multislider", "list", -1.714286, 5, "obj-28", "flonum", "float", 6.964316, 5, "obj-27", "multislider", "list", 6.964316, 5, "obj-25", "slider", "float", 11.0, 5, "obj-24", "number", "int", 26, 5, "obj-22", "multislider", "list", 0.0, 5, "<invalid>", "toggle", "int", 1, 5, "obj-18", "flonum", "float", 0.0, 5, "obj-17", "multislider", "list", 0.0, 5, "obj-15", "flonum", "float", 57.143284, 5, "obj-14", "multislider", "list", 57.143284, 5, "obj-12", "flonum", "float", 2.14375, 5, "obj-11", "multislider", "list", 2.14375, 5, "<invalid>", "toggle", "int", 1, 5, "obj-101", "toggle", "int", 0 ]
						}
, 						{
							"number" : 11,
							"data" : [ 5, "obj-96", "flonum", "float", 1.431429, 6, "obj-91", "pictslider", "list", 17, 63, 5, "obj-89", "flonum", "float", 0.132812, 5, "obj-87", "flonum", "float", 0.492188, 6, "obj-84", "pictslider", "list", 1, 1, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-80", "flonum", "float", 0.0, 5, "obj-76", "flonum", "float", -0.000781, 5, "obj-75", "slider", "float", 0.0, 5, "obj-70", "toggle", "int", 0, 5, "obj-69", "flonum", "float", -0.001, 5, "obj-65", "flonum", "float", 83.928574, 6, "obj-62", "pictslider", "list", 108, 106, 5, "obj-60", "flonum", "float", 0.84375, 5, "obj-58", "flonum", "float", 0.828125, 6, "obj-55", "pictslider", "list", 34, 106, 5, "obj-53", "flonum", "float", 0.265625, 5, "obj-51", "flonum", "float", 0.828125, 5, "obj-47", "multislider", "list", 1.431429, 5, "obj-45", "flonum", "float", 1.466964, 5, "obj-44", "multislider", "list", 1.466964, 6, "obj-40", "gain~", "list", 151, 10.0, 6, "obj-39", "gain~", "list", 151, 10.0, 5, "obj-37", "flonum", "float", 0.029286, 5, "obj-36", "multislider", "list", 0.029286, 5, "obj-34", "flonum", "float", 16787.322266, 5, "obj-33", "multislider", "list", 16787.322266, 5, "obj-31", "flonum", "float", -1.821429, 5, "obj-30", "multislider", "list", -1.821429, 5, "obj-28", "flonum", "float", 6.964316, 5, "obj-27", "multislider", "list", 6.964316, 5, "obj-25", "slider", "float", 11.0, 5, "obj-24", "number", "int", 26, 5, "obj-22", "multislider", "list", 83.928574, 5, "<invalid>", "toggle", "int", 1, 5, "obj-18", "flonum", "float", 0.0, 5, "obj-17", "multislider", "list", 0.0, 5, "obj-15", "flonum", "float", 57.143284, 5, "obj-14", "multislider", "list", 57.143284, 5, "obj-12", "flonum", "float", 2.14375, 5, "obj-11", "multislider", "list", 2.14375, 5, "<invalid>", "toggle", "int", 1, 5, "obj-101", "toggle", "int", 0 ]
						}
, 						{
							"number" : 12,
							"data" : [ 5, "obj-96", "flonum", "float", 1.715714, 6, "obj-91", "pictslider", "list", 17, 63, 5, "obj-89", "flonum", "float", 0.132812, 5, "obj-87", "flonum", "float", 0.492188, 6, "obj-84", "pictslider", "list", 1, 1, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-80", "flonum", "float", 0.0, 5, "obj-76", "flonum", "float", -0.000781, 5, "obj-75", "slider", "float", 0.0, 5, "obj-70", "toggle", "int", 1, 5, "obj-69", "flonum", "float", 0.099, 5, "obj-65", "flonum", "float", 0.0, 6, "obj-62", "pictslider", "list", 108, 106, 5, "obj-60", "flonum", "float", 0.84375, 5, "obj-58", "flonum", "float", 0.828125, 6, "obj-55", "pictslider", "list", 34, 106, 5, "obj-53", "flonum", "float", 0.265625, 5, "obj-51", "flonum", "float", 0.828125, 5, "obj-47", "multislider", "list", 1.715714, 5, "obj-45", "flonum", "float", 1.466964, 5, "obj-44", "multislider", "list", 1.466964, 6, "obj-40", "gain~", "list", 151, 10.0, 6, "obj-39", "gain~", "list", 151, 10.0, 5, "obj-37", "flonum", "float", 0.029286, 5, "obj-36", "multislider", "list", 0.029286, 5, "obj-34", "flonum", "float", 16787.322266, 5, "obj-33", "multislider", "list", 16787.322266, 5, "obj-31", "flonum", "float", -1.821429, 5, "obj-30", "multislider", "list", -1.821429, 5, "obj-28", "flonum", "float", 0.892948, 5, "obj-27", "multislider", "list", 0.892948, 5, "obj-25", "slider", "float", 220.0, 5, "obj-24", "number", "int", 444, 5, "obj-22", "multislider", "list", 0.0, 5, "<invalid>", "toggle", "int", 1, 5, "obj-18", "flonum", "float", 0.0, 5, "obj-17", "multislider", "list", 0.0, 5, "obj-15", "flonum", "float", 57.143284, 5, "obj-14", "multislider", "list", 57.143284, 5, "obj-12", "flonum", "float", 2.14375, 5, "obj-11", "multislider", "list", 2.14375, 5, "<invalid>", "toggle", "int", 1, 5, "obj-101", "toggle", "int", 0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.001, 20.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"patching_rect" : [ 668.0, 35.0, 13.0, 58.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"contdata" : 1,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"id" : "obj-11",
					"numinlets" : 1,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"numoutlets" : 2,
					"setstyle" : 1,
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 668.0, 100.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-12",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "g $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 668.0, 120.0, 30.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-13",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.001, 100.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"patching_rect" : [ 585.0, 35.0, 13.0, 58.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"contdata" : 1,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"id" : "obj-14",
					"numinlets" : 1,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"numoutlets" : 2,
					"setstyle" : 1,
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 585.0, 100.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-15",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bille-masse $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 585.0, 120.0, 77.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-16",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.0, 10.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"patching_rect" : [ 499.0, 36.0, 13.0, 58.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"contdata" : 1,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"id" : "obj-17",
					"numinlets" : 1,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"numoutlets" : 2,
					"setstyle" : 1,
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 499.0, 101.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-18",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bille-pertes $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 499.0, 121.0, 78.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-19",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.0, 100.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"patching_rect" : [ 780.0, 155.0, 13.0, 58.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"contdata" : 1,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"id" : "obj-22",
					"numinlets" : 1,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"numoutlets" : 2,
					"setstyle" : 1,
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 244.0, 151.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-24",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"mult" : 2.0,
					"min" : 4.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 285.0, 150.0, 144.0, 18.0 ],
					"orientation" : 1,
					"id" : "obj-25",
					"numinlets" : 1,
					"size" : 256.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "num-modes $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 285.0, 177.0, 102.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-26",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.0001, 10.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"patching_rect" : [ 350.0, 31.0, 13.0, 58.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"contdata" : 1,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"id" : "obj-27",
					"numinlets" : 1,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"numoutlets" : 2,
					"setstyle" : 1,
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 350.0, 96.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-28",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "plaque-pertes-const $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 350.0, 116.0, 116.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-29",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"setminmax" : [ -3.0, 3.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"patching_rect" : [ 233.0, 31.0, 13.0, 58.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"contdata" : 1,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"id" : "obj-30",
					"numinlets" : 1,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"numoutlets" : 2,
					"setstyle" : 1,
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 233.0, 96.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-31",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "plaque-pertes-freq-log $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 233.0, 116.0, 112.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-32",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"setminmax" : [ 10.0, 20000.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"patching_rect" : [ 123.0, 158.0, 13.0, 58.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"contdata" : 1,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"id" : "obj-33",
					"numinlets" : 1,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"numoutlets" : 2,
					"setstyle" : 1,
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 123.0, 226.0, 69.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-34",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "plaque-densite $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 123.0, 246.0, 90.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-35",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.001, 0.1 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"patching_rect" : [ 107.0, 48.0, 13.0, 58.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"contdata" : 1,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"id" : "obj-36",
					"numinlets" : 1,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"numoutlets" : 2,
					"setstyle" : 1,
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 107.0, 113.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-37",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "plaque-epaisseur $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 107.0, 133.0, 101.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-38",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 202.0, 364.0, 20.0, 78.0 ],
					"orientation" : 2,
					"id" : "obj-39",
					"numinlets" : 2,
					"size" : 200,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 175.0, 364.0, 20.0, 78.0 ],
					"orientation" : 2,
					"id" : "obj-40",
					"numinlets" : 2,
					"size" : 200,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 353.0, 491.0, 15.0, 15.0 ],
					"id" : "obj-43",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.01, 2.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"patching_rect" : [ 24.0, 25.0, 13.0, 58.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"contdata" : 1,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"id" : "obj-44",
					"numinlets" : 1,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"numoutlets" : 2,
					"setstyle" : 1,
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 24.0, 92.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-45",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "plaque-lg-0 $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 24.0, 112.0, 77.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-46",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.01, 2.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"patching_rect" : [ 27.0, 134.0, 13.0, 58.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"contdata" : 1,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"id" : "obj-47",
					"numinlets" : 1,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"numoutlets" : 2,
					"setstyle" : 1,
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 128.",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"patching_rect" : [ 707.0, 373.0, 39.0, 17.0 ],
					"fontsize" : 9.0,
					"id" : "obj-50",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 706.0, 394.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-51",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 128.",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"patching_rect" : [ 638.0, 371.0, 39.0, 17.0 ],
					"fontsize" : 9.0,
					"id" : "obj-52",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 638.0, 392.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-53",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "plaque-frappe-x $1 0.1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 630.0, 435.0, 101.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-54",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"imagemask" : 1,
					"outlettype" : [ "int", "int" ],
					"topmargin" : 4,
					"bottommargin" : 4,
					"patching_rect" : [ 637.0, 266.0, 100.0, 100.0 ],
					"bkgndpict" : "SliderDefaultBkgnd.pct",
					"leftvalue" : 1,
					"knobpict" : "SliderDefaultKnob.pct",
					"id" : "obj-55",
					"numinlets" : 2,
					"bottomvalue" : 1,
					"rightmargin" : 4,
					"numoutlets" : 2,
					"leftmargin" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 128.",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"patching_rect" : [ 537.0, 391.0, 39.0, 17.0 ],
					"fontsize" : 9.0,
					"id" : "obj-57",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 536.0, 412.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-58",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 128.",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"patching_rect" : [ 468.0, 389.0, 39.0, 17.0 ],
					"fontsize" : 9.0,
					"id" : "obj-59",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 468.0, 410.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-60",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "plaque-ecoute-2-x $1 0.2",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 480.0, 435.0, 111.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-61",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"imagemask" : 1,
					"outlettype" : [ "int", "int" ],
					"topmargin" : 4,
					"bottommargin" : 4,
					"patching_rect" : [ 467.0, 284.0, 100.0, 100.0 ],
					"bkgndpict" : "SliderDefaultBkgnd.pct",
					"leftvalue" : 1,
					"knobpict" : "SliderDefaultKnob.pct",
					"id" : "obj-62",
					"numinlets" : 2,
					"bottomvalue" : 1,
					"rightmargin" : 4,
					"numoutlets" : 2,
					"leftmargin" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"hidden" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 58.0, 548.0, 48.0, 17.0 ],
					"fontsize" : 9.0,
					"id" : "obj-63",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 780.0, 220.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-65",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "gain-entree $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 780.0, 240.0, 77.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-66",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 0.1",
					"linecount" : 2,
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"patching_rect" : [ 80.0, 441.0, 26.0, 27.0 ],
					"fontsize" : 9.0,
					"id" : "obj-67",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 0.001",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"patching_rect" : [ 113.0, 421.0, 44.0, 17.0 ],
					"fontsize" : 9.0,
					"id" : "obj-68",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 113.0, 443.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-69",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 59.0, 442.0, 15.0, 15.0 ],
					"id" : "obj-70",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "select 32",
					"outlettype" : [ "bang", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 59.0, 420.0, 50.0, 17.0 ],
					"fontsize" : 9.0,
					"id" : "obj-71",
					"numinlets" : 2,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "keyup",
					"outlettype" : [ "int", "int", "int", "int" ],
					"fontname" : "Arial",
					"patching_rect" : [ 14.0, 441.0, 40.0, 17.0 ],
					"fontsize" : 9.0,
					"id" : "obj-72",
					"numinlets" : 0,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "key",
					"outlettype" : [ "int", "int", "int", "int" ],
					"fontname" : "Arial",
					"patching_rect" : [ 13.0, 421.0, 40.0, 17.0 ],
					"fontsize" : 9.0,
					"id" : "obj-73",
					"numinlets" : 0,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 1280.",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"patching_rect" : [ 31.0, 348.0, 45.0, 17.0 ],
					"fontsize" : 9.0,
					"id" : "obj-74",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"min" : -1.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 31.0, 266.0, 15.0, 76.0 ],
					"orientation" : 2,
					"id" : "obj-75",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 31.0, 369.0, 49.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-76",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mallet-position $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 31.0, 389.0, 92.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-77",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 128.",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"patching_rect" : [ 812.0, 373.0, 39.0, 17.0 ],
					"fontsize" : 9.0,
					"id" : "obj-79",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 827.0, 394.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-80",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 128.",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"patching_rect" : [ 759.0, 371.0, 39.0, 17.0 ],
					"fontsize" : 9.0,
					"id" : "obj-81",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 759.0, 392.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-82",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "plaque-entree-1-x $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 750.0, 435.0, 94.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-83",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"imagemask" : 1,
					"outlettype" : [ "int", "int" ],
					"topmargin" : 4,
					"bottommargin" : 4,
					"patching_rect" : [ 758.0, 266.0, 100.0, 100.0 ],
					"bkgndpict" : "SliderDefaultBkgnd.pct",
					"leftvalue" : 1,
					"knobpict" : "SliderDefaultKnob.pct",
					"id" : "obj-84",
					"numinlets" : 2,
					"bottomvalue" : 1,
					"rightmargin" : 4,
					"numoutlets" : 2,
					"leftmargin" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 128.",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"patching_rect" : [ 419.0, 393.0, 39.0, 17.0 ],
					"fontsize" : 9.0,
					"id" : "obj-86",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 418.0, 414.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-87",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 128.",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"patching_rect" : [ 350.0, 391.0, 39.0, 17.0 ],
					"fontsize" : 9.0,
					"id" : "obj-88",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 350.0, 412.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-89",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "plaque-ecoute-1-x $1 0.5",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 345.0, 435.0, 111.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-90",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"imagemask" : 1,
					"outlettype" : [ "int", "int" ],
					"topmargin" : 4,
					"bottommargin" : 4,
					"patching_rect" : [ 349.0, 286.0, 100.0, 100.0 ],
					"bkgndpict" : "SliderDefaultBkgnd.pct",
					"leftvalue" : 1,
					"knobpict" : "SliderDefaultKnob.pct",
					"id" : "obj-91",
					"numinlets" : 2,
					"bottomvalue" : 1,
					"rightmargin" : 4,
					"numoutlets" : 2,
					"leftmargin" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s mlys.out",
					"fontname" : "Arial",
					"patching_rect" : [ 272.0, 346.0, 51.0, 17.0 ],
					"fontsize" : 9.0,
					"id" : "obj-92",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "version",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 80.0, 310.0, 43.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-93",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ctrllist",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 80.0, 292.0, 42.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-94",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "read plaque.mlys",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 80.0, 272.0, 86.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-95",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 27.0, 201.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"id" : "obj-96",
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "plaque-lg-1 $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 27.0, 221.0, 77.0, 15.0 ],
					"fontsize" : 9.0,
					"id" : "obj-97",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "modalys~ 1 2",
					"outlettype" : [ "signal", "signal", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 193.0, 302.0, 71.0, 17.0 ],
					"fontsize" : 9.0,
					"id" : "obj-98",
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Déplacer les points d'écoute",
					"linecount" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 405.0, 225.0, 100.0, 27.0 ],
					"fontsize" : 9.0,
					"id" : "obj-99",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "parameters",
					"text" : "patcher parameters",
					"fontname" : "Arial",
					"patching_rect" : [ 30.0, 30.0, 100.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-109",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 60.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 60.0, 69.0, 640.0, 480.0 ],
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
						"boxes" : [  ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-107", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
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
					"source" : [ "obj-110", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 2 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-175", 0 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 0 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-103", 0 ],
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
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-100", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 1 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 1 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
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
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
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
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 1 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-32", 0 ],
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
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 294.5, 174.0, 237.0, 174.0, 237.0, 148.0, 253.5, 148.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 1 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 187.0, 448.0, 199.0, 448.0, 199.0, 360.0, 210.0, 360.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-38", 0 ],
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
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-95", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 0 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-96", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 1 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
