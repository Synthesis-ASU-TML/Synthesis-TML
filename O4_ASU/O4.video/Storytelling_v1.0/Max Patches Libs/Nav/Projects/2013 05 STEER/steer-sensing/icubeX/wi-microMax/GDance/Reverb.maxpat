{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 368.0, 44.0, 773.0, 683.0 ],
		"bglocked" : 0,
		"defrect" : [ 368.0, 44.0, 773.0, 683.0 ],
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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 110.0, 46.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-1",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 72.0, 46.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-2",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 1. 300. 0.8 0.3",
					"patching_rect" : [ 21.0, 66.0, 94.0, 17.0 ],
					"numinlets" : 6,
					"fontsize" : 9.0,
					"id" : "obj-3",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"patching_rect" : [ 21.0, 522.0, 16.0, 15.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-4",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "delay 200",
					"patching_rect" : [ 21.0, 434.0, 49.0, 17.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-5",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"patching_rect" : [ 49.0, 353.0, 46.0, 17.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-6",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2",
					"patching_rect" : [ 49.0, 406.0, 16.0, 15.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-7",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r revtime",
					"patching_rect" : [ 146.0, 127.0, 46.0, 17.0 ],
					"numinlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-8",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r roomsize",
					"patching_rect" : [ 21.0, 22.0, 51.0, 17.0 ],
					"numinlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-9",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r volume-sound",
					"patching_rect" : [ 227.0, 515.0, 73.0, 17.0 ],
					"numinlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-10",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "receive~ sound",
					"patching_rect" : [ 198.0, 456.0, 72.0, 17.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-11",
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• canyon",
					"patching_rect" : [ 67.0, 526.0, 125.0, 17.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-12",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• cathedral",
					"patching_rect" : [ 67.0, 515.0, 125.0, 17.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-13",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• church",
					"patching_rect" : [ 67.0, 505.0, 125.0, 17.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-14",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• living room",
					"patching_rect" : [ 67.0, 494.0, 125.0, 17.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-15",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• bathroom",
					"patching_rect" : [ 67.0, 484.0, 125.0, 17.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-16",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "preset",
					"patching_rect" : [ 49.0, 483.0, 17.0, 58.0 ],
					"numinlets" : 1,
					"margin" : 4,
					"bubblesize" : 8,
					"spacing" : 2,
					"id" : "obj-17",
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-51", "flonum", "float", -11.0, 5, "obj-33", "flonum", "float", 0.48, 5, "obj-32", "flonum", "float", 0.62, 5, "obj-29", "flonum", "float", 0.6, 5, "obj-25", "flonum", "float", -13.0, 5, "obj-22", "flonum", "float", -6.0, 5, "obj-18", "toggle", "int", 0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-51", "flonum", "float", -15.0, 5, "obj-33", "flonum", "float", 0.95, 5, "obj-32", "flonum", "float", 0.18, 5, "obj-29", "flonum", "float", 1.24, 5, "obj-25", "flonum", "float", -17.0, 5, "obj-22", "flonum", "float", -3.0, 5, "obj-18", "toggle", "int", 0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-51", "flonum", "float", -9.0, 5, "obj-33", "flonum", "float", 0.69, 5, "obj-32", "flonum", "float", 0.41, 5, "obj-29", "flonum", "float", 4.85, 5, "obj-25", "flonum", "float", -11.0, 5, "obj-22", "flonum", "float", -3.0, 5, "obj-18", "toggle", "int", 0 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-51", "flonum", "float", -11.0, 5, "obj-33", "flonum", "float", 0.34, 5, "obj-32", "flonum", "float", 0.71, 5, "obj-29", "flonum", "float", 7.0, 5, "obj-25", "flonum", "float", -9.0, 5, "obj-22", "flonum", "float", -3.0, 5, "obj-18", "toggle", "int", 0 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-51", "flonum", "float", -26.0, 5, "obj-33", "flonum", "float", 0.51, 5, "obj-32", "flonum", "float", 0.43, 5, "obj-29", "flonum", "float", 103.0, 5, "obj-25", "flonum", "float", -20.0, 5, "obj-22", "flonum", "float", -5.0, 5, "obj-18", "toggle", "int", 0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 210.0, 377.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"id" : "obj-18",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• Clear the delay lines after a DSP overblow or to get rid of any remaining delay tailes.",
					"linecount" : 2,
					"patching_rect" : [ 322.0, 422.0, 313.0, 27.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-19",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"patching_rect" : [ 210.0, 421.0, 36.0, 15.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-20",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "dry $1",
					"patching_rect" : [ 210.0, 325.0, 42.0, 15.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-21",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 210.0, 306.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"minimum" : -90.0,
					"fontsize" : 9.0,
					"id" : "obj-22",
					"numoutlets" : 2,
					"maximum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• Dry level (dB): The level of the unreverberated signal. Values: -90 - 0 dB",
					"linecount" : 2,
					"patching_rect" : [ 323.0, 307.0, 301.0, 27.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-23",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tail $1",
					"patching_rect" : [ 210.0, 280.0, 40.0, 15.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-24",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 210.0, 261.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"minimum" : -90.0,
					"fontsize" : 9.0,
					"id" : "obj-25",
					"numoutlets" : 2,
					"maximum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• Bypass signal uneffected when set to 1. Can be used to compare reverb signal with original signal and to save CPU power when gverb~ is not used.",
					"linecount" : 3,
					"patching_rect" : [ 322.0, 379.0, 307.0, 38.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-26",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bypass $1",
					"patching_rect" : [ 210.0, 395.0, 59.0, 15.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-27",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 0.",
					"patching_rect" : [ 272.0, 588.0, 39.0, 17.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-28",
					"numoutlets" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"outlettype" : [ "signal" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 210.0, 128.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"minimum" : 0.1,
					"fontsize" : 9.0,
					"id" : "obj-29",
					"numoutlets" : 2,
					"maximum" : 360.0,
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "revtime $1",
					"patching_rect" : [ 210.0, 148.0, 64.0, 15.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-30",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• Reverb time (s): Reverb decay time, in seconds. 7 is a good place to start. Values: 0.1 - 360 seconds!",
					"linecount" : 2,
					"patching_rect" : [ 323.0, 128.0, 313.0, 27.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-31",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 210.0, 85.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"minimum" : 0.0,
					"fontsize" : 9.0,
					"id" : "obj-32",
					"numoutlets" : 2,
					"maximum" : 1.0,
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 211.0, 172.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"minimum" : 0.0,
					"fontsize" : 9.0,
					"id" : "obj-33",
					"numoutlets" : 2,
					"maximum" : 1.0,
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• Print the values of all parameters to the Max window.",
					"patching_rect" : [ 322.0, 352.0, 313.0, 17.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-34",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• output volume",
					"patching_rect" : [ 289.0, 556.0, 79.0, 17.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-35",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 227.0, 555.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"minimum" : 0.0,
					"fontsize" : 9.0,
					"id" : "obj-36",
					"numoutlets" : 2,
					"maximum" : 1.0,
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 0.",
					"patching_rect" : [ 198.0, 588.0, 39.0, 17.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-37",
					"numoutlets" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"outlettype" : [ "signal" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~",
					"patching_rect" : [ 199.0, 619.0, 29.0, 17.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-38",
					"numoutlets" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print",
					"patching_rect" : [ 210.0, 351.0, 38.0, 15.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-39",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "early $1",
					"patching_rect" : [ 210.0, 236.0, 46.0, 15.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-40",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bandwidth $1",
					"patching_rect" : [ 211.0, 192.0, 64.0, 15.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-41",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "damping $1",
					"patching_rect" : [ 210.0, 103.0, 64.0, 15.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-42",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "roomsize $1",
					"patching_rect" : [ 210.0, 60.0, 65.0, 15.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-43",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• click here to start DSP.",
					"patching_rect" : [ 51.0, 558.0, 125.0, 17.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-44",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 21.0, 558.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"id" : "obj-45",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gigaverb~ 300 15",
					"patching_rect" : [ 198.0, 483.0, 84.0, 17.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-46",
					"numoutlets" : 2,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• Damping: This controls the high frequency damping (a lowpass filter), values near 1 will make it sound very bright, values near 0 will make it sound very dark. Values: 0 - 1",
					"linecount" : 3,
					"patching_rect" : [ 323.0, 86.0, 316.0, 38.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-47",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• Input bandwidth: This is like a damping control for the input, it has a similar effect to the damping control, but is subtly different. Values: 0 - 1",
					"linecount" : 2,
					"patching_rect" : [ 323.0, 169.0, 314.0, 27.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-48",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• Early reflection level (dB): The quantity of early reflections (scatter reflections directly from the source). Think of Lexicons ambiance patches. Values: -90 - 0 dB",
					"linecount" : 3,
					"patching_rect" : [ 323.0, 217.0, 314.0, 38.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-49",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• Tail level (dB): The level of the classic reverb tail reflections. Values: -90 - 0 dB",
					"linecount" : 2,
					"patching_rect" : [ 323.0, 262.0, 317.0, 27.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-50",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 210.0, 217.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"minimum" : -90.0,
					"fontsize" : 9.0,
					"id" : "obj-51",
					"numoutlets" : 2,
					"maximum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 210.0, 42.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"minimum" : 1.0,
					"fontsize" : 9.0,
					"id" : "obj-52",
					"numoutlets" : 2,
					"maximum" : 300.0,
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• The size of the room, in meters. Excessivly large, and excessivly small values will make it sound a bit unrealistic. Values of around 30 sound good. Values: 1 - 300 meters (or what ever was specified as maximum)",
					"linecount" : 3,
					"patching_rect" : [ 323.0, 42.0, 314.0, 38.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-53",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
					"midpoints" : [ 236.5, 581.0, 301.5, 581.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 0,
					"midpoints" : [ 236.5, 581.0, 227.5, 581.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 2 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [ 59.5, 547.0, 187.0, 547.0, 187.0, 547.0, 236.5, 547.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-38", 1 ],
					"hidden" : 0,
					"midpoints" : [ 281.5, 615.0, 218.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
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
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 30.0, 581.0, 208.5, 581.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 219.5, 346.0, 207.5, 346.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 219.5, 301.0, 207.5, 301.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 219.5, 168.0, 207.5, 168.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 219.5, 81.0, 207.5, 81.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 219.5, 123.0, 207.5, 123.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 220.5, 213.0, 207.5, 213.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 219.5, 257.0, 207.5, 257.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 219.5, 372.0, 207.5, 372.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 219.5, 416.0, 207.5, 416.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 219.5, 448.0, 207.5, 448.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-17", 0 ],
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
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-45", 0 ],
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
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
