{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 6,
			"architecture" : "x86"
		}
,
		"rect" : [ 314.0, 483.0, 431.0, 283.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-8",
					"linecount" : 11,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7.209215, 116.114136, 378.0, 154.0 ],
					"presentation" : 1,
					"presentation_linecount" : 11,
					"presentation_rect" : [ 7.209215, 117.114136, 394.0, 154.0 ],
					"text" : "1. if not already connected, create wireless network \"o4\" (on computer, open up Network Settings, then select create network. create a network named o4)\n2. make sure ipad is also connected to the same network\n3. launch Mira software on iPad. if it does not automatically connect, click the green connect box on the right side of the screen. \n4. if display is not what you expect to see, click the small max/msp icon in the top right hand corner of ipad and make sure the display setting is set to \"Presentation\"\n5. if Mira is refusing to connect to computer, shut down the application and try opening it again"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7.209215, 94.114136, 350.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.209215, 94.114136, 350.0, 22.0 ],
					"text" : "INSTRUCTIONS - Mira software for ipad controller"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 78.209213, 69.114136, 234.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 78.209213, 69.114136, 234.0, 20.0 ],
					"text" : "<---- open to edit mira control system"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 51.209213, 33.043083, 148.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 51.209213, 33.043083, 148.0, 22.0 ],
					"text" : ".mira.main",
					"textcolor" : [ 0.291725, 0.262507, 0.375133, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 6,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 44.0, 1503.0, 383.0 ],
						"bglocked" : 1,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 2.0, 2.0 ],
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
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-422",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 237.261444, 147.992157, 89.0, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 175.378601, 143.778854, 31.156681, 13.0 ],
									"text" : "Presets:"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.284065, 0.252337, 0.681089, 1.0 ],
									"bgcolor2" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontface" : 1,
									"fontname" : "Arial",
									"fontsize" : 6.0,
									"gradient" : 1,
									"id" : "obj-417",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 57.0, -169.0, 33.0, 11.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 197.587204, 141.579971, 22.756744, 11.0 ],
									"text" : "soup",
									"textcolor" : [ 0.974868, 0.941438, 1.0, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-415",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 57.0, -154.0, 24.0, 20.0 ],
									"text" : "t 1"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 0.0 ],
									"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
									"fontsize" : 9.0,
									"id" : "obj-106",
									"maxclass" : "preset",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "preset", "int", "preset", "int" ],
									"patching_rect" : [ 35.999969, -124.0, 100.0, 40.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 99.999939, 386.533447, 223.0, 136.5 ],
									"preset_data" : [ 										{
											"number" : 1,
											"data" : [ 5, "obj-265", "number", "int", 0, 5, "obj-259", "slider", "float", 0.0, 11, "obj-266", "swatch", "list", 0.0, 1.0, 1.0, 1.0, 0.5, 1.0, 0.5, 5, "obj-232", "umenu", "int", 0, 5, "obj-237", "umenu", "int", 0, 5, "obj-264", "number", "int", 0, 5, "obj-263", "slider", "float", 0.0, 11, "obj-82", "swatch", "list", 0.0, 0.0, 0.0, 1.0, 0.0, 1.0, 0.0, 7, "obj-381", "multislider", "list", 0.0, 0.0, 0.0, 5, "obj-455", "toggle", "int", 0, 5, "obj-377", "toggle", "int", 0, 11, "obj-83", "swatch", "list", 0.0, 0.0, 0.0, 1.0, 0.0, 1.0, 0.0, 5, "obj-257", "number", "int", 116, 5, "obj-456", "slider", "float", 0.0, 5, "obj-239", "umenu", "int", 2, 5, "obj-243", "umenu", "int", 0, 5, "obj-256", "number", "int", 86, 5, "obj-255", "slider", "float", 4.892883, 5, "obj-253", "slider", "float", 90.75515, 11, "obj-258", "swatch", "list", 0.035872, 0.0, 0.705721, 1.0, 0.675138, 1.0, 0.352861, 11, "obj-84", "swatch", "list", 0.876923, 0.988581, 1.0, 1.0, 0.515464, 1.0, 0.938462, 5, "obj-453", "toggle", "int", 1, 7, "obj-375", "multislider", "list", 0.0, 0.0, 0.0, 5, "obj-371", "toggle", "int", 0, 5, "obj-108", "dial", "float", 65.980225, 5, "obj-454", "slider", "float", 20.0, 11, "obj-85", "swatch", "list", 0.262807, 0.138462, 1.0, 1.0, 0.690722, 1.0, 0.569231, 5, "obj-249", "number", "int", 30, 6, "obj-86", "multislider", "list", 0.0, 0.0, 5, "obj-451", "toggle", "int", 1, 5, "obj-226", "umenu", "int", 2, 5, "obj-230", "umenu", "int", 0, 5, "obj-248", "number", "int", 8, 5, "obj-247", "slider", "float", 16.255438, 5, "obj-245", "slider", "float", 76.887871, 11, "obj-250", "swatch", "list", 0.0, 0.736538, 0.398981, 1.0, 0.423616, 1.0, 0.368269, 11, "obj-56", "swatch", "list", 0.0, 0.0, 0.0, 1.0, 0.0, 1.0, 0.0, 7, "obj-362", "multislider", "list", 0.0, 0.0, 0.0, 5, "obj-352", "toggle", "int", 0, 5, "obj-452", "slider", "float", 20.0, 11, "obj-44", "swatch", "list", 0.123077, 0.015226, 0.0, 1.0, 0.020619, 1.0, 0.061538, 5, "obj-450", "toggle", "int", 1, 5, "obj-439", "slider", "float", 10.652174, 7, "obj-87", "multislider", "list", 1000.0, 671.052612, 1000.0, 5, "obj-327", "number", "int", 109, 11, "obj-29", "swatch", "list", 0.0, 0.0, 0.0, 1.0, 0.0, 1.0, 0.0, 5, "obj-134", "slider", "float", 2.052043, 5, "obj-323", "number", "int", 102, 11, "obj-330", "swatch", "list", 1.0, 0.888753, 0.845919, 1.0, 0.046333, 1.0, 0.92296, 5, "obj-441", "slider", "float", 8.532591, 5, "obj-205", "umenu", "int", 2, 5, "obj-136", "umenu", "int", 0, 5, "obj-244", "slider", "float", 73.806267, 7, "obj-276", "multislider", "list", 333.275146, 18.432915, 1000.0, 5, "obj-364", "toggle", "int", 0, 11, "obj-21", "swatch", "list", 1.0, 0.896907, 0.230769, 1.0, 0.14433, 1.0, 0.615385, 7, "obj-19", "multislider", "list", 434.210541, 789.473633, 0.0 ]
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-509",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ -14.999996, 990.0, 30.0, 20.0 ],
									"text" : "abs"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-510",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ -14.999996, 960.0, 32.5, 20.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-511",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ -195.0, 990.0, 30.0, 20.0 ],
									"text" : "abs"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-512",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ -195.0, 960.0, 32.5, 20.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-507",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ -375.0, 990.0, 30.0, 20.0 ],
									"text" : "abs"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-508",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ -375.0, 960.0, 32.5, 20.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-506",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ -555.0, 990.0, 30.0, 20.0 ],
									"text" : "abs"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-501",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ -555.0, 960.0, 32.5, 20.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-500",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -645.0, 1110.0, 96.0, 20.0 ],
									"text" : "o.prepend /slide"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-499",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -105.000031, 1065.0, 78.0, 20.0 ],
									"text" : "o.prepend /4"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-498",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -285.000031, 1065.0, 78.0, 20.0 ],
									"text" : "o.prepend /3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-497",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -465.000031, 1065.0, 78.0, 20.0 ],
									"text" : "o.prepend /2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-496",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -645.0, 1065.0, 78.0, 20.0 ],
									"text" : "o.prepend /1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-495",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -15.000031, 1020.0, 89.0, 20.0 ],
									"text" : "o.pack /enable"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-494",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -195.0, 1020.0, 89.0, 20.0 ],
									"text" : "o.pack /enable"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-493",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -375.0, 1020.0, 89.0, 20.0 ],
									"text" : "o.pack /enable"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-492",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -555.0, 1020.0, 89.0, 20.0 ],
									"text" : "o.pack /enable"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-478",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -105.000061, 1020.0, 77.0, 20.0 ],
									"text" : "o.pack /level"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-489",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -285.000031, 1020.0, 77.0, 20.0 ],
									"text" : "o.pack /level"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-477",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -465.000031, 1020.0, 77.0, 20.0 ],
									"text" : "o.pack /level"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-467",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -645.0, 1020.0, 77.0, 20.0 ],
									"text" : "o.pack /level"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-466",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -555.0, 870.0, 75.0, 20.0 ],
									"text" : "o.pack /gain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-455",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -15.0, 930.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 394.0, 316.0, 16.0, 16.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "toggle[10]",
											"parameter_shortname" : "toggle",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "toggle[10]"
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-456",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -105.000031, 960.0, 15.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 412.0, 316.0, 72.0, 16.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "slider[17]",
											"parameter_shortname" : "slider[8]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 20.0,
									"varname" : "slider[17]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-453",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -195.0, 930.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 290.0, 316.0, 16.0, 16.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "toggle[9]",
											"parameter_shortname" : "toggle",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "toggle[9]"
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-454",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -285.000031, 960.0, 15.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 308.0, 316.0, 72.0, 16.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "slider[16]",
											"parameter_shortname" : "slider[8]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 20.0,
									"varname" : "slider[16]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-451",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -375.0, 930.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 184.0, 316.0, 16.0, 16.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "toggle[8]",
											"parameter_shortname" : "toggle",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "toggle[8]"
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-452",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -465.000031, 960.0, 15.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 202.0, 316.0, 72.0, 16.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "slider[15]",
											"parameter_shortname" : "slider[8]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 20.0,
									"varname" : "slider[15]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-450",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -555.0, 930.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 80.0, 316.0, 16.0, 16.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "toggle[7]",
											"parameter_shortname" : "toggle",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "toggle[7]"
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-441",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -645.0, 960.0, 15.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 98.0, 316.0, 72.0, 16.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "slider[14]",
											"parameter_shortname" : "slider[8]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 20.0,
									"varname" : "slider[14]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-440",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -364.432739, 726.30127, 40.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 316.0, 26.0, 15.0 ],
									"text" : "slide"
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-439",
									"maxclass" : "slider",
									"min" : 0.1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -555.0, 825.0, 15.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 390.0, 150.0, 52.000011, 12.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "slider[13]",
											"parameter_shortname" : "slider[8]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 20.0,
									"varname" : "slider[13]"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-430",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -525.0, 840.0, 35.340942, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 370.0, 152.0, 35.0, 16.0 ],
									"text" : "gain",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-420",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -645.0, 870.0, 79.0, 20.0 ],
									"text" : "o.pack /reset"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-398",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -645.0, 840.0, 50.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "number[16]",
											"parameter_shortname" : "number",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "number[13]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-411",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ -645.0, 780.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-413",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -645.0, 810.0, 20.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "toggle[6]",
											"parameter_shortname" : "toggle",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "toggle[6]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.020431, 0.0, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 6.179157,
									"id" : "obj-392",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -645.0, 765.0, 50.0, 11.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 336.0, 151.0, 32.5, 11.0 ],
									"text" : "reset",
									"textcolor" : [ 0.815493, 0.815493, 0.815493, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.147928,
									"id" : "obj-388",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -84.0, -338.0, 105.0, 14.0 ],
									"text" : "vexpr $f1 * 2. @scalarmode 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.147928,
									"id" : "obj-369",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -188.0, -336.0, 105.0, 14.0 ],
									"text" : "vexpr $f1 * 2. @scalarmode 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.147928,
									"id" : "obj-368",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -294.0, -336.0, 105.0, 14.0 ],
									"text" : "vexpr $f1 * 2. @scalarmode 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.147928,
									"id" : "obj-367",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -400.0, -334.0, 105.0, 14.0 ],
									"text" : "vexpr $f1 * 2. @scalarmode 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.147928,
									"id" : "obj-366",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -506.0, -334.0, 105.0, 14.0 ],
									"text" : "vexpr $f1 * 2. @scalarmode 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.147928,
									"id" : "obj-365",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -610.0, -334.0, 105.0, 14.0 ],
									"text" : "vexpr $f1 * 2. @scalarmode 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.147928,
									"id" : "obj-342",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -714.0, -332.0, 105.0, 14.0 ],
									"text" : "vexpr $f1 * 2. @scalarmode 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-304",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -644.0, 464.0, 42.0, 20.0 ],
									"text" : "pak i i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-323",
									"maxclass" : "number",
									"maximum" : 500,
									"minimum" : 1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -644.0, 434.0, 45.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 80.0, 264.0, 45.051449, 20.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "number[14]",
											"parameter_shortname" : "number[1]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "number[1]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-327",
									"maxclass" : "number",
									"maximum" : 500,
									"minimum" : 1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -569.0, 434.0, 45.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 126.0, 264.0, 44.948547, 20.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "number[15]",
											"parameter_shortname" : "number[1]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "number[2]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-299",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 1374.0, 840.0, 79.0, 20.0 ],
									"text" : "o.pack /onoff"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-283",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 1338.0, 876.0, 211.0, 20.0 ],
									"text" : "o.prepend /light/oz/platform/state/xy/1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-282",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1526.0, 832.0, 100.0, 16.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 674.0, 314.0, 38.0, 25.0 ],
									"text" : "on/off motion",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-269",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1506.0, 828.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 652.0, 312.0, 20.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "toggle[5]",
											"parameter_shortname" : "toggle[5]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "toggle[5]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-268",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 944.0, 296.0, 100.0, 25.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 646.0, 202.0, 130.0, 16.0 ],
									"text" : "icue - position (xy control)",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-210",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 778.0, 594.0, 77.0, 20.0 ],
									"text" : "o.pack /level"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-186",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 878.0, 614.200012, 41.0, 18.0 ],
									"text" : "$1 $2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-192",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 878.0, 638.0, 72.0, 20.0 ],
									"text" : "o.pack /pos"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-123",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 882.0, 594.200012, 71.0, 20.0 ],
									"text" : "route touch"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-101",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1180.0, 586.0, 71.0, 20.0 ],
									"text" : "route touch"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.936099, 0.936071, 0.936086, 1.0 ],
									"floatoutput" : 1,
									"id" : "obj-97",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 778.0, 506.0, 20.0, 81.507355 ],
									"presentation" : 1,
									"presentation_rect" : [ 790.0, 202.0, 17.95096, 132.55217 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "slider[12]",
											"parameter_shortname" : "slider[7]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 1.0,
									"varname" : "slider[12]"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.75, 0.75, 0.75, 0.2 ],
									"id" : "obj-20",
									"maxclass" : "mira.multitouch",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 836.0, 506.0, 108.0, 80.063065 ],
									"pinch_enabled" : 0,
									"presentation" : 1,
									"presentation_rect" : [ 640.0, 198.0, 172.583466, 141.143143 ],
									"rotate_enabled" : 0,
									"swipe_enabled" : 0,
									"swipe_touch_count" : 0,
									"tap_enabled" : 0,
									"tap_tap_count" : 0,
									"tap_touch_count" : 0
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"border" : 2,
									"bordercolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"id" : "obj-4",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 940.0, 292.0, 172.583466, 142.272095 ],
									"presentation" : 1,
									"presentation_rect" : [ 640.0, 198.0, 172.583466, 141.143143 ],
									"rounded" : 4
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-491",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 465.0, 42.0, 20.0 ],
									"text" : "pak i i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-490",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -165.0, 465.0, 42.0, 20.0 ],
									"text" : "pak i i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-488",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -390.0, 465.0, 42.0, 20.0 ],
									"text" : "pak i i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-479",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 29.999977, 645.0, 85.0, 20.0 ],
									"text" : "o.pack /shape"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-480",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 29.999966, 570.0, 68.0, 20.0 ],
									"text" : "o.pack /init"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-481",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 29.999977, 494.999969, 72.0, 20.0 ],
									"text" : "o.pack /dim"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-482",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 29.999964, 390.000061, 74.0, 20.0 ],
									"text" : "o.pack /size"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-483",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 29.999964, 315.000061, 82.0, 20.0 ],
									"text" : "o.pack /alpha"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-484",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 29.999964, 225.0, 79.0, 20.0 ],
									"text" : "o.pack /color"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-485",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -0.000069, 135.0, 78.0, 20.0 ],
									"text" : "o.pack /phys"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-486",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -30.000059, 45.0, 89.0, 20.0 ],
									"text" : "o.pack /enable"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-487",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -16.0, 696.0, 78.0, 20.0 ],
									"text" : "o.prepend /4"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-468",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -165.000015, 645.0, 85.0, 20.0 ],
									"text" : "o.pack /shape"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-469",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -165.000031, 570.0, 68.0, 20.0 ],
									"text" : "o.pack /init"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-470",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -165.000015, 494.999969, 72.0, 20.0 ],
									"text" : "o.pack /dim"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-471",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -165.000031, 390.0, 74.0, 20.0 ],
									"text" : "o.pack /size"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-472",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -165.000031, 315.000031, 82.0, 20.0 ],
									"text" : "o.pack /alpha"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-473",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -165.000031, 224.999969, 79.0, 20.0 ],
									"text" : "o.pack /color"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-474",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -195.000061, 135.0, 78.0, 20.0 ],
									"text" : "o.pack /phys"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-475",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -225.000061, 44.999985, 89.0, 20.0 ],
									"text" : "o.pack /enable"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-476",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -210.000061, 690.0, 78.0, 20.0 ],
									"text" : "o.prepend /3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-457",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -390.000061, 645.0, 85.0, 20.0 ],
									"text" : "o.pack /shape"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-458",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -390.000061, 570.0, 68.0, 20.0 ],
									"text" : "o.pack /init"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-459",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -390.000061, 494.999969, 72.0, 20.0 ],
									"text" : "o.pack /dim"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-460",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -390.000061, 390.000061, 74.0, 20.0 ],
									"text" : "o.pack /size"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-461",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -390.000061, 315.000061, 82.0, 20.0 ],
									"text" : "o.pack /alpha"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-462",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -390.000061, 225.0, 79.0, 20.0 ],
									"text" : "o.pack /color"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-463",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -420.000061, 135.0, 78.0, 20.0 ],
									"text" : "o.pack /phys"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-464",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -450.000061, 44.999985, 89.0, 20.0 ],
									"text" : "o.pack /enable"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-465",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -435.0, 690.0, 78.0, 20.0 ],
									"text" : "o.prepend /2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-446",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -645.0, 645.0, 85.0, 20.0 ],
									"text" : "o.pack /shape"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-447",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -645.0, 570.0, 68.0, 20.0 ],
									"text" : "o.pack /init"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-448",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -645.0, 494.999969, 72.0, 20.0 ],
									"text" : "o.pack /dim"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-449",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -645.0, 389.999939, 74.0, 20.0 ],
									"text" : "o.pack /size"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-445",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -645.0, 314.999969, 82.0, 20.0 ],
									"text" : "o.pack /alpha"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-444",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -645.000061, 225.0, 79.0, 20.0 ],
									"text" : "o.pack /color"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-443",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -645.000061, 135.0, 78.0, 20.0 ],
									"text" : "o.pack /phys"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-442",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -675.000061, 45.0, 89.0, 20.0 ],
									"text" : "o.pack /enable"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-438",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -675.0, 690.0, 78.0, 20.0 ],
									"text" : "o.prepend /1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-437",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -675.0, 735.0, 112.0, 20.0 ],
									"text" : "o.prepend /species"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-436",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -705.0, 1155.0, 116.0, 20.0 ],
									"text" : "o.prepend /particles"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-433",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ -705.0, -495.000061, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 5.466897,
									"id" : "obj-431",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -705.0, -525.000061, 53.0, 11.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 88.287018, 141.843323, 44.0, 11.0 ],
									"text" : "zero all colors",
									"textcolor" : [ 0.823582, 0.823582, 0.823582, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-429",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ -705.0, -465.000061, 34.0, 20.0 ],
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-428",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -705.0, -435.000061, 77.0, 18.0 ],
									"text" : "saturation 1."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-426",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -615.0, -435.0, 61.0, 18.0 ],
									"text" : "0. 0. 0. 1."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-424",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -690.0, -105.0, 50.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "number",
											"parameter_shortname" : "number",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "number"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-419",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -690.0, -75.0, 79.0, 20.0 ],
									"text" : "o.pack /reset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-418",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ -690.0, -165.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-416",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -690.0, -135.0, 20.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "toggle",
											"parameter_shortname" : "toggle",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "toggle"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.020431, 0.0, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 6.179157,
									"id" : "obj-414",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -690.0, -195.0, 50.0, 11.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 137.433807, 141.579987, 32.5, 11.0 ],
									"text" : "reset",
									"textcolor" : [ 0.815493, 0.815493, 0.815493, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-412",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -585.0, -254.999985, 118.0, 20.0 ],
									"text" : "o.prepend /pressure"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-410",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -720.0, -225.0, 97.0, 20.0 ],
									"text" : "o.prepend /color"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-409",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -705.0, -254.999985, 111.0, 20.0 ],
									"text" : "o.prepend /velocity"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-408",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -705.0, -285.0, 78.0, 20.0 ],
									"text" : "o.prepend /1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-404",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 21.000031, -316.0, 91.0, 20.0 ],
									"text" : "o.pack /density"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-405",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -188.999969, -316.0, 96.0, 20.0 ],
									"text" : "o.pack /normal2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-406",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -83.999985, -316.0, 95.0, 20.0 ],
									"text" : "o.pack /inverted"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-407",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -294.0, -316.0, 96.0, 20.0 ],
									"text" : "o.pack /normal1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-402",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -400.0, -316.0, 95.0, 20.0 ],
									"text" : "o.pack /inverted"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-403",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -510.0, -315.0, 89.0, 20.0 ],
									"text" : "o.pack /normal"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-401",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -615.0, -315.0, 95.0, 20.0 ],
									"text" : "o.pack /inverted"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-400",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -705.0, -315.0, 89.0, 20.0 ],
									"text" : "o.pack /normal"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-399",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -615.0, -285.0, 78.0, 20.0 ],
									"text" : "o.prepend /2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-396",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -374.999969, -585.0, 104.0, 20.0 ],
									"text" : "o.prepend /forces"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-395",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -735.0, -45.0, 99.0, 20.0 ],
									"text" : "o.prepend /fluids"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-394",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -254.999969, -615.0, 82.0, 20.0 ],
									"text" : "o.pack /angle"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-391",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -374.999969, -615.0, 81.0, 20.0 ],
									"text" : "o.pack /slider"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-390",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -555.0, -615.0, 118.0, 20.0 ],
									"text" : "o.pack /visualization"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-389",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ -735.0, -615.0, 93.0, 20.0 ],
									"text" : "o.pack /physics"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-385",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 415.0, 540.0, 70.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 445.0, 148.0, 72.0, 21.0 ],
									"text" : "particles",
									"textcolor" : [ 0.420389, 0.035758, 0.26385, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-382",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 415.0, 390.0, 70.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.420013, 138.263336, 46.0, 21.0 ],
									"text" : "fluids",
									"textcolor" : [ 0.420389, 0.035758, 0.26385, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 16.0,
									"frgb" : 0.0,
									"id" : "obj-376",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -0.000076, 15.000029, 22.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 473.0, 194.0, 22.0, 24.0 ],
									"text" : "4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-377",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -30.000074, 15.000029, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 396.0, 194.0, 14.999998, 14.999998 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "toggle[4]",
											"parameter_shortname" : "toggle",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "toggle[4]"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-378",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 89.999939, 104.999954, 35.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 455.0, 235.0, 35.0, 16.0 ],
									"text" : "speed",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-379",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 54.999943, 104.999954, 35.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 430.0, 235.0, 35.0, 16.0 ],
									"text" : "grav 2",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-380",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 19.999941, 104.999954, 35.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 405.0, 235.0, 35.0, 16.0 ],
									"text" : "grav 1",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 0.854154, 0.854128, 0.854143, 1.0 ],
									"candicane2" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane3" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane4" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane5" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane6" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane7" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane8" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"contdata" : 1,
									"drawpeaks" : 1,
									"id" : "obj-381",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -0.000069, 74.999985, 95.0, 25.0 ],
									"peakcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 395.0, 210.0, 90.0, 25.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "multislider[20]",
											"parameter_shortname" : "multislider",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"setminmax" : [ 0.0, 1000.0 ],
									"setstyle" : 1,
									"size" : 3,
									"slidercolor" : [ 0.508575, 0.681874, 0.445586, 1.0 ],
									"spacing" : 11,
									"thickness" : 16,
									"varname" : "multislider[18]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 16.0,
									"frgb" : 0.0,
									"id" : "obj-370",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -200.000061, 14.999968, 22.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 368.0, 194.0, 22.0, 24.0 ],
									"text" : "3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-371",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -225.000061, 14.999968, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 291.0, 194.0, 14.999998, 14.999998 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "toggle[3]",
											"parameter_shortname" : "toggle",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "toggle[3]"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-372",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -120.000076, 104.999985, 35.340942, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 350.0, 235.0, 35.0, 16.0 ],
									"text" : "speed",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-373",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -150.000076, 104.999985, 35.340942, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 325.0, 235.0, 35.0, 16.0 ],
									"text" : "grav 2",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-374",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -180.000061, 104.999985, 35.340942, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 300.0, 235.0, 35.0, 16.0 ],
									"text" : "grav 1",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 0.854154, 0.854128, 0.854143, 1.0 ],
									"candicane2" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane3" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane4" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane5" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane6" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane7" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane8" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"contdata" : 1,
									"drawpeaks" : 1,
									"id" : "obj-375",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -195.000061, 74.999985, 90.0, 25.0 ],
									"peakcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 290.0, 210.0, 90.0, 25.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "multislider[19]",
											"parameter_shortname" : "multislider",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"setminmax" : [ 0.0, 1000.0 ],
									"setstyle" : 1,
									"size" : 3,
									"slidercolor" : [ 0.508575, 0.681874, 0.445586, 1.0 ],
									"spacing" : 11,
									"thickness" : 16,
									"varname" : "multislider[17]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-364",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -675.000061, 14.999998, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 81.0, 194.0, 14.999998, 14.999998 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "toggle[2]",
											"parameter_shortname" : "toggle",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "toggle[2]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 16.0,
									"frgb" : 0.0,
									"id" : "obj-346",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -425.000061, 14.999922, 22.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 263.0, 194.0, 22.0, 24.0 ],
									"text" : "2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-352",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -450.000061, 14.999922, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 185.999985, 194.0, 14.999998, 14.999998 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "toggle[1]",
											"parameter_shortname" : "toggle",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "toggle[1]"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-356",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -330.000061, 105.000015, 35.170471, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 245.0, 235.0, 35.0, 16.0 ],
									"text" : "speed",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-357",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -365.000061, 105.000015, 35.170471, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 220.0, 235.0, 35.0, 16.0 ],
									"text" : "grav 2",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-360",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -400.000061, 105.000015, 35.170471, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 195.0, 235.0, 35.0, 16.0 ],
									"text" : "grav 1",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 0.854154, 0.854128, 0.854143, 1.0 ],
									"candicane2" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane3" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane4" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane5" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane6" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane7" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane8" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"contdata" : 1,
									"drawpeaks" : 1,
									"id" : "obj-362",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -420.000061, 75.000015, 90.0, 25.0 ],
									"peakcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 185.000015, 210.0, 90.0, 25.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "multislider[12]",
											"parameter_shortname" : "multislider",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"setminmax" : [ 0.0, 1000.0 ],
									"setstyle" : 1,
									"size" : 3,
									"slidercolor" : [ 0.508575, 0.681874, 0.445586, 1.0 ],
									"spacing" : 11,
									"thickness" : 16,
									"varname" : "multislider[15]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 16.0,
									"frgb" : 0.0,
									"id" : "obj-337",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -615.000061, 15.000029, 22.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 158.0, 194.0, 22.0, 24.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-306",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -675.000061, -0.000002, 40.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 194.0, 35.0, 15.0 ],
									"text" : "enable"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-305",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -570.000061, 135.0, 30.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 208.0, 35.0, 15.0 ],
									"text" : "phys"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-292",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -575.000061, 105.000031, 34.411453, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 140.0, 235.0, 35.0, 16.0 ],
									"text" : "speed",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-290",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -610.000061, 105.000031, 35.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 114.999992, 235.0, 35.0, 16.0 ],
									"text" : "grav 2",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-289",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -645.000061, 105.000031, 35.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 89.999992, 235.0, 41.0, 16.0 ],
									"text" : "grav 1",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 0.854154, 0.854128, 0.854143, 1.0 ],
									"candicane2" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane3" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane4" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane5" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane6" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane7" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane8" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"contdata" : 1,
									"drawpeaks" : 1,
									"id" : "obj-276",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -645.000061, 75.0, 105.0, 30.0 ],
									"peakcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 80.0, 210.0, 90.0, 25.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "multislider[11]",
											"parameter_shortname" : "multislider",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"setminmax" : [ 0.0, 1000.0 ],
									"setstyle" : 1,
									"size" : 3,
									"slidercolor" : [ 0.508575, 0.681874, 0.445586, 1.0 ],
									"spacing" : 11,
									"thickness" : 16,
									"varname" : "multislider[10]"
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-259",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 29.999941, 270.0, 15.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 465.0, 284.0, 20.0, 30.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "slider[11]",
											"parameter_shortname" : "slider[8]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 100.0,
									"varname" : "slider[11]"
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-263",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 30.0, 360.0, 15.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 394.051453, 246.0, 90.0, 16.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "number[10]",
											"parameter_shortname" : "number[1]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 65.0,
									"varname" : "number[10]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-264",
									"maxclass" : "number",
									"maximum" : 500,
									"minimum" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 30.0, 435.0, 45.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 394.051453, 264.0, 45.000015, 20.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "number[11]",
											"parameter_shortname" : "number[1]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "number[11]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-265",
									"maxclass" : "number",
									"maximum" : 500,
									"minimum" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 105.0, 435.0, 50.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 439.0, 263.999939, 44.999954, 20.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "number[12]",
											"parameter_shortname" : "number[1]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "number[12]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-266",
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 29.999941, 180.0, 45.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 395.051453, 284.000031, 69.948547, 30.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "swatch[11]",
											"parameter_shortname" : "swatch",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "swatch[11]"
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-253",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -165.000061, 270.0, 15.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 360.0, 284.0, 20.0, 30.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "slider[10]",
											"parameter_shortname" : "slider[8]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 100.0,
									"varname" : "slider[10]"
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-255",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -165.0, 360.0, 15.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 289.0, 246.0, 90.0, 16.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "number[7]",
											"parameter_shortname" : "number[1]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 65.0,
									"varname" : "number[7]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-256",
									"maxclass" : "number",
									"maximum" : 500,
									"minimum" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -165.0, 435.0, 45.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 289.0, 264.0, 45.051464, 20.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "number[8]",
											"parameter_shortname" : "number[1]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "number[8]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-257",
									"maxclass" : "number",
									"maximum" : 500,
									"minimum" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -90.0, 435.0, 45.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 334.051453, 263.999939, 44.999958, 20.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "number[9]",
											"parameter_shortname" : "number[1]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "number[9]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-258",
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -165.000061, 180.0, 45.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 290.0, 284.0, 70.0, 30.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "swatch[10]",
											"parameter_shortname" : "swatch",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "swatch[10]"
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-245",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -390.000061, 270.0, 15.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 255.0, 284.0, 20.0, 30.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "slider[9]",
											"parameter_shortname" : "slider[8]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 100.0,
									"varname" : "slider[9]"
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-247",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -390.0, 360.0, 15.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 184.0, 246.0, 90.0, 16.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "number[4]",
											"parameter_shortname" : "number[1]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 65.0,
									"varname" : "number[4]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-248",
									"maxclass" : "number",
									"maximum" : 500,
									"minimum" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -390.0, 435.0, 45.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 184.0, 264.0, 45.051449, 20.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "number[5]",
											"parameter_shortname" : "number[1]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "number[5]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-249",
									"maxclass" : "number",
									"maximum" : 500,
									"minimum" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -315.0, 435.0, 45.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 229.051453, 264.0, 44.948547, 20.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "number[6]",
											"parameter_shortname" : "number[1]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "number[6]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-250",
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -390.000061, 180.0, 45.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 185.0, 284.000031, 70.0, 30.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "swatch[9]",
											"parameter_shortname" : "swatch",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "swatch[9]"
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-244",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -645.000061, 270.0, 15.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 150.0, 284.0, 19.999998, 30.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "slider[8]",
											"parameter_shortname" : "slider[8]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 100.0,
									"varname" : "slider[8]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"id" : "obj-232",
									"items" : [ "tri_grid", ",", "quad_grid", ",", "points", ",", "lines", ",", "line_strip", ",", "line_loop", ",", "triangles", ",", "tri_fan", ",", "quads", ",", "quad_strip", ",", "polygon", ",", "lines_adjacency", ",", "line_strip_adjacency", ",", "triangles_adjacency", ",", "triangle_strip_adjacency" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 30.0, 615.0, 95.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 394.0, 180.0, 89.948547, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "umenu[5]",
											"parameter_shortname" : "umenu",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "umenu[5]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"id" : "obj-237",
									"items" : [ "noise", ",", "grid" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 30.0, 540.0, 95.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 394.000061, 164.0, 89.948547, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "umenu[6]",
											"parameter_shortname" : "umenu",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "umenu[6]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"id" : "obj-239",
									"items" : [ "tri_grid", ",", "quad_grid", ",", "points", ",", "lines", ",", "line_strip", ",", "line_loop", ",", "triangles", ",", "tri_fan", ",", "quads", ",", "quad_strip", ",", "polygon", ",", "lines_adjacency", ",", "line_strip_adjacency", ",", "triangles_adjacency", ",", "triangle_strip_adjacency" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -165.0, 615.0, 90.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 289.0, 180.0, 90.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "umenu[7]",
											"parameter_shortname" : "umenu",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "umenu[7]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"id" : "obj-243",
									"items" : [ "noise", ",", "grid" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -165.0, 540.0, 90.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 289.0, 164.0, 90.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "umenu[8]",
											"parameter_shortname" : "umenu",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "umenu[8]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"id" : "obj-226",
									"items" : [ "tri_grid", ",", "quad_grid", ",", "points", ",", "lines", ",", "line_strip", ",", "line_loop", ",", "triangles", ",", "tri_fan", ",", "quads", ",", "quad_strip", ",", "polygon", ",", "lines_adjacency", ",", "line_strip_adjacency", ",", "triangles_adjacency", ",", "triangle_strip_adjacency" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -390.0, 615.0, 90.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 184.0, 180.0, 90.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "umenu[3]",
											"parameter_shortname" : "umenu",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "umenu[3]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"id" : "obj-230",
									"items" : [ "noise", ",", "grid" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -390.0, 540.0, 90.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 184.0, 164.0, 89.999992, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "umenu[4]",
											"parameter_shortname" : "umenu",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "umenu[4]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-207",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -555.0, 615.0, 35.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 182.0, 33.0, 15.0 ],
									"text" : "shape"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"id" : "obj-205",
									"items" : [ "tri_grid", ",", "quad_grid", ",", "points", ",", "lines", ",", "line_strip", ",", "line_loop", ",", "triangles", ",", "tri_fan", ",", "quads", ",", "quad_strip", ",", "polygon", ",", "lines_adjacency", ",", "line_strip_adjacency", ",", "triangles_adjacency", ",", "triangle_strip_adjacency" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -645.0, 615.0, 85.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 80.000008, 180.0, 90.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "umenu[2]",
											"parameter_shortname" : "umenu",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "umenu[2]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-188",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -584.0, 180.0, 40.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 283.0, 26.0, 15.0 ],
									"text" : "color"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"id" : "obj-136",
									"items" : [ "noise", ",", "grid" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -645.0, 540.0, 85.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 80.0, 164.0, 90.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "umenu",
											"parameter_shortname" : "umenu",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "umenu"
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-134",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -630.0, 345.0, 15.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 80.0, 246.0, 90.0, 16.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "number[3]",
											"parameter_shortname" : "number[1]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 65.0,
									"varname" : "number[3]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-133",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -510.0, 360.0, 35.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 250.0, 23.0, 15.0 ],
									"text" : "size"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-112",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -549.0, 464.0, 23.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 49.000004, 268.999939, 23.0, 15.0 ],
									"text" : "dim"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-102",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -555.0, 540.0, 35.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 168.0, 24.0, 15.0 ],
									"text" : "init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-330",
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -644.0, 184.0, 45.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 80.0, 284.0, 70.0, 30.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "swatch[8]",
											"parameter_shortname" : "swatch",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "swatch[8]"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-182",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -555.0, -705.0, 90.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 185.0, 18.0, 103.0, 21.0 ],
									"text" : "visualization",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-181",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -374.999969, -705.0, 105.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 360.0, 18.0, 99.0, 21.0 ],
									"text" : "forces",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-165",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -69.000046, -355.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 370.0, 93.0, 45.0, 16.0 ],
									"text" : "inverted",
									"textcolor" : [ 0.420389, 0.035758, 0.26385, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-162",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -174.000031, -355.0, 46.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 320.0, 93.0, 47.0, 16.0 ],
									"text" : "normal 2",
									"textcolor" : [ 0.420389, 0.035758, 0.26385, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-161",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -279.000031, -355.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 270.0, 93.0, 50.0, 16.0 ],
									"text" : "normal 1",
									"textcolor" : [ 0.420389, 0.035758, 0.26385, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-156",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -329.999969, -540.0, 65.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 270.0, 83.0, 63.0, 21.0 ],
									"text" : "pressure",
									"textcolor" : [ 0.420389, 0.035758, 0.26385, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-143",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -495.000061, -354.0, 40.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 160.0, 93.0, 55.0, 16.0 ],
									"text" : "normal",
									"textcolor" : [ 0.420389, 0.035758, 0.26385, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-140",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -600.000061, -354.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 99.999939, 93.0, 45.0, 16.0 ],
									"text" : "inverted",
									"textcolor" : [ 0.420389, 0.035758, 0.26385, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-135",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -705.0, -555.0, 70.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 50.0, 83.0, 72.0, 21.0 ],
									"text" : "velocity 1",
									"textcolor" : [ 0.420389, 0.035758, 0.26385, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-114",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -385.000061, -355.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 210.0, 93.0, 55.0, 16.0 ],
									"text" : "inverted",
									"textcolor" : [ 0.420389, 0.035758, 0.26385, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-113",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -510.0, -540.0, 70.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 160.0, 83.0, 79.0, 21.0 ],
									"text" : "velocity 2",
									"textcolor" : [ 0.420389, 0.035758, 0.26385, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-111",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -690.000061, -354.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 50.0, 93.0, 45.0, 16.0 ],
									"text" : "normal",
									"textcolor" : [ 0.420389, 0.035758, 0.26385, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-110",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -14.999935, -540.0, 55.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 430.0, 83.0, 64.0, 21.0 ],
									"text" : "density",
									"textcolor" : [ 0.420389, 0.035758, 0.26385, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-109",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -254.999969, -675.0, 40.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 465.0, 68.0, 45.0, 16.0 ],
									"text" : "angle",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"degrees" : 360,
									"floatoutput" : 1,
									"id" : "obj-108",
									"maxclass" : "dial",
									"mult" : 0.01,
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -254.999969, -660.0, 30.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 460.0, 33.0, 35.0, 35.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "dial",
											"parameter_shortname" : "dial",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 100.0,
									"varname" : "dial",
									"vtracking" : 0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-107",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -419.999969, -675.0, 40.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 304.0, 68.0, 35.0, 16.0 ],
									"text" : "vFade",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-104",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -464.999969, -675.0, 40.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 252.0, 68.0, 40.0, 16.0 ],
									"text" : "vBlend",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-103",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -555.0, -675.0, 40.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 202.0, 68.0, 40.0, 16.0 ],
									"text" : "dBlend",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-100",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1283.795044, 275.885742, 31.0, 35.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 923.758179, 178.137238, 51.413803, 21.0 ],
									"text" : "house lights (master)",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-98",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1268.795044, 260.885742, 31.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 858.758179, 178.137238, 51.413803, 14.0 ],
									"text" : "Garth's World",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-93",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -314.999969, -675.0, 40.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 415.0, 68.0, 45.0, 16.0 ],
									"text" : "gravity",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-96",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -359.999969, -675.0, 40.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 380.0, 68.0, 45.0, 16.0 ],
									"text" : "temp",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-91",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -615.0, -675.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 135.0, 68.0, 45.0, 16.0 ],
									"text" : "vorticity",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-90",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -675.0, -675.0, 50.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 95.0, 68.0, 45.0, 16.0 ],
									"text" : "viscosity",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-89",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -735.0, -675.0, 50.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 60.0, 68.0, 45.0, 16.0 ],
									"text" : "timestep",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-88",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -735.0, -705.0, 60.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 50.0, 17.999994, 98.0, 21.0 ],
									"text" : "physics",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 0.854154, 0.854128, 0.854143, 1.0 ],
									"candicane2" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane3" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane4" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane5" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane6" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane7" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane8" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"contdata" : 1,
									"drawpeaks" : 1,
									"id" : "obj-87",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -555.0, -660.0, 180.0, 30.0 ],
									"peakcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 185.000015, 33.0, 160.0, 35.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "multislider[9]",
											"parameter_shortname" : "multislider",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"setminmax" : [ 0.0, 1000.0 ],
									"setstyle" : 1,
									"size" : 3,
									"slidercolor" : [ 0.508575, 0.681874, 0.445586, 1.0 ],
									"spacing" : 11,
									"thickness" : 16,
									"varname" : "multislider[8]"
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 0.854154, 0.854128, 0.854143, 1.0 ],
									"candicane2" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane3" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane4" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane5" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane6" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane7" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane8" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"contdata" : 1,
									"drawpeaks" : 1,
									"id" : "obj-86",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -374.999969, -660.0, 105.0, 30.0 ],
									"peakcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 365.0, 33.0, 85.0, 34.999992 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "multislider[5]",
											"parameter_shortname" : "multislider",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"setminmax" : [ 0.0, 1000.0 ],
									"setstyle" : 1,
									"size" : 2,
									"slidercolor" : [ 0.508575, 0.681874, 0.445586, 1.0 ],
									"spacing" : 11,
									"thickness" : 16,
									"varname" : "multislider[7]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 20.999985, -385.0, 45.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 430.0, 103.0, 65.0, 30.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "swatch[4]",
											"parameter_shortname" : "swatch",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "swatch[4]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -84.000031, -385.0, 45.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 370.0, 103.0, 44.999947, 30.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "swatch[5]",
											"parameter_shortname" : "swatch",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "swatch[5]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -189.000015, -385.0, 45.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 320.0, 103.0, 44.999947, 30.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "swatch[6]",
											"parameter_shortname" : "swatch",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "swatch[6]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -294.000031, -385.0, 45.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 270.0, 103.0, 44.999947, 30.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "swatch[7]",
											"parameter_shortname" : "swatch",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "swatch[7]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -400.000061, -385.0, 45.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 210.0, 103.0, 44.999947, 30.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "swatch[3]",
											"parameter_shortname" : "swatch",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "swatch[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -510.000061, -384.0, 45.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 159.999939, 103.0, 44.999947, 30.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "swatch[2]",
											"parameter_shortname" : "swatch",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "swatch[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -615.000061, -384.0, 45.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 99.999939, 103.0, 44.999947, 30.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "swatch[1]",
											"parameter_shortname" : "swatch",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "swatch[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -705.000061, -384.0, 45.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 50.0, 103.0, 44.999947, 30.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "swatch",
											"parameter_shortname" : "swatch",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "swatch"
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 0.854154, 0.854128, 0.854143, 1.0 ],
									"candicane2" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane3" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane4" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane5" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane6" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane7" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane8" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"contdata" : 1,
									"drawpeaks" : 1,
									"id" : "obj-19",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ -735.0, -660.0, 165.0, 30.0 ],
									"peakcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 50.000011, 33.0, 120.0, 35.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "multislider[17]",
											"parameter_shortname" : "multislider",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"setminmax" : [ 0.0, 1000.0 ],
									"setstyle" : 1,
									"size" : 3,
									"slidercolor" : [ 0.508575, 0.681874, 0.445586, 1.0 ],
									"spacing" : 11,
									"thickness" : 16,
									"varname" : "multislider[4]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-3",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1253.795044, 245.885742, 29.0, 35.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 793.758179, 178.137238, 51.413803, 21.0 ],
									"text" : "video - velocity field",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-14",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1390.0, 252.0, 15.0, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 835.354187, 256.83136, 15.0, 13.0 ],
									"text" : "5",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"focusbordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"id" : "obj-39",
									"ignoreclick" : 1,
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1385.0, 252.0, 15.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 830.354187, 251.83136, 15.0, 15.0 ],
									"rounded" : 100.0,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.toggle[17]",
											"parameter_shortname" : "live.toggle",
											"parameter_type" : 2,
											"parameter_mmax" : 1.0,
											"parameter_enum" : [ "off", "on" ]
										}

									}
,
									"varname" : "live.toggle[17]"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-254",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -735.0, 1200.0, 89.0, 20.0 ],
									"text" : "s video-control"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-225",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1118.0, 296.0, 100.0, 25.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 820.647278, 199.65657, 130.0, 16.0 ],
									"text" : "nodes - workspace (xy control)",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-361",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1046.54895, 459.516937, 150.0, 20.0 ],
									"text" : "nodes level"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-358",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 1415.845947, 645.06543, 211.0, 20.0 ],
									"text" : "o.prepend /light/oz/platform/state/xy/2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-359",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 1415.845947, 619.154846, 77.0, 20.0 ],
									"text" : "o.pack /level"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.936099, 0.936071, 0.936086, 1.0 ],
									"floatoutput" : 1,
									"id" : "obj-355",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1231.969971, 515.158569, 20.0, 81.507355 ],
									"presentation" : 1,
									"presentation_rect" : [ 965.279785, 200.637543, 17.95096, 132.55217 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "slider[7]",
											"parameter_shortname" : "slider[7]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 1.0,
									"varname" : "slider[7]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-351",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1298.795044, 290.885742, 29.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1022.449402, 365.446045, 44.413803, 14.0 ],
									"text" : "blackbox 5",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-350",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1283.795044, 275.885742, 29.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 966.484375, 365.446045, 44.413803, 14.0 ],
									"text" : "blackbox 4",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-349",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1268.795044, 260.885742, 29.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 911.305542, 365.446045, 44.413803, 14.0 ],
									"text" : "blackbox 3",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-348",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1253.795044, 245.885742, 29.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 854.697144, 365.446045, 44.413803, 14.0 ],
									"text" : "blackbox 2",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-347",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1238.795044, 230.885742, 29.0, 42.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 733.758179, 178.137238, 43.0, 28.0 ],
									"text" : "video - fluids movement",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-343",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1819.790771, 1123.885864, 96.0, 20.0 ],
									"text" : "s #0-ipadMotion"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-340",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 1819.790771, 1082.661743, 149.0, 20.0 ],
									"text" : "o.prepend /ipad/oz/motion"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-338",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 1819.790771, 1041.661743, 287.0, 20.0 ],
									"text" : "o.pack /rotation /compass /accel /orientation /gravity"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-302",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 2534.210693, 848.661743, 107.0, 20.0 ],
									"text" : "o.prepend /gravity"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-303",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 2534.210693, 813.661743, 84.0, 20.0 ],
									"text" : "o.pack /x /y /z"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-301",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 2534.210693, 762.661743, 149.0, 21.0 ],
									"text" : "mira.mo.gravity"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-300",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 1646.810791, 710.596436, 814.919922, 20.0 ],
									"text" : "t l l l l l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-298",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 2243.750732, 844.661743, 127.0, 20.0 ],
									"text" : "o.prepend /orientation"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-291",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 2044.770752, 845.661743, 99.0, 20.0 ],
									"text" : "o.prepend /accel"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-293",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 2044.770752, 810.661743, 84.0, 20.0 ],
									"text" : "o.pack /x /y /z"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-280",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 1845.790771, 845.661743, 119.0, 20.0 ],
									"text" : "o.prepend /compass"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-147",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 1646.810791, 845.661743, 93.0, 20.0 ],
									"text" : "o.pack /rotation"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-284",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 1845.790771, 810.661743, 84.0, 20.0 ],
									"text" : "o.pack /x /y /z"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-99",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 1646.810791, 810.661743, 83.0, 20.0 ],
									"text" : "o.pack /x /y /z"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 2243.750732, 809.661743, 138.0, 21.0 ],
									"text" : "o.pack /roll /pitch /yaw"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 2243.750732, 762.661743, 257.0, 21.0 ],
									"text" : "mira.mo.orientation"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 1845.790771, 762.661743, 181.5, 21.0 ],
									"text" : "mira.mo.compass"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 2044.770752, 762.661743, 149.0, 21.0 ],
									"text" : "mira.mo.accel"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 1646.810791, 762.661743, 147.0, 21.0 ],
									"text" : "mira.mo.rotationrate"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-58",
									"linecount" : 11,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 2537.190674, 488.06543, 397.0, 166.0 ],
									"text" : "accel <x> <y> <z> <timestamp (ts)> <device> (in G)\ncompass <x> <y> <z> <accuracy> <ts> <device> (in micro teslas)\ngravity <x> <y> <z> <ts> <device> (normalized gravity vector)\norientation <roll> <pitch> <yaw> <ts> <device>(in radians)\nrotationrate <x> <y> <z> <ts> <device> (angular accel in radians)\n\nrawaccel <x> <y> <z> <ts> <device> (in G)\nrawgyro <x> <y> <z> <ts> <device> (angular accel in radians)\nrawmagnet <x> <y> <z> <ts> <device> (in micro teslas)\n\n\n"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1646.810791, 679.000122, 76.0, 21.0 ],
									"text" : "mira.motion"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1639.418091, 568.596436, 146.0, 16.0 ],
									"text" : "sprintf /light/oz/platform%s %s"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1652.303955, 645.06543, 173.0, 20.0 ],
									"text" : "sprintf /state/rhyth/user/add %f"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-50",
									"linecount" : 2,
									"maxclass" : "o.message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1320.0, 778.0, 150.0, 33.0 ],
									"text" : "/light/oz/platform/state/xy/1/pos 0.399464 0.321311",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 1370.0, 740.0, 211.0, 20.0 ],
									"text" : "o.prepend /light/oz/platform/state/xy/1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-47",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1366.790771, 662.885864, 41.0, 18.0 ],
									"text" : "$1 $2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 1366.790771, 686.685852, 72.0, 20.0 ],
									"text" : "o.pack /pos"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1010.0, 608.0, 71.0, 20.0 ],
									"text" : "route touch"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-95",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 940.860352, 274.195435, 67.823418, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 390.0, 430.0, 67.823418, 16.0 ],
									"text" : "OUTPUT",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-326",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1223.795044, 215.885742, 34.0, 28.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 673.758179, 178.137238, 44.0, 21.0 ],
									"text" : "sound - interaction",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-322",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1047.460938, 211.385742, 32.0, 28.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 613.758179, 178.137238, 45.852879, 21.0 ],
									"text" : "automation (forest)",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.0,
									"frgb" : 0.0,
									"id" : "obj-307",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1580.08374, 596.665894, 16.588469, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 791.188416, 371.09964, 20.800095, 14.0 ],
									"text" : "16",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.0,
									"frgb" : 0.0,
									"id" : "obj-308",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1563.495117, 596.665894, 16.588469, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 774.00769, 371.09964, 20.800095, 14.0 ],
									"text" : "15",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.0,
									"frgb" : 0.0,
									"id" : "obj-309",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1546.906738, 596.665894, 16.588469, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 756.670044, 371.09964, 20.800095, 14.0 ],
									"text" : "14",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.0,
									"frgb" : 0.0,
									"id" : "obj-310",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1530.318115, 596.665894, 16.588469, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 739.532715, 371.09964, 20.800095, 14.0 ],
									"text" : "13",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.0,
									"frgb" : 0.0,
									"id" : "obj-311",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1513.729736, 596.665894, 16.588469, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 723.732605, 371.09964, 20.800095, 14.0 ],
									"text" : "12",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.0,
									"frgb" : 0.0,
									"id" : "obj-312",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1497.141113, 596.665894, 16.588469, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 706.444214, 371.09964, 20.800095, 14.0 ],
									"text" : "11",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.0,
									"frgb" : 0.0,
									"id" : "obj-315",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1480.552734, 596.665894, 16.588469, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 687.932556, 371.09964, 16.135021, 14.0 ],
									"text" : "10",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.0,
									"frgb" : 0.0,
									"id" : "obj-321",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1463.964111, 596.665894, 16.588469, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 673.453918, 371.09964, 14.0, 14.0 ],
									"text" : "9",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.0,
									"frgb" : 0.0,
									"id" : "obj-294",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1449.022949, 596.665894, 16.588469, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 657.453918, 371.09964, 14.0, 14.0 ],
									"text" : "8",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.0,
									"frgb" : 0.0,
									"id" : "obj-295",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1432.434326, 596.665894, 16.588469, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 640.453918, 371.09964, 14.0, 14.0 ],
									"text" : "7",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.0,
									"frgb" : 0.0,
									"id" : "obj-296",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1415.845947, 596.665894, 16.588469, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 622.50061, 371.09964, 14.0, 14.0 ],
									"text" : "6",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.0,
									"frgb" : 0.0,
									"id" : "obj-297",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1399.257324, 596.665894, 16.588469, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 603.50061, 371.09964, 14.0, 14.0 ],
									"text" : "5",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.0,
									"frgb" : 0.0,
									"id" : "obj-287",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1382.668945, 596.665894, 16.588469, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 588.50061, 371.09964, 14.0, 14.0 ],
									"text" : "4",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.0,
									"frgb" : 0.0,
									"id" : "obj-288",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1366.080322, 596.665894, 16.588469, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 572.042908, 371.09964, 14.0, 14.0 ],
									"text" : "3",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.0,
									"frgb" : 0.0,
									"id" : "obj-286",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1349.752686, 596.665894, 16.588469, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 555.094238, 371.09964, 14.0, 14.0 ],
									"text" : "2",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 7.0,
									"frgb" : 0.0,
									"id" : "obj-227",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1333.164062, 596.665894, 16.588469, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 536.094238, 371.09964, 14.0, 14.0 ],
									"text" : "1",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 0.890901, 0.890901, 0.890901, 1.0 ],
									"candicane2" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"candicane3" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"candicane4" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"candicane5" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"candicane6" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"candicane7" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"candicane8" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"candycane" : 8,
									"drawpeaks" : 1,
									"id" : "obj-16",
									"ignoreclick" : 1,
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1333.164062, 464.621857, 263.508026, 132.044067 ],
									"peakcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 389.0, 430.0, 103.905762, 143.044052 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "multislider[7]",
											"parameter_shortname" : "multislider",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"setminmax" : [ 0.0, 255.0 ],
									"setstyle" : 1,
									"size" : 48,
									"slidercolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"spacing" : 3,
									"thickness" : 50,
									"varname" : "multislider[6]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-285",
									"maxclass" : "newobj",
									"numinlets" : 16,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 6,
											"architecture" : "x86"
										}
