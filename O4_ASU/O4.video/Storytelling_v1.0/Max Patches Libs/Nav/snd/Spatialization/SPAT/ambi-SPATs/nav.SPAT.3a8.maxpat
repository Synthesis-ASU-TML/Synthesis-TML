{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 348.0, -536.0, 395.0, 254.0 ],
		"bgcolor" : [ 0.784314, 0.764706, 0.909804, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 348.0, -536.0, 395.0, 254.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 0,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 330.0, 97.0, 20.0 ],
					"text" : "r #1.MasterGain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica",
					"fontsize" : 10.0,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 374.0, 44.0, 520.0, 742.0 ],
						"bglocked" : 0,
						"defrect" : [ 374.0, 44.0, 520.0, 742.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 14.0,
									"id" : "obj-1",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 15.0, 288.0, 20.0 ],
									"text" : "Spat_OPer : controls and high-level syntax"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 521.0, 379.0, 18.0 ],
									"text" : "Source orientation and directivity ('radiation' window)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-3",
									"linecount" : 9,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 14.0, 273.0, 440.0, 96.0 ],
									"text" : "crit Es <float> ..................... early sound (dB): power of direct sound and early room effect;\rcrit Desl <float>................... relative early sound at low frequencies (dB);\rcrit Desh <float>.................. relative early sound at high frequencies (dB);\rcrit Rev <float> ................... late sound (dB): power of later reverberation;\rcrit Edt <float> ................... early decay time (s);\rcrit Rd1 <float> ................... energy of early room effect relative to direct sound (dB);\rcrit Rt <float> ..................... late decay time (s);\rcrit Drtl <float>.................... relative late decay time at low frequencies;\rcrit Drth <float>................... relative late decay time at high frequencies."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 9.0,
									"id" : "obj-4",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 318.0, 644.0, 174.0, 42.0 ],
									"text" : "NOTE: the crossover frequencies fl and fh in the 'radiation' window affect all spectral correctors in Room~ and decoder~."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 635.0, 259.0, 18.0 ],
									"text" : "Crossover frequencies ('radiation' window)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-6",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 14.0, 654.0, 293.0, 26.0 ],
									"text" : "source fl <int/float> ............. low crossover frequency (Hz);\rsource fh <int/float> ............ high crossover frequency (Hz)."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 394.0, 116.0, 18.0 ],
									"text" : "Source localization"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-8",
									"linecount" : 9,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 14.0, 133.0, 294.0, 96.0 ],
									"text" : "fact pres <int> .................... source presence (or proximity);\rfact warm <int> .................. source warmth;\rfact bril <int> ...................... source brilliance;\rfact prer <int> .................... room presence;\rfact revp <int> .................... running reverberance;\rfact env <int> ..................... envelopment;\rfact rev <int> ...................... late reverberance;\rfact heav <int> .................... heaviness;\rfact live <int> ...................... liveness."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 114.0, 110.0, 18.0 ],
									"text" : "Perceptual factors"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 254.0, 105.0, 18.0 ],
									"text" : "Objective criteria"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 144.0, 256.0, 313.0, 16.0 ],
									"text" : "(listed in same order as corresponding perceptual factors above)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-12",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 14.0, 45.0, 474.0, 46.0 ],
									"text" : "bang ................................... reset;\rDISPLAY <int> ................... update user-interface according to future incoming messages;\rspeedlim <int> ..................... speedlimiting time (ms) for perceptual factors or criteria (default: 60);\rspeedlim <list> ..................... same followed by speedlimiting time for panning (default: 30)."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 9.0,
									"id" : "obj-13",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 310.0, 98.0, 173.0, 24.0 ],
									"text" : "affects panning, source presence Doppler and air absorption"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-14",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 14.0, 97.0, 295.0, 16.0 ],
									"text" : "radius <float> ...................... minimum distance (default 1m.)."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 9.0,
									"id" : "obj-15",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 310.0, 134.0, 145.0, 24.0 ],
									"text" : "source presence is coupled with distance via 'drop' (see below)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-16",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 14.0, 504.0, 437.0, 16.0 ],
									"text" : "source radius <float> ........... same as 'radius' but does not affect panning."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-17",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 14.0, 413.0, 487.0, 76.0 ],
									"text" : "source Az <int> ................... source azimuth (degrees): angle in horizontal plane (anticlockwise);\rsource Dist <int/float> ......... source distance (m) --affects panning, presence, Doppler, air absorp.;\rsource El <int> .................... source elevation from horizontal plane (degrees, -90 to 90);\rsource Az <list> ................... (azimuth distance) or (azimuth distance elevation);\rsource Dopp <toggle> ......... enable/disable variable delay derived from (Dist - radius);\rsource drop <int/float> ........ attenuation of early sound when Dist is doubled (for Dist > radius);\rsource air <toggle> .............. enable/disable low-pass effect of air absorption (for Dist > radius)."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-18",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 14.0, 540.0, 486.0, 76.0 ],
									"text" : "source Yaw <int> ................. rotation around 'vertical axis' (degrees, 90 left);\rsource Pitch <int> ............... deviation of source axis from 'horizontal plane' (degrees, 90 up):;\rsource Roll <int> .................. rotation around source axis (-- not implemented);\rsource A3Y <int> ................. Yaw aperture for 3 dB attenuation from axis (degrees, 10 to 180);\rsource A3P <int> ................. Pitch aperture for 3 dB attenuation from axis (-- not implemented);\rsource axis <list> ................. on-axis spectral correction (see hlshelf1~);\rsource omni <list> ................ diffuse average spectral correction (see hlshelf1~)."
								}

							}
 ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 348.0, 301.0, 132.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 269.0, 4.0, 123.0, 16.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}
,
					"text" : "patcher controls & syntax"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 453.0, 325.0, 85.0, 20.0 ],
					"text" : "loadmess 127"
				}

			}
, 			{
				"box" : 				{
					"defaultvalue" : 100.0,
					"fgcolor" : [ 0.607843, 0.305882, 0.305882, 1.0 ],
					"fontface" : 1,
					"id" : "obj-76",
					"maxclass" : "jcom.textslider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 452.835236, 350.528778, 176.0, 17.350044 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 114.925987, 383.0, 20.192116 ],
					"range" : [ 0.0, 157.0 ],
					"text" : "Master Gain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 89.839813, 254.566986, 10.315434, 52.530525 ],
					"presentation" : 1,
					"presentation_rect" : [ 92.026436, 180.421036, 10.315434, 64.609329 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 77.839752, 254.566986, 10.315434, 52.530525 ],
					"presentation" : 1,
					"presentation_rect" : [ 80.026375, 180.421036, 10.315434, 64.609329 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 65.839752, 254.566986, 10.315434, 52.530525 ],
					"presentation" : 1,
					"presentation_rect" : [ 68.026375, 180.421036, 10.315434, 64.609329 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 53.839687, 254.566986, 10.315434, 52.530525 ],
					"presentation" : 1,
					"presentation_rect" : [ 56.026314, 180.421036, 10.315434, 64.609329 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 41.839748, 254.566986, 10.315434, 52.530525 ],
					"presentation" : 1,
					"presentation_rect" : [ 44.026375, 180.421036, 10.315434, 64.609329 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 29.83975, 254.566986, 10.315434, 52.530525 ],
					"presentation" : 1,
					"presentation_rect" : [ 32.026375, 180.421036, 10.315434, 64.609329 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 17.839689, 254.566986, 10.315434, 52.530525 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.026314, 180.421036, 10.315434, 64.609329 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5.83975, 254.566986, 10.315434, 52.530525 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.026375, 180.421036, 10.315434, 64.609329 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 181.740707, 135.210678, 11.025951, 35.478096 ],
					"presentation" : 1,
					"presentation_rect" : [ 129.0, 57.0, 8.894398, 31.925507 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 166.740677, 135.210678, 11.025951, 35.478096 ],
					"presentation" : 1,
					"presentation_rect" : [ 117.0, 57.0, 8.894398, 31.925507 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 151.740707, 135.210678, 11.025951, 35.478096 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.0, 57.0, 8.894398, 31.925507 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-61",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 91.421036, 93.842392, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-60",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 46.421036, 93.842392, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-59",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1.421036, 93.842392, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 495.0, 283.0, 111.0, 20.0 ],
					"text" : "s #1.nav.SPAT.out"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-43",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 465.0, 283.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 32,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.0, 253.0, 87.385254, 20.0 ],
					"text" : "jcom.multi.in~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 164.0, 153.0, 331.0, 421.0 ],
						"bglocked" : 0,
						"defrect" : [ 164.0, 153.0, 331.0, 421.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 14.0,
									"id" : "obj-1",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 16.0, 23.0, 182.0, 20.0 ],
									"text" : "MIDI control map for Spat"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 68.0, 98.0, 16.0 ],
									"text" : "source Dist (MSB)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 68.0, 95.0, 16.0 ],
									"text" : "source Dist (LSB)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 9.0,
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.0, 50.0, 41.0, 15.0 ],
									"text" : "number"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 113.0, 98.0, 16.0 ],
									"text" : "(not used)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 336.0, 33.0, 18.0 ],
									"text" : "120"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 216.0, 33.0, 18.0 ],
									"text" : "112"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 336.0, 33.0, 18.0 ],
									"text" : "88"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 216.0, 33.0, 18.0 ],
									"text" : "80"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 83.0, 95.0, 16.0 ],
									"text" : "(not used)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 338.0, 95.0, 16.0 ],
									"text" : "source omni fh"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 293.0, 95.0, 16.0 ],
									"text" : "source omni Gm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 308.0, 95.0, 16.0 ],
									"text" : "source omni Gh"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-14",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 323.0, 95.0, 16.0 ],
									"text" : "source omni fl"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-15",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 278.0, 95.0, 16.0 ],
									"text" : "source omni Gl"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-16",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 263.0, 95.0, 16.0 ],
									"text" : "source omni G0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-17",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 128.0, 95.0, 16.0 ],
									"text" : "source Roll"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-18",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 98.0, 95.0, 16.0 ],
									"text" : "source Yaw"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-19",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 113.0, 95.0, 16.0 ],
									"text" : "source Pitch"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-20",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 173.0, 95.0, 16.0 ],
									"text" : "source axis G0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 158.0, 95.0, 16.0 ],
									"text" : "source A3P"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 143.0, 95.0, 16.0 ],
									"text" : "source A3Y"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 188.0, 95.0, 16.0 ],
									"text" : "source axis Gl"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 233.0, 95.0, 16.0 ],
									"text" : "source axis fl"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-25",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 218.0, 95.0, 16.0 ],
									"text" : "source axis Gh"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 203.0, 95.0, 16.0 ],
									"text" : "source axis Gm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 248.0, 95.0, 16.0 ],
									"text" : "source axis fh"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 338.0, 98.0, 16.0 ],
									"text" : "fact live"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-29",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 308.0, 98.0, 16.0 ],
									"text" : "fact rev"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-30",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 323.0, 98.0, 16.0 ],
									"text" : "fact heav"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-31",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 233.0, 98.0, 16.0 ],
									"text" : "fact warm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-32",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 188.0, 98.0, 16.0 ],
									"text" : "source fl"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-33",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 203.0, 98.0, 16.0 ],
									"text" : "source fh"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-34",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 218.0, 98.0, 16.0 ],
									"text" : "fact pres"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-35",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 278.0, 98.0, 16.0 ],
									"text" : "fact revp"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-36",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 263.0, 98.0, 16.0 ],
									"text" : "fact prer"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-37",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 248.0, 98.0, 16.0 ],
									"text" : "fact bril"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-38",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 293.0, 98.0, 16.0 ],
									"text" : "fact env"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-39",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 173.0, 98.0, 16.0 ],
									"text" : "source drop"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-40",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 128.0, 98.0, 16.0 ],
									"text" : "bang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-41",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 143.0, 98.0, 16.0 ],
									"text" : "source Dopp"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-42",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 158.0, 98.0, 16.0 ],
									"text" : "source air"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-43",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 66.0, 33.0, 18.0 ],
									"text" : "102"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-44",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 98.0, 98.0, 16.0 ],
									"text" : "source El"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 10.0,
									"id" : "obj-45",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 83.0, 98.0, 16.0 ],
									"text" : "source Az"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-46",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 66.0, 33.0, 18.0 ],
									"text" : "70"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 9.0,
									"id" : "obj-47",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 62.0, 50.0, 63.0, 15.0 ],
									"text" : "parameter"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 9.0,
									"id" : "obj-48",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 209.0, 50.0, 63.0, 15.0 ],
									"text" : "parameter"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 9.0,
									"id" : "obj-49",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 164.0, 50.0, 41.0, 15.0 ],
									"text" : "number"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-50",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 81.0, 33.0, 18.0 ],
									"text" : "71"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-51",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 111.0, 33.0, 18.0 ],
									"text" : "73"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-52",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 96.0, 33.0, 18.0 ],
									"text" : "72"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-53",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 156.0, 33.0, 18.0 ],
									"text" : "76"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-54",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 171.0, 33.0, 18.0 ],
									"text" : "77"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-55",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 141.0, 33.0, 18.0 ],
									"text" : "75"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-56",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 126.0, 33.0, 18.0 ],
									"text" : "74"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-57",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 201.0, 33.0, 18.0 ],
									"text" : "79"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-58",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 186.0, 33.0, 18.0 ],
									"text" : "78"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-59",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 276.0, 33.0, 18.0 ],
									"text" : "84"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-60",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 291.0, 33.0, 18.0 ],
									"text" : "85"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-61",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 321.0, 33.0, 18.0 ],
									"text" : "87"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-62",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 306.0, 33.0, 18.0 ],
									"text" : "86"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-63",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 246.0, 33.0, 18.0 ],
									"text" : "82"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-64",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 261.0, 33.0, 18.0 ],
									"text" : "83"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-65",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 231.0, 33.0, 18.0 ],
									"text" : "81"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-66",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 201.0, 33.0, 18.0 ],
									"text" : "111"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-67",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 156.0, 33.0, 18.0 ],
									"text" : "108"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-68",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 171.0, 33.0, 18.0 ],
									"text" : "109"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-69",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 96.0, 33.0, 18.0 ],
									"text" : "104"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-70",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 111.0, 33.0, 18.0 ],
									"text" : "105"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-71",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 141.0, 33.0, 18.0 ],
									"text" : "107"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 126.0, 33.0, 18.0 ],
									"text" : "106"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-73",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 81.0, 33.0, 18.0 ],
									"text" : "103"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-74",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 186.0, 33.0, 18.0 ],
									"text" : "110"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-75",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 231.0, 33.0, 18.0 ],
									"text" : "113"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-76",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 276.0, 33.0, 18.0 ],
									"text" : "116"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-77",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 291.0, 33.0, 18.0 ],
									"text" : "117"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-78",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 261.0, 33.0, 18.0 ],
									"text" : "115"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-79",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 246.0, 33.0, 18.0 ],
									"text" : "114"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-80",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 321.0, 33.0, 18.0 ],
									"text" : "119"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica",
									"fontsize" : 12.0,
									"id" : "obj-81",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 306.0, 33.0, 18.0 ],
									"text" : "118"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 163.0, 2.0, 110.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 165.0, 4.0, 101.0, 18.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}
,
					"text" : "patcher control map"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.486275, 0.686275, 0.023529, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 95.0, 361.0, 82.0, 117.0 ],
						"bglocked" : 0,
						"defrect" : [ 95.0, 361.0, 82.0, 117.0 ],
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
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 55.0, 124.0, 123.0, 49.0 ],
										"bglocked" : 0,
										"defrect" : [ 55.0, 124.0, 123.0, 49.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-2",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 5.0, 25.0, 88.0, 20.0 ],
													"text" : "master gain"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 5.0, 5.0, 106.0, 20.0 ],
													"text" : "r #1.SPAT.Master"
												}

											}
 ],
										"lines" : [  ]
									}
,
									"patching_rect" : [ 5.0, 85.0, 68.0, 20.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}
,
									"text" : "p general"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 112.0, -454.0, 895.0, 196.0 ],
										"bglocked" : 0,
										"defrect" : [ 112.0, -454.0, 895.0, 196.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-17",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 756.0, 100.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 756.0, 130.0, 84.0, 17.0 ],
													"text" : "prepend source El"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-14",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 651.0, 100.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 651.0, 130.0, 96.0, 17.0 ],
													"text" : "prepend source Pitch"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-2",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 541.0, 100.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 541.0, 130.0, 93.0, 17.0 ],
													"text" : "prepend source Yaw"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 9,
													"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 5.0, 60.0, 882.0, 20.0 ],
													"text" : "osc-route /Az /Dist /Radiation /RoomPres /LateRev /Yaw /Pitch /El"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-11",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 434.0, 100.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 434.0, 130.0, 76.0, 17.0 ],
													"text" : "prepend fact rev"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-9",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 326.0, 100.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 326.0, 130.0, 79.0, 17.0 ],
													"text" : "prepend fact prer"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-19",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 219.0, 100.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 219.0, 130.0, 93.0, 17.0 ],
													"text" : "prepend source A3Y"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 278.0, 170.0, 61.0, 20.0 ],
													"text" : "s #0.toS3"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-88",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 5.0, 100.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-89",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 5.0, 130.0, 86.0, 17.0 ],
													"text" : "prepend source Az"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-87",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 111.0, 100.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-83",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 111.0, 130.0, 95.0, 17.0 ],
													"text" : "prepend source Dist"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 5.0, 7.0, 20.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 5.0, 33.0, 54.0, 20.0 ],
													"text" : "gate 1 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 40.0, 10.0, 79.0, 20.0 ],
													"text" : "r #1.Source3"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-83", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-89", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 7 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-87", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-88", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-83", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-87", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-89", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-88", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-4", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 5.0, 60.0, 69.0, 20.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}
