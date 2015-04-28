{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 92.0, 44.0, 1098.0, 830.0 ],
		"bgcolor" : [ 0.27451, 0.368627, 0.45098, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 92.0, 44.0, 1098.0, 830.0 ],
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
					"maxclass" : "comment",
					"varname" : "zsa_text[32]",
					"text" : "Compound Function Behaviour",
					"linecount" : 2,
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 527.0, 488.0, 169.0, 46.0 ],
					"id" : "obj-94",
					"fontname" : "Arial Black",
					"fontsize" : 14.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[31]",
					"text" : "6) Set threshold to detect peaks",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 398.0, 673.0, 331.0, 32.0 ],
					"id" : "obj-89",
					"fontname" : "Arial Black",
					"fontsize" : 18.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[30]",
					"text" : "5) multiplicative factor (to have values between 0 and 1)",
					"linecount" : 2,
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 404.0, 605.0, 303.0, 57.0 ],
					"id" : "obj-88",
					"fontname" : "Arial Black",
					"fontsize" : 18.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[29]",
					"text" : "4) play it",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 190.0, 66.0, 103.0, 32.0 ],
					"id" : "obj-87",
					"fontname" : "Arial Black",
					"fontsize" : 18.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[6]",
					"text" : "<== zsa analysis",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 250.0, 227.0, 118.0, 23.0 ],
					"id" : "obj-86",
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[28]",
					"text" : "<= Control Noise Burst trig by second trigger threshold",
					"linecount" : 6,
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 935.0, 400.0, 81.0, 96.0 ],
					"id" : "obj-77",
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 881.0, 400.0, 50.0, 20.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-76",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[9]",
					"text" : "0) Read the paper, section 4.",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 679.0, 72.0, 317.0, 32.0 ],
					"id" : "obj-68",
					"fontname" : "Arial Black",
					"fontsize" : 18.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[20]",
					"text" : "The use of the\nlevel_gate_scaling gate is very important to avoid in silent musical passages, where the\nquick increase of standard deviation is usually due to noisy flat spectra.",
					"linecount" : 6,
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 815.0, 232.0, 233.0, 100.0 ],
					"id" : "obj-62",
					"fontname" : "Arial Black",
					"fontsize" : 11.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[27]",
					"text" : "2) Turn dac ON",
					"numinlets" : 1,
					"frgb" : [ 0.929412, 0.929412, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 844.0, 495.0, 175.0, 32.0 ],
					"id" : "obj-60",
					"fontname" : "Arial Black",
					"fontsize" : 18.0,
					"textcolor" : [ 0.929412, 0.929412, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[26]",
					"text" : "3) Choose a preset \n(or set patch parameters)",
					"linecount" : 2,
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 309.0, 68.0, 267.0, 57.0 ],
					"id" : "obj-43",
					"fontname" : "Arial Black",
					"fontsize" : 18.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[2]",
					"text" : "1) Read a sound",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 64.0, 177.0, 32.0 ],
					"id" : "obj-36",
					"fontname" : "Arial Black",
					"fontsize" : 18.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[25]",
					"text" : "Mikhail Malt, Emmanuel Jourdan, “Real-Time Ises of Low Level Sound Descriptors as Event Detection Functions\nUsing the Max/MSP Zsa.Descriptors Library”, in SBCM 2009, Recife, Brazil, 2009.",
					"linecount" : 5,
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 678.0, 100.0, 312.0, 87.0 ],
					"id" : "obj-32",
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[24]",
					"text" : "<=== isthatyou.aiff",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 404.682678, 181.841339, 150.0, 19.0 ],
					"id" : "obj-17",
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open isthatyou.aiff",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 184.0, 167.0, 108.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[23]",
					"text" : "Multiplicative factor (to set values between 0 and 1)",
					"linecount" : 3,
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 474.0, 351.0, 131.0, 51.0 ],
					"id" : "obj-111",
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 429.0, 351.0, 42.0, 20.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-110",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[22]",
					"text" : "<== Hz low pass filtering frequency",
					"linecount" : 3,
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 711.0, 270.0, 77.0, 44.0 ],
					"id" : "obj-108",
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[21]",
					"text" : "<== dB min value",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 656.0, 241.0, 100.0, 19.0 ],
					"id" : "obj-107",
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "flonum[2]",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 649.0, 268.0, 60.0, 20.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-113",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p level_gate_scaling",
					"numinlets" : 3,
					"numoutlets" : 1,
					"patching_rect" : [ 541.0, 294.0, 126.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-104",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 547.0, 168.0, 354.0, 345.0 ],
						"bglocked" : 0,
						"defrect" : [ 547.0, 168.0, 354.0, 345.0 ],
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
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 93.0, 28.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-2",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 285.0, 34.0, 25.0, 25.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "onepole~ 3 Hz",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 93.0, 115.0, 214.0, 23.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-113",
									"fontname" : "Arial",
									"fontsize" : 14.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "snapshot~ 5",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 93.0, 141.0, 87.0, 23.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"fontsize" : 14.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "average~ 440 rms",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 93.0, 81.0, 124.0, 23.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"fontsize" : 14.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $f1> $f2 then 1 else 0",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 93.0, 226.0, 156.0, 23.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-84",
									"fontname" : "Arial",
									"fontsize" : 14.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "atodb",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 93.0, 180.0, 46.0, 23.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"fontsize" : 14.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 229.0, 29.0, 25.0, 25.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-41",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 93.0, 297.0, 25.0, 25.0 ],
									"id" : "obj-43",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-113", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-113", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-113", 1 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-84", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "flonum[1]",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 595.0, 241.0, 58.0, 20.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-105",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[19]",
					"text" : "<=== man voice",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 404.682678, 169.841339, 150.0, 19.0 ],
					"id" : "obj-102",
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[18]",
					"text" : "<=== woman voice",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 404.682678, 157.262009, 150.0, 19.0 ],
					"id" : "obj-100",
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p burst_detect",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 867.0, 366.0, 87.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-95",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 30.0,
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
									"text" : "r detect",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 93.0, 100.0, 49.0, 20.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-89",
									"fontname" : "Arial",
									"fontsize" : 11.424639
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0.8, 0 100",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 92.0, 129.0, 64.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-88",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 51.0, 192.0, 32.5, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-87",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "line~",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 91.0, 159.0, 35.0, 20.0 ],
									"outlettype" : [ "signal", "bang" ],
									"id" : "obj-86",
									"fontname" : "Arial",
									"fontsize" : 11.424639
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pink~",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 158.0, 38.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-85",
									"fontname" : "Arial",
									"fontsize" : 11.424639
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 51.0, 272.0, 25.0, 25.0 ],
									"id" : "obj-94",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-94", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-88", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 0 ],
									"destination" : [ "obj-86", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-87", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-85", 0 ],
									"destination" : [ "obj-87", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"default_fontsize" : 30.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 30.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 867.0, 432.0, 32.5, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-93",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 34.0, 746.0, 35.0, 20.0 ],
					"outlettype" : [ "bang", "" ],
					"id" : "obj-91",
					"fontname" : "Arial",
					"fontsize" : 11.424639
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s detect",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 72.0, 790.0, 51.0, 20.0 ],
					"id" : "obj-84",
					"fontname" : "Arial",
					"fontsize" : 11.424639
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[17]",
					"text" : "<= multiplicative factor (to set values between 0 and 1)",
					"linecount" : 2,
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 185.0, 621.0, 216.0, 36.0 ],
					"id" : "obj-83",
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[16]",
					"text" : "<= first trigger threshold",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 184.0, 442.0, 155.0, 21.0 ],
					"id" : "obj-81",
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 133.0, 442.0, 50.0, 20.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-82",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numinlets" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 2,
					"patching_rect" : [ 133.0, 477.0, 332.0, 91.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-79",
					"slidercolor" : [ 0.580392, 0.858824, 0.34902, 1.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[15]",
					"text" : "<= second trigger threshold",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 193.0, 677.0, 197.0, 21.0 ],
					"id" : "obj-78",
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open drumLoop.aif",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 168.0, 147.0, 111.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-75",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[4]",
					"text" : "<=== drumLoop.aif",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 404.682678, 145.551682, 150.0, 19.0 ],
					"id" : "obj-74",
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 141.0, 676.0, 50.0, 20.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-73",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numinlets" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 2,
					"patching_rect" : [ 124.0, 716.0, 332.0, 91.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-72",
					"slidercolor" : [ 0.580392, 0.858824, 0.34902, 1.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "> 0.5",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 34.0, 699.0, 36.0, 20.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-70",
					"fontname" : "Arial",
					"fontsize" : 11.424639
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 85.0, 581.0, 50.0, 20.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-69",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open jongly.aif",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 152.0, 124.0, 87.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-67",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open cherokee.aif",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 135.0, 101.0, 106.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-66",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[11]",
					"text" : "<=== jongly.aif",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 404.682678, 134.262009, 150.0, 19.0 ],
					"id" : "obj-65",
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[14]",
					"text" : "coef2",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 237.0, 349.0, 42.0, 21.0 ],
					"id" : "obj-58",
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[13]",
					"text" : "coef1",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 71.0, 347.0, 42.0, 21.0 ],
					"id" : "obj-57",
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 282.0, 349.0, 82.0, 20.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-51",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 116.0, 346.0, 77.0, 20.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-46",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[12]",
					"text" : "<=== cherokee.aif",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 404.682678, 121.524025, 150.0, 19.0 ],
					"id" : "obj-40",
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"patching_rect" : [ 352.0, 123.0, 53.0, 93.0 ],
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"id" : "obj-27",
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "<invalid>", "number~", "list", 0.0, 5, "<invalid>", "number~", "list", 0.0, 5, "obj-4", "multislider", "list", 0.000083, 5, "obj-45", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 1, 5, "obj-23", "multislider", "list", 0.0, 5, "obj-29", "number", "int", 5, 5, "obj-28", "flonum", "float", 0.05, 5, "obj-52", "flonum", "float", 5.0, 5, "obj-46", "flonum", "float", 5152.0, 5, "obj-51", "flonum", "float", 4268.0, 5, "obj-69", "number", "int", 4, 5, "obj-72", "multislider", "list", 0.688, 5, "obj-73", "flonum", "float", 0.688, 5, "obj-79", "multislider", "list", 0.54, 5, "obj-82", "flonum", "float", 0.54, 5, "obj-76", "flonum", "float", 0.09, 5, "obj-105", "flonum", "float", -50.0, 5, "obj-113", "flonum", "float", 3.0, 5, "<invalid>", "number", "int", 7808, 5, "<invalid>", "number", "int", 10284, 5, "obj-110", "flonum", "float", 16.0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "<invalid>", "number~", "list", 0.0, 5, "<invalid>", "number~", "list", 0.0, 5, "obj-4", "multislider", "list", 0.0, 5, "obj-45", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 1, 5, "obj-23", "multislider", "list", 0.0, 5, "obj-29", "number", "int", 5, 5, "obj-28", "flonum", "float", 0.05, 5, "obj-52", "flonum", "float", 14.0, 5, "obj-46", "flonum", "float", 5152.0, 5, "obj-51", "flonum", "float", 24000.0, 5, "obj-69", "number", "int", 4, 5, "obj-72", "multislider", "list", 0.688, 5, "obj-73", "flonum", "float", 0.688, 5, "obj-79", "multislider", "list", 0.4, 5, "obj-82", "flonum", "float", 0.4, 5, "obj-76", "flonum", "float", 0.09, 5, "<invalid>", "number", "int", 10284, 5, "<invalid>", "number", "int", 7808, 5, "obj-105", "flonum", "float", -50.0, 5, "obj-113", "flonum", "float", 3.0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "<invalid>", "number~", "list", 0.0, 5, "<invalid>", "number~", "list", 0.0, 5, "obj-4", "multislider", "list", 0.0, 5, "obj-45", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 1, 5, "obj-23", "multislider", "list", 0.0, 5, "obj-29", "number", "int", 5, 5, "obj-28", "flonum", "float", 0.05, 5, "obj-52", "flonum", "float", 24.0, 5, "obj-46", "flonum", "float", 25000.0, 5, "obj-51", "flonum", "float", 4268.0, 5, "obj-69", "number", "int", 4, 5, "obj-72", "multislider", "list", 0.59, 5, "obj-73", "flonum", "float", 0.59, 5, "obj-79", "multislider", "list", 0.3, 5, "obj-82", "flonum", "float", 0.3, 5, "obj-76", "flonum", "float", 0.09, 5, "<invalid>", "number", "int", 10284, 5, "<invalid>", "number", "int", 7808, 5, "obj-105", "flonum", "float", -50.0, 5, "obj-113", "flonum", "float", 3.0 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "<invalid>", "number~", "list", 0.0, 5, "<invalid>", "number~", "list", 0.0, 5, "obj-4", "multislider", "list", 0.007951, 5, "obj-45", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 1, 5, "obj-23", "multislider", "list", 0.0, 5, "obj-29", "number", "int", 5, 5, "obj-28", "flonum", "float", 0.05, 5, "obj-52", "flonum", "float", 21.0, 5, "obj-46", "flonum", "float", 36000.0, 5, "obj-51", "flonum", "float", 5119.0, 5, "obj-69", "number", "int", 4, 5, "obj-72", "multislider", "list", 0.76, 5, "obj-73", "flonum", "float", 0.76, 5, "obj-79", "multislider", "list", 0.5, 5, "obj-82", "flonum", "float", 0.5, 5, "obj-76", "flonum", "float", 0.09, 5, "obj-105", "flonum", "float", -50.0, 5, "obj-113", "flonum", "float", 3.0, 5, "<invalid>", "number", "int", 7808, 5, "<invalid>", "number", "int", 10284, 5, "obj-110", "flonum", "float", 37.0 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "<invalid>", "number~", "list", 0.0, 5, "<invalid>", "number~", "list", 0.0, 5, "obj-4", "multislider", "list", 0.0, 5, "obj-45", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 1, 5, "obj-23", "multislider", "list", 0.0, 5, "obj-29", "number", "int", 5, 5, "obj-28", "flonum", "float", 0.05, 5, "obj-52", "flonum", "float", 29.0, 5, "obj-46", "flonum", "float", 9761.0, 5, "obj-51", "flonum", "float", 25000.0, 5, "obj-69", "number", "int", 4, 5, "obj-72", "multislider", "list", 0.48, 5, "obj-73", "flonum", "float", 0.48, 5, "obj-79", "multislider", "list", 0.5, 5, "obj-82", "flonum", "float", 0.5, 5, "obj-76", "flonum", "float", 0.09, 5, "<invalid>", "number", "int", 10284, 5, "<invalid>", "number", "int", 7808, 5, "obj-105", "flonum", "float", -50.0, 5, "obj-113", "flonum", "float", 3.0 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "<invalid>", "number~", "list", 0.0, 5, "<invalid>", "number~", "list", 0.0, 5, "obj-4", "multislider", "list", 0.0, 5, "obj-45", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 1, 5, "obj-23", "multislider", "list", 0.0, 5, "obj-29", "number", "int", 5, 5, "obj-28", "flonum", "float", 0.05, 5, "obj-52", "flonum", "float", 29.0, 5, "obj-46", "flonum", "float", 36000.0, 5, "obj-51", "flonum", "float", 5119.0, 5, "obj-69", "number", "int", 4, 5, "obj-72", "multislider", "list", 0.76, 5, "obj-73", "flonum", "float", 0.76, 5, "obj-79", "multislider", "list", 0.5, 5, "obj-82", "flonum", "float", 0.5, 5, "obj-76", "flonum", "float", 0.09, 5, "<invalid>", "number", "int", 10284, 5, "<invalid>", "number", "int", 7808, 5, "obj-105", "flonum", "float", -50.0, 5, "obj-113", "flonum", "float", 3.0 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "<invalid>", "number~", "list", 0.0, 5, "<invalid>", "number~", "list", 0.0, 5, "obj-4", "multislider", "list", 0.054177, 5, "obj-45", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 1, 5, "obj-23", "multislider", "list", 0.043486, 5, "obj-29", "number", "int", 5, 5, "obj-28", "flonum", "float", 0.05, 5, "obj-52", "flonum", "float", 7.0, 5, "obj-46", "flonum", "float", 12817.0, 5, "obj-51", "flonum", "float", 6358.0, 5, "obj-69", "number", "int", 4, 5, "obj-72", "multislider", "list", 0.643, 5, "obj-73", "flonum", "float", 0.643, 5, "obj-79", "multislider", "list", 0.54, 5, "obj-82", "flonum", "float", 0.54, 5, "obj-76", "flonum", "float", 0.16, 5, "obj-105", "flonum", "float", -50.0, 5, "obj-113", "flonum", "float", 3.0, 5, "<invalid>", "number", "int", 7808, 5, "<invalid>", "number", "int", 10284, 5, "obj-110", "flonum", "float", 3.2 ]
						}