,
										"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Helvetica",
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
													"id" : "obj-62",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 533.564819, 510.081177, 50.0, 18.0 ],
													"text" : "7 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-57",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 415.425049, 478.563232, 71.0, 20.0 ],
													"text" : "prepend 16"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 415.425049, 455.002625, 71.0, 20.0 ],
													"text" : "prepend 15"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 415.425049, 431.442078, 71.0, 20.0 ],
													"text" : "prepend 14"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-54",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 415.425049, 407.88147, 71.0, 20.0 ],
													"text" : "prepend 13"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 415.425049, 384.320923, 71.0, 20.0 ],
													"text" : "prepend 12"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-50",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 415.425049, 360.760315, 70.0, 20.0 ],
													"text" : "prepend 11"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-49",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 415.425049, 337.199768, 71.0, 20.0 ],
													"text" : "prepend 10"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-47",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 415.425049, 313.63916, 65.0, 20.0 ],
													"text" : "prepend 9"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-45",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 415.425049, 290.078613, 65.0, 20.0 ],
													"text" : "prepend 8"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-44",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 415.425049, 266.518005, 65.0, 20.0 ],
													"text" : "prepend 7"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-41",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 415.425049, 242.957428, 65.0, 20.0 ],
													"text" : "prepend 6"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-37",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 415.425049, 219.396835, 65.0, 20.0 ],
													"text" : "prepend 5"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-35",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 415.425049, 195.836243, 65.0, 20.0 ],
													"text" : "prepend 4"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 415.425049, 172.27565, 65.0, 20.0 ],
													"text" : "prepend 3"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 415.425049, 148.715057, 65.0, 20.0 ],
													"text" : "prepend 2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 415.425049, 100.0, 65.0, 20.0 ],
													"text" : "prepend 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-58",
													"maxclass" : "fpic",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 184.758591, 383.76236, 16.253944 ],
													"pic" : "line_yellow.png",
													"presentation" : 1,
													"presentation_rect" : [ 755.822754, 132.850403, 383.76236, 16.253944 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-253",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 415.425049, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-255",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 445.425049, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-263",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 475.425049, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-264",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 505.425049, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-265",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 535.425049, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-266",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 565.425049, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-268",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 595.425049, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-269",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 625.425049, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-272",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 655.425049, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-274",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 685.425049, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-276",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 715.425049, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-280",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 745.425049, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-281",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 775.425049, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-282",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 805.425049, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-283",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 835.425049, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-284",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 865.425049, 40.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-253", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-255", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-263", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-264", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-265", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-266", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-268", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-45", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-269", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-272", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-274", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-50", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-276", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-280", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-281", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-282", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-283", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-284", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-44", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-45", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-47", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-50", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-57", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 1308.320923, 292.072693, 305.042145, 20.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Helvetica",
										"default_fontsize" : 10.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Helvetica",
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p individual lights"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-336",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 869.622925, 282.450562, 39.0, 24.0 ],
									"text" : "  end rhythm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-335",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 826.632446, 282.950562, 39.0, 24.0 ],
									"text" : "   tap rhythm"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.913725, 0.913725, 0.913725, 0.0 ],
									"id" : "obj-334",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 863.251892, 274.195435, 41.510292, 41.510292 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.913725, 0.913725, 0.913725, 0.0 ],
									"id" : "obj-333",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 822.632446, 274.195435, 41.510292, 41.510292 ]
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgoncolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontface" : 0,
									"fontsize" : 8.0,
									"id" : "obj-332",
									"maxclass" : "live.tab",
									"num_lines_patching" : 1,
									"num_lines_presentation" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 703.18335, 389.847626, 46.71637, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.tab[11]",
											"parameter_shortname" : "live.tab",
											"parameter_type" : 2,
											"parameter_enum" : [ "1", "2" ],
											"parameter_unitstyle" : 0
										}

									}