,
									"text" : "p Source 3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 163.0, -751.0, 893.0, 200.0 ],
										"bglocked" : 0,
										"defrect" : [ 163.0, -751.0, 893.0, 200.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-17",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 756.0, 103.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 756.0, 133.0, 84.0, 17.0 ],
													"text" : "prepend source El"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-14",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 651.0, 103.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 651.0, 133.0, 96.0, 17.0 ],
													"text" : "prepend source Pitch"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-2",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 541.0, 103.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 541.0, 133.0, 93.0, 17.0 ],
													"text" : "prepend source Yaw"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 9,
													"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 5.0, 63.0, 882.0, 20.0 ],
													"text" : "osc-route /Az /Dist /Radiation /RoomPres /LateRev /Yaw /Pitch /El"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-11",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 434.0, 103.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 434.0, 133.0, 76.0, 17.0 ],
													"text" : "prepend fact rev"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-9",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 326.0, 103.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 326.0, 133.0, 79.0, 17.0 ],
													"text" : "prepend fact prer"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-19",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 219.0, 103.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 219.0, 133.0, 93.0, 17.0 ],
													"text" : "prepend source A3Y"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 273.0, 173.0, 61.0, 20.0 ],
													"text" : "s #0.toS2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-88",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 5.0, 103.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-89",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 5.0, 133.0, 86.0, 17.0 ],
													"text" : "prepend source Az"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-87",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 111.0, 103.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-83",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 111.0, 133.0, 95.0, 17.0 ],
													"text" : "prepend source Dist"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 5.0, 10.0, 20.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 5.0, 36.0, 54.0, 20.0 ],
													"text" : "gate 1 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 40.0, 13.0, 79.0, 20.0 ],
													"text" : "r #1.Source2"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-83", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-89", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 7 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-87", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-88", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-83", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-87", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-89", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-88", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-7", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 5.0, 35.0, 69.0, 20.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}
,
									"text" : "p Source 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 236.0, -1000.0, 895.0, 187.0 ],
										"bglocked" : 0,
										"defrect" : [ 236.0, -1000.0, 895.0, 187.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-17",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 758.0, 95.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 758.0, 125.0, 84.0, 17.0 ],
													"text" : "prepend source El"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-14",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 653.0, 95.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 653.0, 125.0, 96.0, 17.0 ],
													"text" : "prepend source Pitch"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-2",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 543.0, 95.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 543.0, 125.0, 93.0, 17.0 ],
													"text" : "prepend source Yaw"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 9,
													"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 7.0, 55.0, 882.0, 20.0 ],
													"text" : "osc-route /Az /Dist /Radiation /RoomPres /LateRev /Yaw /Pitch /El"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-11",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 436.0, 95.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 436.0, 125.0, 76.0, 17.0 ],
													"text" : "prepend fact rev"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-9",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 328.0, 95.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 328.0, 125.0, 79.0, 17.0 ],
													"text" : "prepend fact prer"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-19",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 221.0, 95.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 221.0, 125.0, 93.0, 17.0 ],
													"text" : "prepend source A3Y"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 275.0, 165.0, 61.0, 20.0 ],
													"text" : "s #0.toS1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-88",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 7.0, 95.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-89",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 7.0, 125.0, 86.0, 17.0 ],
													"text" : "prepend source Az"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-87",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"patching_rect" : [ 113.0, 95.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-83",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 113.0, 125.0, 95.0, 17.0 ],
													"text" : "prepend source Dist"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 7.0, 2.0, 20.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 7.0, 28.0, 54.0, 20.0 ],
													"text" : "gate 1 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 42.0, 5.0, 79.0, 20.0 ],
													"text" : "r #1.Source1"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-89", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-88", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-83", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-87", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-83", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-89", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-88", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-87", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 7 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-4", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 5.0, 10.0, 69.0, 20.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}
,
									"text" : "p Source 1"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 5.0, 1.0, 156.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 3.0, 156.0, 23.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}
,
					"text" : "p REMOTE CONTROL"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 335.0, 148.0, 51.0, 18.0 ],
					"text" : "r #0.toS3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 266.0, 148.0, 51.0, 18.0 ],
					"text" : "r #0.toS2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 195.0, 148.0, 51.0, 18.0 ],
					"text" : "r #0.toS1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5.0, 336.0, 42.0, 17.0 ],
					"text" : "r patch"
				}

			}
, 			{
				"box" : 				{
					"bubblesize" : 8,
					"id" : "obj-56",
					"margin" : 4,
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 5.0, 351.0, 61.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.261833, 233.343185, 61.0, 16.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 6, "obj-51", "gain~", "list", 125, 10.0, 6, "obj-49", "gain~", "list", 125, 10.0, 6, "obj-47", "gain~", "list", 125, 10.0, 6, "obj-45", "gain~", "list", 125, 10.0, 5, "<invalid>", "slider", "float", 125.0, 5, "obj-23", "umenu", "int", 3, 5, "obj-20", "umenu", "int", 0, 5, "obj-18", "umenu", "int", 0, 5, "obj-14", "number", "int", 6000, 5, "obj-10", "umenu", "int", 0, 5, "obj-8", "umenu", "int", 0, 5, "obj-6", "umenu", "int", 0, 5, "obj-4", "umenu", "int", 0, 6, "obj-101", "gain~", "list", 125, 10.0, 6, "obj-99", "gain~", "list", 125, 10.0, 6, "obj-97", "gain~", "list", 125, 10.0, 6, "obj-95", "gain~", "list", 125, 10.0 ]
						}
 ],
					"spacing" : 2
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-142",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 6,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 408.0, 90.0, 395.0, 299.0 ],
						"bglocked" : 0,
						"defrect" : [ 408.0, 90.0, 395.0, 299.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-40",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 316.0, 0.0, 34.0, 27.0 ],
									"text" : "All"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 324.0, 90.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 319.0, 41.0, 28.0, 28.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-61",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 264.0, 41.0, 29.0, 15.0 ],
									"text" : "open"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 263.0, 90.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 211.0, 41.0, 28.0, 28.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-64",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 211.0, 27.0, 28.0, 17.0 ],
									"text" : "play"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-65",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 236.0, 91.0, 26.0, 17.0 ],
									"text" : "loop"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-66",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 208.0, 0.0, 82.0, 27.0 ],
									"text" : "Input~ 3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-67",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 160.0, 41.0, 29.0, 15.0 ],
									"text" : "open"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 159.0, 90.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 107.0, 41.0, 28.0, 28.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-70",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 107.0, 27.0, 28.0, 17.0 ],
									"text" : "play"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-71",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 132.0, 91.0, 26.0, 17.0 ],
									"text" : "loop"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 104.0, 0.0, 82.0, 27.0 ],
									"text" : "Input~ 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-73",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 56.0, 41.0, 29.0, 15.0 ],
									"text" : "open"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 3,
									"outlettype" : [ "signal", "signal", "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 11.0, 42.0, 609.0, 251.0 ],
										"bglocked" : 0,
										"defrect" : [ 11.0, 42.0, 609.0, 251.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-1",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 506.0, 133.0, 16.0, 15.0 ],
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 506.0, 112.0, 27.0, 17.0 ],
													"text" : "gate"
												}

											}
, 											{
												"box" : 												{
													"comment" : "output 3 (signal)",
													"id" : "obj-3",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 406.0, 175.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 406.0, 70.0, 127.0, 17.0 ],
													"save" : [ "#N", "sfplay~", "", 1, 16384, 0, "", ";" ],
													"text" : "sfplay~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-5",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 424.0, 24.0, 64.0, 27.0 ],
													"text" : "<- Open/Play soundfile 3"
												}

											}
, 											{
												"box" : 												{
													"comment" : "loop soundfile 3",
													"id" : "obj-6",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 506.0, 22.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "play soundfile 3",
													"id" : "obj-7",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 406.0, 22.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-8",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 424.0, 176.0, 82.0, 17.0 ],
													"text" : "output 3 (signal)"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-9",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 524.0, 24.0, 53.0, 27.0 ],
													"text" : "<- Loop soundfile 3"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-10",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 316.0, 133.0, 16.0, 15.0 ],
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 316.0, 112.0, 27.0, 17.0 ],
													"text" : "gate"
												}

											}
, 											{
												"box" : 												{
													"comment" : "output 2 (signal)",
													"id" : "obj-12",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 216.0, 175.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 216.0, 70.0, 127.0, 17.0 ],
													"save" : [ "#N", "sfplay~", "", 1, 16384, 0, "", ";" ],
													"text" : "sfplay~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-14",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 234.0, 24.0, 64.0, 27.0 ],
													"text" : "<- Open/Play soundfile 2"
												}

											}
, 											{
												"box" : 												{
													"comment" : "loop soundfile 2",
													"id" : "obj-15",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 316.0, 22.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "play soundfile 2",
													"id" : "obj-16",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 216.0, 22.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-17",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 234.0, 176.0, 82.0, 17.0 ],
													"text" : "output 2 (signal)"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-18",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 334.0, 24.0, 53.0, 27.0 ],
													"text" : "<- Loop soundfile 2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-19",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 126.0, 133.0, 16.0, 15.0 ],
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 126.0, 112.0, 27.0, 17.0 ],
													"text" : "gate"
												}

											}
, 											{
												"box" : 												{
													"comment" : "output 1 (signal)",
													"id" : "obj-21",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 26.0, 175.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 26.0, 70.0, 127.0, 17.0 ],
													"save" : [ "#N", "sfplay~", "", 1, 16384, 0, "", ";" ],
													"text" : "sfplay~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-23",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 44.0, 24.0, 64.0, 27.0 ],
													"text" : "<- Open/Play soundfile 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "loop soundfile 1",
													"id" : "obj-24",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 126.0, 22.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "play soundfile 1",
													"id" : "obj-25",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 26.0, 22.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-26",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 44.0, 176.0, 82.0, 17.0 ],
													"text" : "output 1 (signal)"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-27",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 144.0, 24.0, 53.0, 27.0 ],
													"text" : "<- Loop soundfile 1"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-4", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [ 515.5, 161.0, 393.0, 161.0, 393.0, 56.0, 415.5, 56.0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-13", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [ 325.5, 161.0, 203.0, 161.0, 203.0, 56.0, 225.5, 56.0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-22", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [ 135.5, 161.0, 13.0, 161.0, 13.0, 56.0, 35.5, 56.0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-25", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 3.0, 111.0, 274.0, 27.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}
,
									"text" : "p 3_inputs~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 55.0, 90.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-77",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 3.0, 41.0, 28.0, 28.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-78",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 3.0, 27.0, 28.0, 17.0 ],
									"text" : "play"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-79",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 28.0, 91.0, 26.0, 17.0 ],
									"text" : "loop"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-80",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 0.0, 82.0, 27.0 ],
									"text" : "Input~ 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-81",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 318.0, 27.0, 32.0, 17.0 ],
									"text" : "PLAY"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-82",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 319.0, 76.0, 34.0, 17.0 ],
									"text" : "LOOP"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 324.0, 268.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 264.0, 268.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 206.0, 268.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 140.0, 268.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 77.0, 268.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 268.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-11",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 325.0, 210.0, 60.0, 27.0 ],
									"text" : "receive~ ambsncs_6"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-12",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 264.0, 210.0, 60.0, 27.0 ],
									"text" : "receive~ ambsncs_5"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-13",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 205.0, 210.0, 58.0, 27.0 ],
									"text" : "receive~ ambsncs_4"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-14",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 141.0, 210.0, 62.0, 27.0 ],
									"text" : "receive~ ambsncs_3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-15",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 77.0, 210.0, 62.0, 27.0 ],
									"text" : "receive~ ambsncs_2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-16",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 15.0, 210.0, 60.0, 27.0 ],
									"text" : "receive~ ambsncs_1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 5 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"hidden" : 1,
									"midpoints" : [ 333.0, 87.0, 272.0, 87.0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 4 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 4 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"hidden" : 1,
									"midpoints" : [ 328.5, 25.0, 220.5, 25.0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 3 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"hidden" : 1,
									"midpoints" : [ 333.0, 87.0, 168.0, 87.0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 2 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 2 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"hidden" : 1,
									"midpoints" : [ 328.5, 25.0, 116.5, 25.0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"hidden" : 1,
									"midpoints" : [ 333.0, 87.0, 64.0, 87.0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"hidden" : 1,
									"midpoints" : [ 328.5, 25.0, 12.5, 25.0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-74", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-74", 1 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1.421036, 122.842392, 146.036469, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 57.736893, 94.879181, 17.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}
,
					"text" : "p ambsncs_input~"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"id" : "obj-95",
					"knobcolor" : [ 0.45098, 0.427451, 0.458824, 1.0 ],
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 96.0, 204.0, 12.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 92.684143, 139.526215, 10.578964, 39.184303 ],
					"stripecolor" : [ 0.352941, 0.337255, 0.521569, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"id" : "obj-97",
					"knobcolor" : [ 0.45098, 0.427451, 0.458824, 1.0 ],
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 83.0, 204.0, 12.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 80.684143, 139.526215, 10.578964, 39.184303 ],
					"stripecolor" : [ 0.352941, 0.337255, 0.521569, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"id" : "obj-99",
					"knobcolor" : [ 0.45098, 0.427451, 0.458824, 1.0 ],
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 70.0, 204.0, 12.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 68.684143, 139.526215, 10.578964, 39.184303 ],
					"stripecolor" : [ 0.352941, 0.337255, 0.521569, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"id" : "obj-101",
					"knobcolor" : [ 0.45098, 0.427451, 0.458824, 1.0 ],
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 57.0, 204.0, 12.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 56.684143, 139.526215, 10.578964, 39.184303 ],
					"stripecolor" : [ 0.352941, 0.337255, 0.521569, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ -59.0, -778.0, 509.0, 225.0 ],
						"bglocked" : 0,
						"defrect" : [ -59.0, -778.0, 509.0, 225.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 997.0, -741.0, 474.0, 576.0 ],
										"bglocked" : 0,
										"defrect" : [ 997.0, -741.0, 474.0, 576.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-1",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 296.0, 78.0, 45.0, 14.0 ],
													"text" : "panb2~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-2",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 267.0, 273.0, 42.0, 14.0 ],
													"text" : "pans4~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-3",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 214.0, 273.0, 42.0, 14.0 ],
													"text" : "pans3~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-4",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 208.0, 181.0, 42.0, 14.0 ],
													"text" : "pana3~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-5",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 208.0, 132.0, 42.0, 14.0 ],
													"text" : "pana2~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-6",
													"ignoreclick" : 1,
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 209.0, 78.0, 35.0, 24.0 ],
													"text" : "trans~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-7",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 249.0, 78.0, 42.0, 14.0 ],
													"text" : "trans4~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-8",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 347.0, 78.0, 55.0, 14.0 ],
													"text" : "panb4~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-9",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 120.0, 53.0, 258.0, 16.0 ],
													"text" : "(default) All 8 channels are just transmitted through."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-10",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 16.0, 53.0, 112.0, 16.0 ],
													"text" : "0 ................ 0 %."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-11",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 78.0, 495.0, 323.0, 26.0 ],
													"text" : "^ Percentage of the CPU Utilization using the Coreaudio Built-in Audio Driver on a 2 x 2.7 GHz PowerPC G5 at a sample rate of 44.1kHz"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 14.0,
													"id" : "obj-12",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 15.0, 13.0, 163.0, 20.0 ],
													"text" : "Decoder~ : DSP options"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-13",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 184.0, 15.0, 247.0, 26.0 ],
													"text" : "Argument to decoder~ defines the type of output decoding"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-14",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 16.0, 96.0, 102.0, 16.0 ],
													"text" : "2b2(2t) ......0.53 %."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-15",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 17.0, 111.0, 100.0, 16.0 ],
													"text" : "4b4 ...........0.93 %."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 12.0,
													"id" : "obj-16",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 16.0, 78.0, 141.0, 18.0 ],
													"text" : "Binaural techniques :"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-17",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 120.0, 98.0, 318.0, 26.0 ],
													"text" : "headphones <-> loudspeakers conversion over 2 or 4 channels using binaural techniques. See also trans~ and trans4~."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-18",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 120.0, 211.0, 311.0, 26.0 ],
													"text" : "B format -> loudspeakers conversion regular polygonal layouts comprising 5 to 8 speakers in the horizontal plane."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-19",
													"linecount" : 6,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 15.0, 295.0, 104.0, 66.0 ],
													"text" : "3s2 ........... 0.58 %;\r4s2 ........... 0.55 %;\r2s4 ............0.46 %;\r2s3 ............0.39 %;\r4s3 ............0.05 %;\r3s4 ............0.07 %."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-20",
													"linecount" : 6,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 120.0, 295.0, 310.0, 66.0 ],
													"text" : "L-R-S -> Lt-Rt encoder (Dolby-compatible);\rL-C-R-S -> Lt-Rt encoder (with center input);\rLt-Rt -> L-C-R-S passive decoder;\rLt-Rt -> L-R-S passive decoder (with phantom center);\rL-C-R-S -> L-R-S conversion (phantom center);\rL-R-S -> L-C-R-S conversion (center stabilization)."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 12.0,
													"id" : "obj-21",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 15.0, 275.0, 87.0, 18.0 ],
													"text" : "Surround :"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-22",
													"linecount" : 5,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 15.0, 198.0, 104.0, 56.0 ],
													"text" : "3a4 ............0.30 %;\r3a5 ............0.35 %;\r3a6 ............0.39 %;\r3a7 ............0.43 %;\r3a8 ............0.47 %."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-23",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 15.0, 153.0, 101.0, 16.0 ],
													"text" : "2a2 ............0.12 %."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-24",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 120.0, 198.0, 290.0, 16.0 ],
													"text" : "B format -> loudspeakers conversion for rectangle layout."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 12.0,
													"id" : "obj-25",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 15.0, 133.0, 141.0, 18.0 ],
													"text" : "Stereo :"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 12.0,
													"id" : "obj-26",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 15.0, 178.0, 97.0, 18.0 ],
													"text" : "Ambisonics :"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-27",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 119.0, 153.0, 131.0, 16.0 ],
													"text" : "M-S to L-R conversion."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 12.0,
													"id" : "obj-28",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 15.0, 385.0, 192.0, 18.0 ],
													"text" : "Equalization & time alignment :"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-29",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 119.0, 405.0, 321.0, 36.0 ],
													"text" : "Double shelving equalizer + time alignment (max. delay = 100 ms), for multi-channel loudspeaker systems. Out_ provides a graphic user interface for these modes."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-30",
													"linecount" : 7,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 15.0, 405.0, 103.0, 76.0 ],
													"text" : "2hl .............0.39 %;\r3hl .............0.54 %;\r4hl .............0.78 %;\r5hl .............0.96%;\r6hl .............1.13 %;\r7hl .............1.34 %;\r8hl .............1.47 %."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-31",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 182.0, 277.0, 25.0, 16.0 ],
													"text" : "see"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-32",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 183.0, 181.0, 25.0, 16.0 ],
													"text" : "see"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-33",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 180.0, 134.0, 25.0, 16.0 ],
													"text" : "see"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-34",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 181.0, 82.0, 25.0, 16.0 ],
													"text" : "see"
												}

											}
 ],
										"lines" : [  ]
									}
,
									"patching_rect" : [ 372.0, 138.0, 85.0, 17.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}