, 						{
							"number" : 10,
							"data" : [ 5, "<invalid>", "number~", "list", 0.0, 5, "<invalid>", "number~", "list", 0.0, 5, "obj-4", "multislider", "list", 0.0, 5, "obj-45", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 1, 5, "obj-23", "multislider", "list", 0.0, 5, "obj-29", "number", "int", 5, 5, "obj-28", "flonum", "float", 0.14, 5, "obj-52", "flonum", "float", 11.0, 5, "obj-46", "flonum", "float", 12817.0, 5, "obj-51", "flonum", "float", 24000.0, 5, "obj-69", "number", "int", 4, 5, "obj-72", "multislider", "list", 0.643, 5, "obj-73", "flonum", "float", 0.643, 5, "obj-79", "multislider", "list", 0.5, 5, "obj-82", "flonum", "float", 0.5, 5, "obj-76", "flonum", "float", 0.09, 5, "<invalid>", "number", "int", 10284, 5, "<invalid>", "number", "int", 7808, 5, "obj-105", "flonum", "float", -50.0, 5, "obj-113", "flonum", "float", 3.0 ]
						}
, 						{
							"number" : 11,
							"data" : [ 5, "<invalid>", "number~", "list", 0.0, 5, "<invalid>", "number~", "list", 0.0, 5, "obj-4", "multislider", "list", 0.0, 5, "obj-45", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 1, 5, "obj-23", "multislider", "list", 0.0, 5, "obj-29", "number", "int", 5, 5, "obj-28", "flonum", "float", 0.05, 5, "obj-52", "flonum", "float", 11.0, 5, "obj-46", "flonum", "float", 24000.0, 5, "obj-51", "flonum", "float", 6358.0, 5, "obj-69", "number", "int", 4, 5, "obj-72", "multislider", "list", 0.688, 5, "obj-73", "flonum", "float", 0.688, 5, "obj-79", "multislider", "list", 0.6, 5, "obj-82", "flonum", "float", 0.6, 5, "obj-76", "flonum", "float", 0.09, 5, "<invalid>", "number", "int", 10284, 5, "<invalid>", "number", "int", 7808, 5, "obj-105", "flonum", "float", -50.0, 5, "obj-113", "flonum", "float", 3.0 ]
						}