,
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "live.tab[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-331",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 819.915405, 312.430817, 116.704834, 10.0 ],
									"pic" : "line_yellow.png"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgoncolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontface" : 0,
									"fontsize" : 8.0,
									"id" : "obj-329",
									"maxclass" : "live.tab",
									"num_lines_patching" : 3,
									"num_lines_presentation" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 691.095032, 291.941406, 54.71637, 47.107784 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.tab[7]",
											"parameter_shortname" : "live.tab",
											"parameter_type" : 2,
											"parameter_enum" : [ "ENV-1", "ENV-2", "ENV-3" ],
											"parameter_unitstyle" : 0
										}

									}
,
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "live.tab[7]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-328",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1868.890747, 252.027863, 26.0, 16.0 ],
									"text" : "loop",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-325",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1848.890747, 272.917633, 175.0, 20.0 ],
									"text" : "sprintf /state/rhyth/user/loop %i"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 1.0, 0.999974, 0.999991, 1.0 ],
									"activebgoncolor" : [ 0.966656, 0.790993, 0.336221, 1.0 ],
									"fontsize" : 8.0,
									"id" : "obj-324",
									"maxclass" : "live.text",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1849.890747, 252.027863, 21.0, 13.0 ],
									"rounded" : 4.0,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.text",
											"parameter_shortname" : "live.text",
											"parameter_type" : 2,
											"parameter_mmax" : 1.0,
											"parameter_enum" : [ "val1", "val2" ]
										}

									}
