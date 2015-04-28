{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 8
		}
,
		"rect" : [ 36.0, 736.0, 96.0, 162.0 ],
		"bgcolor" : [ 0.414196, 0.486137, 0.324021, 0.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 0,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 0,
		"enablevscroll" : 0,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"color" : [ 0.84, 0.211971, 0.140813, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 349.261169, 496.341492, 86.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.430908, 132.847076, 86.0, 20.0 ],
					"text" : "s lightSensors"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-82",
					"linecount" : 13,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 11.930908, 436.841492, 113.845093, 172.0 ],
					"text" : "USE \"/init\" to \nrestore all\nsettings on your \narduino;\nyou must first\nsave a pattr\npreset including \nall your pin modes,\nunder preset 1;\nyou must also\nprovide pattr\nfile name as \nargument",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-69",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 11.930908, 400.068726, 128.0, 20.0 ],
					"text" : "Initialize and restore",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"id" : "obj-70",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 58.930908, 418.568726, 32.5, 16.0 ],
					"text" : "/init"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-68",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 170.285706, 485.841492, 174.0, 41.0 ],
					"text" : "arg3: initialization delay (default 3000 ms); set to more for slower-to-open patches"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 319.198822, 297.268768, 91.0, 18.0 ],
					"text" : "s from-maxuino"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS Bold",
					"fontsize" : 18.0,
					"frgb" : 0.0,
					"id" : "obj-73",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5.776001, 1.205139, 119.0, 27.0 ],
					"text" : "*FIRST STEP*",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 318.198822, 263.268768, 91.0, 18.0 ],
					"text" : "r to-maxuino"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS Bold",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 417.264893, 543.205139, 36.0, 23.0 ],
					"text" : "Info",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-221",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 386.872131, 377.420013, 73.0, 30.0 ],
					"text" : "msg's to the Serial object",
					"textcolor" : [ 0.845396, 0.84535, 0.845457, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-220",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 170.285706, 439.838989, 89.0, 18.0 ],
					"text" : "arg1: serial port"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-219",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 292.872131, 378.420013, 73.0, 30.0 ],
					"text" : "msg's to maxuino",
					"textcolor" : [ 0.845396, 0.84535, 0.845457, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-218",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 181.872131, 383.420013, 73.0, 18.0 ],
					"text" : "OSC-messages",
					"textcolor" : [ 0.845396, 0.84535, 0.845457, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"id" : "obj-217",
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
						"rect" : [ 21.0, 62.0, 753.0, 224.0 ],
						"bgcolor" : [ 0.239216, 0.282353, 0.168627, 1.0 ],
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
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"hidden" : 1,
									"id" : "obj-5",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 266.400024, 385.200012, 247.0, 28.0 ],
									"text" : ";\rmax launchbrowser http://cnmat.berkeley.edu/max"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 269.0, 84.0, 133.0, 18.0 ],
									"text" : "cnmat.berkeley.edu/max",
									"textcolor" : [ 0.141176, 0.137255, 0.509804, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
									"id" : "obj-3",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 266.0, 84.0, 133.0, 17.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"handoff" : "",
									"id" : "obj-4",
									"maxclass" : "ubutton",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "", "int" ],
									"patching_rect" : [ 266.0, 83.0, 147.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-1",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 83.999985, 446.0, 18.0 ],
									"text" : "3.  You must install the \"OSC-route\" object from CNMAT",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-97",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 507.0, 16.0, 168.0, 65.0 ],
									"text" : "2006, released under GNU GPL Gerda Strobl, Georg Holzmann Ported to Max by Marius Schebella, updated for Firmata v2 by Chris Coleman"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-133",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 11.0, 175.0, 86.0, 18.0 ],
									"text" : "by chris coleman",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-127",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 56.0, 51.0, 332.0, 30.0 ],
									"text" : "-Arduino 018 or earlier: user our included firmata\n-Arduino 019: included under examples -> Firmata -> Standard Firmata)",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-128",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 250.0, 175.0, 72.0, 18.0 ],
									"text" : " & Ali Momeni",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-129",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 98.0, 175.0, 165.0, 18.0 ],
									"text" : "http://www.digitalcoleman.com",
									"textcolor" : [ 0.141176, 0.137255, 0.509804, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
									"id" : "obj-19",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 99.0, 175.0, 152.0, 17.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"handoff" : "",
									"id" : "obj-20",
									"maxclass" : "ubutton",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "", "int" ],
									"patching_rect" : [ 99.0, 174.0, 155.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 324.0, 175.0, 112.0, 18.0 ],
									"text" : "http://alimomeni.net",
									"textcolor" : [ 0.141176, 0.137255, 0.509804, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
									"id" : "obj-13",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 321.0, 175.0, 109.0, 17.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"handoff" : "",
									"id" : "obj-130",
									"maxclass" : "ubutton",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "", "int" ],
									"patching_rect" : [ 321.0, 174.0, 106.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-82",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 128.999985, 719.0, 18.0 ],
									"text" : "5. If you still have troubles, mail to chris.d.coleman@gmail.com/batchku@gmail.com or try someone from the readme, or the Arduino Forums.",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-83",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 107.999985, 446.0, 18.0 ],
									"text" : "4. Upload the firmware onto your arduino with the Arduino programming software",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-84",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 230.0, 151.0, 133.0, 18.0 ],
									"text" : "firmata.org/wiki/Download",
									"textcolor" : [ 0.141176, 0.137255, 0.509804, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
									"id" : "obj-85",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 227.0, 151.0, 133.0, 17.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"handoff" : "",
									"id" : "obj-86",
									"maxclass" : "ubutton",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "", "int" ],
									"patching_rect" : [ 227.0, 150.0, 147.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-88",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 31.999992, 185.0, 18.0 ],
									"text" : "2. You need the firmata v.2.1 firmware",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-89",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 10.0, 190.0, 18.0 ],
									"text" : "1. General information on Arduino:",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-90",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 173.0, 10.0, 104.0, 18.0 ],
									"text" : "www.arduino.cc",
									"textcolor" : [ 0.141176, 0.137255, 0.509804, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
									"id" : "obj-91",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 172.0, 10.0, 84.0, 17.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"handoff" : "",
									"id" : "obj-92",
									"maxclass" : "ubutton",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "", "int" ],
									"patching_rect" : [ 172.0, 10.0, 84.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-165",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 151.0, 240.0, 18.0 ],
									"text" : "(C) Copyright 2006 Free Software Foundation",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"hidden" : 1,
									"id" : "obj-131",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 99.400024, 338.200012, 252.0, 28.0 ],
									"text" : ";\rmax launchbrowser http://www.digitalcoleman.com/"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"hidden" : 1,
									"id" : "obj-212",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 321.400024, 219.200012, 199.0, 28.0 ],
									"text" : ";\rmax launchbrowser http://alimomeni.net"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"hidden" : 1,
									"id" : "obj-213",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 465.400024, 172.200012, 214.0, 28.0 ],
									"text" : ";\rmax launchbrowser http://www.maxuino.org"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"hidden" : 1,
									"id" : "obj-214",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 227.400024, 300.200012, 260.0, 28.0 ],
									"text" : ";\rmax launchbrowser http://firmata.org/wiki/Download"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"hidden" : 1,
									"id" : "obj-215",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 172.400024, 256.200012, 244.0, 28.0 ],
									"text" : ";\rmax launchbrowser http://www.arduino.cc"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"hidden" : 1,
									"id" : "obj-216",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 465.400024, 13.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-212", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-130", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-213", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-216", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-214", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-215", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-92", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 291.872131, 162.318909, 64.0, 18.0 ],
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
					"text" : "p basic-info"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-206",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 11.930908, 329.338989, 122.0, 20.0 ],
					"text" : "Use the built-in GUI",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"id" : "obj-80",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 135.372131, 219.806519, 50.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS Bold",
					"fontsize" : 12.0,
					"id" : "obj-58",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 58.930908, 347.838989, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.663086, 36.08194, 53.0, 18.0 ],
					"text" : "/gui"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS Bold",
					"fontsize" : 14.0,
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 190.538147, 410.920013, 269.0, 23.0 ],
					"text" : "maxuino a maxuino-gui-pattr.json 3500",
					"varname" : "maxuino"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-6",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 170.285706, 454.838989, 176.0, 30.0 ],
					"text" : "arg2: name of pattr file (remembers hardware and pin mode settings)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 9.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 398.372009, 63.08194, 63.0, 17.0 ],
					"text" : "prepend port"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 0,
							"revision" : 8
						}
