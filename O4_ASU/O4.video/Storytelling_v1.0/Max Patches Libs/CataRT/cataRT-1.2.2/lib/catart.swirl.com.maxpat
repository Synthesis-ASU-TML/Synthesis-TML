{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 799.0, 426.0, 674.0, 579.0 ],
		"bglocked" : 1,
		"defrect" : [ 799.0, 426.0, 674.0, 579.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Geneva",
		"gridonopen" : 0,
		"gridsize" : [ 10.0, 10.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"#init" : "",
					"#loadbang" : 0,
					"#triggerall" : 0,
					"#untuple" : 0,
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"ftm_objref_conv" : 0,
					"ftm_scope" : 1,
					"hidden" : 1,
					"id" : "obj-67",
					"maxclass" : "ftm.mess",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 500.0, 320.0, 61.066406, 17.0 ],
					"presentation_rect" : [ 500.0, 320.0, 61.066406, 17.0 ],
					"text" : [ "_get-unitdata" ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 500.0, 348.0, 149.0, 19.0 ],
					"text" : "catart.data.proxy #1"
				}

			}
, 			{
				"box" : 				{
					"#init" : "0 127.0.0.1",
					"#loadbang" : 0,
					"#triggerall" : 0,
					"#untuple" : 0,
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"ftm_objref_conv" : 0,
					"ftm_scope" : 0,
					"id" : "obj-66",
					"maxclass" : "ftm.mess",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 500.0, 380.0, 114.539062, 17.0 ],
					"presentation_rect" : [ 500.0, 380.0, 114.539062, 17.0 ],
					"text" : [ "_maxqueuesize ($1 rows)" ]
				}

			}
, 			{
				"box" : 				{
					"#init" : "",
					"#loadbang" : 1,
					"#triggerall" : 0,
					"#untuple" : 0,
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"ftm_objref_conv" : 0,
					"ftm_scope" : 0,
					"hidden" : 1,
					"id" : "obj-64",
					"maxclass" : "ftm.mess",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 110.0, 320.0, 100.955566, 17.0 ],
					"presentation_rect" : [ 110.0, 320.0, 100.955566, 17.0 ],
					"text" : [ "_maxqueuesize 10000" ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 450.0, 110.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"#init" : "",
					"#loadbang" : 0,
					"#triggerall" : 0,
					"#untuple" : 0,
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"ftm_objref_conv" : 0,
					"ftm_scope" : 0,
					"id" : "obj-11",
					"maxclass" : "ftm.mess",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 320.0, 100.0, 52.356445, 17.0 ],
					"presentation_rect" : [ 320.0, 100.0, 52.356445, 17.0 ],
					"text" : [ "_port 8480" ]
				}

			}
, 			{
				"box" : 				{
					"#init" : "0 127.0.0.1",
					"#loadbang" : 0,
					"#triggerall" : 0,
					"#untuple" : 0,
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"ftm_objref_conv" : 0,
					"ftm_scope" : 0,
					"id" : "obj-10",
					"maxclass" : "ftm.mess",
					"numinlets" : 4,
					"numins" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.0, 510.0, 208.410645, 17.0 ],
					"presentation_rect" : [ 270.0, 510.0, 208.410645, 17.0 ],
					"text" : [ "_(print sending $4 unit data to target host $2)" ]
				}

			}