,
									"text" : "OFF",
									"texton" : "ON",
									"varname" : "live.text"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-320",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1903.890747, 300.742889, 47.0, 16.0 ],
									"text" : "transform",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-319",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 2060.635986, 250.884918, 96.981049, 16.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 1975.509521, 365.096008, 67.823418, 25.0 ],
									"text" : "random grouping",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-318",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1679.313232, 404.122284, 96.981049, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 532.094238, 353.286163, 67.823418, 16.0 ],
									"text" : "+ time in ms",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-317",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1680.997437, 354.296539, 96.981049, 16.0 ],
									"text" : "scale time (x)",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-316",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 2060.09082, 299.742889, 96.981049, 16.0 ],
									"text" : "randomize time series",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-314",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1652.303955, 300.742889, 43.990479, 16.0 ],
									"text" : "stop",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-313",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1652.303955, 252.027863, 96.981049, 16.0 ],
									"text" : "start",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-279",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 2048.59082, 272.917633, 223.0, 20.0 ],
									"text" : "sprintf /state/rhyth/user/randGroup bang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-278",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1639.418091, 476.060211, 93.0, 20.0 ],
									"text" : "s #0-miraLights"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-277",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1642.487915, 375.293243, 176.0, 20.0 ],
									"text" : "sprintf /state/rhyth/user/mult %f"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"id" : "obj-275",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1641.803955, 405.122284, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "flonum[3]",
											"parameter_shortname" : "flonum[3]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"triangle" : 0,
									"varname" : "flonum[3]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"id" : "obj-273",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1642.487915, 355.296539, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "flonum[2]",
											"parameter_shortname" : "flonum[2]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"triangle" : 0,
									"varname" : "flonum[2]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-271",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 2048.59082, 325.381744, 222.0, 20.0 ],
									"text" : "sprintf /state/rhyth/user/randomize bang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-270",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1848.890747, 325.381744, 203.0, 20.0 ],
									"text" : "sprintf /state/rhyth/user/transform %i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-267",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1848.890747, 375.293243, 191.0, 20.0 ],
									"text" : "sprintf /state/rhyth/user/density %i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-252",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1850.900269, 427.967621, 219.0, 20.0 ],
									"text" : "sprintf /state/rhyth/user/interpolation %f"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-251",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1640.803955, 325.381744, 189.0, 20.0 ],
									"text" : "sprintf /state/rhyth/user/stop bang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-246",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1641.803955, 427.967621, 173.0, 20.0 ],
									"text" : "sprintf /state/rhyth/user/add %f"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-242",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1639.418091, 272.917633, 189.0, 20.0 ],
									"text" : "sprintf /state/rhyth/user/start bang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-241",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 2079.59082, 383.833588, 139.0, 18.0 ],
									"text" : "osc-route /user /clock /1 /2 /3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-240",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 2079.59082, 427.967621, 405.0, 18.0 ],
									"text" : "osc-route /start /stop /interpolation /density /randomize /transform /mulitply /add /loop /tap"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1198.209229, 442.039459, 35.0, 14.0 ],
									"text" : "rhyth 3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-25",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1105.273926, 442.039459, 35.0, 14.0 ],
									"text" : "rhyth 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-63",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1012.599609, 442.039459, 35.0, 14.0 ],
									"text" : "rhyth 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-59",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 919.925293, 442.039459, 33.0, 14.0 ],
									"text" : "clock"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 827.250977, 442.039459, 33.0, 14.0 ],
									"text" : "user"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1198.209229, 442.039459, 88.758507, 37.53653 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "multislider[16]",
											"parameter_shortname" : "multislider[16]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"setminmax" : [ 0.0, 260.0 ],
									"setstyle" : 1,
									"settype" : 0,
									"size" : 5,
									"spacing" : 2,
									"thickness" : 5,
									"varname" : "multislider[14]"
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 0.501961, 0.120311, 0.051899, 0.0 ],
									"id" : "obj-73",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1197.590698, 480.575989, 88.758507, 10.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "slider[6]",
											"parameter_shortname" : "slider[6]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 5.0,
									"varname" : "slider[6]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-121",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1105.273926, 442.039459, 88.758507, 37.53653 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "multislider[15]",
											"parameter_shortname" : "multislider[15]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"setminmax" : [ 0.0, 260.0 ],
									"setstyle" : 1,
									"settype" : 0,
									"size" : 5,
									"spacing" : 2,
									"thickness" : 5,
									"varname" : "multislider[13]"
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 0.501961, 0.120311, 0.051899, 0.0 ],
									"id" : "obj-163",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1104.655396, 480.575989, 88.758507, 10.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "slider[5]",
											"parameter_shortname" : "slider[5]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 5.0,
									"varname" : "slider[5]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-172",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1012.599609, 442.039459, 88.758507, 37.53653 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "multislider[14]",
											"parameter_shortname" : "multislider[14]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"setminmax" : [ 0.0, 260.0 ],
									"setstyle" : 1,
									"settype" : 0,
									"size" : 5,
									"spacing" : 2,
									"thickness" : 5,
									"varname" : "multislider[12]"
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 0.501961, 0.120311, 0.051899, 0.0 ],
									"id" : "obj-175",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1011.981079, 480.575989, 88.758507, 10.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "slider[4]",
											"parameter_shortname" : "slider[4]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 5.0,
									"varname" : "slider[4]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-234",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 919.925293, 442.039459, 88.758507, 37.53653 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "multislider[8]",
											"parameter_shortname" : "multislider[8]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"setminmax" : [ 0.0, 260.0 ],
									"setstyle" : 1,
									"settype" : 0,
									"size" : 5,
									"spacing" : 2,
									"thickness" : 5,
									"varname" : "multislider[11]"
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 0.501961, 0.120311, 0.051899, 0.0 ],
									"id" : "obj-235",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 919.306763, 480.575989, 88.758507, 10.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "slider[3]",
											"parameter_shortname" : "slider[3]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 5.0,
									"varname" : "slider[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-236",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 827.250977, 442.039459, 88.758507, 37.53653 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "multislider",
											"parameter_shortname" : "multislider",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"setminmax" : [ 0.0, 260.0 ],
									"setstyle" : 1,
									"settype" : 0,
									"size" : 5,
									"spacing" : 2,
									"thickness" : 5,
									"varname" : "multislider"
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 0.501961, 0.120311, 0.051899, 0.0 ],
									"id" : "obj-238",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 826.632446, 480.575989, 88.758507, 10.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "slider[2]",
											"parameter_shortname" : "slider[2]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 5.0,
									"varname" : "slider[2]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 8.0,
									"id" : "obj-166",
									"items" : [ "normal", ",", "reverse", ",", "sort", ",", "tros", ",", "scramble" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1850.900269, 300.742889, 54.990479, 14.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "umenu[1]",
											"parameter_shortname" : "umenu[1]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "umenu[1]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.913725, 0.913725, 0.913725, 0.0 ],
									"id" : "obj-168",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 0.713726, 0.713726, 0.713726, 1.0 ],
									"patching_rect" : [ 2049.09082, 300.742889, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.913725, 0.913725, 0.913725, 0.0 ],
									"id" : "obj-169",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 2049.635986, 251.884918, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.913725, 0.913725, 0.913725, 0.0 ],
									"id" : "obj-145",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1641.303955, 300.742889, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.913725, 0.913725, 0.913725, 0.0 ],
									"id" : "obj-120",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1641.303955, 252.027863, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-177",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1848.890747, 404.122284, 48.0, 18.0 ],
									"text" : "speed"
								}

							}
, 							{
								"box" : 								{
									"floatoutput" : 1,
									"id" : "obj-178",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1848.890747, 404.122284, 95.0, 17.950714 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "slider[1]",
											"parameter_shortname" : "slider",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 10.0,
									"varname" : "slider[1]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-176",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1848.890747, 354.296539, 46.0, 18.0 ],
									"text" : "density"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-174",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1848.890747, 354.296539, 95.0, 17.950714 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "slider",
											"parameter_shortname" : "slider",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"size" : 17.0,
									"varname" : "slider"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-170",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1471.303955, 196.888489, 26.0, 13.0 ],
									"text" : "13",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"focusbordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"id" : "obj-171",
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1471.303955, 215.042938, 15.0, 15.0 ],
									"rounded" : 100.0,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.toggle[16]",
											"parameter_shortname" : "live.toggle",
											"parameter_type" : 2,
											"parameter_mmax" : 1.0,
											"parameter_enum" : [ "off", "on" ]
										}

									}
,
									"varname" : "live.toggle[16]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-164",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 206.543045, 1072.813965, 59.0, 31.0 ],
									"text" : "58 0 0 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"activebgoncolor" : [ 0.443137, 0.784314, 0.733333, 1.0 ],
									"bgoncolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontface" : 0,
									"fontsize" : 8.0,
									"id" : "obj-160",
									"maxclass" : "live.tab",
									"num_lines_patching" : 2,
									"num_lines_presentation" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 838.632446, 698.576233, 58.064087, 48.040359 ],
									"presentation" : 1,
									"presentation_rect" : [ 663.15918, 424.905151, 58.064087, 48.040359 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.tab[10]",
											"parameter_shortname" : "live.tab",
											"parameter_type" : 2,
											"parameter_enum" : [ "STOP", "START" ],
											"parameter_initial" : [ 0.0 ],
											"parameter_unitstyle" : 0
										}

									}
,
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "live.tab[10]"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgoncolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontface" : 0,
									"fontsize" : 8.0,
									"id" : "obj-159",
									"maxclass" : "live.tab",
									"num_lines_patching" : 2,
									"num_lines_presentation" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 725.0, 190.0, 72.063896, 42.960094 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.tab[9]",
											"parameter_shortname" : "live.tab",
											"parameter_type" : 2,
											"parameter_enum" : [ "STOP", "START" ],
											"parameter_unitstyle" : 0
										}

									}