,
									"text" : "p Out~options"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 320.0, -651.0, 455.0, 514.0 ],
										"bglocked" : 0,
										"defrect" : [ 320.0, -651.0, 455.0, 514.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-1",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 166.0, 19.0, 238.0, 16.0 ],
													"text" : "argument specifies encoding technique / format"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-2",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 351.0, 284.0, 42.0, 14.0 ],
													"text" : "panr8~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-3",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 310.0, 284.0, 42.0, 14.0 ],
													"text" : "panr7~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-4",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 267.0, 284.0, 42.0, 14.0 ],
													"text" : "panr6~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-5",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 223.0, 284.0, 42.0, 14.0 ],
													"text" : "panr5~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-6",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 234.0, 383.0, 42.0, 14.0 ],
													"text" : "pans4~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-7",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 184.0, 383.0, 42.0, 14.0 ],
													"text" : "pans3~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-8",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 181.0, 284.0, 42.0, 14.0 ],
													"text" : "panr3~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-9",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 235.0, 225.0, 42.0, 14.0 ],
													"text" : "pana4~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-10",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 355.0, 166.0, 45.0, 14.0 ],
													"text" : "sideb4~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-11",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 166.0, 45.0, 14.0 ],
													"text" : "sideb2~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-12",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 185.0, 225.0, 42.0, 14.0 ],
													"text" : "pana3~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-13",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 273.0, 94.0, 43.0, 14.0 ],
													"text" : "pand2~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-14",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 226.0, 94.0, 42.0, 14.0 ],
													"text" : "panc2~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-15",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 179.0, 94.0, 42.0, 14.0 ],
													"text" : "pana2~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-16",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 199.0, 404.0, 130.0, 16.0 ],
													"text" : "(can feed a Dolby encoder)"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 14.0,
													"id" : "obj-17",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 18.0, 17.0, 144.0, 20.0 ],
													"text" : "Pan~ : DSP options"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-18",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 155.0, 383.0, 24.0, 26.0 ],
													"text" : "see"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-19",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 152.0, 284.0, 24.0, 26.0 ],
													"text" : "see"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-20",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 154.0, 225.0, 24.0, 26.0 ],
													"text" : "see"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-21",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 154.0, 166.0, 24.0, 26.0 ],
													"text" : "see"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-22",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 154.0, 94.0, 24.0, 26.0 ],
													"text" : "see"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-23",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.0, 402.0, 100.0, 26.0 ],
													"text" : "3s .............. 0.15 %;\r4s .............. 0.22 %."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-24",
													"linecount" : 5,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.0, 304.0, 99.0, 56.0 ],
													"text" : "4r .............. 0.05 %;\r5r .............. 0.09 %;\r6r .............. 0.14 %;\r7r .............. 0.16 %;\r8r .............. 0.19 %."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-25",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.0, 245.0, 101.0, 26.0 ],
													"text" : "3a .............. 0.03 %;\r4a .............. 0.06 %."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-26",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.0, 186.0, 98.0, 26.0 ],
													"text" : "2b ..............1.30 %;\r4b ..............1.45 %."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-27",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.0, 114.0, 101.0, 36.0 ],
													"text" : "2a .............. 0.05 %;\r2c .............. 0.05 %;\r2d ..............0.66 %."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-28",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 78.0, 433.0, 322.0, 26.0 ],
													"text" : "^ Percentage of the CPU Utilization using the Coreaudio Built-in Audio Driver on a 2 x 2.7 GHz PowerPC G5 at a sample rate of 44.1kHz"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-29",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 116.0, 402.0, 82.0, 26.0 ],
													"text" : "L-R-S format;\rL-C-R-S format."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 12.0,
													"id" : "obj-30",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.0, 225.0, 97.0, 18.0 ],
													"text" : "Ambisonics :"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 12.0,
													"id" : "obj-31",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.0, 166.0, 121.0, 18.0 ],
													"text" : "Binaural techniques :"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-32",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.0, 56.0, 99.0, 26.0 ],
													"text" : "0 ................... 0 %;\r1 ..less than 0.01 %."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 12.0,
													"id" : "obj-33",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.0, 94.0, 92.0, 18.0 ],
													"text" : "Stereo :"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-34",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 122.0, 55.0, 298.0, 26.0 ],
													"text" : "(default) All 7 channels are just transmitted through;\rmono (simulates recording with omnidirectional microphone)."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-35",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 123.0, 114.0, 103.0, 36.0 ],
													"text" : "M-S stereo;\rX-Y stereo;\rA-B (ORTF) stereo."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-36",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 122.0, 245.0, 293.0, 26.0 ],
													"text" : "W-X-Y horizontal B format (sounfield microphone);\rW-X-Y-Z periphonic B format (sounfield microphone)."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-37",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 122.0, 186.0, 298.0, 26.0 ],
													"text" : "binaural / dummy-head format (for headphones);\r\"4-ear binaural\" format (decodes over 4 louspeakers)."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 12.0,
													"id" : "obj-38",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.0, 284.0, 105.0, 18.0 ],
													"text" : "Discrete panning :"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-39",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 121.0, 304.0, 290.0, 26.0 ],
													"text" : "pairwise intensity panpot for reproduction over a horizontal louspeaker setup (4 to 8 channels). See panr4~ for details."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 12.0,
													"id" : "obj-40",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.0, 382.0, 87.0, 18.0 ],
													"text" : "Surround :"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-41",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 179.0, 166.0, 50.0, 14.0 ],
													"text" : "panb2~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-42",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 295.0, 166.0, 50.0, 14.0 ],
													"text" : "panb4~"
												}

											}
 ],
										"lines" : [  ]
									}
,
									"patching_rect" : [ 372.0, 113.0, 85.0, 17.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}
,
									"text" : "p Pan~options"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 781.0, -1028.0, 466.0, 578.0 ],
										"bglocked" : 0,
										"defrect" : [ 781.0, -1028.0, 466.0, 578.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-1",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 23.0, 486.0, 377.0, 36.0 ],
													"text" : "NB2: Certain types of reverb have been encoded as external objects (as opposed to abstractions) so as to gain processing power. This explains the discrepancies that can be found in the CPU usage of certain objects (4b < 4a for example)"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-2",
													"linecount" : 6,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 38.0, 211.0, 390.0, 66.0 ],
													"text" : "Another method for sharing the reverberation process between several sources: replacing the number by '_'. Room~ then sends a mono signal to feed a Reverb~ module (plus optionally a signal for a Cluster~ module), via a catch~ object. The catch~ name must be given in argument or by a control message 'reverb throw <name>' (or 'cluster throw <name>') sent to the Room~ module(s) to be connected to an existing catch~ object."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-3",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 22.0, 93.0, 222.0, 16.0 ],
													"text" : "A version of the algorithm is identified by:"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-4",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 37.0, 110.0, 269.0, 16.0 ],
													"text" : "The number of internal feedback channels (4, 6 or 8)."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-5",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 37.0, 127.0, 381.0, 16.0 ],
													"text" : "A letter which refers to the temporal division of the room response in sections:"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-6",
													"linecount" : 9,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 22.0, 298.0, 92.0, 96.0 ],
													"text" : "8a ........... 1.76 %;\r8b ........... 2.2 %;\r8c ........... 2.56 %;\r6a ........... 2.24 %;\r6b ........... 1.76 %;\r6c ........... 2.12 %;\r4a ........... 1.76 %;\r4b ........... 1.32 %;\r4c ........... 1.74 %."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-7",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 22.0, 453.0, 377.0, 26.0 ],
													"text" : "NB1: With cheaper versions, the reverberation tends to have a lower time density (echo density), which may be noticeable for percussive source sounds."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-8",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 78.0, 412.0, 331.0, 26.0 ],
													"text" : "^ Percentage of the CPU Utilization (peak) using the Coreaudio Built-in Audio Driver on a 2 x 2.7 GHz PowerPC G5 at a sample rate of 44.1kHz"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-9",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 22.0, 157.0, 18.0, 16.0 ],
													"text" : "->"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-10",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 22.0, 127.0, 18.0, 16.0 ],
													"text" : "->"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-11",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 22.0, 110.0, 18.0, 16.0 ],
													"text" : "->"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-12",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 37.0, 140.0, 312.0, 16.0 ],
													"text" : "a = reverb only. b = early + reverb. c = early + cluster + reverb."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-13",
													"linecount" : 9,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 126.0, 298.0, 96.0, 96.0 ],
													"text" : "8a+ .......... 2.2 %;\r8b+ .......... 5.6 %;\r8c+ .......... 6.26 %;\r6a+ .......... 2.5 %;\r6b+ .......... 3.53 %;\r6c+ .......... 4.26 %;\r4a+ .......... 2. %;\r4b+ .......... 3.88 %;\r4c+ .......... 3.4 %."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-14",
													"linecount" : 9,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 230.0, 298.0, 97.0, 96.0 ],
													"text" : "8a- .......... 0.38 %;\r8b- ..........1.14 %;\r8c- .......... 1.87 %;\r6a- .......... 0.43 %;\r6b- ..........1.08 %;\r6c- .......... 1.65 %;\r4a- .......... 0.43 %;\r4b- ..........1.01 %;\r4c- .......... 1.4 %."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-15",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 334.0, 298.0, 99.0, 36.0 ],
													"text" : "_a ............. 0.37 %;\r_b .............1.70 %;\r_c ............. 1.95%."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 14.0,
													"id" : "obj-16",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 21.0, 19.0, 162.0, 20.0 ],
													"text" : "Room~ : DSP options"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-17",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 37.0, 157.0, 390.0, 46.0 ],
													"text" : "Optional '+' or '-' signs, allowing to share a common late reverb process between several Room~ modules (assuming sources located in the same virtual room). This method uses a hidden multichannel bus which can be optionally specified by the 2nd argument of Room~. Several '-' modules can send to a single '+' module."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-18",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 22.0, 47.0, 360.0, 36.0 ],
													"text" : "Argument 1: version of the reverberation algorithm;\rArgument 2: name of reverb send bus (optional -for some versions only);\rArgument 3: name of cluster send bus (optional -for some versions only)."
												}

											}
 ],
										"lines" : [  ]
									}
,
									"patching_rect" : [ 372.0, 88.0, 85.0, 17.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}
,
									"text" : "p Room~options"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 284.0, -1016.0, 492.0, 281.0 ],
										"bglocked" : 0,
										"defrect" : [ 284.0, -1016.0, 492.0, 281.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-1",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 82.0, 193.0, 331.0, 26.0 ],
													"text" : "^ Percentage of the CPU Utilization (peak) using the Coreaudio Built-in Audio Driver on a 2 x 2.7 GHz PowerPC G5 at a sample rate of 44.1kHz"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 14.0,
													"id" : "obj-2",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 16.0, 20.0, 170.0, 20.0 ],
													"text" : "Source~ : DSP options"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-3",
													"linecount" : 7,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 13.0, 59.0, 110.0, 76.0 ],
													"text" : "1 .................. 0 %;\r1a ................ 0.06 %;\r1hl ................0.16 %;\r1D ................ 0.36 %;\r1Da .............. 0.42 %;\r1Dhl ............. 0.56 %;\r1Dahl ........... 0.62 %."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-4",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 13.0, 162.0, 103.0, 26.0 ],
													"text" : "2 .................. 0 %;\r2hl ............... 0.16 %."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-5",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 116.0, 59.0, 163.0, 16.0 ],
													"text" : "1 input (left inlet), two outputs."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-6",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 129.0, 89.0, 42.0, 16.0 ],
													"text" : "Codes:"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-7",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 168.0, 89.0, 309.0, 36.0 ],
													"text" : "D .... variable delay line (up to 300 ms) allowing Doppler effect;\ra ..... filter for simulating air absorption;\rhl .... 2 double-shelving equalizers (one for each output)."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-8",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 190.0, 23.0, 247.0, 16.0 ],
													"text" : "argument calls a particular version of Source~"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica",
													"fontsize" : 10.0,
													"id" : "obj-9",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 119.0, 162.0, 321.0, 16.0 ],
													"text" : "2 inputs, two outputs (use one of these for stereo source signals)"
												}

											}
 ],
										"lines" : [  ]
									}
,
									"patching_rect" : [ 372.0, 63.0, 85.0, 17.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}
,
									"text" : "p Source~options"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 57.0, 131.0, 62.0, 27.0 ],
									"text" : "Out~ :"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-6",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.0, 106.0, 64.0, 27.0 ],
									"text" : "Pan~ :"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 39.0, 81.0, 80.0, 27.0 ],
									"text" : "Room~ :"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 162.0, 137.0, 195.0, 17.0 ],
									"text" : "All channels are just transmitted through"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 132.0, 131.0, 27.0, 27.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 163.0, 112.0, 143.0, 17.0 ],
									"text" : "Four channels intensity panpot"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 126.0, 106.0, 33.0, 27.0 ],
									"text" : "4r"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 195.0, 87.0, 165.0, 17.0 ],
									"text" : "Shared early + reverb (no cluster)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 126.0, 81.0, 68.0, 27.0 ],
									"text" : "6b +/-"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-14",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 164.0, 62.0, 153.0, 17.0 ],
									"text" : "Mono source with air absorption"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-15",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 25.0, 22.0, 336.0, 27.0 ],
									"text" : "(these) Spat~ features (arguments) :"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-16",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 124.0, 56.0, 38.0, 27.0 ],
									"text" : "1a"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-17",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 25.0, 56.0, 94.0, 27.0 ],
									"text" : "Source~ :"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-18",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 361.0, 22.0, 107.0, 27.0 ],
									"text" : "Double-click patchers to display options"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 86.0, 340.0, 70.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 117.131233, 202.448685, 70.0, 20.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}
,
					"text" : "p features"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"arrowframe" : 0,
					"arrowlink" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-4",
					"items" : [ "New", "Preset", ",", "Rename", "Current", "Preset", ",", "Replace", "Current", "Preset", ",", "Delete", "Current", "Preset", ",", "Show", "Presets", "bank", ",", "Read", "Presets", "Bank", ",", "Write", "Presets", "Bank" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 262.0, 339.0, 118.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 306.0, 233.0, 84.605659, 17.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 190.0, 357.0, 226.0, 17.0 ],
					"text" : "Spat_Preset2_intrp source1 1000"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"arrowframe" : 0,
					"arrowlink" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-6",
					"items" : [ "concertA_1", ",", "concertA_2", ",", "opera_1", ",", "opera_2", ",", "concertB_1", ",", "concertB_2", ",", "auditorium_1", ",", "auditorium_2" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 190.0, 318.0, 154.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 234.0, 215.0, 120.605659, 17.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 194.0, 341.0, 65.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 238.0, 233.0, 65.0, 17.0 ],
					"text" : "Messages ->"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"arrowframe" : 0,
					"arrowlink" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-8",
					"items" : [ "New", "Preset", ",", "Rename", "Current", "Preset", ",", "Replace", "Current", "Preset", ",", "Delete", "Current", "Preset", ",", "Show", "Presets", "bank", ",", "Read", "Presets", "Bank", ",", "Write", "Presets", "Bank" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 262.0, 281.0, 118.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 306.0, 194.0, 84.605659, 17.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 190.0, 299.0, 226.0, 17.0 ],
					"text" : "Spat_Preset2_intrp source1 1000"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"arrowframe" : 0,
					"arrowlink" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-10",
					"items" : [ "concertA_1", ",", "concertA_2", ",", "opera_1", ",", "opera_2", ",", "concertB_1", ",", "concertB_2", ",", "auditorium_1", ",", "auditorium_2" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 190.0, 260.0, 154.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 234.0, 176.0, 120.605659, 17.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 194.0, 283.0, 65.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 238.0, 194.0, 65.0, 17.0 ],
					"text" : "Messages ->"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 249.0, 375.0, 32.5, 15.0 ],
					"text" : "6000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 281.0, 374.0, 50.0, 17.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-14",
					"maxclass" : "number",
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 249.0, 394.0, 76.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 145.659027, 68.870995, 52.552906, 21.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 249.0, 422.0, 101.0, 17.0 ],
					"text" : "s Spat_Preset_ramp"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 352.0, 401.0, 21.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 195.791214, 70.186852, 21.0, 17.0 ],
					"text" : "ms"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 250.0, 376.0, 110.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 145.659027, 54.423573, 110.0, 17.0 ],
					"text" : "Preset interpolation time"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"arrowframe" : 0,
					"arrowlink" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-18",
					"items" : [ "New", "Preset", ",", "Rename", "Current", "Preset", ",", "Replace", "Current", "Preset", ",", "Delete", "Current", "Preset", ",", "Show", "Presets", "bank", ",", "Read", "Presets", "Bank", ",", "Write", "Presets", "Bank" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 262.0, 223.0, 118.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 306.0, 155.0, 84.605659, 17.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 190.0, 241.0, 226.0, 17.0 ],
					"text" : "Spat_Preset2_intrp source1 1000"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"arrowframe" : 0,
					"arrowlink" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-20",
					"items" : [ "concertA_1", ",", "concertA_2", ",", "opera_1", ",", "opera_2", ",", "concertB_1", ",", "concertB_2", ",", "auditorium_1", ",", "auditorium_2" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 190.0, 202.0, 154.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 234.0, 137.0, 120.605659, 17.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 194.0, 225.0, 65.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 238.0, 155.0, 65.0, 17.0 ],
					"text" : "Messages ->"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"arrowlink" : 0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-23",
					"items" : [ "Record", ",", "Play/Pause", ",", "Stop", ",", "Play", "from", "Counter", ",", "Toggle", "Overdub", "Mode", ",", "Next", "record", "Track", ",", "Previous", "Record", "track" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 28.0, 399.0, 161.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 116.238327, 153.73912, 104.158562, 17.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 125.0, 44.0, 577.0, 595.0 ],
						"bglocked" : 0,
						"defrect" : [ 125.0, 44.0, 577.0, 595.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-1",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 272.0, 283.0, 16.0, 15.0 ],
									"text" : "6"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 255.0, 283.0, 16.0, 15.0 ],
									"text" : "5"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 186.0, 399.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 170.0, 399.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-5",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 354.0, 432.0, 45.0, 27.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 354.0, 473.0, 16.0, 15.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 270.0, 473.0, 20.0, 15.0 ],
									"text" : "64"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 0,
									"patching_rect" : [ 186.0, 496.0, 178.0, 27.0 ],
									"text" : "noteout Spat_OUT"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 238.0, 283.0, 16.0, 15.0 ],
									"text" : "4"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 221.0, 283.0, 16.0, 15.0 ],
									"text" : "3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 204.0, 283.0, 16.0, 15.0 ],
									"text" : "2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 187.0, 283.0, 16.0, 15.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 283.0, 16.0, 15.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"format" : 4,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-14",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 186.0, 432.0, 69.0, 27.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"hkeycolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"id" : "obj-15",
									"maxclass" : "kslider",
									"numinlets" : 2,
									"numoutlets" : 2,
									"offset" : 0,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 170.0, 338.0, 336.0, 54.0 ],
									"presentation_rect" : [ 0.0, 0.0, 336.0, 54.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 8,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 170.0, 258.0, 129.0, 17.0 ],
									"text" : "sel 9 32 13 109 53 78 80"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 170.0, 211.0, 27.0, 17.0 ],
									"text" : "key"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-18",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 113.0, 41.0, 314.0, 38.0 ],
									"text" : "THESE ARE KEYBOARD SHORTCUTS THAT TRIGGER SOME NOTES.THE NOTES ARE INTERPRETED IN VISION AS TRANSPORT CONTROLS"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-19",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 39.0, 237.0, 135.0, 17.0 ],
									"text" : "ASCII code of key pressed->"
								}

							}