, 			{
				"box" : 				{
					"#init" : "",
					"#loadbang" : 0,
					"#triggerall" : 0,
					"#untuple" : 0,
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"ftm_objref_conv" : 0,
					"ftm_scope" : 0,
					"id" : "obj-63",
					"maxclass" : "ftm.mess",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 200.0, 70.0, 225.703125, 17.0 ],
					"presentation_rect" : [ 200.0, 70.0, 225.703125, 17.0 ],
					"text" : [ "_host $1, port 8479, (print set target host to $1);" ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-8",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 200.0, 10.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 226.0, 10.0, 48.0, 19.0 ],
					"text" : "host IP"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 192.0, 507.0, 65.0, 19.0 ],
					"text" : "to synthesis"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 87.0, 507.0, 48.0, 19.0 ],
					"text" : "to lcd"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 222.0, 102.0, 96.0, 19.0 ],
					"text" : "default descriptors"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 220.0, 120.0, 187.0, 17.0 ],
					"text" : "15 13 14 16 17 18 19 20 21 22 23 24"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 457.0, 10.0, 94.0, 19.0 ],
					"text" : "init or import done"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 93.0, 210.0, 55.0, 23.0 ],
					"text" : "send all"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 100.0, 134.0, 19.0 ],
					"text" : "override first two from lcd"
				}

			}
, 			{
				"box" : 				{
					"#init" : "",
					"#loadbang" : 0,
					"#triggerall" : 0,
					"#untuple" : 0,
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"ftm_objref_conv" : 0,
					"ftm_scope" : 0,
					"id" : "obj-9",
					"maxclass" : "ftm.mess",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 292.0, 116.986816, 17.0 ],
					"presentation_rect" : [ 30.0, 292.0, 116.986816, 17.0 ],
					"text" : [ "_/catart/selected (int $1)" ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 68.0, 472.0, 88.0, 19.0 ],
					"text" : "catart.osccontrol"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 68.0, 446.0, 86.0, 19.0 ],
					"text" : "udpreceive 8480"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 30.0, 80.0, 140.0, 19.0 ],
					"text" : "route int float set-descriptors"
				}

			}