,
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "live.tab[9]"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.417918, 0.630967, 0.839216, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-158",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 736.632446, 645.06543, 93.0, 18.0 ],
									"text" : "r speech-threshold"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-157",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 902.574707, 762.661743, 16.243425, 16.243425 ],
									"presentation" : 1,
									"presentation_rect" : [ 727.10144, 488.990662, 16.243425, 16.243425 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.417918, 0.630967, 0.839216, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-155",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1107.413086, 1137.294067, 91.0, 20.0 ],
									"text" : "r 5-speech-text"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.417918, 0.630967, 0.839216, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-154",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1096.360352, 1108.770264, 91.0, 20.0 ],
									"text" : "r 4-speech-text"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.417918, 0.630967, 0.839216, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-153",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1085.307617, 1080.246582, 91.0, 20.0 ],
									"text" : "r 3-speech-text"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.417918, 0.630967, 0.839216, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-152",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1074.254883, 1051.7229, 91.0, 20.0 ],
									"text" : "r 2-speech-text"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bgcolor2" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontname" : "Open Sans Light",
									"fontsize" : 6.336722,
									"id" : "obj-151",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 986.160156, 985.632385, 295.0, 12.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 810.68689, 711.961304, 295.0, 12.0 ],
									"text" : "and then suddenly I see your band"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bgcolor2" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontname" : "Open Sans Light",
									"fontsize" : 6.336722,
									"id" : "obj-150",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 986.160156, 973.632385, 295.0, 12.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 810.68689, 699.961304, 295.0, 12.0 ],
									"text" : "test"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bgcolor2" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontname" : "Open Sans Light",
									"fontsize" : 6.336722,
									"id" : "obj-149",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 986.160156, 961.632385, 295.0, 12.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 810.68689, 687.961304, 295.0, 12.0 ],
									"text" : "I'm walking in a forest"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bgcolor2" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontname" : "Open Sans Light",
									"fontsize" : 6.336722,
									"id" : "obj-148",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 986.160156, 949.632385, 295.0, 12.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 810.68689, 675.961304, 295.0, 12.0 ],
									"text" : "hello my name is Nicholas"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-146",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 942.02179, 1222.852783, 150.0, 20.0 ],
									"text" : "OSC CONTROL"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.417918, 0.630967, 0.839216, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-142",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1064.529785, 1023.950623, 91.0, 20.0 ],
									"text" : "r 1-speech-text"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.417918, 0.630967, 0.839216, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-141",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1104.460815, 632.901428, 80.0, 20.0 ],
									"text" : "r speech-info"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.417918, 0.630967, 0.839216, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-139",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 723.632446, 686.685852, 119.0, 20.0 ],
									"text" : "r speech-confidence"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.417918, 0.630967, 0.839216, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-138",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 857.25061, 127.0, 20.0 ],
									"text" : "r sound-outputvolume"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.417918, 0.630967, 0.839216, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-137",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1223.795044, 100.0, 19.0, 20.0 ],
									"text" : "\\,"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-132",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 699.088074, 800.622742, 93.0, 20.0 ],
									"text" : "s speech-mode"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-131",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 699.088074, 829.24707, 109.0, 20.0 ],
									"text" : "s speech-startstop"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-130",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 682.031128, 884.834656, 117.0, 20.0 ],
									"text" : "s speech-calibration"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-129",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 715.088074, 1011.172729, 101.0, 20.0 ],
									"text" : "s speech-volume"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-127",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 824.105164, 103.0, 20.0 ],
									"text" : "s sound-startstop"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-122",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 294.612122, 1051.7229, 93.0, 20.0 ],
									"text" : "s sound-control"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-119",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 902.574707, 821.74707, 67.0, 28.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 727.10144, 548.075989, 67.0, 28.0 ],
									"text" : "1 = very great\n0.5 - 0.7 = great \n0 = bad",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-118",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 900.574707, 779.661743, 69.0, 21.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 725.10144, 505.990662, 69.0, 21.0 ],
									"text" : "recognition confidence:",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.805286, 0.805286, 0.805286, 1.0 ],
									"bordercolor" : [ 0.803922, 0.803922, 0.803922, 1.0 ],
									"fontname" : "Open Sans Light",
									"fontsize" : 5.417329,
									"hbgcolor" : [ 0.444373, 0.785601, 0.733025, 1.0 ],
									"htricolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ],
									"id" : "obj-116",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 833.752808, 800.622742, 38.163147, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 658.279541, 526.95166, 38.163147, 13.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "flonum[1]",
											"parameter_shortname" : "flonum",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ],
									"tricolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ],
									"varname" : "flonum[1]"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 11.736905,
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1105.273926, 515.158569, 94.807343, 20.0 ],
									"text" : "s light-individual"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-262",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 658.031128, 574.125854, 85.0, 20.0 ],
									"text" : "s light-option1"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-261",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 691.095032, 354.785004, 78.0, 20.0 ],
									"text" : "s light-states"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-260",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 725.0, 241.673462, 92.0, 20.0 ],
									"text" : "s light-startstop"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"activebgoncolor" : [ 0.443137, 0.784314, 0.733333, 1.0 ],
									"bgoncolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontface" : 0,
									"fontsize" : 8.0,
									"id" : "obj-233",
									"maxclass" : "live.tab",
									"num_lines_patching" : 2,
									"num_lines_presentation" : 2,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 902.574707, 698.576233, 58.064087, 48.040359 ],
									"presentation" : 1,
									"presentation_rect" : [ 727.10144, 424.905151, 58.064087, 48.040359 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.tab[8]",
											"parameter_shortname" : "live.tab",
											"parameter_type" : 2,
											"parameter_enum" : [ "MANUAL", "AUTOMATIC" ],
											"parameter_unitstyle" : 0
										}

									}
,
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "live.tab[8]"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"bgoncolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontface" : 0,
									"fontsize" : 8.0,
									"id" : "obj-231",
									"maxclass" : "live.tab",
									"num_lines_patching" : 2,
									"num_lines_presentation" : 0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 196.610062, 722.310364, 72.063896, 42.960094 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.tab[6]",
											"parameter_shortname" : "live.tab",
											"parameter_type" : 2,
											"parameter_enum" : [ "START", "STOP" ],
											"parameter_unitstyle" : 0
										}

									}
,
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "live.tab[6]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-229",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 955.351746, 211.385742, 30.0, 28.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 548.758179, 178.137238, 46.607677, 21.0 ],
									"text" : "master level (forest)",
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgoncolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontface" : 0,
									"fontsize" : 8.0,
									"id" : "obj-228",
									"maxclass" : "live.tab",
									"num_lines_patching" : 3,
									"num_lines_presentation" : 0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 658.031128, 499.0, 72.063896, 68.596252 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.tab[4]",
											"parameter_shortname" : "live.tab",
											"parameter_type" : 2,
											"parameter_enum" : [ "STATE1", "STATE2", "STATE3" ],
											"parameter_unitstyle" : 0
										}

									}
,
									"textcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"varname" : "live.tab[4]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-224",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1104.460815, 277.013672, 13.000061, 169.378448 ],
									"pic" : "line2_yellow.png"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-204",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1482.997437, 252.027863, 15.0, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 872.884827, 286.543549, 15.0, 13.0 ],
									"text" : "10",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-203",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1597.014404, 252.027863, 15.0, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 945.889709, 316.884735, 15.0, 13.0 ],
									"text" : "16",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-202",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1557.976562, 252.027863, 15.0, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 872.884827, 316.884735, 15.0, 13.0 ],
									"text" : "14",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-201",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1576.976562, 252.027863, 16.838852, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 908.603455, 316.884735, 16.838852, 13.0 ],
									"text" : "15",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-200",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1520.425537, 252.027863, 15.0, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 945.889709, 286.543549, 15.0, 13.0 ],
									"text" : "12",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-199",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1465.997437, 252.027863, 15.0, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 834.354187, 286.543549, 15.0, 13.0 ],
									"text" : "9",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-198",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1371.318604, 252.027863, 15.0, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 945.889709, 223.595398, 15.0, 13.0 ],
									"text" : "4",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-197",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1351.514404, 252.027863, 15.0, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 908.603455, 223.595398, 15.0, 13.0 ],
									"text" : "3",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-196",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1539.976562, 252.027863, 20.0, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 834.354187, 316.884735, 26.0, 13.0 ],
									"text" : "13",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-195",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1332.514404, 252.027863, 15.0, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 873.884827, 223.595398, 15.0, 13.0 ],
									"text" : "2",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-194",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1313.514404, 252.027863, 15.0, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 835.354187, 223.595398, 15.0, 13.0 ],
									"text" : "1",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-193",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1447.514404, 252.027863, 15.0, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 946.889709, 256.83136, 15.0, 13.0 ],
									"text" : "8",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-191",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1428.514404, 252.027863, 15.0, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 909.603455, 256.83136, 15.0, 13.0 ],
									"text" : "7",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-190",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1411.217896, 252.027863, 15.0, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 873.884827, 256.83136, 15.0, 13.0 ],
									"text" : "6",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-189",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1498.997437, 252.027863, 15.0, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 908.603455, 286.543549, 15.0, 13.0 ],
									"text" : "11",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.419608, 0.631373, 0.839216, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-128",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 6,
											"architecture" : "x86"
										}
,
										"rect" : [ 175.0, 141.0, 1111.0, 745.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-4",
													"maxclass" : "o.message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 156.0, 275.0, 150.0, 20.0 ],
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.417918, 0.630967, 0.839216, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-111",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 460.0, 299.563843, 95.0, 18.0 ],
													"text" : "s speech-threshold"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-110",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 388.475342, 991.363586, 62.0, 18.0 ],
													"text" : "fromsymbol"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-109",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 480.039001, 991.363586, 62.0, 18.0 ],
													"text" : "fromsymbol"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-108",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 571.602661, 991.363586, 62.0, 18.0 ],
													"text" : "fromsymbol"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-107",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 663.16626, 991.363586, 62.0, 18.0 ],
													"text" : "fromsymbol"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-106",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 754.729858, 991.363586, 62.0, 18.0 ],
													"text" : "fromsymbol"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-104",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 388.475342, 905.908997, 43.0, 18.0 ],
													"text" : "zl iter 2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-103",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 232.727264, 647.272705, 52.0, 38.0 ],
													"text" : "\"hello my name is make us\""
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-99",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 388.475342, 767.272705, 39.0, 18.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-98",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 388.475342, 817.272705, 49.0, 16.0 ],
													"text" : "1 2 3 4 5"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-96",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 388.475342, 869.54541, 39.0, 18.0 ],
													"text" : "zl lace"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-95",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 6,
													"outlettype" : [ "", "", "", "", "", "" ],
													"patching_rect" : [ 388.475342, 935.454468, 476.818176, 18.0 ],
													"text" : "route 1 2 3 4 5"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-94",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 540.0, 681.818176, 47.0, 18.0 ],
													"text" : "gate 1 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-93",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 388.475342, 721.454468, 35.0, 18.0 ],
													"text" : "zl reg"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-78",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 388.475342, 437.272705, 51.0, 18.0 ],
													"text" : "tosymbol"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-75",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "bang" ],
													"patching_rect" : [ 388.475342, 476.818176, 150.0, 18.0 ],
													"text" : "t l l b"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-68",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 504.0, 533.636353, 47.0, 18.0 ],
													"text" : "gate 1 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-67",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 540.0, 627.727234, 22.0, 18.0 ],
													"text" : "t 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-66",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 540.0, 600.454529, 32.0, 18.0 ],
													"text" : "sel 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 388.475342, 547.363647, 51.0, 18.0 ],
													"text" : "tosymbol"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 4,
													"outlettype" : [ "int", "", "", "int" ],
													"patching_rect" : [ 504.0, 572.272705, 73.0, 18.0 ],
													"text" : "counter 1 5"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 388.475342, 650.636353, 34.0, 18.0 ],
													"text" : "zl rev"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 388.475342, 614.818176, 59.0, 18.0 ],
													"text" : "zl stream 5"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-59",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 800.04541, 325.92749, 76.0, 27.0 ],
													"text" : "hello my name is make us"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-54",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 786.363586, 228.181808, 53.0, 18.0 ],
													"text" : "zl change"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-49",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 754.729858, 1018.181763, 63.0, 18.0 ],
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-50",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 754.729858, 1045.909058, 79.0, 18.0 ],
													"text" : "s 5-speech-text"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-45",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 663.16626, 1017.727234, 63.0, 18.0 ],
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-46",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 663.16626, 1045.909058, 79.0, 18.0 ],
													"text" : "s 4-speech-text"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-47",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 571.602661, 1017.727234, 63.0, 18.0 ],
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-48",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 571.602661, 1045.909058, 79.0, 18.0 ],
													"text" : "s 3-speech-text"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-43",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 480.039001, 1017.727234, 63.0, 18.0 ],
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-44",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 480.039001, 1045.909058, 79.0, 18.0 ],
													"text" : "s 2-speech-text"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-42",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 388.475342, 1017.727234, 63.0, 18.0 ],
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-41",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 388.475342, 1045.909058, 79.0, 18.0 ],
													"text" : "s 1-speech-text"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.417918, 0.630967, 0.839216, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-142",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 598.084717, 221.344864, 70.0, 18.0 ],
													"text" : "s speech-text"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.417918, 0.630967, 0.839216, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-141",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 407.584717, 244.072144, 70.0, 18.0 ],
													"text" : "s speech-info"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.417918, 0.630967, 0.839216, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-140",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 606.902954, 325.92749, 114.0, 18.0 ],
													"text" : "s speech-outputvolume"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.417918, 0.630967, 0.839216, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-139",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 534.584717, 267.745667, 102.0, 18.0 ],
													"text" : "s speech-confidence"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 5,
													"outlettype" : [ "", "", "", "", "FullPacket" ],
													"patching_rect" : [ 407.584717, 176.363647, 218.0, 18.0 ],
													"text" : "o.route /descriptors /threshold /confidence /text"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.417918, 0.630967, 0.839216, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-138",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 225.473267, 206.363647, 109.0, 18.0 ],
													"text" : "s sound-outputvolume"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.417918, 0.630967, 0.839216, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-137",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 244.072144, 68.0, 18.0 ],
													"text" : "s light-output"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 225.473267, 170.681824, 79.0, 18.0 ],
													"text" : "o.route /volume"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-122",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 407.584717, 137.272705, 132.0, 18.0 ],
													"text" : "o.route /speech/oz/platform"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-121",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 225.473267, 137.272705, 127.0, 18.0 ],
													"text" : "o.route /sound/oz/platform"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 206.363647, 54.0, 18.0 ],
													"text" : "zl slice 48"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-35",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 50.0, 170.681824, 78.0, 18.0 ],
													"text" : "o.route /master"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 50.0, 137.272705, 118.0, 18.0 ],
													"text" : "o.route /light/oz/platform"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 45.0, 60.0, 143.0, 18.0 ],
													"text" : "o4.net_recv \"control - to iPad\""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-138", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-95", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-104", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-106", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-45", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-107", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-108", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-109", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-110", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-121", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-122", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-93", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-66", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-121", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-122", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-46", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-45", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-48", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-47", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-50", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-111", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-5", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-139", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-5", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-141", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-142", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-5", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-5", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-59", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-78", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-137", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-67", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-66", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 549.5, 656.727234, 599.681824, 656.727234, 599.681824, 523.636353, 513.5, 523.636353 ],
													"source" : [ "obj-67", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-94", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-67", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-68", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-75", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-75", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-94", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 463.475342, 668.818176, 577.5, 668.818176 ],
													"source" : [ "obj-75", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-75", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-78", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-103", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-93", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-99", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-93", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-93", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-94", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-106", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-95", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-107", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-95", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-108", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-95", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-109", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-95", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-110", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-95", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-104", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-96", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-96", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-98", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-96", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-99", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-98", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-99", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 942.02179, 1287.928223, 103.0, 20.0 ],
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
									"text" : "p RECEIVE-OSC"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.839216, 0.490196, 0.54902, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-117",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 6,
											"architecture" : "x86"
										}