,
						"rect" : [ 10.0, 59.0, 381.0, 284.0 ],
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
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "print" ],
									"patching_rect" : [ 53.0, 93.0, 41.0, 20.0 ],
									"text" : "t print"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 90.0, 139.0, 56.0, 18.0 ],
									"text" : "route port"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "clear" ],
									"patching_rect" : [ 184.0, 164.0, 40.0, 18.0 ],
									"text" : "t clear"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 187.0, 111.0, 18.0 ],
									"text" : "prepend append"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "" ],
									"patching_rect" : [ 64.0, 115.0, 36.0, 18.0 ],
									"text" : "serial"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 164.0, 25.0, 18.0 ],
									"text" : "iter"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 64.0, 45.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 90.0, 212.0, 15.0, 15.0 ]
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
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 332.372131, 35.08194, 49.0, 17.0 ],
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
					"text" : "p devices"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 391.372009, 32.08194, 50.0, 17.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 8.0,
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 255.372131, 36.08194, 37.0, 14.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.430908, 4.08194, 37.0, 14.0 ],
					"text" : "update"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"fontname" : "Trebuchet MS",
					"fontsize" : 8.0,
					"id" : "obj-26",
					"items" : [ "Bluetooth-PDA-Sync", ",", "Bluetooth-Modem", ",", "usbmodemfd141" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 256.372131, 61.08194, 135.0, 16.0 ],
					"pattrmode" : 1,
					"presentation" : 1,
					"presentation_rect" : [ 7.430908, 18.08194, 70.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Trebuchet MS",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 262.211456, 12.58194, 122.0, 20.0 ],
					"text" : "Select Serial Port",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "gswitch2",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 144.038147, 549.932373, 39.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 164.038147, 586.932373, 100.0, 18.0 ],
					"text" : "print from-maxuino"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 0,
							"revision" : 8
						}