, 							{
								"box" : 								{
									"data" : [ 2617, "", "IBkSG0fBZn....PCIgDQRA..A7M....SHX.....KE1a.....DLmPIQEBHf.B7g.YHB..I.eRDEDU3wY6ctdciqBD.Fsms.V2BtD1VH0cZgTBoEb5.c+QtjEOd38CAReemSNXiP.ZlAvffIaFiY2.....CieaLFy6u+t41salGOdPHgcI7s2dC6rNG92+9WyGe7wgWOHjPBiGtYLl8O93iC92..mcrCL.8Cjw.rN7K6G9ye9CgD1sPKGc8fPBIjvYHbyXL6e94mF.5I2ue2fcVeAYL.qC+Ly2a2toFd+98m9yW5loPac8nqGD9uPKsJ+j1i0ZeNR66qr8oO4bH8orOnbjmx6sWx8Up+wV7b1xm2Yq8fO6kVWO2LFy9iGOLZXSn85xuOqrJ0yqD2tcqo5CWcbKz2izloWkUqkw8.6ytw7Z+JZwI0uZxtPxyQoWuJ84z51cyFgFyqGOu66666Od73kPy2GConW278.36666OEm7Os6S9Wt4uuzGpdS33Cas9Hjcf7513c+do1UkX+qk9dXepIGlsvPs80jiZ8CE66ZkWr3CoGio+tR86TibS66wjmozNrmOe9JeodtD6hs+ORiFaaaFy2IH305wmaUYAyAaaaMUeX0wFS81KkdOgJOY5Fg8Yqkw8fZ0Gxqo8csxyhlNQdsZseNyTR6F2zYIk1FGQ+6kLlWJoQK8+7Ne+5quTC8ccY7RpM9u95Ky111KJsRxGBO9PKsN+LluM30ttqsSt1KojtP1mO9+klJV9ez5kizNXee+kkvKU4UruKi+wiGl888f1Qx3qw94rFF641XxStE55Z1Gx1aiteJeOGx9BR44t3246p7YXNXjuyWe5+TumdX6MB6yU5c9FR9H+dOemu4jekXyc1nFYPtx0inO8Q1uvubiPFZO1B2tc6oa19mrx4SvTR7x7ulzS34Lzhqcp76tCHISmEec7FxNOE6S256HrO6U9Np5oLdIR8apO216UZO3698Y+3q9I0uGs7cD5Os988I2xQumR6M4.YsLTqbjGeuX8+Hw2yOmyWXHLamAU6QFXlpS0xrIiA.7yuLli+8HPHgiJz8r5YcEiyP8pEgVN55AgDRX7P7syvP.+Nb+AYL.qCrry....Cj62u+uiZD....LFXvW...fAyuc+hcinHY0VV5T1Iqxm0ZdFqcmy5VWVMYM...4ySy78yO+7oN+ke+rf6fk1mOe+viQvYTFC..fe9c7j7MZCNoMvkuAybGfQ6Zol9PCVJymTO2ixzjyyiV4kqrRiVNyb...lKJ5c9FZFxwFjRNqS4fJgRuV9KKeY8JWhUdx3iUdZxlXy1NlLB..f0lrG7Uaf.WGWPp2eN2St0mYgRqasVFA..vbQ0614R1rQyx6Z0xLNH2rIi...ncT8fu4N.gcfNeCZKiOzx7VZcRalk8r77kNe4cLYD...qMSiGthAZ...3J.d3J...fCfMiwruuuez0C3jyau8l482e+nqFmZPFCvZv11Fy7E...XzjrS1...bYaayTxplsss8ymic+4jVXLTqNIU6FsxQdu1u6l1ZpakRIsEdZvW4CvHp7k1.FVaho2wtXMHW8juNOqMsvXXT5jbKGeCNOBzF3OEdYYm222+4uRyT..HERoCUXdwcPO6etHiy94yzXKkZml767MEAqVbtBaY7mIE.jNZM.S09BlKZ0OR2syas7iY8NGX02Z5IsIsIiypCQWp7NeisN6tqwdJwI+r10fqERaEabFyy1FG4RIAiEdEDqC4rbvz+teTW1Y2PKglERrFFzvAhAyx8ZRLcNC7NWjSaTqtC8mNp614PyLQCZf.0.qDxZQMaLSskkLV4vNdddHj9Saok8sKjCsKkCUN4X+L638nF4Jf7sl8oDWn7Ftt3y9xkTrkfwRKZ2lp9D89bhO8hV7wRaIa3tYbS5UR49zfuxLH1LeSItRDfv0fP1WXe..blAObE.PQvOPBrfsP9fGtB.HYnSV.ZCLyW.foC1SHvYmgN3KMn.37PosmC4MjZQ9.8kZk6odeZkiOaFoSZYz1DkTdI4ama8tN8H7gz..smQ5amKMef1A914WozA5e4c9p8.2hiFTnyMLMb.3Zhly7w20Bcevwf14yOzY+0clpmEcXoiOVzxNGZo.Zwfzoj29VRBVBp0.o9KzRQVZbP+ok91Ya94y654SGel5He1Ae6b6HIe6rjbmhuV57UNoj29xO7EvqA9zOo3em0zyn6WezFDOE2SH56wC9141Pvkc1G8zK2jRd6ySZghdMHUOglwDVmhte8Q6c6YIEaCF3crjiLW9ihgmI6y4atBzdorBMKIX9I2U3H1xMhtebTyFlzmu4026FLVcHmAqg5wm9yXv2NmKYO3ql.qUu2mTy6XJkUVgbEnlFu9d+Qn6GC8ZUuxsODzyGG43xfik1R1Tcy3FwqjxMnuc120h895hkm4J7jwUhRAlGpswat1Tv5A5S3rSybujLyC.tVz515z2w5B5t7oYC9hvGpAreVCPOAPa.e6L...vfg+qFA.TDkbTexcmpdV1YqmIpUmji+gPVN9b6j91U0ihRZKjrS1fyTGbDfc2bSI5mTcHJ95nENNFkNI2x4HcxNkdB.dZYmc8nLs53CA..ZDqOFFnc9wcPuTb6qZmO6UmRsSC9NekGeHoPT66mIgJzGbsmhYSoE56ZxOisX+oU+HcWcVLGpBbbX02Z5IsIsIiCmhy+3ky4aHGXg1T607xPzPAhQnkUxcEXRwVRKMXKtVjyxOCGK4rbv7Cf8SR+KEDfVilcUoMTwFcMozeXEbbfuctc7zfuXnCGIX6sFTiuc189SYfWY4gMxwRHeqL9147Hokc18Z9VCeiAubETN9ro7Y2AGC0J+youA5GYNoV2Cqa7k3mlK4d5MkTtY8uTPYmhsnB.WOxsQUH6tX1gXSB.LifGtB.nH3G1.VvVHev2NC.jLzNGf1.y7E.XJf2mObk.e6L.PQTquc1Ro9G3Ztenbv2N+JU6am8cDBZ4tXt26H5dznjifUaAe164gZ7syspLw9Ybfuc9UZhuc1X9m6.y2Q+nFbOxH8.7M0qCmQe7JzFh4ZPYf14A2A8v2NmGE8Ne8IPkeVdO9BywmQmiO6U9KmhUm0Lf74WgCc+PbR00QByMk7ibywGN6l1TROzWr5aM8g1jd7MQNzYY7uTPWJYJ9Zc1lh+80W4UiaNKmkuPVuS4yPZf75ZRNNIgPok1bGC4rbvLYD+jkS1vRqDnqZCmi9k6CvUGF38XnlI8.OS1614URf1qFnznGtx3aiY1p6O0YSwNdd7nsrxVzVZYeSTIztTNT4Dp7WMxdvWMAVq1bS0tIuRQgEyvHT91qMhF.qB01NOValT9Ayzt6XIE2.apoMmWAQr3icsdRIk6K+iUHkLOjPN0coXpBVe2StJlTLLBk+odMHNH+.efs.bUnYNYClMH.WKZcac56XcAcW9fucF.HYncN.sg+y6qHPM7W2Nw.....PRE4DQtJDXBB" ],
									"embed" : 1,
									"id" : "obj-20",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 81.0, 479.0, 76.0 ]
								}

							}
, 							{
								"box" : 								{
									"data" : [ 648, "", "IBkSG0fBZn....PCIgDQRA..AvM...vCHX....fS94Gv....DLmPIQEBHf.B7g.YHB..B7SRDEDU3wY6b1laCCBC.kLsaVO28rk8iIZQTiwlDHPy6IUoVJf8rMw7051999dnA111BgPHj1boxFAaaaCWlfcd73Q34ymWsZ7UC1X.le9s0FJkf6pR5QxV...lc94pU....f6.MuBW.NSrbr.bzAyCs3KhG4TJZ8QZ8wuOGbTeh03FI4j213m8FWc13YrvqDt8Po8dlt8d.llgolQqjy9HxD9mzANs5efwSK9DOOKnkwaP+XT9DuxoTB4QfTdSMdskx666uT1z2eD7zGQiU7k2+PFAQcZF0sUkzAIk767v16G3umeRSzEekRdYeiO+zabpoyvUyXlaPkpqV+XQ1k9rlC0R8p0e4TZUXVB1rz+2Mjrky5jsfOoEeUsmavDtlWh9aI+jzBkxKKch02UpdFtoA6Ra8WZRt7xp0OVHUdk5Cs9tldkKqZ5mTx1VrO24ftPP1tnUN7cf2+6FHNXtvyV8xDm+jgdooNaGvUeX4dg.v2nMInY1GBiCR1NW3we3YgN2IFZB2VG7TZqbWsAiql9BPNRakXOZuz48w3mqEosLNhz1FWZxzZ2tXM4nI+UgpIbKsG7RCbrb9mo8iV6qYLq0eZ5k1kywhrqoG0j4JFnzSrrU+rZmqmitREuiqf4CqG0lk5Z4lGas7ZeWOwib+HgqUCmz1EnUlEEyqwz5JdORasTeu1L3MsbV9..vJRyaorzp0XEbPOg3p4A7EPDhEryWwukxv8Dq25b3b.6I.GC9sTFVR3lOBqH8JtkwCqA+AHT6irBYRKau.....jTQNQjqBAlf" ],
									"embed" : 1,
									"id" : "obj-21",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 41.0, 157.0, 476.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"data" : [ 1129, "", "IBkSG0fBZn....PCIgDQRA..AvM...vFHX....f043SS....DLmPIQEBHf.B7g.YHB..D.RRDEDU3wY6btkiqCBC.M8p6NaV2csk4qLhRsM1.IPHmiTkZngG0Fvf4wq8888sJ30qWaaaaaoQWJL.94me1d+98nKFMgV88Yot9JHiAX04+0FQoNZlkNe.n2P8c.fV4eit.....7Dn5Y3BPOYlbOKTlZzWGtkOEqzH88otwbPq5Du0ajxm73d7bz5U8lHsE9yfa9ZTUaGfZwKWnbEBDoxxYnbvXQaj1vwptSq0Mg9RM5AuuuVmqv33pzIQymQ1ufj8DKtTWJuuu+2mnEzdWFx+NLFRajLx5EvbAsKmeRMzc7Ik7vN99J0FOZ8zOL3p0gmlfK+4ZEndTVVkCovqoL3MsrR+UpxzYizHRsbQDx14hZzIRcNmFlV+OX.d7bnukzSRSjJOrzAV+To3Z3lVY+36ot+SZFJZBzR9kWJMsBK+6R+VDzL.3obnEePlzA3HczxPVtlDc2dS8f4hH82w.j+luL3JMpUqYbDowfVbrTLkR+d1XzyZOq89zwPLrFTjlbjY49rf1TyEQzGsLwmUFW6RYMCQ8xn6rNB2RUZhL6d.VAtpM+nzxSQaqwhjKiOPxswklnllgXs7wJ+uKHZvM2u6V6RzntUN+cz7wumvJU1aEozxpbfQ25Hh9hY4NNZUtGcf4v7gk2mh9td14wdCuzuclDIe+yfq1ZWV5277bzzulzvS38Jsh9eAzom5J..XlgaZJ.fvvfdfCntfe3llB.vEzwJ.sAyvE.Xpf0nGVUXFtvT.a1r6E0nurNBXQSu69tU8tRqxcu54R2YCoOG4nEdFDot6W2kxGzyBbu6L8pNZB44omyObqkkmngmRGwrQnugxTSc0ZNGmk9smXalQvUI2ilO0NnsdPTuw7wLbOKg4YHDlgFbiTQuJ38HkMC5a3bw6rmP2OGHcGEXc1bWwaQtnGSwhqgapPJMgkdt03I8d0b8LJUVJEl2xq2xf2zxJ8W80xRpgGmy16C0nqjZWm1wrjWjr5KXk57d14PeKoKxuSEjByy4uc04iY3ZMREsmyu.KztHLzhmDdZDUxG+RkEqv77+LBZFS7TN7JCtynMZ2Rgus8ravd2Qy6ERCDUx.rz6.WGQ5ihAN+MptTtT3movTZTQZuim0UMMNkx2dQTY1SxX61V76R4UWd.wFT0SnMxrQDYdKSVYko5cor0HU6QCAOyDVJ+l0QDWpBn20xDfQhjqD6UZ5sC5TufzyxAXijKiOPxswZClN0CeQxGq7+tPUFb8LCTuwSycRowwSZZsdAdBqT4sUjRKqxwSxnKi.9dPq5oRCbt0zANeh3EzRuaMaLtZhyYSj7U8tTtmgWZFnZq0oFVuuWEu27zivrkzJ5+kUiZjuvZC5aXUgaZJ.fvzaihXj89B5N+vMME.fKniU.ZClgK..bQbV6WA1GD2C9EPfo1J7GmDoS.....PRE4DQtJDXBB" ],
									"embed" : 1,
									"id" : "obj-22",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 41.0, 172.0, 476.0, 27.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 2 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-16", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 1 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-16", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-16", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-16", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-16", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-17", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 28.0, 421.0, 102.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 116.238327, 171.73912, 106.263107, 17.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}
,
					"text" : "p midi_keys->Vision"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 47.0, 384.0, 154.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 116.238327, 138.73912, 102.132187, 17.0 ],
					"text" : "Control Vision remotly"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 209.0, 75.0, 95.0, 17.0 ],
					"text" : "r from_Circ_Spat3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 100.0, 74.0, 95.0, 17.0 ],
					"text" : "r from_Circ_Spat2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 3.0, 75.0, 95.0, 17.0 ],
					"text" : "r from_Circ_Spat1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5.0, 28.0, 164.0, 17.0 ],
					"text" : "Double-click to open Circ interface"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"id" : "obj-45",
					"knobcolor" : [ 0.45098, 0.427451, 0.458824, 1.0 ],
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 44.0, 204.0, 12.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 44.684143, 139.526215, 10.578964, 39.184303 ],
					"stripecolor" : [ 0.352941, 0.337255, 0.521569, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"id" : "obj-47",
					"knobcolor" : [ 0.45098, 0.427451, 0.458824, 1.0 ],
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 31.0, 204.0, 12.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 32.684143, 139.526215, 10.578964, 39.184303 ],
					"stripecolor" : [ 0.352941, 0.337255, 0.521569, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"id" : "obj-49",
					"knobcolor" : [ 0.45098, 0.427451, 0.458824, 1.0 ],
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 18.0, 204.0, 12.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.684143, 139.526215, 10.578964, 39.184303 ],
					"stripecolor" : [ 0.352941, 0.337255, 0.521569, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"id" : "obj-51",
					"knobcolor" : [ 0.45098, 0.427451, 0.458824, 1.0 ],
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 5.0, 204.0, 12.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.684144, 139.526215, 10.578964, 39.184303 ],
					"stripecolor" : [ 0.352941, 0.337255, 0.521569, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.066667, 0.0, 0.282353, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5.0, 45.0, 298.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 27.816015, 289.0, 27.0 ],
					"text" : "Circ.3 source1 source2 source3",
					"textcolor" : [ 0.462745, 0.070588, 0.858824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 305.0, 84.0, 91.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 300.28949, 68.76358, 91.0, 21.0 ],
					"text" : "Spat_Oper3"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-54",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 305.0, 48.0, 91.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 300.28949, 46.263424, 91.0, 21.0 ],
					"text" : "Spat_Oper2"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-55",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 305.0, 14.0, 91.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 300.28949, 23.631714, 91.0, 21.0 ],
					"text" : "Spat_Oper1"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.529412, 0.65098, 0.258824, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 11,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 246.0, 149.0, 811.0, 599.0 ],
						"bglocked" : 0,
						"defrect" : [ 246.0, 149.0, 811.0, 599.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "Spat~ 1 output 4 (signal)",
									"id" : "obj-38",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 241.0, 510.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Spat~ 1 output 3 (signal)",
									"id" : "obj-39",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 209.0, 510.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Spat~ 1 output 2 (signal)",
									"id" : "obj-40",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 177.0, 510.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Spat~ 1 output 1 (signal)",
									"id" : "obj-41",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 145.0, 510.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "from Spat_Oper 3",
									"id" : "obj-1",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 718.0, 358.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "from Spat_Oper 2",
									"id" : "obj-2",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 591.0, 358.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "from Spat_Oper 1",
									"id" : "obj-3",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 464.0, 358.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "to Spat_Oper 3",
									"id" : "obj-4",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 718.0, 22.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "to Spat_Oper 2",
									"id" : "obj-5",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 558.0, 22.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "to Spat_Oper 1",
									"id" : "obj-6",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 431.0, 22.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 512.0, 160.0, 490.0, 452.0 ],
										"bglocked" : 0,
										"defrect" : [ 512.0, 160.0, 490.0, 452.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-1",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 26.0, 23.0, 234.0, 27.0 ],
													"text" : "converts Spat_OPer high-level messages to MIDI control messages (lists of three values for ctlout)"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-2",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 156.0, 322.0, 78.0, 17.0 ],
													"text" : "<- MIDI Channel"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"id" : "obj-3",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 120.0, 321.0, 35.0, 17.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-4",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 126.0, 341.0, 103.0, 17.0 ],
													"text" : "<- Controller number"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"id" : "obj-5",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 90.0, 340.0, 35.0, 17.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"id" : "obj-6",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 60.0, 359.0, 35.0, 17.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-7",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 96.0, 360.0, 81.0, 17.0 ],
													"text" : "<- Control value"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "int", "int", "int" ],
													"patching_rect" : [ 60.0, 284.0, 70.0, 17.0 ],
													"text" : "unpack 0 0 0"
												}

											}