, 						{
							"number" : 13,
							"data" : [ 5, "<invalid>", "number~", "list", 0.0, 5, "<invalid>", "number~", "list", 0.0, 5, "obj-4", "multislider", "list", 0.0, 5, "obj-45", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 1, 5, "obj-23", "multislider", "list", 0.0, 5, "obj-29", "number", "int", 5, 5, "obj-28", "flonum", "float", 0.05, 5, "obj-52", "flonum", "float", 10.0, 5, "obj-46", "flonum", "float", 9572.0, 5, "obj-51", "flonum", "float", 6315.0, 5, "obj-69", "number", "int", 4, 5, "obj-72", "multislider", "list", 0.44, 5, "obj-73", "flonum", "float", 0.44, 5, "obj-79", "multislider", "list", 0.3, 5, "obj-82", "flonum", "float", 0.3, 5, "obj-76", "flonum", "float", 0.09, 5, "obj-105", "flonum", "float", -50.0, 5, "obj-113", "flonum", "float", 3.0, 5, "<invalid>", "number", "int", 7774, 5, "<invalid>", "number", "int", 9572, 5, "obj-110", "flonum", "float", 20.0 ]
						}
, 						{
							"number" : 14,
							"data" : [ 5, "<invalid>", "number~", "list", 0.0, 5, "<invalid>", "number~", "list", 0.0, 5, "obj-4", "multislider", "list", 0.0, 5, "obj-45", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 1, 5, "obj-23", "multislider", "list", 0.0, 5, "obj-29", "number", "int", 5, 5, "obj-28", "flonum", "float", 0.1, 5, "obj-52", "flonum", "float", 10.0, 5, "obj-46", "flonum", "float", 9572.0, 5, "obj-51", "flonum", "float", 6315.0, 5, "obj-69", "number", "int", 4, 5, "obj-72", "multislider", "list", 0.44, 5, "obj-73", "flonum", "float", 0.44, 5, "obj-79", "multislider", "list", 0.3, 5, "obj-82", "flonum", "float", 0.3, 5, "obj-76", "flonum", "float", 0.09, 5, "<invalid>", "number", "int", 13408, 5, "<invalid>", "number", "int", 7774, 5, "obj-105", "flonum", "float", -50.0, 5, "obj-113", "flonum", "float", 3.0 ]
						}
