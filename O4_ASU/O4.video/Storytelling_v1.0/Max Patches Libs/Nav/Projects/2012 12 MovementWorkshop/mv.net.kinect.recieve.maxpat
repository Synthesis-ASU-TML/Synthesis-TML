{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 7
		}
,
		"rect" : [ 289.0, 104.0, 1129.0, 1012.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"color" : [ 0.458824, 0.658824, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 0,
							"revision" : 7
						}
,
						"rect" : [ 1327.0, 838.0, 163.0, 214.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
									"id" : "obj-36",
									"maxclass" : "bpatcher",
									"name" : "nav.osc.switch.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 366.0, 157.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 190.0, 157.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 393.0, 105.0, 20.0 ],
									"presentation_rect" : [ 266.0, 385.0, 0.0, 0.0 ],
									"text" : "scale 0. 180. 0. 1."
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
									"id" : "obj-34",
									"maxclass" : "bpatcher",
									"name" : "nav.osc.switch.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 320.0, 157.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 169.0, 157.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 339.0, 109.0, 20.0 ],
									"text" : "scale 0. 180. -1. 1."
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
									"id" : "obj-28",
									"maxclass" : "bpatcher",
									"name" : "nav.osc.switch.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 275.0, 157.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 148.0, 157.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 294.0, 105.0, 20.0 ],
									"presentation_rect" : [ 271.0, 294.0, 0.0, 0.0 ],
									"text" : "scale 0. 180. 0. 1."
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
									"id" : "obj-24",
									"maxclass" : "bpatcher",
									"name" : "nav.osc.switch.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 228.0, 157.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 127.0, 157.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 247.0, 105.0, 20.0 ],
									"presentation_rect" : [ 271.0, 247.0, 0.0, 0.0 ],
									"text" : "scale 0. 180. 0. 1."
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
									"id" : "obj-14",
									"maxclass" : "bpatcher",
									"name" : "nav.osc.switch.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 182.0, 157.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 105.0, 157.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 201.0, 109.0, 20.0 ],
									"text" : "scale 0. 180. -1. 1."
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
									"id" : "obj-9",
									"maxclass" : "bpatcher",
									"name" : "nav.osc.switch.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 132.0, 157.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 83.0, 157.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 151.0, 105.0, 20.0 ],
									"presentation_rect" : [ 270.0, 152.0, 0.0, 0.0 ],
									"text" : "scale 0. 180. 0. 1."
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
									"id" : "obj-7",
									"maxclass" : "bpatcher",
									"name" : "nav.osc.switch.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 86.0, 157.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 62.0, 157.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 105.0, 105.0, 20.0 ],
									"presentation_rect" : [ 267.0, 107.0, 0.0, 0.0 ],
									"text" : "scale 0. 180. 0. 1."
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
									"id" : "obj-5",
									"maxclass" : "bpatcher",
									"name" : "nav.osc.switch.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 47.0, 157.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 41.0, 157.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 66.0, 105.0, 20.0 ],
									"presentation_rect" : [ 268.0, 71.0, 0.0, 0.0 ],
									"text" : "scale 0. 180. 0. 1."
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
									"id" : "obj-37",
									"maxclass" : "bpatcher",
									"name" : "nav.osc.switch.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 7.0, 157.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 20.0, 157.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 26.0, 105.0, 20.0 ],
									"text" : "scale 0. 180. 0. 1."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-22",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 445.0, 207.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-21",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 445.0, 182.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-20",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 445.0, 158.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-19",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 445.0, 132.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-18",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 445.0, 109.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-17",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 445.0, 82.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-16",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 445.0, 55.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-15",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 445.0, 32.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-13",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 445.0, 7.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-11",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 151.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "preset",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "preset", "int", "preset", "int" ],
									"patching_rect" : [ 7.0, 12.0, 100.0, 40.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 1.0, 150.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 105.0, 119.0, 17.0 ],
									"text" : "/modAmt/pitchVar $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-26",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 88.0, 86.0, 103.0, 17.0 ],
									"text" : "/modAmt/pitch $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-1",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 125.0, 7.0, 118.0, 17.0 ],
									"text" : "/modAmt/position $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-135",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 64.0, 141.0, 99.0, 17.0 ],
									"text" : "/modAmt/turn $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-134",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 55.0, 160.0, 100.0, 17.0 ],
									"text" : "/modAmt/gain $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-133",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 98.0, 67.0, 97.0, 17.0 ],
									"text" : "/modAmt/size $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-29",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 110.0, 47.0, 122.0, 17.0 ],
									"text" : "/modAmt/onsetVar $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-30",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 119.0, 26.0, 108.0, 17.0 ],
									"text" : "/modAmt/speed $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 73.0, 123.0, 112.0, 17.0 ],
									"text" : "/modAmt/trigger $1"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.619608, 0.0, 0.360784, 0.698039 ],
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.0, 127.0, 31.0, 19.0 ],
									"text" : "thru"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-133", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-133", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-134", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-135", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-135", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-134", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 388.0, 101.0, 59.0, 20.0 ],
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
					"text" : "p kinect1"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
					"id" : "obj-28",
					"maxclass" : "bpatcher",
					"name" : "nav.osc.switch.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 917.5, 415.0, 157.0, 20.0 ],
					"presentation_rect" : [ 842.5, 616.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
					"id" : "obj-29",
					"maxclass" : "bpatcher",
					"name" : "nav.osc.switch.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 689.5, 415.0, 157.0, 20.0 ],
					"presentation_rect" : [ 677.5, 616.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
					"id" : "obj-30",
					"maxclass" : "bpatcher",
					"name" : "nav.osc.switch.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 524.5, 415.0, 157.0, 20.0 ],
					"presentation_rect" : [ 512.5, 616.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
					"id" : "obj-31",
					"maxclass" : "bpatcher",
					"name" : "nav.osc.switch.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 366.5, 415.0, 157.0, 20.0 ],
					"presentation_rect" : [ 354.5, 616.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
					"id" : "obj-32",
					"maxclass" : "bpatcher",
					"name" : "nav.osc.switch.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 203.0, 415.0, 157.0, 20.0 ],
					"presentation_rect" : [ 191.0, 616.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
					"id" : "obj-33",
					"maxclass" : "bpatcher",
					"name" : "nav.osc.switch.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 32.0, 415.0, 157.0, 20.0 ],
					"presentation_rect" : [ 20.0, 616.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
					"id" : "obj-27",
					"maxclass" : "bpatcher",
					"name" : "nav.osc.switch.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 844.0, 157.0, 157.0, 20.0 ],
					"presentation_rect" : [ 835.5, 361.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
					"id" : "obj-26",
					"maxclass" : "bpatcher",
					"name" : "nav.osc.switch.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 679.0, 157.0, 157.0, 20.0 ],
					"presentation_rect" : [ 670.5, 355.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
					"id" : "obj-25",
					"maxclass" : "bpatcher",
					"name" : "nav.osc.switch.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 514.0, 157.0, 157.0, 20.0 ],
					"presentation_rect" : [ 510.5, 357.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
					"id" : "obj-24",
					"maxclass" : "bpatcher",
					"name" : "nav.osc.switch.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 356.0, 157.0, 157.0, 20.0 ],
					"presentation_rect" : [ 351.0, 359.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
					"id" : "obj-23",
					"maxclass" : "bpatcher",
					"name" : "nav.osc.switch.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 192.5, 157.0, 157.0, 20.0 ],
					"presentation_rect" : [ 181.0, 357.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "Right-Elbow-Angle" ],
					"id" : "obj-15",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.scale.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 32.0, 442.0, 150.0, 210.0 ],
					"presentation_rect" : [ 27.5, 612.0, 150.0, 210.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "Right-Wrist-Angle" ],
					"id" : "obj-16",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.scale.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 356.0, 442.0, 150.0, 210.0 ],
					"presentation_rect" : [ 351.5, 612.0, 150.0, 210.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "Right-Armpit-Angle" ],
					"id" : "obj-17",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.scale.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 828.0, 442.0, 150.0, 210.0 ],
					"presentation_rect" : [ 823.5, 612.0, 150.0, 210.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "Right-Ankle-Angle" ],
					"id" : "obj-18",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.scale.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 196.0, 442.0, 150.0, 210.0 ],
					"presentation_rect" : [ 191.5, 612.0, 150.0, 210.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "Right-Knee-Angle" ],
					"id" : "obj-19",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.scale.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 672.0, 442.0, 150.0, 210.0 ],
					"presentation_rect" : [ 667.5, 612.0, 150.0, 210.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "Right-Hip-Angle" ],
					"id" : "obj-21",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.scale.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 514.0, 442.0, 150.0, 210.0 ],
					"presentation_rect" : [ 509.5, 612.0, 150.0, 210.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "Left-Elbow-Angle" ],
					"id" : "obj-14",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.scale.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 32.0, 194.0, 150.0, 210.0 ],
					"presentation_rect" : [ 814.5, 164.0, 150.0, 210.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "Left-Wrist-Angle" ],
					"id" : "obj-13",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.scale.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 356.0, 194.0, 150.0, 210.0 ],
					"presentation_rect" : [ 656.5, 165.0, 150.0, 210.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "Left-Armpit-Angle" ],
					"id" : "obj-12",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.scale.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 828.0, 194.0, 150.0, 210.0 ],
					"presentation_rect" : [ 499.5, 167.0, 150.0, 210.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "Left-Ankle-Angle" ],
					"id" : "obj-11",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.scale.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 196.0, 194.0, 150.0, 210.0 ],
					"presentation_rect" : [ 343.5, 163.0, 150.0, 210.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "Left-Knee-Angle" ],
					"id" : "obj-10",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.scale.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 672.0, 194.0, 150.0, 210.0 ],
					"presentation_rect" : [ 187.5, 164.0, 150.0, 210.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "Left-Hip-Angle" ],
					"id" : "obj-9",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.scale.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 514.0, 194.0, 150.0, 210.0 ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 210.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 109.0, 74.0, 73.0, 20.0 ],
					"text" : "s kinect-raa"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@ID", "kinect-raa", "@first", "/Left", "/Right", "/Distance", "/Dancer", "@second", "/Elbow/Angle", "/Ankle/Angle", "/Wrist/Angle", "/Hip/Angle", "/Knee/Angle", "/Armpit/Angle", "/Head2RFoot", "/Head2LFoot", "/Hands", "/Feet" ],
					"id" : "obj-20",
					"maxclass" : "bpatcher",
					"name" : "nav.osc.switch.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.5, 157.0, 157.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 13.0, 46.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "OSCTimeTag" ],
					"patching_rect" : [ 47.0, 46.0, 143.0, 20.0 ],
					"text" : "opensoundcontrol 10000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 47.0, 20.0, 151.0, 20.0 ],
					"text" : "udpreceive 98987 CNMAT"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 1 ]
				}

			}
 ],
		"parameters" : 		{

		}