, 											{
												"box" : 												{
													"comment" : "from spat_oper right outlet",
													"id" : "obj-9",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 60.0, 69.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-10",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 265.0, 103.0, 91.0, 17.0 ],
													"text" : "set source number"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-11",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 265.0, 117.0, 110.0, 17.0 ],
													"text" : "(select a MIDI channel)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 180.0, 108.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-13",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 174.0, 94.0, 32.0, 17.0 ],
													"text" : "reset"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"id" : "obj-14",
													"maxclass" : "number",
													"maximum" : 16,
													"minimum" : 1,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 232.0, 108.0, 29.0, 17.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-15",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 253.0, 216.0, 111.0, 27.0 ],
													"text" : "ctlout argument according to OMS Setup"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 164.0, 153.0, 331.0, 421.0 ],
														"bglocked" : 0,
														"defrect" : [ 164.0, 153.0, 331.0, 421.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 14.0,
																	"id" : "obj-1",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 16.0, 23.0, 182.0, 20.0 ],
																	"text" : "MIDI control map for Spat"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-2",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 68.0, 98.0, 16.0 ],
																	"text" : "source Dist (MSB)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-3",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 68.0, 95.0, 16.0 ],
																	"text" : "source Dist (LSB)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 17.0, 50.0, 41.0, 15.0 ],
																	"text" : "number"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-5",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 113.0, 98.0, 16.0 ],
																	"text" : "(not used)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-6",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 336.0, 33.0, 18.0 ],
																	"text" : "120"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-7",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 216.0, 33.0, 18.0 ],
																	"text" : "112"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-8",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 336.0, 33.0, 18.0 ],
																	"text" : "88"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-9",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 216.0, 33.0, 18.0 ],
																	"text" : "80"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-10",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 83.0, 95.0, 16.0 ],
																	"text" : "(not used)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-11",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 338.0, 95.0, 16.0 ],
																	"text" : "source omni fh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-12",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 293.0, 95.0, 16.0 ],
																	"text" : "source omni Gm"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-13",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 308.0, 95.0, 16.0 ],
																	"text" : "source omni Gh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-14",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 323.0, 95.0, 16.0 ],
																	"text" : "source omni fl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-15",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 278.0, 95.0, 16.0 ],
																	"text" : "source omni Gl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-16",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 263.0, 95.0, 16.0 ],
																	"text" : "source omni G0"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-17",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 128.0, 95.0, 16.0 ],
																	"text" : "source Roll"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-18",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 98.0, 95.0, 16.0 ],
																	"text" : "source Yaw"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-19",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 113.0, 95.0, 16.0 ],
																	"text" : "source Pitch"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-20",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 173.0, 95.0, 16.0 ],
																	"text" : "source axis G0"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-21",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 158.0, 95.0, 16.0 ],
																	"text" : "source A3P"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-22",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 143.0, 95.0, 16.0 ],
																	"text" : "source A3Y"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-23",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 188.0, 95.0, 16.0 ],
																	"text" : "source axis Gl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-24",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 233.0, 95.0, 16.0 ],
																	"text" : "source axis fl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-25",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 218.0, 95.0, 16.0 ],
																	"text" : "source axis Gh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-26",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 203.0, 95.0, 16.0 ],
																	"text" : "source axis Gm"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-27",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 248.0, 95.0, 16.0 ],
																	"text" : "source axis fh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-28",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 338.0, 98.0, 16.0 ],
																	"text" : "fact live"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-29",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 308.0, 98.0, 16.0 ],
																	"text" : "fact rev"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-30",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 323.0, 98.0, 16.0 ],
																	"text" : "fact heav"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-31",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 233.0, 98.0, 16.0 ],
																	"text" : "fact warm"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-32",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 188.0, 98.0, 16.0 ],
																	"text" : "source fl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-33",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 203.0, 98.0, 16.0 ],
																	"text" : "source fh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-34",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 218.0, 98.0, 16.0 ],
																	"text" : "fact pres"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-35",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 278.0, 98.0, 16.0 ],
																	"text" : "fact revp"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-36",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 263.0, 98.0, 16.0 ],
																	"text" : "fact prer"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-37",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 248.0, 98.0, 16.0 ],
																	"text" : "fact bril"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-38",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 293.0, 98.0, 16.0 ],
																	"text" : "fact env"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-39",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 173.0, 98.0, 16.0 ],
																	"text" : "source drop"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-40",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 128.0, 98.0, 16.0 ],
																	"text" : "bang"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-41",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 143.0, 98.0, 16.0 ],
																	"text" : "source Dopp"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-42",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 158.0, 98.0, 16.0 ],
																	"text" : "source air"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-43",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 66.0, 33.0, 18.0 ],
																	"text" : "102"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-44",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 98.0, 98.0, 16.0 ],
																	"text" : "source El"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-45",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 83.0, 98.0, 16.0 ],
																	"text" : "source Az"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-46",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 66.0, 33.0, 18.0 ],
																	"text" : "70"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-47",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 62.0, 50.0, 63.0, 15.0 ],
																	"text" : "parameter"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-48",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 209.0, 50.0, 63.0, 15.0 ],
																	"text" : "parameter"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-49",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 164.0, 50.0, 41.0, 15.0 ],
																	"text" : "number"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-50",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 81.0, 33.0, 18.0 ],
																	"text" : "71"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-51",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 111.0, 33.0, 18.0 ],
																	"text" : "73"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-52",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 96.0, 33.0, 18.0 ],
																	"text" : "72"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-53",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 156.0, 33.0, 18.0 ],
																	"text" : "76"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-54",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 171.0, 33.0, 18.0 ],
																	"text" : "77"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-55",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 141.0, 33.0, 18.0 ],
																	"text" : "75"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-56",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 126.0, 33.0, 18.0 ],
																	"text" : "74"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-57",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 201.0, 33.0, 18.0 ],
																	"text" : "79"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-58",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 186.0, 33.0, 18.0 ],
																	"text" : "78"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-59",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 276.0, 33.0, 18.0 ],
																	"text" : "84"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-60",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 291.0, 33.0, 18.0 ],
																	"text" : "85"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-61",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 321.0, 33.0, 18.0 ],
																	"text" : "87"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-62",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 306.0, 33.0, 18.0 ],
																	"text" : "86"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-63",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 246.0, 33.0, 18.0 ],
																	"text" : "82"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-64",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 261.0, 33.0, 18.0 ],
																	"text" : "83"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-65",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 231.0, 33.0, 18.0 ],
																	"text" : "81"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-66",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 201.0, 33.0, 18.0 ],
																	"text" : "111"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-67",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 156.0, 33.0, 18.0 ],
																	"text" : "108"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-68",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 171.0, 33.0, 18.0 ],
																	"text" : "109"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-69",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 96.0, 33.0, 18.0 ],
																	"text" : "104"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-70",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 111.0, 33.0, 18.0 ],
																	"text" : "105"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-71",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 141.0, 33.0, 18.0 ],
																	"text" : "107"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-72",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 126.0, 33.0, 18.0 ],
																	"text" : "106"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-73",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 81.0, 33.0, 18.0 ],
																	"text" : "103"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-74",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 186.0, 33.0, 18.0 ],
																	"text" : "110"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-75",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 231.0, 33.0, 18.0 ],
																	"text" : "113"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-76",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 276.0, 33.0, 18.0 ],
																	"text" : "116"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-77",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 291.0, 33.0, 18.0 ],
																	"text" : "117"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-78",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 261.0, 33.0, 18.0 ],
																	"text" : "115"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-79",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 246.0, 33.0, 18.0 ],
																	"text" : "114"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-80",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 321.0, 33.0, 18.0 ],
																	"text" : "119"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-81",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 306.0, 33.0, 18.0 ],
																	"text" : "118"
																}

															}
 ],
														"lines" : [  ]
													}
,
													"patching_rect" : [ 264.0, 22.0, 188.0, 27.0 ],
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"fontface" : 0,
														"default_fontface" : 0,
														"fontsize" : 12.0,
														"default_fontname" : "Arial",
														"default_fontsize" : 12.0,
														"fontname" : "Arial"
													}
,
													"text" : "patcher control map"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-17",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 194.0, 151.0, 123.0, 17.0 ],
													"text" : "argument: source number"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-18",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 194.0, 165.0, 132.0, 17.0 ],
													"text" : "(= MIDI channel). Default: 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 60.0, 150.0, 130.0, 27.0 ],
													"text" : "Spat_ctlout 3"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 0,
													"patching_rect" : [ 95.0, 214.0, 154.0, 27.0 ],
													"text" : "ctlout Spat_OUT"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-21",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 76.0, 70.0, 145.0, 17.0 ],
													"text" : "<- from Spat_Oper right outlet"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-8", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-8", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 718.0, 236.0, 47.0, 17.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}
,
									"text" : "p Midiout"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 50.0, 40.0, 457.0, 356.0 ],
										"bglocked" : 0,
										"defrect" : [ 50.0, 40.0, 457.0, 356.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-1",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 26.0, 58.0, 121.0, 38.0 ],
													"text" : "list contains: control value, controller number, MIDI channel number."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-2",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 195.0, 233.0, 132.0, 17.0 ],
													"text" : "(= MIDI channel). Default: 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-3",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 195.0, 219.0, 132.0, 17.0 ],
													"text" : "argument 1: source number"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-4",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 26.0, 22.0, 393.0, 27.0 ],
													"text" : "receives MIDI control messages encoded with Spat_ctlout (i. e. lists of three values), and translates them to the high-level control syntax for the Spat_OPer module."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-5",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 266.0, 169.0, 91.0, 17.0 ],
													"text" : "set source number"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-6",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 266.0, 183.0, 110.0, 17.0 ],
													"text" : "(select a MIDI channel)"
												}

											}
, 											{
												"box" : 												{
													"comment" : "to Spat_oper",
													"id" : "obj-7",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 26.0, 266.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 164.0, 153.0, 331.0, 421.0 ],
														"bglocked" : 0,
														"defrect" : [ 164.0, 153.0, 331.0, 421.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 14.0,
																	"id" : "obj-1",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 16.0, 23.0, 182.0, 20.0 ],
																	"text" : "MIDI control map for Spat"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-2",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 68.0, 98.0, 16.0 ],
																	"text" : "source Dist (MSB)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-3",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 68.0, 95.0, 16.0 ],
																	"text" : "source Dist (LSB)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 17.0, 50.0, 41.0, 15.0 ],
																	"text" : "number"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-5",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 113.0, 98.0, 16.0 ],
																	"text" : "(not used)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-6",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 336.0, 33.0, 18.0 ],
																	"text" : "120"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-7",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 216.0, 33.0, 18.0 ],
																	"text" : "112"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-8",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 336.0, 33.0, 18.0 ],
																	"text" : "88"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-9",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 216.0, 33.0, 18.0 ],
																	"text" : "80"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-10",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 83.0, 95.0, 16.0 ],
																	"text" : "(not used)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-11",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 338.0, 95.0, 16.0 ],
																	"text" : "source omni fh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-12",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 293.0, 95.0, 16.0 ],
																	"text" : "source omni Gm"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-13",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 308.0, 95.0, 16.0 ],
																	"text" : "source omni Gh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-14",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 323.0, 95.0, 16.0 ],
																	"text" : "source omni fl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-15",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 278.0, 95.0, 16.0 ],
																	"text" : "source omni Gl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-16",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 263.0, 95.0, 16.0 ],
																	"text" : "source omni G0"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-17",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 128.0, 95.0, 16.0 ],
																	"text" : "source Roll"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-18",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 98.0, 95.0, 16.0 ],
																	"text" : "source Yaw"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-19",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 113.0, 95.0, 16.0 ],
																	"text" : "source Pitch"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-20",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 173.0, 95.0, 16.0 ],
																	"text" : "source axis G0"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-21",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 158.0, 95.0, 16.0 ],
																	"text" : "source A3P"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-22",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 143.0, 95.0, 16.0 ],
																	"text" : "source A3Y"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-23",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 188.0, 95.0, 16.0 ],
																	"text" : "source axis Gl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-24",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 233.0, 95.0, 16.0 ],
																	"text" : "source axis fl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-25",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 218.0, 95.0, 16.0 ],
																	"text" : "source axis Gh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-26",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 203.0, 95.0, 16.0 ],
																	"text" : "source axis Gm"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-27",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 248.0, 95.0, 16.0 ],
																	"text" : "source axis fh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-28",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 338.0, 98.0, 16.0 ],
																	"text" : "fact live"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-29",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 308.0, 98.0, 16.0 ],
																	"text" : "fact rev"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-30",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 323.0, 98.0, 16.0 ],
																	"text" : "fact heav"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-31",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 233.0, 98.0, 16.0 ],
																	"text" : "fact warm"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-32",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 188.0, 98.0, 16.0 ],
																	"text" : "source fl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-33",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 203.0, 98.0, 16.0 ],
																	"text" : "source fh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-34",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 218.0, 98.0, 16.0 ],
																	"text" : "fact pres"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-35",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 278.0, 98.0, 16.0 ],
																	"text" : "fact revp"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-36",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 263.0, 98.0, 16.0 ],
																	"text" : "fact prer"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-37",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 248.0, 98.0, 16.0 ],
																	"text" : "fact bril"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-38",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 293.0, 98.0, 16.0 ],
																	"text" : "fact env"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-39",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 173.0, 98.0, 16.0 ],
																	"text" : "source drop"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-40",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 128.0, 98.0, 16.0 ],
																	"text" : "bang"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-41",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 143.0, 98.0, 16.0 ],
																	"text" : "source Dopp"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-42",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 158.0, 98.0, 16.0 ],
																	"text" : "source air"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-43",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 66.0, 33.0, 18.0 ],
																	"text" : "102"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-44",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 98.0, 98.0, 16.0 ],
																	"text" : "source El"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-45",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 83.0, 98.0, 16.0 ],
																	"text" : "source Az"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-46",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 66.0, 33.0, 18.0 ],
																	"text" : "70"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-47",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 62.0, 50.0, 63.0, 15.0 ],
																	"text" : "parameter"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-48",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 209.0, 50.0, 63.0, 15.0 ],
																	"text" : "parameter"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-49",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 164.0, 50.0, 41.0, 15.0 ],
																	"text" : "number"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-50",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 81.0, 33.0, 18.0 ],
																	"text" : "71"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-51",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 111.0, 33.0, 18.0 ],
																	"text" : "73"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-52",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 96.0, 33.0, 18.0 ],
																	"text" : "72"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-53",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 156.0, 33.0, 18.0 ],
																	"text" : "76"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-54",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 171.0, 33.0, 18.0 ],
																	"text" : "77"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-55",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 141.0, 33.0, 18.0 ],
																	"text" : "75"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-56",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 126.0, 33.0, 18.0 ],
																	"text" : "74"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-57",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 201.0, 33.0, 18.0 ],
																	"text" : "79"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-58",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 186.0, 33.0, 18.0 ],
																	"text" : "78"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-59",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 276.0, 33.0, 18.0 ],
																	"text" : "84"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-60",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 291.0, 33.0, 18.0 ],
																	"text" : "85"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-61",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 321.0, 33.0, 18.0 ],
																	"text" : "87"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-62",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 306.0, 33.0, 18.0 ],
																	"text" : "86"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-63",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 246.0, 33.0, 18.0 ],
																	"text" : "82"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-64",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 261.0, 33.0, 18.0 ],
																	"text" : "83"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-65",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 231.0, 33.0, 18.0 ],
																	"text" : "81"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-66",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 201.0, 33.0, 18.0 ],
																	"text" : "111"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-67",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 156.0, 33.0, 18.0 ],
																	"text" : "108"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-68",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 171.0, 33.0, 18.0 ],
																	"text" : "109"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-69",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 96.0, 33.0, 18.0 ],
																	"text" : "104"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-70",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 111.0, 33.0, 18.0 ],
																	"text" : "105"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-71",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 141.0, 33.0, 18.0 ],
																	"text" : "107"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-72",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 126.0, 33.0, 18.0 ],
																	"text" : "106"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-73",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 81.0, 33.0, 18.0 ],
																	"text" : "103"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-74",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 186.0, 33.0, 18.0 ],
																	"text" : "110"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-75",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 231.0, 33.0, 18.0 ],
																	"text" : "113"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-76",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 276.0, 33.0, 18.0 ],
																	"text" : "116"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-77",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 291.0, 33.0, 18.0 ],
																	"text" : "117"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-78",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 261.0, 33.0, 18.0 ],
																	"text" : "115"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-79",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 246.0, 33.0, 18.0 ],
																	"text" : "114"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-80",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 321.0, 33.0, 18.0 ],
																	"text" : "119"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-81",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 306.0, 33.0, 18.0 ],
																	"text" : "118"
																}

															}
 ],
														"lines" : [  ]
													}
,
													"patching_rect" : [ 231.0, 58.0, 188.0, 27.0 ],
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"fontface" : 0,
														"default_fontface" : 0,
														"fontsize" : 12.0,
														"default_fontname" : "Arial",
														"default_fontsize" : 12.0,
														"fontname" : "Arial"
													}
,
													"text" : "patcher control map"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 181.0, 174.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-10",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 175.0, 160.0, 32.0, 17.0 ],
													"text" : "reset"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 26.0, 216.0, 165.0, 27.0 ],
													"text" : "Spat_ctlin 3"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "int", "int", "int" ],
													"patching_rect" : [ 26.0, 106.0, 124.0, 27.0 ],
													"text" : "ctlin Spat_IN"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 26.0, 159.0, 124.0, 17.0 ],
													"text" : "pack 0 0 0"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"id" : "obj-14",
													"maxclass" : "number",
													"maximum" : 16,
													"minimum" : 1,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 233.0, 174.0, 29.0, 17.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-15",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 42.0, 267.0, 80.0, 17.0 ],
													"text" : "<- to Spat_Oper"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-16",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 154.0, 107.0, 111.0, 27.0 ],
													"text" : "ctlin argument according to OMS Setup"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 2 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-12", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-12", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-12", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 718.0, 174.0, 43.0, 17.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}