,
										"rect" : [ 544.0, 220.0, 1057.0, 605.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 447.528198, 291.950043, 163.0, 20.0 ],
													"text" : "o.prepend /oz/platform/video"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 195.0, 435.0, 150.0, 16.0 ],
													"text" : "sprintf /fluids/oz/platform%s %s"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-11",
													"maxclass" : "o.message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 126.0, 559.0, 150.0, 20.0 ],
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-10",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 207.0, 377.0, 50.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-343",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 434.213745, 237.233704, 94.0, 20.0 ],
													"text" : "r #0-ipadMotion"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-6",
													"linecount" : 5,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 797.0, 400.0, 55.0, 72.0 ],
													"text" : "/sound/oz/platform/state/levels 58 0 0 0 0 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 280.528198, 320.982727, 216.0, 20.0 ],
													"text" : "o4.net_send \"control - from iPad\" 8881"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-278",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 126.0, 18.727264, 91.0, 20.0 ],
													"text" : "r #0-miraLights"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 16.943054, 225.045471, 178.0, 20.0 ],
													"text" : "prepend /state/meters"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 720.028198, 248.233704, 59.0, 20.0 ],
													"text" : "tosymbol"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 720.028198, 279.156067, 121.0, 20.0 ],
													"text" : "prepend /state/levels"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 864.028198, 279.156067, 137.0, 20.0 ],
													"text" : "prepend /state/startstop"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 580.713745, 93.0, 129.0, 20.0 ],
													"text" : "prepend /state/volume"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 423.713745, 139.909088, 145.0, 20.0 ],
													"text" : "prepend /state/calibration"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 280.528198, 100.0, 121.0, 20.0 ],
													"text" : "prepend /state/mode"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 243.528198, 154.909088, 137.0, 20.0 ],
													"text" : "prepend /state/startstop"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-132",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 280.528198, 73.636353, 91.0, 20.0 ],
													"text" : "r speech-mode"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-131",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 249.028198, 38.15155, 107.0, 20.0 ],
													"text" : "r speech-startstop"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-130",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 423.713745, 66.364746, 115.0, 20.0 ],
													"text" : "r speech-calibration"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-129",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 580.713745, 66.364746, 99.0, 20.0 ],
													"text" : "r speech-volume"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-127",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 864.028198, 248.233704, 101.0, 20.0 ],
													"text" : "r sound-startstop"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-122",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 720.028198, 215.10376, 91.0, 20.0 ],
													"text" : "r sound-control"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 44.943054, 348.265961, 94.0, 20.0 ],
													"text" : "r light-individual"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-262",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 44.943054, 291.950043, 83.0, 20.0 ],
													"text" : "r light-option1"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-261",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 44.943054, 261.185669, 76.0, 20.0 ],
													"text" : "r light-states"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-260",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 16.943054, 199.857239, 90.0, 20.0 ],
													"text" : "r light-startstop"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-259",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 602.713745, 216.151031, 90.0, 20.0 ],
													"text" : "r video-option2"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-258",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 602.713745, 185.831451, 90.0, 20.0 ],
													"text" : "r video-option1"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-257",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 602.713745, 154.909088, 97.0, 20.0 ],
													"text" : "r video-startstop"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-256",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 550.213745, 372.648376, 105.0, 20.0 ],
													"text" : "r video-calibration"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-254",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 447.528198, 261.185669, 87.0, 20.0 ],
													"text" : "r video-control"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-105",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 44.943054, 320.982727, 73.0, 20.0 ],
													"text" : "r light-mixer"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-116",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 16.943054, 18.727264, 73.0, 20.0 ],
													"text" : "r light-mixer"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-86",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 16.943054, 57.090912, 59.0, 20.0 ],
													"text" : "tosymbol"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-62",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 16.943054, 93.0, 178.0, 20.0 ],
													"text" : "prepend /state/meters"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 280.528198, 237.233704, 142.0, 16.0 ],
													"text" : "sprintf /speech/oz/platform%s"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 388.713745, 434.5, 163.0, 16.0 ],
													"text" : "sprintf /particles/oz/platform%s %s"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 803.0, 352.265961, 153.0, 16.0 ],
													"text" : "sprintf /sound/oz/platform%s %s"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 16.943054, 133.909088, 146.0, 16.0 ],
													"text" : "sprintf /light/oz/platform%s %s"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-86", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-116", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-122", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-127", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-129", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-130", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-131", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-132", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-254", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-260", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-278", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-343", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-62", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-86", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 942.02179, 1262.490234, 84.0, 20.0 ],
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
									"text" : "p SEND-OSC"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.839216, 0.490783, 0.547404, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-105",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 952.0, 64.0, 75.0, 20.0 ],
									"text" : "s light-mixer"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-115",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 187.515228, 1553.074097, 67.823418, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1983.45459, 363.25354, 75.0, 16.0 ],
									"text" : "OVERVIEW",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-94",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 946.845947, 133.365906, 67.823418, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 532.094238, 17.814461, 67.823418, 16.0 ],
									"text" : "CONTROL",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-81",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 618.257874, 983.272949, 38.0, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1414.978271, 304.951263, 38.0, 14.0 ],
									"text" : "wall",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-80",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 562.717224, 983.272949, 39.0, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1339.803589, 304.951263, 39.0, 14.0 ],
									"text" : "water",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-75",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 508.992249, 984.329529, 38.0, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1265.101318, 304.951263, 38.0, 14.0 ],
									"text" : "dragon",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-76",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 464.924255, 984.490601, 40.0, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1190.520264, 304.951263, 40.0, 14.0 ],
									"text" : "wind",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-77",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 410.1026, 983.490601, 37.0, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1391.208862, 458.07431, 37.0, 14.0 ],
									"text" : "tabletap",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-78",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 364.087463, 984.289001, 47.256332, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1114.410034, 304.951263, 50.0, 14.0 ],
									"text" : "voiceCrackle",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-79",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 310.290344, 983.272949, 44.0, 14.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1045.466797, 304.951263, 44.0, 14.0 ],
									"text" : "moodspace",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 184.51619, 778.7005, 96.507896, 11.026314 ],
									"pic" : "line_red.png"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-69",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 211.610062, 824.105164, 56.581036, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1246.520264, 446.783447, 56.581036, 16.0 ],
									"text" : "VOLUME",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"coldcolor" : [ 1.0, 0.766234, 0.734189, 1.0 ],
									"hotcolor" : [ 0.656993, 0.282983, 0.212956, 1.0 ],
									"id" : "obj-71",
									"maxclass" : "meter~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"overloadcolor" : [ 0.348569, 0.150137, 0.112984, 1.0 ],
									"patching_rect" : [ 218.568802, 848.043213, 24.402699, 90.809715 ],
									"presentation" : 1,
									"presentation_rect" : [ 1260.267212, 472.021637, 24.402699, 90.809715 ],
									"tepidcolor" : [ 1.0, 0.578185, 0.491424, 1.0 ],
									"warmcolor" : [ 0.933297, 0.401994, 0.302516, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 206.543045, 948.439392, 71.160156, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1240.58374, 571.117737, 71.160156, 16.0 ],
									"text" : "output volume",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 275.812805, 685.321655, 10.513153, 337.100006 ],
									"pic" : "line2_red.png"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-67",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 986.160156, 686.685852, 110.057846, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 810.68689, 413.014771, 110.057846, 16.0 ],
									"text" : "VOICE INFO",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-66",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 872.868652, 865.123596, 45.635723, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 697.395386, 591.452515, 45.635723, 16.0 ],
									"text" : "VOLUME",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 970.543701, 897.307312, 337.371857, 13.280258 ],
									"pic" : "line_blue.png",
									"presentation" : 1,
									"presentation_rect" : [ 795.070435, 623.63623, 337.371857, 13.280258 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 833.752808, 858.361755, 136.327576, 11.026314 ],
									"pic" : "line_blue.png",
									"presentation" : 1,
									"presentation_rect" : [ 658.279541, 584.690674, 136.327576, 11.026314 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1399.257324, 378.296143, 114.69809, 13.188538 ],
									"pic" : "line_yellow.png"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1438.59021, 160.559311, 91.427536, 13.248701 ],
									"pic" : "line_yellow.png"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-53",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1047.460938, 121.280823, 70.0, 15.0 ],
									"text" : "OTHER ",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-51",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 691.095032, 274.195435, 68.593307, 16.0 ],
									"text" : "envelope type",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 931.425293, 160.559311, 10.0, 278.895508 ],
									"pic" : "line2_yellow.png"
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"candicane2" : [ 0.444373, 0.785601, 0.733025, 1.0 ],
									"candicane3" : [ 0.444373, 0.785601, 0.733025, 1.0 ],
									"candicane4" : [ 0.444373, 0.785601, 0.733025, 1.0 ],
									"candicane5" : [ 0.444373, 0.785601, 0.733025, 1.0 ],
									"candicane6" : [ 0.444373, 0.785601, 0.733025, 1.0 ],
									"candicane7" : [ 0.444373, 0.785601, 0.733025, 1.0 ],
									"candicane8" : [ 0.444373, 0.785601, 0.733025, 1.0 ],
									"candycane" : 8,
									"drawpeaks" : 1,
									"id" : "obj-30",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 881.972107, 884.834656, 23.888981, 90.809715 ],
									"peakcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 706.49884, 611.163574, 23.888981, 90.809715 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "multislider[6]",
											"parameter_shortname" : "multislider",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"setstyle" : 1,
									"slidercolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"thickness" : 51,
									"varname" : "multislider[5]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-23",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 874.868652, 976.632385, 41.0, 25.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 699.395386, 702.961304, 41.0, 25.0 ],
									"text" : "control \nvolume",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 965.030518, 670.697083, 10.513153, 337.100006 ],
									"pic" : "line2_blue.png",
									"presentation" : 1,
									"presentation_rect" : [ 789.557251, 397.026001, 10.513153, 337.100006 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 833.752808, 752.075989, 136.327576, 11.026314 ],
									"pic" : "line_blue.png",
									"presentation" : 1,
									"presentation_rect" : [ 658.279541, 478.404907, 136.327576, 11.026314 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-48",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 861.774658, 678.183167, 67.823418, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 686.301392, 404.512085, 67.823418, 16.0 ],
									"text" : "INITIAL SET UP",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-46",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 198.610062, 701.310364, 67.823418, 16.0 ],
									"text" : "INITIAL SET UP",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-43",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 833.752808, 1023.950623, 67.823418, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1330.527832, 413.014771, 75.0, 16.0 ],
									"text" : "SPEECH",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-42",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 184.51619, 1038.575195, 67.823418, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1022.449402, 18.214998, 75.0, 16.0 ],
									"text" : "SOUND",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-40",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 703.18335, 459.575989, 67.823418, 16.0 ],
									"text" : "LIGHT",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-36",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 837.155884, 119.280823, 67.823418, 16.0 ],
									"text" : "INITIAL SET UP",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bgcolor2" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontname" : "Open Sans Light",
									"fontsize" : 6.336722,
									"id" : "obj-15",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 986.160156, 937.632385, 295.0, 12.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 810.68689, 663.961304, 295.0, 12.0 ],
									"text" : "hello my name is make us"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 986.160156, 917.239441, 110.057846, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 810.68689, 643.568359, 110.057846, 16.0 ],
									"text" : "SPEECH RECOGNITION",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Extrabold",
									"fontsize" : 8.0,
									"frgb" : 0.0,
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 833.752808, 762.661743, 67.823418, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 658.279541, 488.990662, 67.823418, 16.0 ],
									"text" : "CALIBRATION",
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"candicane2" : [ 0.444373, 0.785601, 0.733025, 1.0 ],
									"candicane3" : [ 0.444373, 0.785601, 0.733025, 1.0 ],
									"candicane4" : [ 0.444373, 0.785601, 0.733025, 1.0 ],
									"candicane5" : [ 0.444373, 0.785601, 0.733025, 1.0 ],
									"candicane6" : [ 0.444373, 0.785601, 0.733025, 1.0 ],
									"candicane7" : [ 0.444373, 0.785601, 0.733025, 1.0 ],
									"candicane8" : [ 0.444373, 0.785601, 0.733025, 1.0 ],
									"candycane" : 8,
									"drawpeaks" : 1,
									"id" : "obj-6",
									"ignoreclick" : 1,
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1026.813232, 710.576233, 242.944458, 158.170959 ],
									"peakcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 810.68689, 436.905151, 283.597565, 158.170959 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "multislider[2]",
											"parameter_shortname" : "multislider",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"setstyle" : 1,
									"size" : 5,
									"slidercolor" : [ 0.444373, 0.785601, 0.733025, 1.0 ],
									"spacing" : 11,
									"thickness" : 16,
									"varname" : "multislider[2]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 5.047623,
									"frgb" : 0.0,
									"id" : "obj-209",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1224.326904, 873.839661, 29.574858, 18.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 1045.466797, 600.452515, 29.574858, 18.0 ],
									"text" : "singing-ness",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 5.496866,
									"frgb" : 0.0,
									"id" : "obj-184",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1177.810547, 873.839661, 39.712097, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 990.483276, 600.452515, 39.712097, 13.0 ],
									"text" : "noiseness",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 5.364651,
									"frgb" : 0.0,
									"id" : "obj-126",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1130.751953, 875.088074, 34.502884, 19.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 935.234253, 600.452515, 34.502884, 19.0 ],
									"text" : "spectral \nflatness",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 5.294653,
									"frgb" : 0.0,
									"id" : "obj-125",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1085.307617, 874.123596, 38.44434, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 882.300415, 600.452515, 38.44434, 13.0 ],
									"text" : "periodicity",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans Light",
									"fontsize" : 4.947517,
									"frgb" : 0.0,
									"id" : "obj-124",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1037.155273, 874.123596, 32.44434, 12.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 832.329346, 600.452515, 32.44434, 12.0 ],
									"text" : "loudness",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-33",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 833.752808, 779.661743, 54.0, 21.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 658.279541, 505.990662, 54.0, 21.0 ],
									"text" : "display calibration:",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.805286, 0.805286, 0.805286, 1.0 ],
									"bordercolor" : [ 0.803922, 0.803922, 0.803922, 1.0 ],
									"fontname" : "Open Sans Light",
									"fontsize" : 5.417329,
									"hbgcolor" : [ 0.444373, 0.785601, 0.733025, 1.0 ],
									"htricolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ],
									"id" : "obj-32",
									"ignoreclick" : 1,
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 902.574707, 800.74707, 38.163147, 13.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 727.10144, 527.075989, 38.163147, 13.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "flonum",
											"parameter_shortname" : "flonum",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"textcolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ],
									"tricolor" : [ 0.408075, 0.408075, 0.408075, 1.0 ],
									"varname" : "flonum"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Open Sans",
									"fontsize" : 6.0,
									"frgb" : 0.0,
									"id" : "obj-34",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 833.752808, 821.74707, 67.0, 28.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 658.279541, 548.075989, 67.0, 28.0 ],
									"text" : "1 = noisy\n0.5 - 0.7 = normal\n0 = not noisy",
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 0.854154, 0.854128, 0.854143, 1.0 ],
									"candicane2" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane3" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane4" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane5" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane6" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane7" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candicane8" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"candycane" : 8,
									"contdata" : 1,
									"drawpeaks" : 1,
									"id" : "obj-18",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 298.64743, 701.310364, 354.667389, 275.873474 ],
									"peakcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1022.449402, 33.814461, 452.292358, 268.047729 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "multislider[4]",
											"parameter_shortname" : "multislider",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"setminmax" : [ 0.0, 127.0 ],
									"setstyle" : 1,
									"settype" : 0,
									"size" : 6,
									"slidercolor" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"spacing" : 11,
									"thickness" : 16,
									"varname" : "multislider[1]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 6,
									"bordercolor" : [ 1.0, 0.443137, 0.333333, 1.0 ],
									"id" : "obj-12",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 184.51619, 685.321655, 474.162628, 337.100006 ],
									"presentation" : 1,
									"presentation_rect" : [ 1010.0, 10.0, 474.162628, 337.100006 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 0.892482, 0.892456, 0.892471, 1.0 ],
									"candicane2" : [ 1.0, 0.817567, 0.393698, 1.0 ],
									"candicane3" : [ 1.0, 0.817567, 0.393698, 1.0 ],
									"candicane4" : [ 1.0, 0.817567, 0.393698, 1.0 ],
									"candicane5" : [ 1.0, 0.817567, 0.393698, 1.0 ],
									"candicane6" : [ 1.0, 0.817567, 0.393698, 1.0 ],
									"candicane7" : [ 1.0, 0.817567, 0.393698, 1.0 ],
									"candicane8" : [ 1.0, 0.817567, 0.393698, 1.0 ],
									"candycane" : 8,
									"contdata" : 1,
									"drawpeaks" : 1,
									"id" : "obj-17",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 937.613525, 171.559311, 346.973389, 100.454361 ],
									"peakcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 532.094238, 33.814461, 454.701874, 141.270599 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "multislider[3]",
											"parameter_shortname" : "multislider",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"setminmax" : [ 0.0, 255.0 ],
									"setstyle" : 1,
									"settype" : 0,
									"size" : 7,
									"slidercolor" : [ 1.0, 0.817567, 0.393698, 1.0 ],
									"spacing" : 11,
									"thickness" : 55,
									"varname" : "multislider[3]"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"focusbordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"id" : "obj-206",
									"ignoreclick" : 1,
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1309.514404, 252.027863, 15.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 830.354187, 219.595398, 15.0, 15.0 ],
									"rounded" : 100.0,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.toggle",
											"parameter_shortname" : "live.toggle",
											"parameter_type" : 2,
											"parameter_mmax" : 1.0,
											"parameter_enum" : [ "off", "on" ]
										}

									}
,
									"varname" : "live.toggle"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"focusbordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"id" : "obj-208",
									"ignoreclick" : 1,
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1442.514404, 252.027863, 15.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 941.889709, 251.83136, 15.0, 15.0 ],
									"rounded" : 100.0,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.toggle[1]",
											"parameter_shortname" : "live.toggle",
											"parameter_type" : 2,
											"parameter_mmax" : 1.0,
											"parameter_enum" : [ "off", "on" ]
										}

									}
,
									"varname" : "live.toggle[1]"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"focusbordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"id" : "obj-223",
									"ignoreclick" : 1,
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1499.997437, 252.027863, 15.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 904.603455, 282.543549, 15.0, 15.0 ],
									"rounded" : 100.0,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.toggle[15]",
											"parameter_shortname" : "live.toggle",
											"parameter_type" : 2,
											"parameter_mmax" : 1.0,
											"parameter_enum" : [ "off", "on" ]
										}

									}
,
									"varname" : "live.toggle[15]"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"focusbordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"id" : "obj-222",
									"ignoreclick" : 1,
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1480.997437, 252.027863, 15.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 868.884827, 282.543549, 15.0, 15.0 ],
									"rounded" : 100.0,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.toggle[14]",
											"parameter_shortname" : "live.toggle",
											"parameter_type" : 2,
											"parameter_mmax" : 1.0,
											"parameter_enum" : [ "off", "on" ]
										}

									}
,
									"varname" : "live.toggle[14]"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"focusbordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"id" : "obj-221",
									"ignoreclick" : 1,
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1595.014404, 252.027863, 15.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 941.889709, 311.884735, 15.0, 15.0 ],
									"rounded" : 100.0,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.toggle[13]",
											"parameter_shortname" : "live.toggle",
											"parameter_type" : 2,
											"parameter_mmax" : 1.0,
											"parameter_enum" : [ "off", "on" ]
										}

									}
,
									"varname" : "live.toggle[13]"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"focusbordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"id" : "obj-220",
									"ignoreclick" : 1,
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1555.976562, 252.027863, 15.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 868.884827, 311.884735, 15.0, 15.0 ],
									"rounded" : 100.0,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.toggle[12]",
											"parameter_shortname" : "live.toggle",
											"parameter_type" : 2,
											"parameter_mmax" : 1.0,
											"parameter_enum" : [ "off", "on" ]
										}

									}