,
						"rect" : [ 1037.0, 886.0, 640.0, 480.0 ],
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
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 51.0, 140.0, 96.0, 18.0 ],
									"text" : "OSC-route /version"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"id" : "obj-148",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 51.0, 191.0, 65.0, 18.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"id" : "obj-150",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 51.0, 164.0, 131.0, 18.0 ],
									"text" : "sprintf firmata_version_%s"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Trebuchet MS",
									"fontsize" : 10.0,
									"id" : "obj-151",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 100.0, 90.0, 18.0 ],
									"text" : "OSC-route /board"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-9",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-10",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 225.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-148", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-148", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-151", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-151", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 270.038147, 560.932373, 53.0, 18.0 ],
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
					"text" : "p version"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"id" : "obj-149",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.038147, 585.932373, 110.0, 16.0 ],
					"text" : "firmata_version_2.30"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-22",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 181.872131, 339.69278, 284.0, 107.88678 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-14",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 247.577454, 3.08194, 225.0, 77.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-33",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5.264893, 2.111725, 250.809174, 313.157043 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"id" : "obj-38",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 87.22187, 282.267029, 67.0, 16.0 ],
					"text" : "/1/mode 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-37",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 38.404144, 29.08194, 225.368134, 32.0 ],
					"text" : "before using a pin, you must set the mode for that pin; possible values are 0-4.",
					"textcolor" : [ 0.792157, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 151.836487, 162.318909, 30.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 23.895264, 85.318909, 30.0, 18.0 ],
					"text" : "A in"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 151.836487, 189.318909, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 23.895264, 114.847076, 36.0, 18.0 ],
					"text" : "servo"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 151.836487, 176.318909, 34.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 23.895264, 101.847076, 34.0, 18.0 ],
					"text" : "pwm"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 151.836487, 147.318909, 37.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 23.895264, 70.318909, 37.0, 18.0 ],
					"text" : "D out"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 151.836487, 135.318909, 32.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 23.895264, 58.318909, 32.0, 18.0 ],
					"text" : "D in"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"disabled" : [ 0, 0, 0, 0, 0 ],
					"id" : "obj-17",
					"itemtype" : 0,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : 14,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 135.372131, 132.790741, 18.0, 72.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.430908, 58.318909, 18.0, 72.0 ],
					"size" : 5,
					"value" : 2
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"id" : "obj-112",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 135.038147, 247.806519, 91.0, 18.0 ],
					"text" : "prepend /1/mode"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"id" : "obj-111",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 16.776001, 180.657745, 109.0, 18.0 ],
					"text" : "sprintf set /%d/mode"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-64",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.776001, 113.227966, 48.0, 18.0 ],
					"text" : "sel pin #"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 10.0,
					"id" : "obj-62",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 16.776001, 132.790741, 50.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-77",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.776001, 86.841492, 177.0, 19.0 ],
					"text" : "format: /pin#/mode [0 - 4] ",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-78",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.776001, 68.841492, 101.0, 19.0 ],
					"text" : "message: \"mode\"",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Trebuchet MS Bold",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-79",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 156.776001, 3.205139, 121.0, 23.0 ],
					"text" : "Set Pin Mode",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-205",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5.264893, 326.111755, 165.809174, 51.157043 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-75",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5.264893, 436.841492, 104.809174, 173.997498 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-81",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 313.425568, 256.574005, 103.809174, 68.157043 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-74",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5.264893, 396.841492, 165.809174, 51.157043 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-243",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 135.038147, 543.205139, 256.809174, 68.157043 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-240",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 339.261169, 464.841492, 126.0, 18.0 ],
					"text" : "OSC-route /digital /analog"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 26.276001, 242.909088, 144.538147, 242.909088 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 144.538147, 276.0, 244.0, 276.0, 244.0, 326.0, 200.038147, 326.0 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 400.872009, 52.081924, 385.372131, 52.081924, 385.372131, 22.081924, 264.872131, 22.081924 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-240", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 264.872131, 52.081924, 298.372131, 52.081924, 298.372131, 31.081924, 341.872131, 31.081924 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 323.872131, 83.081924, 394.372131, 83.081924, 394.372131, 58.081924, 407.872009, 58.081924 ],
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 200.038147, 491.635681, 173.538147, 491.635681 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 200.038147, 497.135681, 279.538147, 497.135681 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-240", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 200.038147, 453.0, 348.761169, 453.0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 200.038147, 442.920044, 182.368469, 442.920044, 182.368469, 287.268768, 328.698822, 287.268768 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 68.430908, 371.0, 300.0, 371.0, 300.0, 371.0, 200.038147, 371.0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 407.872009, 194.129517, 450.038147, 194.129517 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 68.430908, 443.568726, 134.234528, 443.568726, 134.234528, 400.920013, 200.038147, 400.920013 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 327.698822, 371.0, 200.038147, 371.0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 341.872131, 55.081924, 265.872131, 55.081924 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-80", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-53::obj-125::obj-50::obj-5" : [ "A_in[16]", "A_in", 0 ],
			"obj-53::obj-125::obj-675::obj-58" : [ "live.numbox[59]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-54::obj-2" : [ "live.toggle[302]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-650::obj-58" : [ "live.numbox[69]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-667::obj-59" : [ "live.numbox[86]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-718::obj-58" : [ "live.numbox[24]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-58::obj-2" : [ "live.toggle[318]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-647::obj-58" : [ "live.numbox[93]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-696::obj-58" : [ "live.numbox[40]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-656::obj-58" : [ "live.numbox[81]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-649::obj-58" : [ "live.numbox[88]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-47::obj-2" : [ "live.toggle[331]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-694::obj-58" : [ "live.numbox[36]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-717::obj-58" : [ "live.numbox[22]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-698::obj-58" : [ "live.numbox[44]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-712::obj-58" : [ "live.numbox[12]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-707::obj-58" : [ "live.numbox[47]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-56::obj-2" : [ "live.toggle[319]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-647::obj-59" : [ "live.numbox[92]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-687::obj-58" : [ "live.numbox[67]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-45::obj-2" : [ "live.toggle[270]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-678::obj-58" : [ "live.numbox[65]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-715::obj-59" : [ "live.numbox[18]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-727::obj-59" : [ "live.numbox[27]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-715::obj-58" : [ "live.numbox[19]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-710::obj-58" : [ "live.numbox[8]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-678::obj-59" : [ "live.numbox[64]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-690::obj-58" : [ "live.numbox[28]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-644::obj-59" : [ "live.numbox[98]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-673::obj-59" : [ "live.numbox[54]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-653::obj-58" : [ "live.numbox[74]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-646::obj-58" : [ "live.numbox[94]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-672::obj-59" : [ "live.numbox[53]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-696::obj-59" : [ "live.numbox[41]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-504::obj-59" : [ "live.numbox[106]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-52::obj-5" : [ "A_in[28]", "A_in", 0 ],
			"obj-53::obj-125::obj-675::obj-59" : [ "live.numbox[58]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-504::obj-58" : [ "live.numbox[107]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-57::obj-5" : [ "A_in[25]", "A_in", 0 ],
			"obj-53::obj-125::obj-53::obj-5" : [ "A_in[23]", "A_in", 0 ],
			"obj-53::obj-125::obj-768::obj-59" : [ "live.numbox[6]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-650::obj-59" : [ "live.numbox[68]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-692::obj-59" : [ "live.numbox[32]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-657::obj-58" : [ "live.numbox[83]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-49::obj-2" : [ "live.toggle[341]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-655::obj-58" : [ "live.numbox[79]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-707::obj-59" : [ "live.numbox[46]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-48::obj-5" : [ "A_in[22]", "A_in", 0 ],
			"obj-53::obj-125::obj-714::obj-58" : [ "live.numbox[17]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-713::obj-59" : [ "live.numbox[14]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-690::obj-59" : [ "live.numbox[29]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-727::obj-58" : [ "live.numbox[26]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-644::obj-58" : [ "live.numbox[99]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-642::obj-59" : [ "live.numbox[102]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-697::obj-59" : [ "live.numbox[42]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-652::obj-58" : [ "live.numbox[73]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-671::obj-58" : [ "live.numbox[50]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-677::obj-58" : [ "live.numbox[62]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-672::obj-58" : [ "live.numbox[52]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-52::obj-2" : [ "live.toggle[329]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-648::obj-59" : [ "live.numbox[90]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-658::obj-59" : [ "live.numbox[84]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-51::obj-5" : [ "A_in[27]", "A_in", 0 ],
			"obj-53::obj-125::obj-692::obj-58" : [ "live.numbox[33]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-759::obj-58" : [ "live.numbox[5]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-56::obj-5" : [ "A_in[21]", "A_in", 0 ],
			"obj-53::obj-125::obj-694::obj-59" : [ "live.numbox[37]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-53::obj-2" : [ "live.toggle[328]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-758::obj-59" : [ "live.numbox[3]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-674::obj-58" : [ "live.numbox[57]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-649::obj-59" : [ "live.numbox[89]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-687::obj-59" : [ "live.numbox[66]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-55::obj-5" : [ "A_in[26]", "A_in", 0 ],
			"obj-53::obj-125::obj-46::obj-2" : [ "live.toggle[179]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-643::obj-59" : [ "live.numbox[100]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-714::obj-59" : [ "live.numbox[16]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-711::obj-58" : [ "live.numbox[11]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-713::obj-58" : [ "live.numbox[15]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-642::obj-58" : [ "live.numbox[103]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-718::obj-59" : [ "live.numbox[25]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-654::obj-59" : [ "live.numbox[77]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-653::obj-59" : [ "live.numbox[75]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-645::obj-59" : [ "live.numbox[96]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-648::obj-58" : [ "live.numbox[91]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-58::obj-5" : [ "A_in[20]", "A_in", 0 ],
			"obj-53::obj-125::obj-676::obj-58" : [ "live.numbox[61]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-57::obj-2" : [ "live.toggle[339]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-658::obj-58" : [ "live.numbox[85]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-646::obj-59" : [ "live.numbox[95]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-674::obj-59" : [ "live.numbox[56]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-49::obj-5" : [ "A_in[24]", "A_in", 0 ],
			"obj-53::obj-125::obj-757::obj-58" : [ "live.numbox", "live.numbox", 0 ],
			"obj-53::obj-125::obj-695::obj-58" : [ "live.numbox[38]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-670::obj-58" : [ "live.numbox[49]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-51::obj-2" : [ "live.toggle[189]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-716::obj-59" : [ "live.numbox[21]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-759::obj-59" : [ "live.numbox[4]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-50::obj-2" : [ "live.toggle[330]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-671::obj-59" : [ "live.numbox[51]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-758::obj-58" : [ "live.numbox[2]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-693::obj-59" : [ "live.numbox[35]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-55::obj-2" : [ "live.toggle[340]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-691::obj-59" : [ "live.numbox[31]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-48::obj-2" : [ "live.toggle[287]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-691::obj-58" : [ "live.numbox[30]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-63::obj-5" : [ "A_in[19]", "A_in", 0 ],
			"obj-53::obj-125::obj-711::obj-59" : [ "live.numbox[10]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-712::obj-59" : [ "live.numbox[13]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-645::obj-58" : [ "live.numbox[97]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-652::obj-59" : [ "live.numbox[72]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-677::obj-59" : [ "live.numbox[63]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-695::obj-59" : [ "live.numbox[39]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-673::obj-58" : [ "live.numbox[55]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-651::obj-59" : [ "live.numbox[70]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-59::obj-5" : [ "A_in[30]", "A_in", 0 ],
			"obj-53::obj-125::obj-651::obj-58" : [ "live.numbox[71]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-47::obj-5" : [ "A_in[29]", "A_in", 0 ],
			"obj-53::obj-125::obj-63::obj-2" : [ "live.toggle[178]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-717::obj-59" : [ "live.numbox[23]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-698::obj-59" : [ "live.numbox[45]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-54::obj-5" : [ "A_in[17]", "A_in", 0 ],
			"obj-53::obj-125::obj-757::obj-59" : [ "live.numbox[1]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-45::obj-5" : [ "A_in[18]", "A_in", 0 ],
			"obj-53::obj-125::obj-59::obj-2" : [ "live.toggle[211]", "live.toggle", 0 ],
			"obj-53::obj-125::obj-670::obj-59" : [ "live.numbox[48]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-657::obj-59" : [ "live.numbox[82]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-667::obj-58" : [ "live.numbox[87]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-697::obj-58" : [ "live.numbox[43]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-656::obj-59" : [ "live.numbox[80]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-46::obj-5" : [ "A_in[31]", "A_in", 0 ],
			"obj-53::obj-125::obj-693::obj-58" : [ "live.numbox[34]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-716::obj-58" : [ "live.numbox[20]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-655::obj-59" : [ "live.numbox[78]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-641::obj-58" : [ "live.numbox[105]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-643::obj-58" : [ "live.numbox[101]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-641::obj-59" : [ "live.numbox[104]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-710::obj-59" : [ "live.numbox[9]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-654::obj-58" : [ "live.numbox[76]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-768::obj-58" : [ "live.numbox[7]", "live.numbox", 0 ],
			"obj-53::obj-125::obj-676::obj-59" : [ "live.numbox[60]", "live.numbox", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "maxuino.maxpat",
				"bootpath" : "/Code/MaxSearchPath/maxuino_014",
				"patcherrelativepath" : "../../../../Code/MaxSearchPath/maxuino_014",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino.js",
				"bootpath" : "/Code/MaxSearchPath/maxuino_014/support",
				"patcherrelativepath" : "../../../../Code/MaxSearchPath/maxuino_014/support",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino-gui.maxpat",
				"bootpath" : "/Code/MaxSearchPath/maxuino_014/support",
				"patcherrelativepath" : "../../../../Code/MaxSearchPath/maxuino_014/support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino-Dpin-gui.maxpat",
				"bootpath" : "/Code/MaxSearchPath/maxuino_014/support",
				"patcherrelativepath" : "../../../../Code/MaxSearchPath/maxuino_014/support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino-hardware.txt",
				"bootpath" : "/Code/MaxSearchPath/maxuino_014/hardware",
				"patcherrelativepath" : "../../../../Code/MaxSearchPath/maxuino_014/hardware",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "maxuino-Apin-gui.maxpat",
				"bootpath" : "/Code/MaxSearchPath/maxuino_014/support",
				"patcherrelativepath" : "../../../../Code/MaxSearchPath/maxuino_014/support",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ArduinoMega.jpeg",
				"bootpath" : "/Code/MaxSearchPath/maxuino_014/hardware",
				"patcherrelativepath" : "../../../../Code/MaxSearchPath/maxuino_014/hardware",
				"type" : "JPEG",
				"implicit" : 1
			}
, 			{
				"name" : "OSC-route.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