,
									"text" : "p Midiin"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 84.0, 118.0, 624.0, 365.0 ],
										"bglocked" : 0,
										"defrect" : [ 84.0, 118.0, 624.0, 365.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 166.0, 267.0, 95.0, 17.0 ],
													"text" : "s from_Circ_Spat3"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 50.0, 44.0, 280.0, 335.0 ],
														"bglocked" : 0,
														"defrect" : [ 50.0, 44.0, 280.0, 335.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-1",
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 56.0, 237.0, 15.0, 15.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-2",
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 56.0, 30.0, 15.0, 15.0 ]
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 133.0, 165.0, 95.0, 17.0 ],
																	"text" : "prepend source Dist"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 56.0, 143.0, 91.0, 17.0 ],
																	"text" : "prepend source Az"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 133.0, 122.0, 60.0, 17.0 ],
																	"text" : "fchange.abs"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 56.0, 122.0, 60.0, 17.0 ],
																	"text" : "fchange.abs"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "", "", "" ],
																	"patching_rect" : [ 56.0, 101.0, 164.0, 17.0 ],
																	"text" : "route Az Dist"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-8",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 56.0, 80.0, 65.0, 17.0 ],
																	"text" : "route source"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-5", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-7", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-7", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-6", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-7", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-8", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-7", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-7", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 166.0, 205.0, 40.0, 17.0 ],
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"fontface" : 0,
														"default_fontface" : 0,
														"fontsize" : 12.0,
														"default_fontname" : "Arial",
														"default_fontsize" : 12.0,
														"fontname" : "Arial"
													}
,
													"text" : "p filter"
												}

											}
, 											{
												"box" : 												{
													"comment" : "to Spat_Oper",
													"id" : "obj-3",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 182.0, 22.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-4",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 83.0, 180.0, 28.0, 25.0 ],
													"text" : "open"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 83.0, 201.0, 45.0, 17.0 ],
													"text" : "pcontrol"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 83.0, 159.0, 20.0, 17.0 ],
													"text" : "t b"
												}

											}
, 											{
												"box" : 												{
													"comment" : "open Spat_Oper window (anything)",
													"hidden" : 1,
													"id" : "obj-7",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 83.0, 117.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Spat~ high-level control messages",
													"id" : "obj-8",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 362.0, 142.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "From Spat_Oper to Spat~ rightmost inlet",
													"id" : "obj-9",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 182.0, 142.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-10",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 212.0, 64.0, 148.0, 17.0 ],
													"text" : "Double-click to open Spat_Oper"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-11",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 386.0, 99.0, 146.0, 48.0 ],
													"text" : "<- Right outlet reflects user's actions on the control interface by sending the corresponding high-level control messages."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-12",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 21.0, 46.0, 45.0, 27.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 220.0, 22.0, 152.0, 17.0 ],
													"text" : "Spat_Circ source3"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 182.0, 78.0, 190.0, 27.0 ],
													"text" : "Spat_Oper source3"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-15",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 21.0, 86.0, 148.0, 27.0 ],
													"text" : "High-level perceptual control -> interface for Spat~."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-16",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 385.0, 25.0, 144.0, 38.0 ],
													"text" : "<- Connection to a Circ window providing a 2-D graphic interface to drive Spat_OPer."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-17",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 198.0, 144.0, 131.0, 17.0 ],
													"text" : "<- To Spat~ rightmost inlet"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-18",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 210.0, 205.0, 129.0, 27.0 ],
													"text" : "redraws Spat_Oper commands into Circ window"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 166.0, 237.0, 92.0, 17.0 ],
													"text" : "Circ_Spat source3"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 229.5, 54.0, 381.0, 54.0, 381.0, 128.0, 371.0, 128.0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"hidden" : 1,
													"midpoints" : [ 30.5, 71.0, 191.5, 71.0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 191.0, 60.0, 171.0, 60.0, 171.0, 172.0, 175.5, 172.0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-7", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 574.0, 199.0, 154.0, 27.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}
,
									"text" : "p Spat_Control3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 512.0, 160.0, 490.0, 452.0 ],
										"bglocked" : 0,
										"defrect" : [ 512.0, 160.0, 490.0, 452.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-1",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 26.0, 23.0, 234.0, 27.0 ],
													"text" : "converts Spat_OPer high-level messages to MIDI control messages (lists of three values for ctlout)"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-2",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 156.0, 322.0, 78.0, 17.0 ],
													"text" : "<- MIDI Channel"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"id" : "obj-3",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 120.0, 321.0, 35.0, 17.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-4",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 126.0, 341.0, 103.0, 17.0 ],
													"text" : "<- Controller number"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"id" : "obj-5",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 90.0, 340.0, 35.0, 17.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"id" : "obj-6",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 60.0, 359.0, 35.0, 17.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-7",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 96.0, 360.0, 81.0, 17.0 ],
													"text" : "<- Control value"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "int", "int", "int" ],
													"patching_rect" : [ 60.0, 284.0, 70.0, 17.0 ],
													"text" : "unpack 0 0 0"
												}

											}
, 											{
												"box" : 												{
													"comment" : "from spat_oper right outlet",
													"id" : "obj-9",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 60.0, 69.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-10",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 265.0, 103.0, 91.0, 17.0 ],
													"text" : "set source number"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-11",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 265.0, 117.0, 110.0, 17.0 ],
													"text" : "(select a MIDI channel)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 180.0, 108.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-13",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 174.0, 94.0, 32.0, 17.0 ],
													"text" : "reset"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"id" : "obj-14",
													"maxclass" : "number",
													"maximum" : 16,
													"minimum" : 1,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 232.0, 108.0, 29.0, 17.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-15",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 253.0, 216.0, 111.0, 27.0 ],
													"text" : "ctlout argument according to OMS Setup"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 164.0, 153.0, 331.0, 421.0 ],
														"bglocked" : 0,
														"defrect" : [ 164.0, 153.0, 331.0, 421.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 14.0,
																	"id" : "obj-1",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 16.0, 23.0, 182.0, 20.0 ],
																	"text" : "MIDI control map for Spat"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-2",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 68.0, 98.0, 16.0 ],
																	"text" : "source Dist (MSB)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-3",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 68.0, 95.0, 16.0 ],
																	"text" : "source Dist (LSB)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 17.0, 50.0, 41.0, 15.0 ],
																	"text" : "number"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-5",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 113.0, 98.0, 16.0 ],
																	"text" : "(not used)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-6",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 336.0, 33.0, 18.0 ],
																	"text" : "120"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-7",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 216.0, 33.0, 18.0 ],
																	"text" : "112"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-8",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 336.0, 33.0, 18.0 ],
																	"text" : "88"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-9",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 216.0, 33.0, 18.0 ],
																	"text" : "80"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-10",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 83.0, 95.0, 16.0 ],
																	"text" : "(not used)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-11",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 338.0, 95.0, 16.0 ],
																	"text" : "source omni fh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-12",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 293.0, 95.0, 16.0 ],
																	"text" : "source omni Gm"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-13",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 308.0, 95.0, 16.0 ],
																	"text" : "source omni Gh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-14",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 323.0, 95.0, 16.0 ],
																	"text" : "source omni fl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-15",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 278.0, 95.0, 16.0 ],
																	"text" : "source omni Gl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-16",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 263.0, 95.0, 16.0 ],
																	"text" : "source omni G0"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-17",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 128.0, 95.0, 16.0 ],
																	"text" : "source Roll"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-18",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 98.0, 95.0, 16.0 ],
																	"text" : "source Yaw"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-19",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 113.0, 95.0, 16.0 ],
																	"text" : "source Pitch"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-20",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 173.0, 95.0, 16.0 ],
																	"text" : "source axis G0"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-21",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 158.0, 95.0, 16.0 ],
																	"text" : "source A3P"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-22",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 143.0, 95.0, 16.0 ],
																	"text" : "source A3Y"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-23",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 188.0, 95.0, 16.0 ],
																	"text" : "source axis Gl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-24",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 233.0, 95.0, 16.0 ],
																	"text" : "source axis fl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-25",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 218.0, 95.0, 16.0 ],
																	"text" : "source axis Gh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-26",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 203.0, 95.0, 16.0 ],
																	"text" : "source axis Gm"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-27",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 248.0, 95.0, 16.0 ],
																	"text" : "source axis fh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-28",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 338.0, 98.0, 16.0 ],
																	"text" : "fact live"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-29",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 308.0, 98.0, 16.0 ],
																	"text" : "fact rev"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-30",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 323.0, 98.0, 16.0 ],
																	"text" : "fact heav"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-31",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 233.0, 98.0, 16.0 ],
																	"text" : "fact warm"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-32",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 188.0, 98.0, 16.0 ],
																	"text" : "source fl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-33",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 203.0, 98.0, 16.0 ],
																	"text" : "source fh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-34",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 218.0, 98.0, 16.0 ],
																	"text" : "fact pres"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-35",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 278.0, 98.0, 16.0 ],
																	"text" : "fact revp"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-36",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 263.0, 98.0, 16.0 ],
																	"text" : "fact prer"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-37",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 248.0, 98.0, 16.0 ],
																	"text" : "fact bril"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-38",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 293.0, 98.0, 16.0 ],
																	"text" : "fact env"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-39",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 173.0, 98.0, 16.0 ],
																	"text" : "source drop"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-40",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 128.0, 98.0, 16.0 ],
																	"text" : "bang"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-41",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 143.0, 98.0, 16.0 ],
																	"text" : "source Dopp"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-42",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 158.0, 98.0, 16.0 ],
																	"text" : "source air"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-43",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 66.0, 33.0, 18.0 ],
																	"text" : "102"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-44",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 98.0, 98.0, 16.0 ],
																	"text" : "source El"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-45",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 83.0, 98.0, 16.0 ],
																	"text" : "source Az"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-46",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 66.0, 33.0, 18.0 ],
																	"text" : "70"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-47",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 62.0, 50.0, 63.0, 15.0 ],
																	"text" : "parameter"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-48",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 209.0, 50.0, 63.0, 15.0 ],
																	"text" : "parameter"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-49",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 164.0, 50.0, 41.0, 15.0 ],
																	"text" : "number"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-50",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 81.0, 33.0, 18.0 ],
																	"text" : "71"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-51",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 111.0, 33.0, 18.0 ],
																	"text" : "73"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-52",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 96.0, 33.0, 18.0 ],
																	"text" : "72"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-53",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 156.0, 33.0, 18.0 ],
																	"text" : "76"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-54",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 171.0, 33.0, 18.0 ],
																	"text" : "77"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-55",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 141.0, 33.0, 18.0 ],
																	"text" : "75"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-56",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 126.0, 33.0, 18.0 ],
																	"text" : "74"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-57",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 201.0, 33.0, 18.0 ],
																	"text" : "79"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-58",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 186.0, 33.0, 18.0 ],
																	"text" : "78"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-59",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 276.0, 33.0, 18.0 ],
																	"text" : "84"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-60",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 291.0, 33.0, 18.0 ],
																	"text" : "85"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-61",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 321.0, 33.0, 18.0 ],
																	"text" : "87"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-62",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 306.0, 33.0, 18.0 ],
																	"text" : "86"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-63",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 246.0, 33.0, 18.0 ],
																	"text" : "82"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-64",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 261.0, 33.0, 18.0 ],
																	"text" : "83"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-65",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 231.0, 33.0, 18.0 ],
																	"text" : "81"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-66",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 201.0, 33.0, 18.0 ],
																	"text" : "111"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-67",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 156.0, 33.0, 18.0 ],
																	"text" : "108"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-68",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 171.0, 33.0, 18.0 ],
																	"text" : "109"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-69",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 96.0, 33.0, 18.0 ],
																	"text" : "104"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-70",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 111.0, 33.0, 18.0 ],
																	"text" : "105"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-71",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 141.0, 33.0, 18.0 ],
																	"text" : "107"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-72",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 126.0, 33.0, 18.0 ],
																	"text" : "106"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-73",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 81.0, 33.0, 18.0 ],
																	"text" : "103"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-74",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 186.0, 33.0, 18.0 ],
																	"text" : "110"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-75",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 231.0, 33.0, 18.0 ],
																	"text" : "113"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-76",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 276.0, 33.0, 18.0 ],
																	"text" : "116"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-77",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 291.0, 33.0, 18.0 ],
																	"text" : "117"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-78",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 261.0, 33.0, 18.0 ],
																	"text" : "115"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-79",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 246.0, 33.0, 18.0 ],
																	"text" : "114"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-80",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 321.0, 33.0, 18.0 ],
																	"text" : "119"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-81",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 306.0, 33.0, 18.0 ],
																	"text" : "118"
																}

															}
 ],
														"lines" : [  ]
													}
,
													"patching_rect" : [ 264.0, 22.0, 188.0, 27.0 ],
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"fontface" : 0,
														"default_fontface" : 0,
														"fontsize" : 12.0,
														"default_fontname" : "Arial",
														"default_fontsize" : 12.0,
														"fontname" : "Arial"
													}
,
													"text" : "patcher control map"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-17",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 194.0, 151.0, 123.0, 17.0 ],
													"text" : "argument: source number"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-18",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 194.0, 165.0, 132.0, 17.0 ],
													"text" : "(= MIDI channel). Default: 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 60.0, 150.0, 130.0, 27.0 ],
													"text" : "Spat_ctlout 2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 0,
													"patching_rect" : [ 95.0, 214.0, 154.0, 27.0 ],
													"text" : "ctlout Spat_OUT"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-21",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 76.0, 70.0, 145.0, 17.0 ],
													"text" : "<- from Spat_Oper right outlet"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-8", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-8", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 591.0, 169.0, 49.0, 17.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}
,
									"text" : "p Midiout"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 50.0, 40.0, 457.0, 356.0 ],
										"bglocked" : 0,
										"defrect" : [ 50.0, 40.0, 457.0, 356.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-1",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 26.0, 58.0, 121.0, 38.0 ],
													"text" : "list contains: control value, controller number, MIDI channel number."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-2",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 195.0, 233.0, 132.0, 17.0 ],
													"text" : "(= MIDI channel). Default: 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-3",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 195.0, 219.0, 132.0, 17.0 ],
													"text" : "argument 1: source number"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-4",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 26.0, 22.0, 393.0, 27.0 ],
													"text" : "receives MIDI control messages encoded with Spat_ctlout (i. e. lists of three values), and translates them to the high-level control syntax for the Spat_OPer module."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-5",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 266.0, 169.0, 91.0, 17.0 ],
													"text" : "set source number"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-6",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 266.0, 183.0, 110.0, 17.0 ],
													"text" : "(select a MIDI channel)"
												}

											}
, 											{
												"box" : 												{
													"comment" : "to Spat_oper",
													"id" : "obj-7",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 26.0, 266.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 164.0, 153.0, 331.0, 421.0 ],
														"bglocked" : 0,
														"defrect" : [ 164.0, 153.0, 331.0, 421.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 14.0,
																	"id" : "obj-1",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 16.0, 23.0, 182.0, 20.0 ],
																	"text" : "MIDI control map for Spat"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-2",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 68.0, 98.0, 16.0 ],
																	"text" : "source Dist (MSB)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-3",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 68.0, 95.0, 16.0 ],
																	"text" : "source Dist (LSB)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 17.0, 50.0, 41.0, 15.0 ],
																	"text" : "number"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-5",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 113.0, 98.0, 16.0 ],
																	"text" : "(not used)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-6",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 336.0, 33.0, 18.0 ],
																	"text" : "120"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-7",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 216.0, 33.0, 18.0 ],
																	"text" : "112"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-8",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 336.0, 33.0, 18.0 ],
																	"text" : "88"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-9",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 216.0, 33.0, 18.0 ],
																	"text" : "80"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-10",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 83.0, 95.0, 16.0 ],
																	"text" : "(not used)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-11",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 338.0, 95.0, 16.0 ],
																	"text" : "source omni fh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-12",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 293.0, 95.0, 16.0 ],
																	"text" : "source omni Gm"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-13",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 308.0, 95.0, 16.0 ],
																	"text" : "source omni Gh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-14",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 323.0, 95.0, 16.0 ],
																	"text" : "source omni fl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-15",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 278.0, 95.0, 16.0 ],
																	"text" : "source omni Gl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-16",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 263.0, 95.0, 16.0 ],
																	"text" : "source omni G0"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-17",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 128.0, 95.0, 16.0 ],
																	"text" : "source Roll"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-18",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 98.0, 95.0, 16.0 ],
																	"text" : "source Yaw"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-19",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 113.0, 95.0, 16.0 ],
																	"text" : "source Pitch"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-20",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 173.0, 95.0, 16.0 ],
																	"text" : "source axis G0"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-21",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 158.0, 95.0, 16.0 ],
																	"text" : "source A3P"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-22",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 143.0, 95.0, 16.0 ],
																	"text" : "source A3Y"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-23",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 188.0, 95.0, 16.0 ],
																	"text" : "source axis Gl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-24",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 233.0, 95.0, 16.0 ],
																	"text" : "source axis fl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-25",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 218.0, 95.0, 16.0 ],
																	"text" : "source axis Gh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-26",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 203.0, 95.0, 16.0 ],
																	"text" : "source axis Gm"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-27",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 248.0, 95.0, 16.0 ],
																	"text" : "source axis fh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-28",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 338.0, 98.0, 16.0 ],
																	"text" : "fact live"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-29",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 308.0, 98.0, 16.0 ],
																	"text" : "fact rev"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-30",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 323.0, 98.0, 16.0 ],
																	"text" : "fact heav"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-31",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 233.0, 98.0, 16.0 ],
																	"text" : "fact warm"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-32",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 188.0, 98.0, 16.0 ],
																	"text" : "source fl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-33",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 203.0, 98.0, 16.0 ],
																	"text" : "source fh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-34",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 218.0, 98.0, 16.0 ],
																	"text" : "fact pres"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-35",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 278.0, 98.0, 16.0 ],
																	"text" : "fact revp"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-36",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 263.0, 98.0, 16.0 ],
																	"text" : "fact prer"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-37",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 248.0, 98.0, 16.0 ],
																	"text" : "fact bril"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-38",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 293.0, 98.0, 16.0 ],
																	"text" : "fact env"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-39",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 173.0, 98.0, 16.0 ],
																	"text" : "source drop"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-40",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 128.0, 98.0, 16.0 ],
																	"text" : "bang"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-41",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 143.0, 98.0, 16.0 ],
																	"text" : "source Dopp"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-42",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 158.0, 98.0, 16.0 ],
																	"text" : "source air"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-43",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 66.0, 33.0, 18.0 ],
																	"text" : "102"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-44",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 98.0, 98.0, 16.0 ],
																	"text" : "source El"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-45",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 83.0, 98.0, 16.0 ],
																	"text" : "source Az"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-46",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 66.0, 33.0, 18.0 ],
																	"text" : "70"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-47",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 62.0, 50.0, 63.0, 15.0 ],
																	"text" : "parameter"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-48",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 209.0, 50.0, 63.0, 15.0 ],
																	"text" : "parameter"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-49",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 164.0, 50.0, 41.0, 15.0 ],
																	"text" : "number"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-50",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 81.0, 33.0, 18.0 ],
																	"text" : "71"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-51",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 111.0, 33.0, 18.0 ],
																	"text" : "73"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-52",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 96.0, 33.0, 18.0 ],
																	"text" : "72"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-53",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 156.0, 33.0, 18.0 ],
																	"text" : "76"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-54",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 171.0, 33.0, 18.0 ],
																	"text" : "77"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-55",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 141.0, 33.0, 18.0 ],
																	"text" : "75"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-56",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 126.0, 33.0, 18.0 ],
																	"text" : "74"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-57",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 201.0, 33.0, 18.0 ],
																	"text" : "79"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-58",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 186.0, 33.0, 18.0 ],
																	"text" : "78"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-59",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 276.0, 33.0, 18.0 ],
																	"text" : "84"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-60",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 291.0, 33.0, 18.0 ],
																	"text" : "85"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-61",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 321.0, 33.0, 18.0 ],
																	"text" : "87"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-62",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 306.0, 33.0, 18.0 ],
																	"text" : "86"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-63",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 246.0, 33.0, 18.0 ],
																	"text" : "82"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-64",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 261.0, 33.0, 18.0 ],
																	"text" : "83"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-65",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 231.0, 33.0, 18.0 ],
																	"text" : "81"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-66",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 201.0, 33.0, 18.0 ],
																	"text" : "111"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-67",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 156.0, 33.0, 18.0 ],
																	"text" : "108"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-68",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 171.0, 33.0, 18.0 ],
																	"text" : "109"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-69",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 96.0, 33.0, 18.0 ],
																	"text" : "104"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-70",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 111.0, 33.0, 18.0 ],
																	"text" : "105"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-71",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 141.0, 33.0, 18.0 ],
																	"text" : "107"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-72",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 126.0, 33.0, 18.0 ],
																	"text" : "106"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-73",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 81.0, 33.0, 18.0 ],
																	"text" : "103"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-74",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 186.0, 33.0, 18.0 ],
																	"text" : "110"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-75",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 231.0, 33.0, 18.0 ],
																	"text" : "113"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-76",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 276.0, 33.0, 18.0 ],
																	"text" : "116"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-77",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 291.0, 33.0, 18.0 ],
																	"text" : "117"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-78",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 261.0, 33.0, 18.0 ],
																	"text" : "115"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-79",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 246.0, 33.0, 18.0 ],
																	"text" : "114"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-80",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 321.0, 33.0, 18.0 ],
																	"text" : "119"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-81",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 306.0, 33.0, 18.0 ],
																	"text" : "118"
																}

															}
 ],
														"lines" : [  ]
													}