,
									"varname" : "live.toggle[12]"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"focusbordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"id" : "obj-219",
									"ignoreclick" : 1,
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1518.425537, 252.027863, 15.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 941.889709, 282.543549, 15.0, 15.0 ],
									"rounded" : 100.0,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.toggle[11]",
											"parameter_shortname" : "live.toggle",
											"parameter_type" : 2,
											"parameter_mmax" : 1.0,
											"parameter_enum" : [ "off", "on" ]
										}

									}
,
									"varname" : "live.toggle[11]"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"focusbordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"id" : "obj-218",
									"ignoreclick" : 1,
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1574.976562, 252.027863, 15.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 904.603455, 312.884735, 15.0, 15.0 ],
									"rounded" : 100.0,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.toggle[10]",
											"parameter_shortname" : "live.toggle",
											"parameter_type" : 2,
											"parameter_mmax" : 1.0,
											"parameter_enum" : [ "off", "on" ]
										}

									}
,
									"varname" : "live.toggle[10]"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"focusbordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"id" : "obj-217",
									"ignoreclick" : 1,
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1537.976562, 252.027863, 15.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 830.354187, 312.884735, 15.0, 15.0 ],
									"rounded" : 100.0,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.toggle[9]",
											"parameter_shortname" : "live.toggle",
											"parameter_type" : 2,
											"parameter_mmax" : 1.0,
											"parameter_enum" : [ "off", "on" ]
										}

									}
,
									"varname" : "live.toggle[9]"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"focusbordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"id" : "obj-216",
									"ignoreclick" : 1,
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1328.514404, 252.027863, 15.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 868.884827, 219.595398, 15.0, 15.0 ],
									"rounded" : 100.0,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.toggle[8]",
											"parameter_shortname" : "live.toggle",
											"parameter_type" : 2,
											"parameter_mmax" : 1.0,
											"parameter_enum" : [ "off", "on" ]
										}

									}
,
									"varname" : "live.toggle[8]"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"focusbordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"id" : "obj-215",
									"ignoreclick" : 1,
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1347.514404, 252.027863, 15.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 904.603455, 219.595398, 15.0, 15.0 ],
									"rounded" : 100.0,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.toggle[7]",
											"parameter_shortname" : "live.toggle",
											"parameter_type" : 2,
											"parameter_mmax" : 1.0,
											"parameter_enum" : [ "off", "on" ]
										}

									}
,
									"varname" : "live.toggle[7]"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"focusbordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"id" : "obj-214",
									"ignoreclick" : 1,
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1367.318604, 252.027863, 15.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 941.889709, 219.595398, 15.0, 15.0 ],
									"rounded" : 100.0,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.toggle[6]",
											"parameter_shortname" : "live.toggle",
											"parameter_type" : 2,
											"parameter_mmax" : 1.0,
											"parameter_enum" : [ "off", "on" ]
										}

									}
,
									"varname" : "live.toggle[6]"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"focusbordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"id" : "obj-213",
									"ignoreclick" : 1,
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1460.997437, 252.027863, 15.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 830.354187, 282.543549, 15.0, 15.0 ],
									"rounded" : 100.0,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.toggle[5]",
											"parameter_shortname" : "live.toggle",
											"parameter_type" : 2,
											"parameter_mmax" : 1.0,
											"parameter_enum" : [ "off", "on" ]
										}

									}
,
									"varname" : "live.toggle[5]"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"focusbordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"id" : "obj-212",
									"ignoreclick" : 1,
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1405.427612, 252.027863, 15.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 868.884827, 251.83136, 15.0, 15.0 ],
									"rounded" : 100.0,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.toggle[4]",
											"parameter_shortname" : "live.toggle",
											"parameter_type" : 2,
											"parameter_mmax" : 1.0,
											"parameter_enum" : [ "off", "on" ]
										}

									}
,
									"varname" : "live.toggle[4]"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"activebgoncolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"bgcolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"bordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"focusbordercolor" : [ 1.0, 0.815686, 0.392157, 1.0 ],
									"id" : "obj-211",
									"ignoreclick" : 1,
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1423.514404, 252.027863, 15.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 904.603455, 251.83136, 15.0, 15.0 ],
									"rounded" : 100.0,
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.toggle[3]",
											"parameter_shortname" : "live.toggle",
											"parameter_type" : 2,
											"parameter_mmax" : 1.0,
											"parameter_enum" : [ "off", "on" ]
										}

									}