, 						{
							"number" : 17,
							"data" : [ 5, "<invalid>", "number~", "list", 0.0, 5, "<invalid>", "number~", "list", 0.0, 5, "obj-4", "multislider", "list", 0.001426, 5, "obj-45", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 1, 5, "obj-23", "multislider", "list", 0.0, 5, "obj-29", "number", "int", 5, 5, "obj-28", "flonum", "float", 0.05, 5, "obj-52", "flonum", "float", 7.0, 5, "obj-46", "flonum", "float", 9572.0, 5, "obj-51", "flonum", "float", 6315.0, 5, "obj-69", "number", "int", 4, 5, "obj-72", "multislider", "list", 0.61, 5, "obj-73", "flonum", "float", 0.61, 5, "obj-79", "multislider", "list", 0.3, 5, "obj-82", "flonum", "float", 0.3, 5, "obj-76", "flonum", "float", 0.09, 5, "obj-105", "flonum", "float", -50.0, 5, "obj-113", "flonum", "float", 3.0, 5, "<invalid>", "number", "int", 7774, 5, "<invalid>", "number", "int", 9572, 5, "obj-110", "flonum", "float", 7.0 ]
						}
, 						{
							"number" : 21,
							"data" : [ 5, "<invalid>", "number~", "list", 0.0, 5, "<invalid>", "number~", "list", 0.0, 5, "obj-4", "multislider", "list", 0.949199, 5, "obj-45", "toggle", "int", 1, 5, "obj-44", "toggle", "int", 1, 5, "obj-23", "multislider", "list", 0.580088, 5, "obj-29", "number", "int", 5, 5, "obj-28", "flonum", "float", 0.05, 5, "obj-52", "flonum", "float", 9.0, 5, "obj-46", "flonum", "float", 9572.0, 5, "obj-51", "flonum", "float", 6315.0, 5, "obj-69", "number", "int", 4, 5, "obj-72", "multislider", "list", 0.55, 5, "obj-73", "flonum", "float", 0.55, 5, "obj-79", "multislider", "list", 0.3, 5, "obj-82", "flonum", "float", 0.3, 5, "obj-76", "flonum", "float", 0.09, 5, "obj-105", "flonum", "float", -50.0, 5, "obj-113", "flonum", "float", 3.0, 5, "obj-110", "flonum", "float", 10.0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 130.0, 626.0, 50.0, 20.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-52",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "clip 0. 10000",
					"numinlets" : 3,
					"numoutlets" : 1,
					"patching_rect" : [ 34.0, 631.0, 75.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-26",
					"fontname" : "Arial",
					"fontsize" : 11.424639
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[10]",
					"text" : "In this example we try to detect a spectral brightness and spread increase, that is a characteristic from some consonant category",
					"linecount" : 3,
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 680.0, 13.0, 312.0, 55.0 ],
					"id" : "obj-33",
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 813.0, 398.0, 50.0, 20.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-28",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 10.",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 35.0, 663.0, 34.0, 20.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-35",
					"fontname" : "Arial",
					"fontsize" : 11.424639
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 34.0, 773.0, 36.0, 36.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "change",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 34.0, 721.0, 48.0, 20.0 ],
					"outlettype" : [ "", "int", "int" ],
					"id" : "obj-25",
					"fontname" : "Arial",
					"fontsize" : 11.424639
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 141.0, 274.0, 50.0, 20.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-29",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[8]",
					"text" : "dD1/dt",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 467.0, 752.0, 56.0, 21.0 ],
					"id" : "obj-24",
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numinlets" : 1,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"numoutlets" : 2,
					"setstyle" : 3,
					"patching_rect" : [ 125.0, 716.0, 330.0, 92.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-23",
					"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"setminmax" : [ 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p derivative",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 34.0, 607.0, 70.0, 20.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-22",
					"fontname" : "Arial",
					"fontsize" : 11.59518,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 29.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 29.0, 69.0, 640.0, 480.0 ],
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
									"text" : "/ 2.",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 179.0, 304.0, 194.5, 20.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!- 0.",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 179.0, 274.0, 95.5, 20.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl ecils 1",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 218.0, 249.0, 57.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 180.0, 222.0, 57.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 238.0, 130.0, 25.0, 25.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-7",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl stream 2",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 180.0, 185.0, 69.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 179.0, 342.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 181.0, 132.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-17", 1 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
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
									"source" : [ "obj-17", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[7]",
					"text" : "spectral standard deviation ",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 349.0, 313.0, 143.0, 19.0 ],
					"id" : "obj-21",
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[5]",
					"text" : "spectral centroid ",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 114.0, 312.0, 95.0, 19.0 ],
					"id" : "obj-18",
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 76.0, 112.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 54.0, 111.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-45"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "loop $1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 77.0, 137.0, 50.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-48",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfplay~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 32.0, 190.0, 49.0, 20.0 ],
					"outlettype" : [ "signal", "bang" ],
					"id" : "obj-49",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"save" : [ "#N", "sfplay~", "", 1, 120960, 0, "", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 32.0, 92.0, 37.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-50",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[3]",
					"text" : "D1 = ((centro/coef1) *(stdev/coef2)*K)^2 * Fact",
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.976471, 0.976471, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 65.429962, 411.019196, 369.739899, 21.0 ],
					"id" : "obj-16",
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"textcolor" : [ 0.976471, 0.976471, 0.976471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text[1]",
					"text" : "<= 1",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 468.0, 463.0, 34.0, 19.0 ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr ($f1/$f2)*($f1/$f2)*($f3/$f4)*($f3/$f4) * $f5* $f5*$f6",
					"numinlets" : 6,
					"numoutlets" : 1,
					"patching_rect" : [ 32.0, 389.0, 431.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"fontsize" : 11.424639
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p smoothing",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 272.0, 316.0, 74.0, 20.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"fontsize" : 11.59518,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 168.0, 150.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 168.0, 150.0, 640.0, 480.0 ],
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
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 106.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl stream 5",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 55.0, 100.0, 67.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"fontsize" : 11.595187
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mean",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 55.0, 133.0, 40.0, 20.0 ],
									"outlettype" : [ "float", "int" ],
									"id" : "obj-32",
									"fontname" : "Arial",
									"fontsize" : 11.595187
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-37",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.0, 213.0, 25.0, 25.0 ],
									"id" : "obj-38",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-30", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p smoothing",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 32.0, 310.0, 74.0, 20.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-39",
					"fontname" : "Arial",
					"fontsize" : 11.59518,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 168.0, 150.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 168.0, 150.0, 640.0, 480.0 ],
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
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 106.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl stream 5",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 55.0, 100.0, 67.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"fontsize" : 11.595187
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mean",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 55.0, 133.0, 40.0, 20.0 ],
									"outlettype" : [ "float", "int" ],
									"id" : "obj-32",
									"fontname" : "Arial",
									"fontsize" : 11.595187
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-37",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.0, 213.0, 25.0, 25.0 ],
									"id" : "obj-38",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-30", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 60.0, 530.0, 36.0, 36.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-56"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "change",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 60.0, 507.0, 48.0, 20.0 ],
					"outlettype" : [ "", "int", "int" ],
					"id" : "obj-54",
					"fontname" : "Arial",
					"fontsize" : 11.424639
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "> 0.5",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 60.0, 481.0, 36.0, 20.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-53",
					"fontname" : "Arial",
					"fontsize" : 11.424639
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numinlets" : 1,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"numoutlets" : 2,
					"setstyle" : 3,
					"patching_rect" : [ 133.0, 476.0, 330.0, 92.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-4",
					"slidercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"setminmax" : [ 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "snapshot~ 20",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 31.0, 264.0, 80.0, 20.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"fontsize" : 11.59518
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "snapshot~ 20",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 252.0, 281.0, 80.0, 20.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"fontsize" : 11.59518
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sqrt~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 250.0, 256.0, 37.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-6",
					"fontname" : "Arial",
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pfft~ zsa.abs_centroid_spread 1024 4",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 32.0, 229.0, 205.0, 20.0 ],
					"outlettype" : [ "signal", "signal" ],
					"id" : "obj-10",
					"fontname" : "Arial",
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"presentation_rect" : [ 150.0, 150.0, 195.402344, 21.798828 ],
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"numoutlets" : 3,
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"patching_rect" : [ 479.0, 21.0, 195.402344, 21.798828 ],
					"text" : "open Zsa.Descriptors Overview",
					"outlettype" : [ "", "", "int" ],
					"id" : "obj-55",
					"fontname" : "Arial",
					"textoncolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"fontlink" : 1,
					"textovercolor" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"textoveroncolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"fontface" : 3,
					"fontsize" : 12.0,
					"textcolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load zsa.overview.maxpat",
					"numinlets" : 2,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 478.0, 47.0, 145.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-41",
					"fontname" : "Arial",
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 478.0, 66.0, 57.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-42",
					"fontname" : "Arial",
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 798.0, 434.0, 32.5, 20.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-47",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_dac_text",
					"text" : "start audio",
					"linecount" : 2,
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 750.0, 494.0, 38.0, 33.0 ],
					"id" : "obj-12",
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"varname" : "autohelp_dac",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 788.0, 483.0, 45.0, 45.0 ],
					"id" : "obj-38",
					"local" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "startwinwdow_panel",
					"numinlets" : 1,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"numoutlets" : 0,
					"border" : 2,
					"patching_rect" : [ 740.0, 478.0, 100.0, 55.0 ],
					"id" : "obj-19",
					"bordercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_text",
					"text" : "<= 0",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 468.0, 550.0, 34.0, 19.0 ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_description",
					"text" : "building a compound descriptor to try tracking sibilant consonants",
					"numinlets" : 1,
					"frgb" : [ 0.93, 0.93, 0.97, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 7.0, 39.0, 455.0, 21.0 ],
					"id" : "obj-3",
					"fontname" : "Arial",
					"fontsize" : 12.754705,
					"textcolor" : [ 0.93, 0.93, 0.97, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "zsa_title",
					"text" : "zsa.consonant tracking",
					"numinlets" : 1,
					"frgb" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 7.0, 8.0, 455.0, 30.0 ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"fontface" : 3,
					"fontsize" : 20.871338,
					"textcolor" : [ 0.533333, 0.65098, 0.286275, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bgcolor" : [ 0.533333, 0.65098, 0.286275, 0.388235 ],
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 69.0, 292.0, 150.0 ],
					"id" : "obj-34",
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bgcolor" : [ 0.533333, 0.65098, 0.286275, 0.388235 ],
					"numoutlets" : 0,
					"patching_rect" : [ 304.0, 69.0, 272.0, 150.0 ],
					"id" : "obj-59",
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bgcolor" : [ 0.533333, 0.65098, 0.286275, 0.509804 ],
					"numoutlets" : 0,
					"patching_rect" : [ 535.0, 230.0, 509.0, 101.0 ],
					"id" : "obj-61",
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bgcolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 339.0, 584.0, 95.0 ],
					"id" : "obj-64",
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 0.501961 ],
					"numoutlets" : 0,
					"patching_rect" : [ 735.0, 351.0, 294.0, 191.0 ],
					"id" : "obj-80",
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bgcolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 19.0, 221.0, 483.0, 37.0 ],
					"id" : "obj-85",
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bgcolor" : [ 0.85098, 0.533333, 0.254902, 0.603922 ],
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 577.0, 705.0, 244.0 ],
					"id" : "obj-90",
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bgcolor" : [ 0.85098, 0.533333, 0.254902, 0.380392 ],
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 437.0, 684.0, 138.0 ],
					"id" : "obj-92",
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel",
					"grad1" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"numinlets" : 1,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"mode" : 1,
					"grad2" : [ 0.27451, 0.368627, 0.45098, 1.0 ],
					"numoutlets" : 0,
					"angle" : -88.349983,
					"patching_rect" : [ 7.0, 8.0, 473.0, 52.0 ],
					"id" : "obj-37",
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 193.5, 188.0, 41.5, 188.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-35", 1 ],
					"hidden" : 0,
					"midpoints" : [ 139.5, 658.0, 59.5, 658.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [ 150.5, 306.5, 336.5, 306.5 ]
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
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-39", 1 ],
					"hidden" : 0,
					"midpoints" : [ 150.5, 308.0, 96.5, 308.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 86.5, 183.0, 41.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 63.5, 170.0, 41.5, 170.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 807.5, 467.0, 797.5, 467.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-38", 1 ],
					"hidden" : 0,
					"midpoints" : [ 807.5, 470.0, 823.5, 470.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-47", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 144.5, 180.5, 41.5, 180.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 161.5, 183.0, 41.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [ 41.5, 220.0, 807.5, 220.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 44.5, 688.5, 134.5, 688.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-70", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 177.5, 186.5, 41.5, 186.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-53", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 227.5, 250.0, 259.5, 250.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [ 43.5, 771.5, 81.5, 771.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-38", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 0 ],
					"destination" : [ "obj-104", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-104", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [ 41.5, 222.0, 550.5, 222.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-1", 4 ],
					"hidden" : 0,
					"midpoints" : [ 550.5, 336.5, 371.100006, 336.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 41.5, 383.714874, 41.5, 383.714874 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [ 41.5, 475.5, 69.5, 475.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 0,
					"midpoints" : [ 281.5, 343.0, 206.300003, 343.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-1", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 41.5, 471.0, 142.5, 471.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-110", 0 ],
					"destination" : [ "obj-1", 5 ],
					"hidden" : 0,
					"midpoints" : [ 438.5, 379.0, 453.5, 379.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 41.5, 262.5, 40.5, 262.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 261.5, 306.0, 281.5, 306.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-93", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