,
													"patching_rect" : [ 231.0, 58.0, 188.0, 27.0 ],
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"fontface" : 0,
														"default_fontface" : 0,
														"fontsize" : 12.0,
														"default_fontname" : "Arial",
														"default_fontsize" : 12.0,
														"fontname" : "Arial"
													}
,
													"text" : "patcher control map"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 181.0, 174.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-10",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 175.0, 160.0, 32.0, 17.0 ],
													"text" : "reset"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 26.0, 216.0, 165.0, 27.0 ],
													"text" : "Spat_ctlin 2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "int", "int", "int" ],
													"patching_rect" : [ 26.0, 106.0, 124.0, 27.0 ],
													"text" : "ctlin Spat_IN"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 26.0, 159.0, 124.0, 17.0 ],
													"text" : "pack 0 0 0"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"id" : "obj-14",
													"maxclass" : "number",
													"maximum" : 16,
													"minimum" : 1,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 233.0, 174.0, 29.0, 17.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-15",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 42.0, 267.0, 80.0, 17.0 ],
													"text" : "<- to Spat_Oper"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-16",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 154.0, 107.0, 111.0, 27.0 ],
													"text" : "ctlin argument according to OMS Setup"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 2 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-12", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-12", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-12", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 591.0, 104.0, 43.0, 17.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}
,
									"text" : "p Midiin"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 84.0, 118.0, 624.0, 365.0 ],
										"bglocked" : 0,
										"defrect" : [ 84.0, 118.0, 624.0, 365.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 166.0, 267.0, 95.0, 17.0 ],
													"text" : "s from_Circ_Spat2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 50.0, 44.0, 280.0, 335.0 ],
														"bglocked" : 0,
														"defrect" : [ 50.0, 44.0, 280.0, 335.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-1",
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 56.0, 237.0, 15.0, 15.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-2",
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 56.0, 30.0, 15.0, 15.0 ]
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 133.0, 165.0, 95.0, 17.0 ],
																	"text" : "prepend source Dist"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 56.0, 143.0, 91.0, 17.0 ],
																	"text" : "prepend source Az"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 133.0, 122.0, 60.0, 17.0 ],
																	"text" : "fchange.abs"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 56.0, 122.0, 60.0, 17.0 ],
																	"text" : "fchange.abs"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "", "", "" ],
																	"patching_rect" : [ 56.0, 101.0, 164.0, 17.0 ],
																	"text" : "route Az Dist"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-8",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 56.0, 80.0, 65.0, 17.0 ],
																	"text" : "route source"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-5", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-7", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-7", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-6", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-7", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-8", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-7", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-7", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 166.0, 205.0, 40.0, 17.0 ],
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"fontface" : 0,
														"default_fontface" : 0,
														"fontsize" : 12.0,
														"default_fontname" : "Arial",
														"default_fontsize" : 12.0,
														"fontname" : "Arial"
													}
,
													"text" : "p filter"
												}

											}
, 											{
												"box" : 												{
													"comment" : "to Spat_Oper",
													"id" : "obj-3",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 182.0, 22.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-4",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 83.0, 180.0, 28.0, 25.0 ],
													"text" : "open"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 83.0, 201.0, 45.0, 17.0 ],
													"text" : "pcontrol"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 83.0, 159.0, 20.0, 17.0 ],
													"text" : "t b"
												}

											}
, 											{
												"box" : 												{
													"comment" : "open Spat_Oper window (anything)",
													"hidden" : 1,
													"id" : "obj-7",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 83.0, 117.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Spat~ high-level control messages",
													"id" : "obj-8",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 362.0, 142.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "From Spat_Oper to Spat~ rightmost inlet",
													"id" : "obj-9",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 182.0, 142.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-10",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 212.0, 64.0, 148.0, 17.0 ],
													"text" : "Double-click to open Spat_Oper"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-11",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 386.0, 99.0, 146.0, 48.0 ],
													"text" : "<- Right outlet reflects user's actions on the control interface by sending the corresponding high-level control messages."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-12",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 21.0, 46.0, 45.0, 27.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 220.0, 22.0, 152.0, 17.0 ],
													"text" : "Spat_Circ source2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 182.0, 78.0, 190.0, 27.0 ],
													"text" : "Spat_Oper source2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-15",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 21.0, 86.0, 148.0, 27.0 ],
													"text" : "High-level perceptual control -> interface for Spat~."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-16",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 385.0, 25.0, 144.0, 38.0 ],
													"text" : "<- Connection to a Circ window providing a 2-D graphic interface to drive Spat_OPer."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-17",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 198.0, 144.0, 131.0, 17.0 ],
													"text" : "<- To Spat~ rightmost inlet"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-18",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 210.0, 205.0, 129.0, 27.0 ],
													"text" : "redraws Spat_Oper commands into Circ window"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 166.0, 237.0, 92.0, 17.0 ],
													"text" : "Circ_Spat source2"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 229.5, 54.0, 381.0, 54.0, 381.0, 128.0, 371.0, 128.0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"hidden" : 1,
													"midpoints" : [ 30.5, 71.0, 191.5, 71.0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 191.0, 60.0, 171.0, 60.0, 171.0, 172.0, 175.5, 172.0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-7", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 447.0, 132.0, 154.0, 27.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}
,
									"text" : "p Spat_Control2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 512.0, 160.0, 490.0, 452.0 ],
										"bglocked" : 0,
										"defrect" : [ 512.0, 160.0, 490.0, 452.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-1",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 26.0, 23.0, 234.0, 27.0 ],
													"text" : "converts Spat_OPer high-level messages to MIDI control messages (lists of three values for ctlout)"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-2",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 156.0, 322.0, 78.0, 17.0 ],
													"text" : "<- MIDI Channel"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"id" : "obj-3",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 120.0, 321.0, 35.0, 17.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-4",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 126.0, 341.0, 103.0, 17.0 ],
													"text" : "<- Controller number"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"id" : "obj-5",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 90.0, 340.0, 35.0, 17.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"id" : "obj-6",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 60.0, 359.0, 35.0, 17.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-7",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 96.0, 360.0, 81.0, 17.0 ],
													"text" : "<- Control value"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "int", "int", "int" ],
													"patching_rect" : [ 60.0, 284.0, 70.0, 17.0 ],
													"text" : "unpack 0 0 0"
												}

											}
, 											{
												"box" : 												{
													"comment" : "from spat_oper right outlet",
													"id" : "obj-9",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 60.0, 69.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-10",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 265.0, 103.0, 91.0, 17.0 ],
													"text" : "set source number"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-11",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 265.0, 117.0, 110.0, 17.0 ],
													"text" : "(select a MIDI channel)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 180.0, 108.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-13",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 174.0, 94.0, 32.0, 17.0 ],
													"text" : "reset"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"id" : "obj-14",
													"maxclass" : "number",
													"maximum" : 16,
													"minimum" : 1,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 232.0, 108.0, 29.0, 17.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-15",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 253.0, 216.0, 111.0, 27.0 ],
													"text" : "ctlout argument according to OMS Setup"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 164.0, 153.0, 331.0, 421.0 ],
														"bglocked" : 0,
														"defrect" : [ 164.0, 153.0, 331.0, 421.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 14.0,
																	"id" : "obj-1",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 16.0, 23.0, 182.0, 20.0 ],
																	"text" : "MIDI control map for Spat"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-2",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 68.0, 98.0, 16.0 ],
																	"text" : "source Dist (MSB)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-3",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 68.0, 95.0, 16.0 ],
																	"text" : "source Dist (LSB)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 17.0, 50.0, 41.0, 15.0 ],
																	"text" : "number"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-5",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 113.0, 98.0, 16.0 ],
																	"text" : "(not used)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-6",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 336.0, 33.0, 18.0 ],
																	"text" : "120"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-7",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 216.0, 33.0, 18.0 ],
																	"text" : "112"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-8",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 336.0, 33.0, 18.0 ],
																	"text" : "88"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-9",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 216.0, 33.0, 18.0 ],
																	"text" : "80"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-10",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 83.0, 95.0, 16.0 ],
																	"text" : "(not used)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-11",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 338.0, 95.0, 16.0 ],
																	"text" : "source omni fh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-12",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 293.0, 95.0, 16.0 ],
																	"text" : "source omni Gm"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-13",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 308.0, 95.0, 16.0 ],
																	"text" : "source omni Gh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-14",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 323.0, 95.0, 16.0 ],
																	"text" : "source omni fl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-15",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 278.0, 95.0, 16.0 ],
																	"text" : "source omni Gl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-16",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 263.0, 95.0, 16.0 ],
																	"text" : "source omni G0"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-17",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 128.0, 95.0, 16.0 ],
																	"text" : "source Roll"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-18",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 98.0, 95.0, 16.0 ],
																	"text" : "source Yaw"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-19",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 113.0, 95.0, 16.0 ],
																	"text" : "source Pitch"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-20",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 173.0, 95.0, 16.0 ],
																	"text" : "source axis G0"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-21",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 158.0, 95.0, 16.0 ],
																	"text" : "source A3P"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-22",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 143.0, 95.0, 16.0 ],
																	"text" : "source A3Y"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-23",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 188.0, 95.0, 16.0 ],
																	"text" : "source axis Gl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-24",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 233.0, 95.0, 16.0 ],
																	"text" : "source axis fl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-25",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 218.0, 95.0, 16.0 ],
																	"text" : "source axis Gh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-26",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 203.0, 95.0, 16.0 ],
																	"text" : "source axis Gm"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-27",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 248.0, 95.0, 16.0 ],
																	"text" : "source axis fh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-28",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 338.0, 98.0, 16.0 ],
																	"text" : "fact live"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-29",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 308.0, 98.0, 16.0 ],
																	"text" : "fact rev"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-30",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 323.0, 98.0, 16.0 ],
																	"text" : "fact heav"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-31",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 233.0, 98.0, 16.0 ],
																	"text" : "fact warm"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-32",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 188.0, 98.0, 16.0 ],
																	"text" : "source fl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-33",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 203.0, 98.0, 16.0 ],
																	"text" : "source fh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-34",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 218.0, 98.0, 16.0 ],
																	"text" : "fact pres"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-35",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 278.0, 98.0, 16.0 ],
																	"text" : "fact revp"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-36",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 263.0, 98.0, 16.0 ],
																	"text" : "fact prer"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-37",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 248.0, 98.0, 16.0 ],
																	"text" : "fact bril"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-38",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 293.0, 98.0, 16.0 ],
																	"text" : "fact env"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-39",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 173.0, 98.0, 16.0 ],
																	"text" : "source drop"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-40",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 128.0, 98.0, 16.0 ],
																	"text" : "bang"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-41",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 143.0, 98.0, 16.0 ],
																	"text" : "source Dopp"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-42",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 158.0, 98.0, 16.0 ],
																	"text" : "source air"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-43",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 66.0, 33.0, 18.0 ],
																	"text" : "102"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-44",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 98.0, 98.0, 16.0 ],
																	"text" : "source El"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-45",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 83.0, 98.0, 16.0 ],
																	"text" : "source Az"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-46",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 66.0, 33.0, 18.0 ],
																	"text" : "70"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-47",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 62.0, 50.0, 63.0, 15.0 ],
																	"text" : "parameter"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-48",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 209.0, 50.0, 63.0, 15.0 ],
																	"text" : "parameter"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-49",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 164.0, 50.0, 41.0, 15.0 ],
																	"text" : "number"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-50",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 81.0, 33.0, 18.0 ],
																	"text" : "71"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-51",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 111.0, 33.0, 18.0 ],
																	"text" : "73"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-52",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 96.0, 33.0, 18.0 ],
																	"text" : "72"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-53",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 156.0, 33.0, 18.0 ],
																	"text" : "76"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-54",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 171.0, 33.0, 18.0 ],
																	"text" : "77"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-55",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 141.0, 33.0, 18.0 ],
																	"text" : "75"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-56",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 126.0, 33.0, 18.0 ],
																	"text" : "74"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-57",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 201.0, 33.0, 18.0 ],
																	"text" : "79"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-58",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 186.0, 33.0, 18.0 ],
																	"text" : "78"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-59",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 276.0, 33.0, 18.0 ],
																	"text" : "84"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-60",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 291.0, 33.0, 18.0 ],
																	"text" : "85"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-61",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 321.0, 33.0, 18.0 ],
																	"text" : "87"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-62",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 306.0, 33.0, 18.0 ],
																	"text" : "86"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-63",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 246.0, 33.0, 18.0 ],
																	"text" : "82"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-64",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 261.0, 33.0, 18.0 ],
																	"text" : "83"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-65",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 231.0, 33.0, 18.0 ],
																	"text" : "81"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-66",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 201.0, 33.0, 18.0 ],
																	"text" : "111"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-67",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 156.0, 33.0, 18.0 ],
																	"text" : "108"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-68",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 171.0, 33.0, 18.0 ],
																	"text" : "109"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-69",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 96.0, 33.0, 18.0 ],
																	"text" : "104"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-70",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 111.0, 33.0, 18.0 ],
																	"text" : "105"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-71",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 141.0, 33.0, 18.0 ],
																	"text" : "107"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-72",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 126.0, 33.0, 18.0 ],
																	"text" : "106"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-73",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 81.0, 33.0, 18.0 ],
																	"text" : "103"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-74",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 186.0, 33.0, 18.0 ],
																	"text" : "110"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-75",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 231.0, 33.0, 18.0 ],
																	"text" : "113"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-76",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 276.0, 33.0, 18.0 ],
																	"text" : "116"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-77",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 291.0, 33.0, 18.0 ],
																	"text" : "117"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-78",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 261.0, 33.0, 18.0 ],
																	"text" : "115"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-79",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 246.0, 33.0, 18.0 ],
																	"text" : "114"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-80",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 321.0, 33.0, 18.0 ],
																	"text" : "119"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-81",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 306.0, 33.0, 18.0 ],
																	"text" : "118"
																}

															}
 ],
														"lines" : [  ]
													}
,
													"patching_rect" : [ 264.0, 22.0, 188.0, 27.0 ],
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"fontface" : 0,
														"default_fontface" : 0,
														"fontsize" : 12.0,
														"default_fontname" : "Arial",
														"default_fontsize" : 12.0,
														"fontname" : "Arial"
													}
,
													"text" : "patcher control map"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-17",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 194.0, 151.0, 123.0, 17.0 ],
													"text" : "argument: source number"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-18",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 194.0, 165.0, 132.0, 17.0 ],
													"text" : "(= MIDI channel). Default: 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 60.0, 150.0, 130.0, 27.0 ],
													"text" : "Spat_ctlout 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 0,
													"patching_rect" : [ 95.0, 214.0, 154.0, 27.0 ],
													"text" : "ctlout Spat_OUT"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-21",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 76.0, 70.0, 145.0, 17.0 ],
													"text" : "<- from Spat_Oper right outlet"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-8", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-8", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 464.0, 102.0, 49.0, 17.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}
,
									"text" : "p Midiout"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 368.0, 207.0, 457.0, 356.0 ],
										"bglocked" : 0,
										"defrect" : [ 368.0, 207.0, 457.0, 356.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-1",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 26.0, 58.0, 121.0, 38.0 ],
													"text" : "list contains: control value, controller number, MIDI channel number."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-2",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 195.0, 233.0, 132.0, 17.0 ],
													"text" : "(= MIDI channel). Default: 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-3",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 195.0, 219.0, 132.0, 17.0 ],
													"text" : "argument 1: source number"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-4",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 26.0, 22.0, 393.0, 27.0 ],
													"text" : "receives MIDI control messages encoded with Spat_ctlout (i. e. lists of three values), and translates them to the high-level control syntax for the Spat_OPer module."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-5",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 266.0, 169.0, 91.0, 17.0 ],
													"text" : "set source number"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-6",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 266.0, 183.0, 110.0, 17.0 ],
													"text" : "(select a MIDI channel)"
												}

											}