,
									"varname" : "live.toggle[3]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"border" : 2,
									"bordercolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"id" : "obj-92",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1114.05249, 292.072693, 172.583466, 142.272095 ],
									"presentation" : 1,
									"presentation_rect" : [ 814.647278, 196.65657, 172.583466, 141.143143 ],
									"rounded" : 4
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"border" : 2,
									"bordercolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
									"id" : "obj-144",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 933.150391, 1250.605469, 163.067612, 114.931129 ],
									"presentation" : 1,
									"presentation_rect" : [ 639.822754, 394.526001, 474.162628, 337.100006 ],
									"rounded" : 11
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 6,
									"bordercolor" : [ 0.444373, 0.785601, 0.733025, 1.0 ],
									"id" : "obj-5",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 819.915405, 670.697083, 474.162628, 337.100006 ],
									"presentation" : 1,
									"presentation_rect" : [ 644.442139, 397.026001, 474.162628, 337.100006 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.75, 0.75, 0.75, 0.2 ],
									"id" : "obj-13",
									"maxclass" : "mira.multitouch",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1011.981079, 515.158569, 108.0, 80.063065 ],
									"pinch_enabled" : 0,
									"presentation" : 1,
									"presentation_rect" : [ 814.106262, 197.443726, 172.583466, 141.143143 ],
									"rotate_enabled" : 0,
									"swipe_enabled" : 0,
									"swipe_touch_count" : 0,
									"tap_enabled" : 0,
									"tap_tap_count" : 0,
									"tap_touch_count" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-167",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 890.000061, -75.0, 155.0, 70.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 265.0, 83.0, 155.0, 55.000004 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-173",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 855.0, -105.0, 110.0, 70.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 45.0, 83.0, 104.999947, 55.000004 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-179",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 870.0, -90.0, 120.0, 70.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 155.0, 83.0, 105.0, 55.000004 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-180",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1005.0, -60.0, 55.0, 70.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 425.0, 83.0, 75.0, 55.000004 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-183",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 630.0, -105.0, 125.0, 65.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 45.0, 18.0, 130.0, 60.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-185",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 660.0, -75.0, 180.0, 65.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 355.0, 18.0, 145.0, 60.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-187",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 645.0, -90.0, 150.0, 65.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 180.0, 17.999998, 170.0, 60.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-281",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1080.0, -165.0, 95.0, 175.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 75.0, 163.0, 100.0, 175.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-339",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1095.0, -150.0, 100.0, 175.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 180.0, 163.0, 100.0, 175.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-341",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1110.0, -135.0, 100.0, 175.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 286.0, 163.0, 100.0, 175.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-344",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1125.0, -120.0, 105.0, 175.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 390.0, 163.0, 100.0, 175.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.849631, 0.837513, 0.834916, 1.0 ],
									"id" : "obj-383",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 375.0, 465.0, 110.0, 70.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 45.0, 18.0, 128.097397, 136.31665 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.849631, 0.837513, 0.834916, 1.0 ],
									"id" : "obj-384",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 375.0, 390.0, 110.0, 70.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 167.57402, 18.0, 332.425964, 122.103355 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.849631, 0.837513, 0.834916, 1.0 ],
									"id" : "obj-386",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 375.0, 540.0, 110.0, 70.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 325.0, 147.050034, 174.999985, 190.949966 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.849631, 0.837513, 0.834916, 1.0 ],
									"id" : "obj-387",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 375.0, 615.0, 110.0, 70.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 45.0, 158.0, 395.0, 180.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"border" : 6,
									"bordercolor" : [ 1.0, 0.817567, 0.393698, 1.0 ],
									"id" : "obj-9",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 819.915405, 160.559311, 474.162628, 337.100006 ],
									"presentation" : 1,
									"presentation_rect" : [ 522.124634, 10.396034, 474.162628, 337.100006 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"id" : "obj-2",
									"ignoreclick" : 1,
									"maxclass" : "mira.frame",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 184.51619, 685.321655, 474.162628, 337.100006 ],
									"presentation" : 1,
									"presentation_rect" : [ 1010.0, 10.0, 474.162628, 337.100006 ],
									"tabname" : "SOUND"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-1",
									"ignoreclick" : 1,
									"maxclass" : "mira.frame",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 826.632446, 160.559311, 474.162628, 337.100006 ],
									"presentation" : 1,
									"presentation_rect" : [ 522.841675, 9.396034, 474.162628, 337.100006 ],
									"tabname" : "LIGHT"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"id" : "obj-8",
									"ignoreclick" : 1,
									"maxclass" : "mira.frame",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 184.51619, 30.593994, 474.162628, 337.100006 ],
									"presentation" : 1,
									"presentation_rect" : [ 34.0, 10.0, 474.162628, 337.100006 ],
									"tabname" : "VIDEO"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 6,
									"bordercolor" : [ 0.57971, 0.785601, 0.499537, 1.0 ],
									"id" : "obj-7",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 184.51619, 30.593994, 474.162628, 337.100006 ],
									"presentation" : 1,
									"presentation_rect" : [ 35.0, 10.0, 474.554199, 337.100006 ],
									"rounded" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-108", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-134", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-136", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-205", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-226", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-230", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-232", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-237", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-239", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-243", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-244", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-245", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-247", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-248", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-249", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-250", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-253", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-255", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-256", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-257", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-258", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-259", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-263", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-264", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-265", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-266", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-276", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-323", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-327", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-330", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-352", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-362", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-364", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-371", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-375", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-377", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-381", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-439", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-441", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-450", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-451", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-452", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-453", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-454", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-455", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-456", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-394", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-108", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-242", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-120", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-186", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-123", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-449", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-134", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-447", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-136", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-137", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-138", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-139", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-141", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-142", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-251", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-145", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-148", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-152", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-153", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-154", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-151", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-155", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-130", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-157", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-158", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-260", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-159", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-160", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-270", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-166", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-271", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-168", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-279", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-169", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-267", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-174", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-252", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-178", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-122", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-164", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-192", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-186", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-389", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-192", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-123", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-446", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-205", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-285", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-206", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-285", 7 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-208", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-342", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-210", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-285", 6 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-211", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-285", 5 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-212", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-285", 8 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-213", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-285", 3 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-214", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-285", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-215", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-285", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-216", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-285", 12 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-217", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-285", 14 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-218", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-285", 11 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-219", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-285", 13 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-220", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-285", 15 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-221", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-285", 9 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-222", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-285", 10 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-223", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-457", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-226", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-262", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-228", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-458", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-230", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-231", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-479", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-232", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-233", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-480", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-237", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-468", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-239", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-240", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-241", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-278", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-242", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-469", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-243", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-445", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-244", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-461", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-245", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-278", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-246", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-460", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-247", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-488", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-248", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-488", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-249", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-462", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-250", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-278", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-251", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-278", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-252", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-472", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-253", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-471", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-255", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-490", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-256", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-490", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-257", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-473", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-258", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-483", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-259", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-482", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-263", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-491", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-264", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-491", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-265", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-484", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-266", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-278", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-267", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-299", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-269", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-278", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-270", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-278", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-271", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-277", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-273", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-246", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-275", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-443", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -635.500061, 124.500015, -635.500061, 124.500015 ],
									"source" : [ "obj-276", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-278", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-277", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-278", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-279", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-280", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-284", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-338", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-284", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-365", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-291", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-293", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-338", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-293", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-299", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-301", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-300", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-300", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-300", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-300", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-300", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-303", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-301", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-303", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-301", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-303", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-301", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-302", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-303", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-338", 4 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-303", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-448", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-304", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-304", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-323", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-325", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-324", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-278", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-325", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-304", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-327", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-261", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-329", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-444", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-330", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-340", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-338", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-343", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-340", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-400", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-342", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-35", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-464", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-352", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-359", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-355", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-278", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-358", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-358", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-359", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-463", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-362", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-442", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-364", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-401", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-365", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-403", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-366", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-402", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-367", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-407", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-368", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-405", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-369", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-358", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-475", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-371", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-474", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-375", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-486", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-377", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-485", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-381", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-406", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-388", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-395", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -725.5, -418.000031, -725.5, -418.000031 ],
									"source" : [ "obj-389", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-285", 4 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-395", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -545.5, -567.501099, -725.5, -567.501099 ],
									"source" : [ "obj-390", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-396", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-391", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-411", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-392", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-396", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-394", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-254", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-395", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-395", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -365.499969, -556.599182, -725.5, -556.599182 ],
									"source" : [ "obj-396", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-420", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-398", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-409", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -605.5, -260.500031, -695.5, -260.500031 ],
									"source" : [ "obj-399", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-408", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-400", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-399", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-401", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-399", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -390.5, -290.500031, -605.5, -290.500031 ],
									"source" : [ "obj-402", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-399", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -500.5, -290.500031, -605.5, -290.500031 ],
									"source" : [ "obj-403", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-410", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 30.500031, -230.177063, -710.5, -230.177063 ],
									"source" : [ "obj-404", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-412", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -179.499969, -260.500031, -575.5, -260.500031 ],
									"source" : [ "obj-405", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-412", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -74.499985, -260.500031, -575.5, -260.500031 ],
									"source" : [ "obj-406", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-412", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -284.5, -260.500031, -575.5, -260.500031 ],
									"source" : [ "obj-407", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-409", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -695.5, -260.500031, -695.5, -260.500031 ],
									"source" : [ "obj-408", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-410", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -695.5, -230.500031, -710.5, -230.500031 ],
									"source" : [ "obj-409", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-284", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-41", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-284", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-41", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-284", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-395", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -710.5, -140.500031, -725.5, -140.500031 ],
									"source" : [ "obj-410", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-413", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -635.5, 808.5, -635.5, 808.5 ],
									"source" : [ "obj-411", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-410", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -575.5, -230.500031, -710.5, -230.500031 ],
									"source" : [ "obj-412", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-398", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-413", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-418", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -680.5, -175.000031, -680.5, -175.000031 ],
									"source" : [ "obj-414", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-415", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-424", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-416", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-415", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-417", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-416", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -680.5, -140.500031, -680.5, -140.500031 ],
									"source" : [ "obj-418", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-395", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-419", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-436", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -635.5, 891.0, -695.5, 891.0 ],
									"source" : [ "obj-420", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-419", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -680.5, -80.500031, -680.5, -80.500031 ],
									"source" : [ "obj-424", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -605.5, -404.000031, -695.500061, -404.000031 ],
									"source" : [ "obj-426", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -605.5, -404.000031, -605.500061, -404.000031 ],
									"source" : [ "obj-426", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -605.5, -404.000031, -500.500061, -404.000031 ],
									"source" : [ "obj-426", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -605.5, -404.000031, -390.500061, -404.000031 ],
									"source" : [ "obj-426", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -605.5, -404.000031, 30.499985, -404.000031 ],
									"source" : [ "obj-426", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -605.5, -404.000031, -74.500031, -404.000031 ],
									"source" : [ "obj-426", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -605.5, -404.000031, -179.500015, -404.000031 ],
									"source" : [ "obj-426", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -605.5, -404.000031, -284.500031, -404.000031 ],
									"source" : [ "obj-426", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -695.5, -389.000031, -695.500061, -389.000031 ],
									"source" : [ "obj-428", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -695.5, -389.000031, -605.500061, -389.000031 ],
									"source" : [ "obj-428", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -695.5, -389.000031, -500.500061, -389.000031 ],
									"source" : [ "obj-428", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -695.5, -389.000031, -390.500061, -389.000031 ],
									"source" : [ "obj-428", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -695.5, -389.000031, 30.499985, -389.000031 ],
									"source" : [ "obj-428", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -695.5, -389.000031, -74.500031, -389.000031 ],
									"source" : [ "obj-428", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -695.5, -389.000031, -179.500015, -389.000031 ],
									"source" : [ "obj-428", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -695.5, -389.000031, -284.500031, -389.000031 ],
									"source" : [ "obj-428", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-426", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-429", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-428", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-429", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-433", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-431", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-429", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-433", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-254", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -695.5, 1187.0, -725.5, 1187.0 ],
									"source" : [ "obj-436", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-436", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -665.5, 756.0, -690.0, 756.0, -690.0, 1152.0, -695.5, 1152.0 ],
									"source" : [ "obj-437", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-437", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -665.5, 722.0, -665.5, 722.0 ],
									"source" : [ "obj-438", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-466", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-439", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-366", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-467", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-441", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-438", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -665.500061, 302.0, -665.5, 302.0 ],
									"source" : [ "obj-442", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-438", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -635.500061, 167.0, -665.5, 167.0 ],
									"source" : [ "obj-443", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-438", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -635.500061, 257.0, -665.5, 257.0 ],
									"source" : [ "obj-444", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-438", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -635.5, 347.0, -665.5, 347.0 ],
									"source" : [ "obj-445", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-438", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -635.5, 677.0, -665.5, 677.0 ],
									"source" : [ "obj-446", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-438", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -635.5, 602.0, -665.5, 602.0 ],
									"source" : [ "obj-447", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-438", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -635.5, 527.0, -665.5, 527.0 ],
									"source" : [ "obj-448", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-438", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -635.5, 422.0, -665.5, 422.0 ],
									"source" : [ "obj-449", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-298", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-338", 3 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-501", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-450", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-508", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-451", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-477", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-452", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-512", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-453", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-489", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-454", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-510", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-455", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-478", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-456", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-465", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -380.500061, 677.0, -425.5, 677.0 ],
									"source" : [ "obj-457", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-465", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -380.500061, 602.0, -425.5, 602.0 ],
									"source" : [ "obj-458", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-465", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -380.500061, 527.0, -425.5, 527.0 ],
									"source" : [ "obj-459", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-465", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -380.500061, 422.0, -425.5, 422.0 ],
									"source" : [ "obj-460", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-465", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -380.500061, 347.0, -425.5, 347.0 ],
									"source" : [ "obj-461", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-465", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -380.500061, 257.0, -425.5, 257.0 ],
									"source" : [ "obj-462", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-465", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -410.500061, 167.0, -425.5, 167.0 ],
									"source" : [ "obj-463", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-465", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -440.500061, 182.0, -425.5, 182.0 ],
									"source" : [ "obj-464", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-437", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -425.5, 722.0, -665.5, 722.0 ],
									"source" : [ "obj-465", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-436", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -545.5, 891.0, -695.5, 891.0 ],
									"source" : [ "obj-466", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-496", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-467", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-476", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -155.500015, 677.0, -200.500061, 677.0 ],
									"source" : [ "obj-468", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-476", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -155.500031, 602.0, -200.500061, 602.0 ],
									"source" : [ "obj-469", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-476", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -155.500015, 527.0, -200.500061, 527.0 ],
									"source" : [ "obj-470", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-476", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -155.500031, 422.0, -200.500061, 422.0 ],
									"source" : [ "obj-471", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-476", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -155.500031, 347.0, -200.500061, 347.0 ],
									"source" : [ "obj-472", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-476", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -155.500031, 257.0, -200.500061, 257.0 ],
									"source" : [ "obj-473", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-476", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -185.500061, 167.0, -200.500061, 167.0 ],
									"source" : [ "obj-474", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-476", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -215.500061, 182.0, -200.500061, 182.0 ],
									"source" : [ "obj-475", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-437", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -200.500061, 722.0, -665.5, 722.0 ],
									"source" : [ "obj-476", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-497", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -455.500031, 1052.0, -455.500031, 1052.0 ],
									"source" : [ "obj-477", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-499", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -95.500061, 1052.0, -95.500031, 1052.0 ],
									"source" : [ "obj-478", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-487", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 39.499977, 677.0, -6.5, 677.0 ],
									"source" : [ "obj-479", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-487", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 39.499966, 602.0, -6.5, 602.0 ],
									"source" : [ "obj-480", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-487", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 39.499977, 527.0, -6.5, 527.0 ],
									"source" : [ "obj-481", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-487", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 39.499962, 422.0, -6.5, 422.0 ],
									"source" : [ "obj-482", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-487", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 39.499962, 347.0, -6.5, 347.0 ],
									"source" : [ "obj-483", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-487", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 39.499962, 257.0, -6.5, 257.0 ],
									"source" : [ "obj-484", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-487", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 9.499931, 167.0, -6.5, 167.0 ],
									"source" : [ "obj-485", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-487", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -20.500059, 182.0, -6.5, 182.0 ],
									"source" : [ "obj-486", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-437", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -6.5, 722.0, -665.5, 722.0 ],
									"source" : [ "obj-487", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-459", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-488", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-498", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -275.500031, 1052.0, -275.500031, 1052.0 ],
									"source" : [ "obj-489", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-278", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-470", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-490", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-481", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-491", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-496", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -545.5, 1052.0, -635.5, 1052.0 ],
									"source" : [ "obj-492", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-497", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -365.5, 1052.0, -455.500031, 1052.0 ],
									"source" : [ "obj-493", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-498", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -185.5, 1052.0, -275.500031, 1052.0 ],
									"source" : [ "obj-494", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-499", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -5.500031, 1052.0, -95.500031, 1052.0 ],
									"source" : [ "obj-495", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-500", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-496", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-500", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -455.500031, 1097.0, -635.5, 1097.0 ],
									"source" : [ "obj-497", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-500", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -275.500031, 1097.0, -635.5, 1097.0 ],
									"source" : [ "obj-498", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-500", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -95.500031, 1097.0, -635.5, 1097.0 ],
									"source" : [ "obj-499", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-436", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ -635.5, 1142.0, -695.5, 1142.0 ],
									"source" : [ "obj-500", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-506", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-501", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-492", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-506", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-493", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-507", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-507", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-508", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-495", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-509", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-509", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-510", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-494", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-511", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-511", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-512", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-293", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-55", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-293", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-55", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-293", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-367", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-57", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-57", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-300", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-404", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-388", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-369", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-368", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-391", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-390", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-210", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-97", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-147", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-99", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-338", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-99", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 7.209215, 69.114136, 71.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.209215, 69.114136, 71.0, 20.0 ],
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
					"text" : "p mira-guts"
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"id" : "obj-4",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7.209215, 6.972031, 105.757164, 100.142105 ],
					"pic" : "o4_logo.png",
					"presentation" : 1,
					"presentation_rect" : [ 7.209215, 6.972031, 105.757164, 100.142105 ],
					"xoffset" : -28.399969,
					"yoffset" : -20.940023
				}

			}
 ],
		"lines" : [  ],
		"parameters" : 		{
			"obj-1::obj-243" : [ "umenu[8]", "umenu", 0 ],
			"obj-1::obj-233" : [ "live.tab[8]", "live.tab", 0 ],
			"obj-1::obj-330" : [ "swatch[8]", "swatch", 0 ],
			"obj-1::obj-87" : [ "multislider[9]", "multislider", 0 ],
			"obj-1::obj-375" : [ "multislider[19]", "multislider", 0 ],
			"obj-1::obj-84" : [ "swatch[6]", "swatch", 0 ],
			"obj-1::obj-18" : [ "multislider[4]", "multislider", 0 ],
			"obj-1::obj-327" : [ "number[15]", "number[1]", 0 ],
			"obj-1::obj-371" : [ "toggle[3]", "toggle", 0 ],
			"obj-1::obj-174" : [ "slider", "slider", 0 ],
			"obj-1::obj-269" : [ "toggle[5]", "toggle[5]", 0 ],
			"obj-1::obj-19" : [ "multislider[17]", "multislider", 0 ],
			"obj-1::obj-73" : [ "slider[6]", "slider[6]", 0 ],
			"obj-1::obj-97" : [ "slider[12]", "slider[7]", 0 ],
			"obj-1::obj-276" : [ "multislider[11]", "multislider", 0 ],
			"obj-1::obj-238" : [ "slider[2]", "slider[2]", 0 ],
			"obj-1::obj-455" : [ "toggle[10]", "toggle", 0 ],
			"obj-1::obj-453" : [ "toggle[9]", "toggle", 0 ],
			"obj-1::obj-253" : [ "slider[10]", "slider[8]", 0 ],
			"obj-1::obj-21" : [ "swatch", "swatch", 0 ],
			"obj-1::obj-332" : [ "live.tab[11]", "live.tab", 0 ],
			"obj-1::obj-159" : [ "live.tab[9]", "live.tab", 0 ],
			"obj-1::obj-221" : [ "live.toggle[13]", "live.toggle", 0 ],
			"obj-1::obj-216" : [ "live.toggle[8]", "live.toggle", 0 ],
			"obj-1::obj-441" : [ "slider[14]", "slider[8]", 0 ],
			"obj-1::obj-250" : [ "swatch[9]", "swatch", 0 ],
			"obj-1::obj-211" : [ "live.toggle[3]", "live.toggle", 0 ],
			"obj-1::obj-226" : [ "umenu[3]", "umenu", 0 ],
			"obj-1::obj-329" : [ "live.tab[7]", "live.tab", 0 ],
			"obj-1::obj-16" : [ "multislider[7]", "multislider", 0 ],
			"obj-1::obj-377" : [ "toggle[4]", "toggle", 0 ],
			"obj-1::obj-364" : [ "toggle[2]", "toggle", 0 ],
			"obj-1::obj-85" : [ "swatch[7]", "swatch", 0 ],
			"obj-1::obj-206" : [ "live.toggle", "live.toggle", 0 ],
			"obj-1::obj-362" : [ "multislider[12]", "multislider", 0 ],
			"obj-1::obj-273" : [ "flonum[2]", "flonum[2]", 0 ],
			"obj-1::obj-259" : [ "slider[11]", "slider[8]", 0 ],
			"obj-1::obj-108" : [ "dial", "dial", 0 ],
			"obj-1::obj-355" : [ "slider[7]", "slider[7]", 0 ],
			"obj-1::obj-166" : [ "umenu[1]", "umenu[1]", 0 ],
			"obj-1::obj-265" : [ "number[12]", "number[1]", 0 ],
			"obj-1::obj-171" : [ "live.toggle[16]", "live.toggle", 0 ],
			"obj-1::obj-228" : [ "live.tab[4]", "live.tab", 0 ],
			"obj-1::obj-17" : [ "multislider[3]", "multislider", 0 ],
			"obj-1::obj-255" : [ "number[7]", "number[1]", 0 ],
			"obj-1::obj-220" : [ "live.toggle[12]", "live.toggle", 0 ],
			"obj-1::obj-452" : [ "slider[15]", "slider[8]", 0 ],
			"obj-1::obj-245" : [ "slider[9]", "slider[8]", 0 ],
			"obj-1::obj-215" : [ "live.toggle[7]", "live.toggle", 0 ],
			"obj-1::obj-232" : [ "umenu[5]", "umenu", 0 ],
			"obj-1::obj-230" : [ "umenu[4]", "umenu", 0 ],
			"obj-1::obj-398" : [ "number[16]", "number", 0 ],
			"obj-1::obj-86" : [ "multislider[5]", "multislider", 0 ],
			"obj-1::obj-56" : [ "swatch[3]", "swatch", 0 ],
			"obj-1::obj-323" : [ "number[14]", "number[1]", 0 ],
			"obj-1::obj-163" : [ "slider[5]", "slider[5]", 0 ],
			"obj-1::obj-263" : [ "number[10]", "number[1]", 0 ],
			"obj-1::obj-178" : [ "slider[1]", "slider", 0 ],
			"obj-1::obj-456" : [ "slider[17]", "slider[8]", 0 ],
			"obj-1::obj-160" : [ "live.tab[10]", "live.tab", 0 ],
			"obj-1::obj-116" : [ "flonum[1]", "flonum", 0 ],
			"obj-1::obj-208" : [ "live.toggle[1]", "live.toggle", 0 ],
			"obj-1::obj-454" : [ "slider[16]", "slider[8]", 0 ],
			"obj-1::obj-256" : [ "number[8]", "number[1]", 0 ],
			"obj-1::obj-219" : [ "live.toggle[11]", "live.toggle", 0 ],
			"obj-1::obj-247" : [ "number[4]", "number[1]", 0 ],
			"obj-1::obj-236" : [ "multislider", "multislider", 0 ],
			"obj-1::obj-214" : [ "live.toggle[6]", "live.toggle", 0 ],
			"obj-1::obj-237" : [ "umenu[6]", "umenu", 0 ],
			"obj-1::obj-205" : [ "umenu[2]", "umenu", 0 ],
			"obj-1::obj-82" : [ "swatch[4]", "swatch", 0 ],
			"obj-1::obj-44" : [ "swatch[2]", "swatch", 0 ],
			"obj-1::obj-381" : [ "multislider[20]", "multislider", 0 ],
			"obj-1::obj-172" : [ "multislider[14]", "multislider[14]", 0 ],
			"obj-1::obj-30" : [ "multislider[6]", "multislider", 0 ],
			"obj-1::obj-175" : [ "slider[4]", "slider[4]", 0 ],
			"obj-1::obj-266" : [ "swatch[11]", "swatch", 0 ],
			"obj-1::obj-231" : [ "live.tab[6]", "live.tab", 0 ],
			"obj-1::obj-223" : [ "live.toggle[15]", "live.toggle", 0 ],
			"obj-1::obj-257" : [ "number[9]", "number[1]", 0 ],
			"obj-1::obj-136" : [ "umenu", "umenu", 0 ],
			"obj-1::obj-218" : [ "live.toggle[10]", "live.toggle", 0 ],
			"obj-1::obj-450" : [ "toggle[7]", "toggle", 0 ],
			"obj-1::obj-248" : [ "number[5]", "number[1]", 0 ],
			"obj-1::obj-213" : [ "live.toggle[5]", "live.toggle", 0 ],
			"obj-1::obj-439" : [ "slider[13]", "slider[8]", 0 ],
			"obj-1::obj-239" : [ "umenu[7]", "umenu", 0 ],
			"obj-1::obj-416" : [ "toggle", "toggle", 0 ],
			"obj-1::obj-134" : [ "number[3]", "number[1]", 0 ],
			"obj-1::obj-413" : [ "toggle[6]", "toggle", 0 ],
			"obj-1::obj-234" : [ "multislider[8]", "multislider[8]", 0 ],
			"obj-1::obj-424" : [ "number", "number", 0 ],
			"obj-1::obj-83" : [ "swatch[5]", "swatch", 0 ],
			"obj-1::obj-352" : [ "toggle[1]", "toggle", 0 ],
			"obj-1::obj-29" : [ "swatch[1]", "swatch", 0 ],
			"obj-1::obj-39" : [ "live.toggle[17]", "live.toggle", 0 ],
			"obj-1::obj-275" : [ "flonum[3]", "flonum[3]", 0 ],
			"obj-1::obj-121" : [ "multislider[15]", "multislider[15]", 0 ],
			"obj-1::obj-70" : [ "multislider[16]", "multislider[16]", 0 ],
			"obj-1::obj-235" : [ "slider[3]", "slider[3]", 0 ],
			"obj-1::obj-264" : [ "number[11]", "number[1]", 0 ],
			"obj-1::obj-324" : [ "live.text", "live.text", 0 ],
			"obj-1::obj-6" : [ "multislider[2]", "multislider", 0 ],
			"obj-1::obj-244" : [ "slider[8]", "slider[8]", 0 ],
			"obj-1::obj-222" : [ "live.toggle[14]", "live.toggle", 0 ],
			"obj-1::obj-451" : [ "toggle[8]", "toggle", 0 ],
			"obj-1::obj-258" : [ "swatch[10]", "swatch", 0 ],
			"obj-1::obj-217" : [ "live.toggle[9]", "live.toggle", 0 ],
			"obj-1::obj-249" : [ "number[6]", "number[1]", 0 ],
			"obj-1::obj-32" : [ "flonum", "flonum", 0 ],
			"obj-1::obj-212" : [ "live.toggle[4]", "live.toggle", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "o4_logo.png",
				"bootpath" : "/Users/synthesis/Code/SearchPath/tml.oz.network/O4_mira",
				"patcherrelativepath" : "../Code/SearchPath/tml.oz.network/O4_mira",
				"type" : "PNG ",
				"implicit" : 1
			}
, 			{
				"name" : "line_blue.png",
				"bootpath" : "/Users/synthesis/Code/SearchPath/tml.oz.network/O4_mira",
				"patcherrelativepath" : "../Code/SearchPath/tml.oz.network/O4_mira",
				"type" : "PNG ",
				"implicit" : 1
			}
, 			{
				"name" : "line2_blue.png",
				"bootpath" : "/Users/synthesis/Code/SearchPath/tml.oz.network/O4_mira",
				"patcherrelativepath" : "../Code/SearchPath/tml.oz.network/O4_mira",
				"type" : "PNG ",
				"implicit" : 1
			}
, 			{
				"name" : "line2_yellow.png",
				"bootpath" : "/Users/synthesis/Code/SearchPath/tml.oz.network/O4_mira",
				"patcherrelativepath" : "../Code/SearchPath/tml.oz.network/O4_mira",
				"type" : "PNG ",
				"implicit" : 1
			}
, 			{
				"name" : "line_yellow.png",
				"bootpath" : "/Users/synthesis/Code/SearchPath/tml.oz.network/O4_mira",
				"patcherrelativepath" : "../Code/SearchPath/tml.oz.network/O4_mira",
				"type" : "PNG ",
				"implicit" : 1
			}
, 			{
				"name" : "line2_red.png",
				"bootpath" : "/Users/synthesis/Code/SearchPath/tml.oz.network/O4_mira",
				"patcherrelativepath" : "../Code/SearchPath/tml.oz.network/O4_mira",
				"type" : "PNG ",
				"implicit" : 1
			}
, 			{
				"name" : "line_red.png",
				"bootpath" : "/Users/synthesis/Code/SearchPath/tml.oz.network/O4_mira",
				"patcherrelativepath" : "../Code/SearchPath/tml.oz.network/O4_mira",
				"type" : "PNG ",
				"implicit" : 1
			}
, 			{
				"name" : "o4.net_send.maxpat",
				"bootpath" : "/Users/synthesis/Code/SearchPath/tml.oz.network",
				"patcherrelativepath" : "../Code/SearchPath/tml.oz.network",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o4.net_recv.maxpat",
				"bootpath" : "/Users/synthesis/Code/SearchPath/tml.oz.network",
				"patcherrelativepath" : "../Code/SearchPath/tml.oz.network",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mira.mo.rotationrate.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/Mira/patchers",
				"patcherrelativepath" : "../../../Applications/Max 6.1/packages/Mira/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mira.mo.accel.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/Mira/patchers",
				"patcherrelativepath" : "../../../Applications/Max 6.1/packages/Mira/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mira.mo.compass.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/Mira/patchers",
				"patcherrelativepath" : "../../../Applications/Max 6.1/packages/Mira/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mira.mo.orientation.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/Mira/patchers",
				"patcherrelativepath" : "../../../Applications/Max 6.1/packages/Mira/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mira.mo.gravity.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/Mira/patchers",
				"patcherrelativepath" : "../../../Applications/Max 6.1/packages/Mira/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "zeroconf.resolve.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "zeroconf.service.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.collect.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.var.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.message.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.prepend.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "zeroconf.browser.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pak.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