,
		"dependency_cache" : [ 			{
				"name" : "nav.osc.switch.maxpat",
				"bootpath" : "/Code/Git/MaxLibraries/Nav/GestureBending",
				"patcherrelativepath" : "../../../../Code/Git/MaxLibraries/Nav/GestureBending",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.nav.scale.maxpat",
				"bootpath" : "/Code/Git/MaxLibraries/Nav/Jamoma/jmod.nav.scale",
				"patcherrelativepath" : "../../../../Code/Git/MaxLibraries/Nav/Jamoma/jmod.nav.scale",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.nav.scale.maxpat",
				"bootpath" : "/Code/Git/MaxLibraries/Nav/Jamoma/jmod.nav.scale",
				"patcherrelativepath" : "../../../../Code/Git/MaxLibraries/Nav/Jamoma/jmod.nav.scale",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.autoscale.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/components/autoscale",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/library/components/autoscale",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.thru.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/components/thru",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/library/components/thru",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "thru.maxpat",
				"bootpath" : "/Applications/Max6/patches/m4l-patches/Pluggo for Live resources/patches",
				"patcherrelativepath" : "../../../../Applications/Max6/patches/m4l-patches/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "OpenSoundControl.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.oscroute.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.parameter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.message.mxo",
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
				"name" : "jcom.stats.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.pass.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.return.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.map.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.in.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.out.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