, 											{
												"box" : 												{
													"comment" : "to Spat_oper",
													"id" : "obj-7",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 26.0, 266.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 924.0, 137.0, 331.0, 421.0 ],
														"bglocked" : 0,
														"defrect" : [ 924.0, 137.0, 331.0, 421.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 14.0,
																	"id" : "obj-1",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 16.0, 23.0, 182.0, 20.0 ],
																	"text" : "MIDI control map for Spat"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-2",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 68.0, 98.0, 16.0 ],
																	"text" : "source Dist (MSB)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-3",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 68.0, 95.0, 16.0 ],
																	"text" : "source Dist (LSB)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 17.0, 50.0, 41.0, 15.0 ],
																	"text" : "number"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-5",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 113.0, 98.0, 16.0 ],
																	"text" : "(not used)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-6",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 336.0, 33.0, 18.0 ],
																	"text" : "120"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-7",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 216.0, 33.0, 18.0 ],
																	"text" : "112"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-8",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 336.0, 33.0, 18.0 ],
																	"text" : "88"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-9",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 216.0, 33.0, 18.0 ],
																	"text" : "80"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-10",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 83.0, 95.0, 16.0 ],
																	"text" : "(not used)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-11",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 338.0, 95.0, 16.0 ],
																	"text" : "source omni fh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-12",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 293.0, 95.0, 16.0 ],
																	"text" : "source omni Gm"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-13",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 308.0, 95.0, 16.0 ],
																	"text" : "source omni Gh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-14",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 323.0, 95.0, 16.0 ],
																	"text" : "source omni fl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-15",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 278.0, 95.0, 16.0 ],
																	"text" : "source omni Gl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-16",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 263.0, 95.0, 16.0 ],
																	"text" : "source omni G0"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-17",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 128.0, 95.0, 16.0 ],
																	"text" : "source Roll"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-18",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 98.0, 95.0, 16.0 ],
																	"text" : "source Yaw"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-19",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 113.0, 95.0, 16.0 ],
																	"text" : "source Pitch"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-20",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 173.0, 95.0, 16.0 ],
																	"text" : "source axis G0"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-21",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 158.0, 95.0, 16.0 ],
																	"text" : "source A3P"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-22",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 143.0, 95.0, 16.0 ],
																	"text" : "source A3Y"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-23",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 188.0, 95.0, 16.0 ],
																	"text" : "source axis Gl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-24",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 233.0, 95.0, 16.0 ],
																	"text" : "source axis fl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-25",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 218.0, 95.0, 16.0 ],
																	"text" : "source axis Gh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-26",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 203.0, 95.0, 16.0 ],
																	"text" : "source axis Gm"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-27",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 199.0, 248.0, 95.0, 16.0 ],
																	"text" : "source axis fh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-28",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 338.0, 98.0, 16.0 ],
																	"text" : "fact live"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-29",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 308.0, 98.0, 16.0 ],
																	"text" : "fact rev"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-30",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 323.0, 98.0, 16.0 ],
																	"text" : "fact heav"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-31",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 233.0, 98.0, 16.0 ],
																	"text" : "fact warm"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-32",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 188.0, 98.0, 16.0 ],
																	"text" : "source fl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-33",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 203.0, 98.0, 16.0 ],
																	"text" : "source fh"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-34",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 218.0, 98.0, 16.0 ],
																	"text" : "fact pres"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-35",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 278.0, 98.0, 16.0 ],
																	"text" : "fact revp"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-36",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 263.0, 98.0, 16.0 ],
																	"text" : "fact prer"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-37",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 248.0, 98.0, 16.0 ],
																	"text" : "fact bril"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-38",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 293.0, 98.0, 16.0 ],
																	"text" : "fact env"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-39",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 173.0, 98.0, 16.0 ],
																	"text" : "source drop"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-40",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 128.0, 98.0, 16.0 ],
																	"text" : "bang"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-41",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 143.0, 98.0, 16.0 ],
																	"text" : "source Dopp"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-42",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 158.0, 98.0, 16.0 ],
																	"text" : "source air"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-43",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 66.0, 33.0, 18.0 ],
																	"text" : "102"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-44",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 98.0, 98.0, 16.0 ],
																	"text" : "source El"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 10.0,
																	"id" : "obj-45",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 52.0, 83.0, 98.0, 16.0 ],
																	"text" : "source Az"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-46",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 66.0, 33.0, 18.0 ],
																	"text" : "70"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-47",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 62.0, 50.0, 63.0, 15.0 ],
																	"text" : "parameter"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-48",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 209.0, 50.0, 63.0, 15.0 ],
																	"text" : "parameter"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 9.0,
																	"id" : "obj-49",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 164.0, 50.0, 41.0, 15.0 ],
																	"text" : "number"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-50",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 81.0, 33.0, 18.0 ],
																	"text" : "71"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-51",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 111.0, 33.0, 18.0 ],
																	"text" : "73"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-52",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 96.0, 33.0, 18.0 ],
																	"text" : "72"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-53",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 156.0, 33.0, 18.0 ],
																	"text" : "76"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-54",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 171.0, 33.0, 18.0 ],
																	"text" : "77"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-55",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 141.0, 33.0, 18.0 ],
																	"text" : "75"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-56",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 126.0, 33.0, 18.0 ],
																	"text" : "74"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-57",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 201.0, 33.0, 18.0 ],
																	"text" : "79"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-58",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 186.0, 33.0, 18.0 ],
																	"text" : "78"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-59",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 276.0, 33.0, 18.0 ],
																	"text" : "84"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-60",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 291.0, 33.0, 18.0 ],
																	"text" : "85"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-61",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 321.0, 33.0, 18.0 ],
																	"text" : "87"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-62",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 306.0, 33.0, 18.0 ],
																	"text" : "86"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-63",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 246.0, 33.0, 18.0 ],
																	"text" : "82"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-64",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 261.0, 33.0, 18.0 ],
																	"text" : "83"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-65",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 231.0, 33.0, 18.0 ],
																	"text" : "81"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-66",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 201.0, 33.0, 18.0 ],
																	"text" : "111"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-67",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 156.0, 33.0, 18.0 ],
																	"text" : "108"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-68",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 171.0, 33.0, 18.0 ],
																	"text" : "109"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-69",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 96.0, 33.0, 18.0 ],
																	"text" : "104"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-70",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 111.0, 33.0, 18.0 ],
																	"text" : "105"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-71",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 141.0, 33.0, 18.0 ],
																	"text" : "107"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-72",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 126.0, 33.0, 18.0 ],
																	"text" : "106"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-73",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 81.0, 33.0, 18.0 ],
																	"text" : "103"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-74",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 186.0, 33.0, 18.0 ],
																	"text" : "110"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-75",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 231.0, 33.0, 18.0 ],
																	"text" : "113"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-76",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 276.0, 33.0, 18.0 ],
																	"text" : "116"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-77",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 291.0, 33.0, 18.0 ],
																	"text" : "117"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-78",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 261.0, 33.0, 18.0 ],
																	"text" : "115"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-79",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 246.0, 33.0, 18.0 ],
																	"text" : "114"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-80",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 321.0, 33.0, 18.0 ],
																	"text" : "119"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Helvetica",
																	"fontsize" : 12.0,
																	"id" : "obj-81",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 306.0, 33.0, 18.0 ],
																	"text" : "118"
																}

															}
 ],
														"lines" : [  ]
													}
,
													"patching_rect" : [ 231.0, 58.0, 188.0, 27.0 ],
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"fontface" : 0,
														"default_fontface" : 0,
														"fontsize" : 12.0,
														"default_fontname" : "Arial",
														"default_fontsize" : 12.0,
														"fontname" : "Arial"
													}
,
													"text" : "patcher control map"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 181.0, 174.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-10",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 175.0, 160.0, 32.0, 17.0 ],
													"text" : "reset"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 26.0, 216.0, 165.0, 27.0 ],
													"text" : "Spat_ctlin 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "int", "int", "int" ],
													"patching_rect" : [ 26.0, 106.0, 124.0, 27.0 ],
													"text" : "ctlin Spat_IN"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 26.0, 159.0, 124.0, 17.0 ],
													"text" : "pack 0 0 0"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"id" : "obj-14",
													"maxclass" : "number",
													"maximum" : 16,
													"minimum" : 1,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 233.0, 174.0, 29.0, 17.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-15",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 42.0, 267.0, 80.0, 17.0 ],
													"text" : "<- to Spat_Oper"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-16",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 154.0, 107.0, 111.0, 27.0 ],
													"text" : "ctlin argument according to OMS Setup"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 2 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-12", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-12", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-12", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 464.0, 40.0, 43.0, 17.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}
,
									"text" : "p Midiin"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 88.0, 363.0, 624.0, 365.0 ],
										"bglocked" : 0,
										"defrect" : [ 88.0, 363.0, 624.0, 365.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 166.0, 264.0, 95.0, 17.0 ],
													"text" : "s from_Circ_Spat1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 50.0, 44.0, 280.0, 335.0 ],
														"bglocked" : 0,
														"defrect" : [ 50.0, 44.0, 280.0, 335.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-1",
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 56.0, 237.0, 15.0, 15.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-2",
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 56.0, 30.0, 15.0, 15.0 ]
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 133.0, 165.0, 95.0, 17.0 ],
																	"text" : "prepend source Dist"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-4",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 56.0, 143.0, 91.0, 17.0 ],
																	"text" : "prepend source Az"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 133.0, 122.0, 60.0, 17.0 ],
																	"text" : "fchange.abs"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 56.0, 122.0, 60.0, 17.0 ],
																	"text" : "fchange.abs"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "", "", "" ],
																	"patching_rect" : [ 56.0, 101.0, 164.0, 17.0 ],
																	"text" : "route Az Dist"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-8",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 56.0, 80.0, 65.0, 17.0 ],
																	"text" : "route source"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-5", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-7", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-7", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-6", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-7", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-8", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-7", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-7", 1 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 166.0, 205.0, 40.0, 17.0 ],
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"fontface" : 0,
														"default_fontface" : 0,
														"fontsize" : 12.0,
														"default_fontname" : "Arial",
														"default_fontsize" : 12.0,
														"fontname" : "Arial"
													}
,
													"text" : "p filter"
												}

											}
, 											{
												"box" : 												{
													"comment" : "to Spat_Oper",
													"id" : "obj-3",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 182.0, 22.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-4",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 83.0, 180.0, 28.0, 25.0 ],
													"text" : "open"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 83.0, 201.0, 45.0, 17.0 ],
													"text" : "pcontrol"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 83.0, 159.0, 20.0, 17.0 ],
													"text" : "t b"
												}

											}
, 											{
												"box" : 												{
													"comment" : "open Spat_Oper window (anything)",
													"hidden" : 1,
													"id" : "obj-7",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 83.0, 117.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "Spat~ high-level control messages",
													"id" : "obj-8",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 362.0, 142.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "From Spat_Oper to Spat~ rightmost inlet",
													"id" : "obj-9",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 182.0, 142.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-10",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 212.0, 64.0, 148.0, 17.0 ],
													"text" : "Double-click to open Spat_Oper"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-11",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 386.0, 99.0, 146.0, 48.0 ],
													"text" : "<- Right outlet reflects user's actions on the control interface by sending the corresponding high-level control messages."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"hidden" : 1,
													"id" : "obj-12",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 21.0, 46.0, 45.0, 27.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 220.0, 22.0, 152.0, 17.0 ],
													"text" : "Spat_Circ source1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 18.0,
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 182.0, 78.0, 190.0, 27.0 ],
													"text" : "Spat_Oper source1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-15",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 21.0, 86.0, 148.0, 27.0 ],
													"text" : "High-level perceptual control -> interface for Spat~."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-16",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 385.0, 25.0, 144.0, 38.0 ],
													"text" : "<- Connection to a Circ window providing a 2-D graphic interface to drive Spat_OPer."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-17",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 198.0, 144.0, 131.0, 17.0 ],
													"text" : "<- To Spat~ rightmost inlet"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-18",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 210.0, 205.0, 129.0, 27.0 ],
													"text" : "redraws Spat_Oper commands into Circ window"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 166.0, 237.0, 92.0, 17.0 ],
													"text" : "Circ_Spat source1"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 229.5, 54.0, 381.0, 54.0, 381.0, 128.0, 371.0, 128.0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"hidden" : 1,
													"midpoints" : [ 30.5, 71.0, 191.5, 71.0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 191.0, 60.0, 171.0, 60.0, 171.0, 172.0, 175.5, 172.0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 1,
													"midpoints" : [  ],
													"source" : [ "obj-7", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 320.0, 66.0, 154.0, 27.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}
,
									"text" : "p Spat_Control1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-16",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 312.0, 252.0, 85.0, 17.0 ],
									"text" : "\"Slave2\" Spat~ "
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-17",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 160.0, 185.0, 85.0, 17.0 ],
									"text" : "\"Slave1\" Spat~ "
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-18",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 275.0, 460.0, 603.0, 48.0 ],
									"text" : "Spats~ sharing the same reverb should have the same arguments for source~, pan~and out~ modules, and the same quality reverb."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-19",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 275.0, 410.0, 604.0, 48.0 ],
									"text" : "the + and - arguments for the reverb determine which Spat controls the reverb (+) and which ones only control their associated source (-)."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-20",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 33.0, 118.0, 85.0, 17.0 ],
									"text" : "\"Master\" Spat~ "
								}

							}
, 							{
								"box" : 								{
									"comment" : "Spat~ 1 output 4 (signal)",
									"id" : "obj-21",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 122.0, 511.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Spat~ 1 output 3 (signal)",
									"id" : "obj-22",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 90.0, 511.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Spat~ 1 output 2 (signal)",
									"id" : "obj-23",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 58.0, 511.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Spat~ 1 output 1 (signal)",
									"id" : "obj-24",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 26.0, 511.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "open Spat_Oper 3",
									"id" : "obj-25",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 574.0, 22.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "open Spat_Oper 2",
									"id" : "obj-26",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 447.0, 22.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "open Spat_Oper 1",
									"id" : "obj-27",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 320.0, 22.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "input~ 3 to Spat~ 3",
									"id" : "obj-28",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 280.0, 22.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "input~ 2 to Spat~ 2",
									"id" : "obj-29",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 153.0, 22.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "input~ 1 to Spat~ 1",
									"id" : "obj-30",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 26.0, 22.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 9,
									"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
									"patching_rect" : [ 175.0, 200.0, 186.0, 27.0 ],
									"text" : "Spat~ 1Da 8c- 3a 3a8"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 9,
									"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
									"patching_rect" : [ 325.0, 266.0, 186.0, 27.0 ],
									"text" : "Spat~ 1Da 8c- 3a 3a8"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 9,
									"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
									"patching_rect" : [ 26.0, 132.0, 191.0, 27.0 ],
									"text" : "Spat~ 1Da 8c+ 3a 3a8"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 334.5, 401.5, 35.0, 401.5 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 355.375, 401.5, 67.0, 401.5 ],
									"source" : [ "obj-32", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 376.25, 401.5, 99.0, 401.5 ],
									"source" : [ "obj-32", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 397.125, 401.5, 131.0, 401.5 ],
									"source" : [ "obj-32", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 2 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [ 418.0, 401.0, 154.0, 401.0 ],
									"source" : [ "obj-32", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [ 438.875, 401.0, 186.0, 401.0 ],
									"source" : [ "obj-32", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [ 459.75, 401.0, 218.0, 401.0 ],
									"source" : [ "obj-32", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [ 480.625, 401.0, 250.0, 401.0 ],
									"source" : [ "obj-32", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 184.5, 368.5, 35.0, 368.5 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 205.375, 368.5, 67.0, 368.5 ],
									"source" : [ "obj-31", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 226.25, 368.5, 99.0, 368.5 ],
									"source" : [ "obj-31", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 247.125, 368.5, 131.0, 368.5 ],
									"source" : [ "obj-31", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 2 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [ 268.0, 368.0, 154.0, 368.0 ],
									"source" : [ "obj-31", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [ 288.875, 368.0, 186.0, 368.0 ],
									"source" : [ "obj-31", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [ 309.75, 368.0, 218.0, 368.0 ],
									"source" : [ "obj-31", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [ 330.625, 368.0, 250.0, 368.0 ],
									"source" : [ "obj-31", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [ 186.0, 334.0, 250.0, 334.0 ],
									"source" : [ "obj-33", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [ 164.5, 334.0, 218.0, 334.0 ],
									"source" : [ "obj-33", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [ 143.0, 334.0, 186.0, 334.0 ],
									"source" : [ "obj-33", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [ 121.5, 334.0, 154.0, 334.0 ],
									"source" : [ "obj-33", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 35.5, 334.5, 35.0, 334.5 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 57.0, 334.5, 67.0, 334.5 ],
									"source" : [ "obj-33", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 78.5, 334.5, 99.0, 334.5 ],
									"source" : [ "obj-33", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 100.0, 334.5, 131.0, 334.5 ],
									"source" : [ "obj-33", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 2 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-27", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 0.0, 174.0, 385.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 92.0, 385.0, 21.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}
,
					"text" : "p 3_Spats~_with_shared_reverb_(reverb_goes_out_of_Spat~1)"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-99", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-142", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-142", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 7 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 6 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 5 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-99", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 4 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 3 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 3 ],
					"hidden" : 0,
					"midpoints" : [ 375.5, 202.0, 406.5, 202.0 ],
					"source" : [ "obj-58", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 3 ],
					"hidden" : 0,
					"midpoints" : [ 338.899994, 202.0, 406.5, 202.0 ],
					"source" : [ "obj-58", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 3 ],
					"hidden" : 0,
					"midpoints" : [ 302.299988, 202.0, 406.5, 202.0 ],
					"source" : [ "obj-58", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 8 ],
					"hidden" : 0,
					"midpoints" : [ 199.5, 160.0, 375.5, 160.0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 7 ],
					"hidden" : 0,
					"midpoints" : [ 314.5, 132.0, 329.75, 132.0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 6 ],
					"hidden" : 0,
					"midpoints" : [ 199.5, 160.0, 284.0, 160.0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 5 ],
					"hidden" : 0,
					"midpoints" : [ 314.5, 132.0, 238.25, 132.0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 37.5, 444.0, 22.0, 444.0, 22.0, 394.0, 37.5, 394.0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 4 ],
					"hidden" : 0,
					"midpoints" : [ 199.5, 160.0, 192.5, 160.0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 3 ],
					"hidden" : 0,
					"midpoints" : [ 314.5, 132.0, 146.75, 132.0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-142", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-142", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-58", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-58", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-58", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-58", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-58", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-58", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-58", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 4 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 6 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 8 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-34", 0 ]
				}

			}
 ]
	}

}