, 			{
				"box" : 				{
					"#init" : "",
					"#loadbang" : 0,
					"#triggerall" : 0,
					"#untuple" : 0,
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"ftm_objref_conv" : 0,
					"ftm_scope" : 2,
					"hidden" : 1,
					"id" : "obj-16",
					"maxclass" : "ftm.mess",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 431.0, 50.0, 104.0, 17.0 ],
					"presentation_rect" : [ 431.0, 50.0, 104.0, 17.0 ],
					"text" : [ "_get-descriptor-menu" ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 431.0, 78.0, 149.0, 19.0 ],
					"text" : "catart.data.proxy #1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.0, 388.0, 55.0, 19.0 ],
					"text" : "rotation"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.0, 370.0, 24.0, 19.0 ],
					"text" : "hue"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-20",
					"items" : [ "UnitID", 0, ",", "RelID", 1, ",", "UnitType", 2, ",", "SoundFile", 3, ",", "SoundSet", 4, ",", "WorkingSet", 5, ",", "Active", 6, ",", "StartSample", 7, ",", "SampleSize", 8, ",", "StartTime", 9, ",", "Duration", 10, ",", "Relstart", 11, ",", "Shift", 12, ",", "Pitch", 13.0, ",", "NoteNumber", 14.0, ",", "Loudness", 15.0, ",", "Periodicity", 16.0, ",", "SpectralFlatness", 17.0, ",", "SpectralCentroid", 18.0, ",", "HighFrequencyEnergy", 19.0, ",", "MidFrequencyEnergy", 20.0, ",", "HighFrequencyContent", 21.0, ",", "AC1", 22.0, ",", "Energy", 23.0, ",", "Label", 24.0, ",", "Obtrusiveness", 25.0, ",", "Gender", 26.0, ",", "IsVoice", 27.0, ",", "Source", 28.0 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 236.0, 388.0, 125.0, 19.0 ],
					"pattrmode" : 1,
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-21",
					"items" : [ "UnitID", 0, ",", "RelID", 1, ",", "UnitType", 2, ",", "SoundFile", 3, ",", "SoundSet", 4, ",", "WorkingSet", 5, ",", "Active", 6, ",", "StartSample", 7, ",", "SampleSize", 8, ",", "StartTime", 9, ",", "Duration", 10, ",", "Relstart", 11, ",", "Shift", 12, ",", "Pitch", 13.0, ",", "NoteNumber", 14.0, ",", "Loudness", 15.0, ",", "Periodicity", 16.0, ",", "SpectralFlatness", 17.0, ",", "SpectralCentroid", 18.0, ",", "HighFrequencyEnergy", 19.0, ",", "MidFrequencyEnergy", 20.0, ",", "HighFrequencyContent", 21.0, ",", "AC1", 22.0, ",", "Energy", 23.0, ",", "Label", 24.0, ",", "Obtrusiveness", 25.0, ",", "Gender", 26.0, ",", "IsVoice", 27.0, ",", "Source", 28.0 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 236.0, 370.0, 125.0, 19.0 ],
					"pattrmode" : 1,
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.0, 352.0, 55.0, 19.0 ],
					"text" : "rotation"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-23",
					"items" : [ "UnitID", 0, ",", "RelID", 1, ",", "UnitType", 2, ",", "SoundFile", 3, ",", "SoundSet", 4, ",", "WorkingSet", 5, ",", "Active", 6, ",", "StartSample", 7, ",", "SampleSize", 8, ",", "StartTime", 9, ",", "Duration", 10, ",", "Relstart", 11, ",", "Shift", 12, ",", "Pitch", 13.0, ",", "NoteNumber", 14.0, ",", "Loudness", 15.0, ",", "Periodicity", 16.0, ",", "SpectralFlatness", 17.0, ",", "SpectralCentroid", 18.0, ",", "HighFrequencyEnergy", 19.0, ",", "MidFrequencyEnergy", 20.0, ",", "HighFrequencyContent", 21.0, ",", "AC1", 22.0, ",", "Energy", 23.0, ",", "Label", 24.0, ",", "Obtrusiveness", 25.0, ",", "Gender", 26.0, ",", "IsVoice", 27.0, ",", "Source", 28.0 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 236.0, 352.0, 125.0, 19.0 ],
					"pattrmode" : 1,
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.0, 334.0, 24.0, 19.0 ],
					"text" : "hue"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.0, 316.0, 16.0, 19.0 ],
					"text" : "z"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.0, 298.0, 16.0, 19.0 ],
					"text" : "y"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-27",
					"items" : [ "UnitID", 0, ",", "RelID", 1, ",", "UnitType", 2, ",", "SoundFile", 3, ",", "SoundSet", 4, ",", "WorkingSet", 5, ",", "Active", 6, ",", "StartSample", 7, ",", "SampleSize", 8, ",", "StartTime", 9, ",", "Duration", 10, ",", "Relstart", 11, ",", "Shift", 12, ",", "Pitch", 13.0, ",", "NoteNumber", 14.0, ",", "Loudness", 15.0, ",", "Periodicity", 16.0, ",", "SpectralFlatness", 17.0, ",", "SpectralCentroid", 18.0, ",", "HighFrequencyEnergy", 19.0, ",", "MidFrequencyEnergy", 20.0, ",", "HighFrequencyContent", 21.0, ",", "AC1", 22.0, ",", "Energy", 23.0, ",", "Label", 24.0, ",", "Obtrusiveness", 25.0, ",", "Gender", 26.0, ",", "IsVoice", 27.0, ",", "Source", 28.0 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 236.0, 334.0, 125.0, 19.0 ],
					"pattrmode" : 1,
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-28",
					"items" : [ "UnitID", 0, ",", "RelID", 1, ",", "UnitType", 2, ",", "SoundFile", 3, ",", "SoundSet", 4, ",", "WorkingSet", 5, ",", "Active", 6, ",", "StartSample", 7, ",", "SampleSize", 8, ",", "StartTime", 9, ",", "Duration", 10, ",", "Relstart", 11, ",", "Shift", 12, ",", "Pitch", 13.0, ",", "NoteNumber", 14.0, ",", "Loudness", 15.0, ",", "Periodicity", 16.0, ",", "SpectralFlatness", 17.0, ",", "SpectralCentroid", 18.0, ",", "HighFrequencyEnergy", 19.0, ",", "MidFrequencyEnergy", 20.0, ",", "HighFrequencyContent", 21.0, ",", "AC1", 22.0, ",", "Energy", 23.0, ",", "Label", 24.0, ",", "Obtrusiveness", 25.0, ",", "Gender", 26.0, ",", "IsVoice", 27.0, ",", "Source", 28.0 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 236.0, 316.0, 125.0, 19.0 ],
					"pattrmode" : 1,
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-29",
					"items" : [ "UnitID", 0, ",", "RelID", 1, ",", "UnitType", 2, ",", "SoundFile", 3, ",", "SoundSet", 4, ",", "WorkingSet", 5, ",", "Active", 6, ",", "StartSample", 7, ",", "SampleSize", 8, ",", "StartTime", 9, ",", "Duration", 10, ",", "Relstart", 11, ",", "Shift", 12, ",", "Pitch", 13.0, ",", "NoteNumber", 14.0, ",", "Loudness", 15.0, ",", "Periodicity", 16.0, ",", "SpectralFlatness", 17.0, ",", "SpectralCentroid", 18.0, ",", "HighFrequencyEnergy", 19.0, ",", "MidFrequencyEnergy", 20.0, ",", "HighFrequencyContent", 21.0, ",", "AC1", 22.0, ",", "Energy", 23.0, ",", "Label", 24.0, ",", "Obtrusiveness", 25.0, ",", "Gender", 26.0, ",", "IsVoice", 27.0, ",", "Source", 28.0 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 236.0, 298.0, 125.0, 19.0 ],
					"pattrmode" : 1,
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-30",
					"items" : [ "UnitID", 0, ",", "RelID", 1, ",", "UnitType", 2, ",", "SoundFile", 3, ",", "SoundSet", 4, ",", "WorkingSet", 5, ",", "Active", 6, ",", "StartSample", 7, ",", "SampleSize", 8, ",", "StartTime", 9, ",", "Duration", 10, ",", "Relstart", 11, ",", "Shift", 12, ",", "Pitch", 13.0, ",", "NoteNumber", 14.0, ",", "Loudness", 15.0, ",", "Periodicity", 16.0, ",", "SpectralFlatness", 17.0, ",", "SpectralCentroid", 18.0, ",", "HighFrequencyEnergy", 19.0, ",", "MidFrequencyEnergy", 20.0, ",", "HighFrequencyContent", 21.0, ",", "AC1", 22.0, ",", "Energy", 23.0, ",", "Label", 24.0, ",", "Obtrusiveness", 25.0, ",", "Gender", 26.0, ",", "IsVoice", 27.0, ",", "Source", 28.0 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 237.0, 280.0, 125.0, 19.0 ],
					"pattrmode" : 1,
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.0, 280.0, 16.0, 19.0 ],
					"text" : "x"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 12,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 338.0, 453.0, 157.0, 19.0 ],
					"text" : "pak 0 1 2 3 4 5 6 7 8 9 10 11"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 71.0, 236.0, 153.0, 19.0 ],
					"text" : "catart.oscdump #1 12"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 70.0, 360.0, 120.0, 19.0 ],
					"text" : "udpsend 127.0.0.1 8479"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 71.0, 211.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 236.0, 172.0, 246.0, 23.0 ],
					"text" : "choose descriptors ... or a preset"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.0, 262.0, 55.0, 19.0 ],
					"text" : "rotation"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-38",
					"items" : [ "UnitID", 0, ",", "RelID", 1, ",", "UnitType", 2, ",", "SoundFile", 3, ",", "SoundSet", 4, ",", "WorkingSet", 5, ",", "Active", 6, ",", "StartSample", 7, ",", "SampleSize", 8, ",", "StartTime", 9, ",", "Duration", 10, ",", "Relstart", 11, ",", "Shift", 12, ",", "Pitch", 13.0, ",", "NoteNumber", 14.0, ",", "Loudness", 15.0, ",", "Periodicity", 16.0, ",", "SpectralFlatness", 17.0, ",", "SpectralCentroid", 18.0, ",", "HighFrequencyEnergy", 19.0, ",", "MidFrequencyEnergy", 20.0, ",", "HighFrequencyContent", 21.0, ",", "AC1", 22.0, ",", "Energy", 23.0, ",", "Label", 24.0, ",", "Obtrusiveness", 25.0, ",", "Gender", 26.0, ",", "IsVoice", 27.0, ",", "Source", 28.0 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 237.0, 262.0, 125.0, 19.0 ],
					"pattrmode" : 1,
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-39",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 448.0, 190.0, 187.0, 17.0 ],
					"text" : "15 13 14 16 17 18 19 20 21 22 23 24"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 448.0, 233.0, 76.0, 17.0 ],
					"text" : "15 12 11 14 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 448.0, 296.0, 23.0, 17.0 ],
					"text" : "7 8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 448.0, 275.0, 40.0, 17.0 ],
					"text" : "0 1 11"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 448.0, 254.0, 46.0, 17.0 ],
					"text" : "0 11 7"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 12,
					"outlettype" : [ "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int" ],
					"patching_rect" : [ 501.0, 127.0, 166.0, 19.0 ],
					"text" : "unpack 1 2 3 4 5 6 7 8 9 10 11 12"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-45",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 448.0, 212.0, 76.0, 17.0 ],
					"text" : "15 12 14 11 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-46",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.0, 244.0, 24.0, 19.0 ],
					"text" : "hue"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.0, 226.0, 16.0, 19.0 ],
					"text" : "z"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-48",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.0, 208.0, 16.0, 19.0 ],
					"text" : "y"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-49",
					"items" : [ "UnitID", 0, ",", "RelID", 1, ",", "UnitType", 2, ",", "SoundFile", 3, ",", "SoundSet", 4, ",", "WorkingSet", 5, ",", "Active", 6, ",", "StartSample", 7, ",", "SampleSize", 8, ",", "StartTime", 9, ",", "Duration", 10, ",", "Relstart", 11, ",", "Shift", 12, ",", "Pitch", 13.0, ",", "NoteNumber", 14.0, ",", "Loudness", 15.0, ",", "Periodicity", 16.0, ",", "SpectralFlatness", 17.0, ",", "SpectralCentroid", 18.0, ",", "HighFrequencyEnergy", 19.0, ",", "MidFrequencyEnergy", 20.0, ",", "HighFrequencyContent", 21.0, ",", "AC1", 22.0, ",", "Energy", 23.0, ",", "Label", 24.0, ",", "Obtrusiveness", 25.0, ",", "Gender", 26.0, ",", "IsVoice", 27.0, ",", "Source", 28.0 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 237.0, 244.0, 125.0, 19.0 ],
					"pattrmode" : 1,
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-50",
					"items" : [ "UnitID", 0, ",", "RelID", 1, ",", "UnitType", 2, ",", "SoundFile", 3, ",", "SoundSet", 4, ",", "WorkingSet", 5, ",", "Active", 6, ",", "StartSample", 7, ",", "SampleSize", 8, ",", "StartTime", 9, ",", "Duration", 10, ",", "Relstart", 11, ",", "Shift", 12, ",", "Pitch", 13.0, ",", "NoteNumber", 14.0, ",", "Loudness", 15.0, ",", "Periodicity", 16.0, ",", "SpectralFlatness", 17.0, ",", "SpectralCentroid", 18.0, ",", "HighFrequencyEnergy", 19.0, ",", "MidFrequencyEnergy", 20.0, ",", "HighFrequencyContent", 21.0, ",", "AC1", 22.0, ",", "Energy", 23.0, ",", "Label", 24.0, ",", "Obtrusiveness", 25.0, ",", "Gender", 26.0, ",", "IsVoice", 27.0, ",", "Source", 28.0 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 237.0, 226.0, 125.0, 19.0 ],
					"pattrmode" : 1,
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-51",
					"items" : [ "UnitID", 0, ",", "RelID", 1, ",", "UnitType", 2, ",", "SoundFile", 3, ",", "SoundSet", 4, ",", "WorkingSet", 5, ",", "Active", 6, ",", "StartSample", 7, ",", "SampleSize", 8, ",", "StartTime", 9, ",", "Duration", 10, ",", "Relstart", 11, ",", "Shift", 12, ",", "Pitch", 13.0, ",", "NoteNumber", 14.0, ",", "Loudness", 15.0, ",", "Periodicity", 16.0, ",", "SpectralFlatness", 17.0, ",", "SpectralCentroid", 18.0, ",", "HighFrequencyEnergy", 19.0, ",", "MidFrequencyEnergy", 20.0, ",", "HighFrequencyContent", 21.0, ",", "AC1", 22.0, ",", "Energy", 23.0, ",", "Label", 24.0, ",", "Obtrusiveness", 25.0, ",", "Gender", 26.0, ",", "IsVoice", 27.0, ",", "Source", 28.0 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 237.0, 208.0, 125.0, 19.0 ],
					"pattrmode" : 1,
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 431.0, 101.0, 18.0, 19.0 ],
					"text" : "t l"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-53",
					"items" : [ "UnitID", 0, ",", "RelID", 1, ",", "UnitType", 2, ",", "SoundFile", 3, ",", "SoundSet", 4, ",", "WorkingSet", 5, ",", "Active", 6, ",", "StartSample", 7, ",", "SampleSize", 8, ",", "StartTime", 9, ",", "Duration", 10, ",", "Relstart", 11, ",", "Shift", 12, ",", "Pitch", 13.0, ",", "NoteNumber", 14.0, ",", "Loudness", 15.0, ",", "Periodicity", 16.0, ",", "SpectralFlatness", 17.0, ",", "SpectralCentroid", 18.0, ",", "HighFrequencyEnergy", 19.0, ",", "MidFrequencyEnergy", 20.0, ",", "HighFrequencyContent", 21.0, ",", "AC1", 22.0, ",", "Energy", 23.0, ",", "Label", 24.0, ",", "Obtrusiveness", 25.0, ",", "Gender", 26.0, ",", "IsVoice", 27.0, ",", "Source", 28.0 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 237.0, 190.0, 125.0, 19.0 ],
					"pattrmode" : 1,
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-54",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.0, 190.0, 16.0, 19.0 ],
					"text" : "x"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 12.0,
					"id" : "obj-55",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 150.0, 103.0, 23.0 ],
					"text" : "CataRT OSC link"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-56",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 10.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-57",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 431.0, 10.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-58",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 68.0, 507.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-59",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 167.0, 507.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Geneva",
					"fontsize" : 9.0,
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 36.0, 10.0, 48.0, 19.0 ],
					"text" : "from lcd"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.0, 0.682353, 0.839216, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-61",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 29.0, 436.0, 373.0, 127.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.0, 0.431373, 0.776471, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-62",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 29.0, 170.0, 373.0, 256.0 ],
					"rounded" : 15
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 146.5, 557.0, 56.0, 557.0, 56.0, 196.0, 80.0, 196.0 ],
					"source" : [ "obj-12", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 1 ]
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
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 120.166664, 431.5, 347.5, 431.5 ],
					"source" : [ "obj-14", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 11 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 10 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 9 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 8 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 7 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 6 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 5 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 1 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 4 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-44", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-44", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-44", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-44", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-44", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-44", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-44", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-44", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-44", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-44", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-44", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 3 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 2 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 1 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 19.0, 52.0, 39.5, 52.0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ]
	}

}
