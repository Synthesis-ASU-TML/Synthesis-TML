{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 567.0, 73.0, 446.0, 451.0 ],
		"bglocked" : 0,
		"defrect" : [ 567.0, 73.0, 446.0, 451.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"maxclass" : "newobj",
					"text" : "s lcd_radius",
					"numinlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 125.909088, 556.703979, 75.0, 20.0 ],
					"hidden" : 1,
					"id" : "obj-199",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s lcd_trigger-mode",
					"numinlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 2.0, 622.0, 110.0, 20.0 ],
					"hidden" : 1,
					"id" : "obj-198",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s lcd_x-axis",
					"numinlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 20.0, 568.0, 73.0, 20.0 ],
					"hidden" : 1,
					"id" : "obj-196",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s lcd_z-axis",
					"numinlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 677.0, 479.0, 73.0, 20.0 ],
					"hidden" : 1,
					"id" : "obj-195",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s lcd_y-axis",
					"numinlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 688.0, 107.0, 73.0, 20.0 ],
					"hidden" : 1,
					"id" : "obj-192",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r lcd_open-window",
					"numinlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 394.0, 716.0, 111.0, 20.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-194",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "front",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 394.0, 741.0, 35.0, 18.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-193",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 394.0, 763.0, 69.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-183",
					"fontsize" : 12.0,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s lcd_position",
					"numinlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 468.0, 764.0, 83.0, 20.0 ],
					"hidden" : 1,
					"id" : "obj-197",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"#untuple" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 14.0, 533.0, 128.019531, 17.0 ],
					"#loadbang" : 0,
					"numoutlets" : 1,
					"ftm_scope" : 1,
					"fontname" : "Geneva",
					"patching_rect" : [ 14.0, 533.0, 128.019531, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-191",
					"#init" : "",
					"#triggerall" : 0,
					"fontsize" : 9.0,
					"text" : [ "_#1" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"handoff" : "",
					"numinlets" : 1,
					"numoutlets" : 4,
					"patching_rect" : [ 513.0, 25.0, 124.0, 15.0 ],
					"outlettype" : [ "bang", "bang", "", "int" ],
					"hidden" : 1,
					"id" : "obj-189"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"handoff" : "",
					"numinlets" : 1,
					"numoutlets" : 4,
					"patching_rect" : [ 75.0, 427.0, 68.0, 28.0 ],
					"outlettype" : [ "bang", "bang", "", "int" ],
					"hidden" : 1,
					"id" : "obj-190"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "i_voice",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"cantchange" : 1,
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 88.0, 45.0, 18.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"hidden" : 1,
					"id" : "obj-1",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"fontface" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "voice",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 59.0, 47.0, 34.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-2",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"#untuple" : 0,
					"numinlets" : 2,
					"#loadbang" : 0,
					"numoutlets" : 1,
					"ftm_scope" : 0,
					"fontname" : "Geneva",
					"patching_rect" : [ 27.0, -17.0, 50.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-3",
					"#init" : "",
					"#triggerall" : 0,
					"fontsize" : 9.0,
					"text" : [ "_set $*" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_set-title",
					"numinlets" : 0,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 27.0, -39.0, 96.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-4",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_set-title",
					"numinlets" : 0,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 850.0, 487.0, 124.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-5",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1: empty",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 4.0, 23.0, 100.0, 15.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-6",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_refresh-view",
					"numinlets" : 0,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 668.0, -12.0, 106.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-7",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 668.0, 11.0, 20.0, 17.0 ],
					"outlettype" : [ "bang" ],
					"hidden" : 1,
					"id" : "obj-8",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "xfade[1]",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 111.0, 35.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-9",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rsxm #0_ num-nearest 26 0 127",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 81.0, 113.0, 161.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-10",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "knn",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 111.0, 72.0, 17.0 ],
					"id" : "obj-11",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_set-colours",
					"numinlets" : 0,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 708.0, 226.0, 118.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-12",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_set-descriptors",
					"numinlets" : 0,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 687.0, 198.0, 138.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-13",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_label-group",
					"numinlets" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 736.0, 334.0, 91.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-14",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Label Group",
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 594.0, 296.0, 34.0, 27.0 ],
					"hidden" : 1,
					"id" : "obj-15",
					"frgb" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
					"fontsize" : 9.0,
					"textcolor" : [ 0.760784, 0.709804, 0.811765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "y-descriptor-active[3]",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 623.0, 303.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ],
					"hidden" : 1,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_label-colour",
					"numinlets" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 736.0, 426.0, 91.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-17",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "y-descriptor-active[2]",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 623.0, 391.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ],
					"hidden" : 1,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_out",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 868.0, 427.0, 50.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-19",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.display.axis #0_ #0-lc",
					"numinlets" : 6,
					"numoutlets" : 6,
					"fontname" : "Arial",
					"patching_rect" : [ 736.0, 404.0, 144.0, 17.0 ],
					"outlettype" : [ "", "", "", "", "", "" ],
					"hidden" : 1,
					"id" : "obj-20",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Label colour",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 533.0, 393.0, 64.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-21",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 513.0, 391.0, 18.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"hidden" : 1,
					"id" : "obj-22",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "y-descriptor-menu[2]",
					"pattrmode" : 1,
					"numinlets" : 1,
					"items" : [ "UnitID", 0, ",", "RelID", 1, ",", "UnitType", 2, ",", "SoundFile", 3, ",", "SoundSet", 4, ",", "WorkingSet", 5, ",", "Active", 6, ",", "StartSample", 7, ",", "SampleSize", 8, ",", "StartTime", 9, ",", "Duration", 10, ",", "Relstart", 11, ",", "Shift", 12, ",", "Pitch", 13, ",", "NoteNumber", 14, ",", "Loudness", 15, ",", "Periodicity", 16, ",", "SpectralFlatness", 17, ",", "SpectralCentroid", 18, ",", "HighFrequencyEnergy", 19, ",", "MidFrequencyEnergy", 20, ",", "HighFrequencyContent", 21, ",", "AC1", 22, ",", "Energy", 23, ",", "Label", 24 ],
					"numoutlets" : 3,
					"fontname" : "Arial",
					"patching_rect" : [ 513.0, 407.0, 125.0, 18.0 ],
					"outlettype" : [ "int", "", "" ],
					"hidden" : 1,
					"id" : "obj-23",
					"types" : [  ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_draw-labels",
					"numinlets" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 736.0, 381.0, 91.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-24",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "y-descriptor-active[1]",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 623.0, 357.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ],
					"hidden" : 1,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_out",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 868.0, 382.0, 50.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-26",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.display.axis #0_ #0-l",
					"numinlets" : 6,
					"numoutlets" : 6,
					"fontname" : "Arial",
					"patching_rect" : [ 736.0, 359.0, 144.0, 17.0 ],
					"outlettype" : [ "", "", "", "", "", "" ],
					"hidden" : 1,
					"id" : "obj-27",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_effects",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 313.0, 558.0, 87.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-28",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "default",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 603.0, 283.0, 41.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-29",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Display Presets",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 538.0, 81.0, 81.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-30",
					"frgb" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
					"fontsize" : 9.0,
					"textcolor" : [ 0.760784, 0.709804, 0.811765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Labels",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 533.0, 359.0, 40.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-31",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 513.0, 357.0, 18.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"hidden" : 1,
					"id" : "obj-32",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "y-descriptor-menu[1]",
					"pattrmode" : 1,
					"numinlets" : 1,
					"items" : [ "UnitID", 0, ",", "RelID", 1, ",", "UnitType", 2, ",", "SoundFile", 3, ",", "SoundSet", 4, ",", "WorkingSet", 5, ",", "Active", 6, ",", "StartSample", 7, ",", "SampleSize", 8, ",", "StartTime", 9, ",", "Duration", 10, ",", "Relstart", 11, ",", "Shift", 12, ",", "Pitch", 13, ",", "NoteNumber", 14, ",", "Loudness", 15, ",", "Periodicity", 16, ",", "SpectralFlatness", 17, ",", "SpectralCentroid", 18, ",", "HighFrequencyEnergy", 19, ",", "MidFrequencyEnergy", 20, ",", "HighFrequencyContent", 21, ",", "AC1", 22, ",", "Energy", 23, ",", "Label", 24 ],
					"numoutlets" : 3,
					"fontname" : "Arial",
					"patching_rect" : [ 513.0, 373.0, 125.0, 18.0 ],
					"outlettype" : [ "int", "", "" ],
					"hidden" : 1,
					"id" : "obj-33",
					"types" : [  ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "X Axis",
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 81.0, 423.0, 26.0, 27.0 ],
					"hidden" : 1,
					"id" : "obj-34",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Y Axis",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 533.0, 25.0, 40.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-35",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 7.0, 457.0, 283.0, 56.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-36",
					"name" : "catart.effects.gui.maxpat",
					"args" : [ "#0_" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_to-effects",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 314.0, 606.0, 83.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-37",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_to-synth",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 237.0, 606.0, 76.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-38",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_out",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 98.0, 608.0, 50.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-39",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "SpectralFlatness AC1 Loudness",
					"linecount" : 2,
					"bgcolor" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 536.0, 95.0, 102.0, 25.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-40",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set-corpus",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 98.0, 732.0, 97.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-41",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_set-corpus",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 98.0, 711.0, 86.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-42",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.lcd.grab #1",
					"numinlets" : 4,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 98.0, 755.0, 127.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-43",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_to-effects",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 314.0, 635.0, 83.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-44",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_to-synth",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 237.0, 635.0, 76.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-45",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 314.0, 757.0, 15.0, 15.0 ],
					"hidden" : 1,
					"id" : "obj-46",
					"comment" : "to effects"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 237.0, 757.0, 15.0, 15.0 ],
					"hidden" : 1,
					"id" : "obj-47",
					"comment" : "to catart.synthesis"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "Loudness NoteNumber Duration",
					"linecount" : 2,
					"bgcolor" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 536.0, 182.0, 104.0, 25.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-48",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_show",
					"numinlets" : 0,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 771.0, 487.0, 68.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-49",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"#untuple" : 0,
					"numinlets" : 2,
					"#loadbang" : 0,
					"numoutlets" : 1,
					"ftm_scope" : 0,
					"fontname" : "Geneva",
					"patching_rect" : [ 771.0, 516.0, 50.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-50",
					"#init" : "",
					"#triggerall" : 0,
					"fontsize" : 9.0,
					"text" : [ "_front" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_pattrstorage",
					"numinlets" : 0,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 291.0, 491.0, 105.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-51",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_set-corpus",
					"numinlets" : 0,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 468.0, 590.0, 105.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-52",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"#untuple" : 0,
					"numinlets" : 2,
					"#loadbang" : 0,
					"numoutlets" : 1,
					"ftm_scope" : 0,
					"fontname" : "Geneva",
					"patching_rect" : [ 610.0, 614.0, 129.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-53",
					"#init" : "",
					"#triggerall" : 0,
					"fontsize" : 9.0,
					"text" : [ "_send (cat $1 _catart.data)" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"#untuple" : 0,
					"numinlets" : 2,
					"#loadbang" : 0,
					"numoutlets" : 1,
					"ftm_scope" : 0,
					"fontname" : "Geneva",
					"patching_rect" : [ 468.0, 614.0, 129.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-54",
					"#init" : "",
					"#triggerall" : 0,
					"fontsize" : 9.0,
					"text" : [ "_send (cat $1 _select-new)" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"#untuple" : 0,
					"numinlets" : 2,
					"#loadbang" : 0,
					"numoutlets" : 1,
					"ftm_scope" : 0,
					"fontname" : "Geneva",
					"patching_rect" : [ 799.0, 606.0, 91.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-55",
					"#init" : "",
					"#triggerall" : 0,
					"fontsize" : 9.0,
					"text" : [ "_patcher catart.lcd" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart-license",
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 575.0, 2.0, 63.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-56",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "cataRT - Copyright (C) 2005-2009 by Diemo Schwarz - IMTR Team - Ircam-Centre Pompidou",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 1.0, 1.0, 564.0, 20.0 ],
					"hidden" : 1,
					"id" : "obj-57",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "StartTime Duration Loudness",
					"linecount" : 2,
					"bgcolor" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 536.0, 211.0, 102.0, 25.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-58",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p set-descriptors",
					"numinlets" : 4,
					"numoutlets" : 8,
					"fontname" : "Arial",
					"patching_rect" : [ 687.0, 255.0, 140.0, 17.0 ],
					"outlettype" : [ "", "", "", "", "int", "", "int", "" ],
					"hidden" : 1,
					"id" : "obj-59",
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 543.0, 585.0, 381.0, 280.0 ],
						"bglocked" : 0,
						"defrect" : [ 543.0, 585.0, 381.0, 280.0 ],
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
									"maxclass" : "comment",
									"text" : "reset coords",
									"linecount" : 2,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 9.0, 55.0, 27.0 ],
									"id" : "obj-1",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 215.0, 37.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "speedlim 25",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 37.0, 65.0, 64.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 152.0, 87.0, 96.962402, 17.0 ],
									"#loadbang" : 0,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 152.0, 87.0, 96.962402, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"#init" : "",
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"text" : [ "_lookup-descriptor $1" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "catart.data.proxy #1",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 152.0, 113.0, 106.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-5",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "iter",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 152.0, 61.0, 50.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cycle 6 1",
									"numinlets" : 1,
									"numoutlets" : 6,
									"fontname" : "Arial",
									"patching_rect" : [ 152.0, 139.0, 100.0, 17.0 ],
									"outlettype" : [ "", "", "", "", "", "" ],
									"id" : "obj-7",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 152.0, 37.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "labels, on, labcolour, on",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 150.0, 226.0, 122.0, 17.0 ],
									"id" : "obj-9",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 182.0, 203.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 240.0, 203.0, 15.0, 15.0 ],
									"id" : "obj-11",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 124.0, 203.0, 15.0, 15.0 ],
									"id" : "obj-12",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 277.0, 37.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 277.0, 112.0, 20.998535, 17.0 ],
									"#loadbang" : 1,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 277.0, 112.0, 20.998535, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-14",
									"#init" : "",
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"text" : [ "_3 4" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 2 2",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 164.0, 69.0, 17.0 ],
									"outlettype" : [ "int", "int" ],
									"id" : "obj-15",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 153.0, 203.0, 15.0, 15.0 ],
									"id" : "obj-16",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 211.0, 203.0, 15.0, 15.0 ],
									"id" : "obj-17",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 37.0, 114.0, 96.962402, 17.0 ],
									"#loadbang" : 0,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 37.0, 114.0, 96.962402, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"#init" : "",
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"text" : [ "_lookup-descriptor $1" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "catart.data.proxy #1",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 37.0, 140.0, 106.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-19",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "iter",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 37.0, 88.0, 50.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-20",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cycle 8 1",
									"numinlets" : 1,
									"numoutlets" : 8,
									"fontname" : "Arial",
									"patching_rect" : [ 37.0, 166.0, 214.0, 17.0 ],
									"outlettype" : [ "", "", "", "", "", "", "", "" ],
									"id" : "obj-21",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 37.0, 37.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-22",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 37.0, 203.0, 15.0, 15.0 ],
									"id" : "obj-23",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 66.0, 203.0, 15.0, 15.0 ],
									"id" : "obj-24",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 95.0, 203.0, 15.0, 15.0 ],
									"id" : "obj-25",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "axes, colour, label group",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 34.0, 226.0, 122.0, 17.0 ],
									"id" : "obj-26",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set-corpus msg",
									"linecount" : 2,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 215.0, 9.0, 55.0, 27.0 ],
									"id" : "obj-27",
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 5 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 7 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 3 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 4 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 6 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 2 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 3 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 5 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 2 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 4 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "i",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 30.0, 54.0, 18.0, 17.0 ],
					"outlettype" : [ "int" ],
					"hidden" : 1,
					"id" : "obj-60",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "incdec",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 27.0, 77.0, 15.0, 15.0 ],
					"outlettype" : [ "float" ],
					"hidden" : 1,
					"id" : "obj-61"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "out goes to selection (via #0_return)",
					"linecount" : 3,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 152.0, 615.0, 74.0, 38.0 ],
					"hidden" : 1,
					"id" : "obj-62",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "to synthesis",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 253.0, 758.0, 62.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-63",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "forward #1_catart.data",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 610.0, 637.0, 119.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-64",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "to effects",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 328.0, 758.0, 62.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-65",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p reschedule",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 314.0, 581.0, 66.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-66",
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 207.0, 284.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 207.0, 284.0 ],
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
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 65.0, 66.0, 30.684082, 17.0 ],
									"#loadbang" : 0,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 65.0, 66.0, 30.684082, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"#init" : "",
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"text" : [ "_{ $* }" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.list",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 65.0, 138.0, 76.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontsize" : 9.0,
									"saved_object_attributes" : 									{
										"ftm_scope" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.schedule 0",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 65.0, 102.0, 76.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontsize" : 9.0,
									"saved_object_attributes" : 									{
										"ftm_scope" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 174.0, 15.0, 15.0 ],
									"id" : "obj-5",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p position",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 470.0, 665.0, 53.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-67",
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 314.0, 311.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 314.0, 311.0, 600.0, 426.0 ],
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
									"text" : "route set",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 52.0, 70.0, 51.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-1",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "rsx #0_ position",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 52.0, 50.0, 86.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-2",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "position[2]",
									"text" : "gate 1 1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 50.0, 140.0, 47.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "position[1]",
									"text" : "t 1 l 0",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Arial",
									"patching_rect" : [ 50.0, 95.0, 40.0, 17.0 ],
									"outlettype" : [ "int", "", "int" ],
									"id" : "obj-4",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 87.0, 120.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 65.0, 117.0, 15.0, 15.0 ],
									"id" : "obj-6",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-4", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "position",
					"text" : "pattr position @autorestore 0",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"patching_rect" : [ 470.0, 687.0, 144.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"id" : "obj-68",
					"fontsize" : 9.0,
					"restore" : [ 224, 208 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p env_ar",
					"numinlets" : 2,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"patching_rect" : [ 80.0, 238.0, 50.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"id" : "obj-69",
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
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
									"maxclass" : "message",
									"text" : ";\r#0_env_ar $1 $1",
									"linecount" : 2,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 351.0, 140.0, 98.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_xfade",
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 351.0, 118.0, 62.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 275.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 104.0, 275.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 104.0, 217.0, 39.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 50.0, 216.0, 39.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 0.",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 50.0, 196.0, 64.0, 17.0 ],
									"outlettype" : [ "float", "float" ],
									"id" : "obj-7",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 50.0, 175.0, 51.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-8",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "rsx #0_ env_ar",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 50.0, 155.0, 218.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-9",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0. 0.",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 50.0, 133.0, 49.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 89.0, 31.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-11",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-12",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 258.0, 275.0, 15.0, 15.0 ],
									"id" : "obj-13",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p pattr priority",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 453.0, 509.0, 80.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-70",
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 79.0, 44.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 79.0, 44.0, 600.0, 426.0 ],
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
									"maxclass" : "message",
									"text" : "workset trigger x-descriptor-active x-descriptor-menu x-descriptor-min x-descriptor-max y-descriptor-active y-descriptor-menu y-descriptor-min y-descriptor-max c-descriptor-menu c-descriptor-min c-descriptor-max position position-freeze radius rate rate_std xfade attack release duration duration_std onset_std transposition transposition_std gain gain_std reverse pan pan_std dequant desamp filtertype filtergain cutoff resonance",
									"linecount" : 5,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 58.0, 73.0, 383.0, 56.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l 0",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 58.0, 194.0, 29.0, 17.0 ],
									"outlettype" : [ "", "int" ],
									"id" : "obj-2",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "iter",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 58.0, 216.0, 25.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s b",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 58.0, 240.0, 30.0, 17.0 ],
									"outlettype" : [ "", "bang" ],
									"id" : "obj-4",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack s i",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 58.0, 304.0, 44.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter",
									"numinlets" : 5,
									"numoutlets" : 4,
									"fontname" : "Arial",
									"patching_rect" : [ 99.0, 268.0, 66.0, 17.0 ],
									"outlettype" : [ "int", "", "", "int" ],
									"id" : "obj-6",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend priority",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 58.0, 331.0, 84.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 58.0, 352.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-6", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart.lcd",
					"text" : "pattrstorage catart.lcd @flat 1",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 291.0, 510.0, 150.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-71",
					"fontsize" : 9.0,
					"autorestore" : "catart.lcd.json",
					"priority" : 					{
						"attack" : 19,
						"c-descriptor-max" : 12,
						"c-descriptor-menu" : 10,
						"c-descriptor-min" : 11,
						"duration" : 21,
						"duration_std" : 22,
						"gain" : 26,
						"gain_std" : 27,
						"onset_std" : 23,
						"pan" : 29,
						"pan_std" : 30,
						"position-freeze" : 14,
						"radius" : 15,
						"rate" : 16,
						"rate_std" : 17,
						"release" : 20,
						"reverse" : 28,
						"transposition" : 24,
						"transposition_std" : 25,
						"trigger" : 1,
						"x-descriptor-active" : 2,
						"x-descriptor-max" : 5,
						"x-descriptor-menu" : 3,
						"x-descriptor-min" : 4,
						"xfade" : 18,
						"y-descriptor-active" : 6,
						"y-descriptor-max" : 9,
						"y-descriptor-menu" : 7,
						"y-descriptor-min" : 8,
						"position" : 13
					}
,
					"saved_object_attributes" : 					{
						"client_rect" : [ 10, 59, 583, 568 ],
						"storage_rect" : [ 0, 0, 640, 240 ],
						"parameter_enable" : 0,
						"paraminitmode" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"offset" : [ 0.0, -1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 288.0, 455.0, 359.0, 36.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-72",
					"name" : "controle_pattrstorage3.maxpat",
					"args" : [  ],
					"border" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "u506023838",
					"text" : "autopattr @autorestore 0",
					"numinlets" : 1,
					"numoutlets" : 4,
					"fontname" : "Arial",
					"patching_rect" : [ 469.0, 714.0, 125.0, 17.0 ],
					"outlettype" : [ "", "", "", "" ],
					"hidden" : 1,
					"id" : "obj-73",
					"fontsize" : 9.0,
					"restore" : 					{
						"attack" : [ 0 ],
						"c-descriptor-max" : [ 0.0 ],
						"c-descriptor-menu" : [ "UnitID 0" ],
						"c-descriptor-min" : [ 0.0 ],
						"duration" : [ 0 ],
						"duration_std" : [ 0 ],
						"gain" : [ 0.0 ],
						"gain_std" : [ 0.0 ],
						"i_voice" : [ 0 ],
						"onset_std" : [ 0 ],
						"pan" : [ 0 ],
						"pan_std" : [ 0 ],
						"position-freeze" : [ 0 ],
						"radius" : [ 0.053 ],
						"rate" : [ 0.001 ],
						"rate_std" : [ 0.0 ],
						"release" : [ 0 ],
						"reverse" : [ 0 ],
						"transposition" : [ 0.0 ],
						"transposition_std" : [ 0.0 ],
						"trigger" : [ "bow" ],
						"workset" : [ 0.0 ],
						"x-descriptor-active" : [ 0 ],
						"x-descriptor-max" : [ 0.0 ],
						"x-descriptor-menu" : [ "UnitID 0" ],
						"x-descriptor-min" : [ 0.0 ],
						"xfade" : [ 0 ],
						"xfade[1]" : [ 0 ],
						"y-descriptor-active" : [ 0 ],
						"y-descriptor-active[1]" : [ 0 ],
						"y-descriptor-active[2]" : [ 0 ],
						"y-descriptor-active[3]" : [ 0 ],
						"y-descriptor-max" : [ 0.0 ],
						"y-descriptor-menu" : [ "UnitID 0" ],
						"y-descriptor-menu[1]" : [ "SoundFile 3" ],
						"y-descriptor-menu[2]" : [ "SoundSet 4" ],
						"y-descriptor-min" : [ 0.0 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "transposition",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 314.0, 35.0, 17.0 ],
					"maximum" : 50.0,
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"id" : "obj-74",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"minimum" : -50.0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "duration",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 259.0, 35.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"hidden" : 1,
					"id" : "obj-75",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "radius",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 95.0, 35.0, 17.0 ],
					"maximum" : 4.0,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-76",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "std",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 436.0, 32.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-77",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rsxm #0_ pan_std 8 0. 100.",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 84.0, 470.0, 139.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-78",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "pan_std",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 435.0, 35.0, 17.0 ],
					"maximum" : 100,
					"outlettype" : [ "int", "bang" ],
					"hidden" : 1,
					"id" : "obj-79",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pan",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 418.0, 28.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-80",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rsxm #0_ pan 10 0. 100.",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 81.0, 413.0, 125.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-81",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "pan",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 417.0, 35.0, 17.0 ],
					"maximum" : 100,
					"outlettype" : [ "int", "bang" ],
					"hidden" : 1,
					"id" : "obj-82",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "reverse prob",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 392.0, 64.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-83",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rsxm #0_ reverse 16 0. 100.",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 81.0, 391.0, 146.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-84",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "reverse",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 391.0, 35.0, 17.0 ],
					"maximum" : 100,
					"outlettype" : [ "int", "bang" ],
					"hidden" : 1,
					"id" : "obj-85",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "std",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 375.0, 53.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-86",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rsxm #0_ gain_std 3 0. 15.",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 81.0, 374.0, 136.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-87",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "gain_std",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 374.0, 35.0, 17.0 ],
					"maximum" : 48.0,
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"id" : "obj-88",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "gain",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 357.0, 53.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-89",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rsxm #0_ gain 7 -48. 15.",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 81.0, 356.0, 161.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-90",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "gain",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 356.0, 35.0, 17.0 ],
					"maximum" : 24.0,
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"id" : "obj-91",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"minimum" : -96.0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "std",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 333.0, 53.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-92",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rsxm #0_ transposition_std 15 0 36.",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 81.0, 332.0, 180.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-93",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "transposition_std",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 332.0, 35.0, 17.0 ],
					"maximum" : 50.0,
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"id" : "obj-94",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "transposition",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 315.0, 69.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-95",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rsxm #0_ transposition 14 -36. 36.",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 81.0, 314.0, 174.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-96",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "onset std",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 295.0, 53.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-97",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rsxm #0_ onset_std 13 0. 500.",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 81.0, 294.0, 154.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-98",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "onset_std",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 294.0, 35.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"hidden" : 1,
					"id" : "obj-99",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "size std",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 278.0, 53.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-100",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rsxm #0_ duration_std 12 0. 500.",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 81.0, 277.0, 167.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-101",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "duration_std",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 277.0, 35.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"hidden" : 1,
					"id" : "obj-102",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rsxm #0_ rate_std 6 0. 250.",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 81.0, 173.0, 143.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-103",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "rate_std",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 182.0, 35.0, 17.0 ],
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"id" : "obj-104",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "rate std",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 183.0, 72.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-105",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"cantchange" : 1,
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 607.0, 432.0, 43.0, 17.0 ],
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"id" : "obj-106",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"cantchange" : 1,
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 546.0, 432.0, 43.0, 17.0 ],
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"id" : "obj-107",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "y:",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 591.0, 433.0, 18.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-108",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "x:",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 527.0, 433.0, 18.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-109",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "release",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 241.0, 51.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-110",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "release",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 238.0, 35.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"hidden" : 1,
					"id" : "obj-111",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "attack",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 224.0, 51.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-112",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "attack",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 221.0, 35.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"hidden" : 1,
					"id" : "obj-113",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 788.0, 640.0, 61.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-114",
					"fontsize" : 9.0,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "usage: catart.lcd <corpus name>",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 154.0, 27.0, 209.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-115",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rsxm #0_ quant 31 0 127",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 81.0, 191.0, 128.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-116",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "to synthesis",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 526.0, 476.0, 62.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-117",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rsxm #0_ xfade 5 0. 250.",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 81.0, 218.0, 129.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-118",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rsxm #0_ rate 4 20. 1000.",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 81.0, 155.0, 135.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-119",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5.0, 757.0, 15.0, 15.0 ],
					"hidden" : 1,
					"id" : "obj-120",
					"comment" : "to catart.select"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_return",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 170.0, 676.0, 70.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-121",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p reschedule",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 98.0, 583.0, 66.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-122",
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 207.0, 284.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 207.0, 284.0 ],
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
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 65.0, 66.0, 30.684082, 17.0 ],
									"#loadbang" : 0,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 65.0, 66.0, 30.684082, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"#init" : "",
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"text" : [ "_{ $* }" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.list",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 65.0, 138.0, 76.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontsize" : 9.0,
									"saved_object_attributes" : 									{
										"ftm_scope" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.schedule 0",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 65.0, 102.0, 76.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontsize" : 9.0,
									"saved_object_attributes" : 									{
										"ftm_scope" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 174.0, 15.0, 15.0 ],
									"id" : "obj-5",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "forward #1_select-new",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 468.0, 637.0, 119.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-123",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_out",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 597.0, 560.0, 50.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-124",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_redraw",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 98.0, 675.0, 70.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-125",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_out",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 98.0, 636.0, 50.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-126",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_out",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 289.0, 532.0, 50.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-127",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_out",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 885.0, 319.0, 50.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-128",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route redraw",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 98.0, 655.0, 82.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-129",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_out",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 871.0, 61.0, 50.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-130",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.display.axis #0_ #0-c",
					"numinlets" : 6,
					"numoutlets" : 6,
					"fontname" : "Arial",
					"patching_rect" : [ 737.0, 301.0, 143.0, 17.0 ],
					"outlettype" : [ "", "", "", "", "", "" ],
					"hidden" : 1,
					"id" : "obj-131",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 4.0, -18.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-132",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rsxm #0_ radius 1 0. 4.",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 82.0, 86.0, 120.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-133",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "position-freeze",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 512.0, 430.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ],
					"hidden" : 1,
					"id" : "obj-134"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "position freeze (ctrl-click in lcd)",
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 425.0, 427.0, 87.0, 27.0 ],
					"hidden" : 1,
					"id" : "obj-135",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0.5",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 61.0, 23.0, 15.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-136",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "working set",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 79.0, 63.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-137",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rsxm #0_ workset 0 0 127",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 81.0, 73.0, 135.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-138",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "workset",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 77.0, 23.0, 17.0 ],
					"maximum" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"id" : "obj-139",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"fontface" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "[ms]",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 2.0, 149.0, 31.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-140",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "xfade",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 207.0, 51.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-141",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "grain size",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 260.0, 53.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-142",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rsxm #0_ duration 11 0. 1500.",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 81.0, 259.0, 153.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-143",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "xfade",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 204.0, 35.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"hidden" : 1,
					"id" : "obj-144",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "radius",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 98.0, 72.0, 17.0 ],
					"id" : "obj-145",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_reset-coordinates",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 420.0, -19.0, 118.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-146",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "rate",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 164.0, 35.0, 17.0 ],
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"id" : "obj-147",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.001,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "y-descriptor-active",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 623.0, 56.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ],
					"hidden" : 1,
					"id" : "obj-148"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.display.axis #0_ #0-y",
					"numinlets" : 6,
					"numoutlets" : 6,
					"fontname" : "Arial",
					"patching_rect" : [ 739.0, 41.0, 144.0, 17.0 ],
					"outlettype" : [ "", "", "", "", "", "" ],
					"hidden" : 1,
					"id" : "obj-149",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "x-descriptor-active",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 387.0, 430.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ],
					"hidden" : 1,
					"id" : "obj-150"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "SpectralCentroid Periodicity Loudness",
					"linecount" : 2,
					"bgcolor" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 536.0, 124.0, 102.0, 25.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-151",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rsxm #0_ trigger 9 0 127",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 81.0, 131.0, 130.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-152",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "lcd-controller",
					"text" : "p lcd-controller",
					"numinlets" : 4,
					"numoutlets" : 4,
					"fontname" : "Arial",
					"patching_rect" : [ 512.0, 559.0, 81.0, 17.0 ],
					"outlettype" : [ "", "float", "float", "" ],
					"hidden" : 1,
					"id" : "obj-153",
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 353.0, 303.0, 750.0, 508.0 ],
						"bglocked" : 0,
						"defrect" : [ 353.0, 303.0, 750.0, 508.0 ],
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
									"maxclass" : "comment",
									"text" : "remote control in 0..1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 555.0, 128.0, 103.0, 17.0 ],
									"id" : "obj-67",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "remote control in pixels",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 450.0, 127.0, 103.0, 17.0 ],
									"id" : "obj-66",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale 0. 1. 400. 0.",
									"numinlets" : 6,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 630.0, 225.0, 98.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-65",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale 0. 1. 0. 400.",
									"numinlets" : 6,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 555.0, 195.0, 98.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-63",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 1. 2.",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 555.0, 165.0, 86.0, 17.0 ],
									"outlettype" : [ "float", "float" ],
									"id" : "obj-18",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_setpos",
									"numinlets" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 555.0, 141.0, 86.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-62",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1_lcd-pos-in",
									"numinlets" : 1,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 150.0, 255.0, 85.0, 17.0 ],
									"id" : "obj-1",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "receive and send freeze message for status managers",
									"linecount" : 4,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 145.0, 12.0, 85.0, 48.0 ],
									"id" : "obj-2",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 145.0, 144.0, 48.508301, 17.0 ],
									"#loadbang" : 0,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 145.0, 144.0, 48.508301, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"#init" : "",
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"text" : [ "_freeze $2" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_return",
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 145.0, 164.0, 105.0, 17.0 ],
									"id" : "obj-4",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_freeze",
									"numinlets" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 145.0, 61.0, 85.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "mouse-down $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 495.0, 105.0, 76.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 1",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 20.0, 208.0, 60.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 0.0, 230.0, 50.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 0.0, 209.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_drag-radius",
									"numinlets" : 0,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 0.0, 185.0, 85.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 334.0, 82.0, 16.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_init",
									"numinlets" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 334.0, 60.0, 64.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 14.0, 35.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-13",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 396.0, 36.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-14",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 235.0, 37.0, 15.0, 15.0 ],
									"outlettype" : [ "list" ],
									"id" : "obj-15",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 40.0, 35.0, 15.0, 15.0 ],
									"outlettype" : [ "list" ],
									"id" : "obj-16",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. 0.",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 270.0, 225.0, 57.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-17",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p setup-crosshair-cursor",
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 467.0, 363.0, 125.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-19",
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 50.0, 50.0, 13.0, 17.0 ],
													"#loadbang" : 1,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 50.0, 50.0, 13.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_3" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"linecount" : 5,
													"presentation_linecount" : 5,
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 50.0, 71.0, 159.0, 65.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 50.0, 71.0, 159.0, 65.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_enablesprites 1,", "_recordsprite,", "_linesegment (0 - $1) 0 $1 0 0 0 0,", "_linesegment 0 (0 - $1) 0 $1 0 0 0,", "_closesprite cursor" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 139.0, 15.0, 15.0 ],
													"id" : "obj-3",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 169.0, 438.0, 15.0, 15.0 ],
									"id" : "obj-20",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pos display",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 187.0, 439.0, 65.0, 17.0 ],
									"id" : "obj-21",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 142.0, 438.0, 15.0, 15.0 ],
									"id" : "obj-22",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "unfreeze",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 3.0, 22.0, 65.0, 17.0 ],
									"id" : "obj-23",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p reschedule",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 14.0, 90.0, 66.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-24",
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 165.0, 205.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 165.0, 205.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_init-delay",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 13.0, 9.0, 98.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "stop",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 13.0, 39.0, 29.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pipe 0",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 85.0, 37.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "speedlim 25",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 50.0, 64.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-5",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 118.0, 15.0, 15.0 ],
													"id" : "obj-6",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-y-descriptor-menu",
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 154.0, 310.0, 139.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-25",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-x-descriptor-menu",
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 137.0, 290.0, 139.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-26",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 137.0, 386.0, 101.765633, 17.0 ],
									"#loadbang" : 0,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 137.0, 386.0, 101.765633, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-27",
									"#init" : "",
									"#triggerall" : 1,
									"fontsize" : 9.0,
									"text" : [ "_set-descriptors $1 $2" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "freeze state",
									"linecount" : 2,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 95.0, 407.0, 39.0, 27.0 ],
									"id" : "obj-28",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p zoom",
									"numinlets" : 4,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 356.0, 402.0, 72.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-29",
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 6.0, 346.0, 999.0, 310.0 ],
										"bglocked" : 0,
										"defrect" : [ 6.0, 346.0, 999.0, 310.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "don't use it for now",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 415.0, 35.0, 50.0, 27.0 ],
													"id" : "obj-1",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 469.0, 43.0, 29.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 75.0, 48.0, 29.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_lcd-size",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 814.0, 50.0, 83.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 2",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 814.0, 72.0, 27.0, 17.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-5",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "print curr",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 737.0, 196.0, 58.0, 17.0 ],
													"id" : "obj-6",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "print zoom",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 689.0, 221.0, 58.0, 17.0 ],
													"id" : "obj-7",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0. 0.",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 665.0, 71.0, 64.0, 17.0 ],
													"outlettype" : [ "float", "float" ],
													"id" : "obj-8",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-y-descriptor-max",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 865.0, 113.0, 119.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-9",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-y-descriptor-min",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 848.0, 93.0, 113.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-10",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-x-descriptor-max",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 729.0, 113.0, 119.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-x-descriptor-min",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 713.0, 93.0, 113.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-12",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 127 1 0. 1.",
													"numinlets" : 6,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 797.0, 143.0, 98.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-13",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 1 127 0. 1.",
													"numinlets" : 6,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 665.0, 143.0, 92.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-14",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "mouse down pos",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 684.0, 50.0, 116.0, 17.0 ],
													"id" : "obj-15",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 665.0, 48.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-16",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0. 0.",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 566.0, 65.0, 54.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-17",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "onebang",
													"linecount" : 2,
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 469.0, 163.0, 42.0, 27.0 ],
													"outlettype" : [ "bang", "bang" ],
													"id" : "obj-18",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 447.0, 247.0, 32.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-19",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 469.0, 205.0, 32.0, 17.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-20",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 4,
													"presentation_rect" : [ 491.0, 226.0, 168.114243, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 491.0, 226.0, 168.114243, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-21",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_((($3 - $1) > 0) && (($4 - $2) > 0))" ],
													"numins" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0. 0. 0. 0.",
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Arial",
													"patching_rect" : [ 168.0, 184.0, 88.0, 17.0 ],
													"outlettype" : [ "float", "float", "float", "float" ],
													"id" : "obj-22",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "mouse release + we were zooming: end zooming",
													"linecount" : 3,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 376.0, 133.0, 93.0, 38.0 ],
													"id" : "obj-23",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 484.0, 69.0, 15.0, 15.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-24"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 526.0, 138.0, 32.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-25",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "snapshot start",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 580.0, 163.0, 75.0, 17.0 ],
													"id" : "obj-26",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "mouse down flag",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 507.0, 23.0, 116.0, 17.0 ],
													"id" : "obj-27",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 488.0, 21.0, 15.0, 15.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-28",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "shift + click: start zooming",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 581.0, 128.0, 78.0, 27.0 ],
													"id" : "obj-29",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "modifiers",
													"numinlets" : 1,
													"numoutlets" : 5,
													"fontname" : "Arial",
													"patching_rect" : [ 484.0, 88.0, 66.0, 17.0 ],
													"outlettype" : [ "int", "int", "int", "int", "int" ],
													"id" : "obj-30",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontname" : "Arial",
													"patching_rect" : [ 469.0, 110.0, 169.0, 17.0 ],
													"outlettype" : [ "bang", "bang", "" ],
													"id" : "obj-31",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "zoom factor (negative to compensate wheel direction)",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 305.0, 14.0, 142.0, 27.0 ],
													"id" : "obj-32",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 3,
													"presentation_rect" : [ 228.0, 159.0, 102.060051, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 228.0, 159.0, 102.060051, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-33",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_($1 * ($3 - $2) + $3)" ],
													"numins" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 3,
													"presentation_rect" : [ 211.0, 132.0, 102.060051, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 211.0, 132.0, 102.060051, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-34",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_($1 * ($3 - $2) + $3)" ],
													"numins" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 3,
													"presentation_rect" : [ 91.0, 162.0, 102.060051, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 91.0, 162.0, 102.060051, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-35",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_($1 * ($3 - $2) + $3)" ],
													"numins" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 75.0, 74.0, 85.716789, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 75.0, 74.0, 85.716789, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-36",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_($1 * $zoomstep)" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.object",
													"text" : "-0.1",
													"numinlets" : 1,
													"presentation_rect" : [ 310.0, 43.0, 80.461426, 18.0 ],
													"scope" : 0,
													"numoutlets" : 2,
													"ftm_scope" : 0,
													"persistence" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 310.0, 43.0, 80.461426, 18.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-37",
													"description" : "-0.1",
													"name" : "zoomstep",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-y-descriptor-max",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 328.0, 95.0, 119.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-38",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-y-descriptor-min",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 311.0, 74.0, 113.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-39",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-x-descriptor-max",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 191.0, 97.0, 119.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-40",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-x-descriptor-min",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 175.0, 74.0, 113.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-41",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 15.0, 237.0, 15.0, 15.0 ],
													"id" : "obj-42",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 15.0, 207.0, 35.553223, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 15.0, 207.0, 35.553223, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-43",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_redraw" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 261.0, 49.0, 15.0, 15.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-44",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-y-descriptor-max",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 228.0, 228.0, 119.0, 17.0 ],
													"id" : "obj-45",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-y-descriptor-min",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 211.0, 207.0, 113.0, 17.0 ],
													"id" : "obj-46",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-x-descriptor-max",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 91.0, 230.0, 119.0, 17.0 ],
													"id" : "obj-47",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0-x-descriptor-min",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 75.0, 207.0, 113.0, 17.0 ],
													"id" : "obj-48",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 125.0, 49.0, 15.0, 15.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-49",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "current position in descriptor space x/y",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 87.0, 21.0, 192.0, 17.0 ],
													"id" : "obj-50",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 3,
													"presentation_rect" : [ 75.0, 135.0, 102.060051, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 75.0, 135.0, 102.060051, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-51",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_($1 * ($3 - $2) + $3)" ],
													"numins" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 3,
													"presentation_rect" : [ 526.0, 162.0, 32.995605, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 526.0, 162.0, 32.995605, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-52",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_$2 $3" ],
													"numins" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 5,
													"presentation_rect" : [ 469.0, 186.0, 233.579605, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 469.0, 186.0, 233.579605, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-53",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_(min $2 $4) (min $3 $5) (max $2 $4) (max $3 $5)" ],
													"numins" : 5
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "don't use it for now",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 23.0, 45.0, 50.0, 27.0 ],
													"id" : "obj-54",
													"fontsize" : 9.0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-13", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-14", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-14", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-53", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-53", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-52", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-53", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-19", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 1 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 3 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 1 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 2 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-18", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-2", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 1 ],
													"destination" : [ "obj-25", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-33", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-34", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-35", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-51", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-17", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-33", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-34", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-35", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-51", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-14", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-53", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-13", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 255.0, 386.0, 61.955563, 17.0 ],
									"#loadbang" : 0,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 255.0, 386.0, 61.955563, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-30",
									"#init" : "",
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"text" : [ "_select $1 $2" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 255.0, 438.0, 15.0, 15.0 ],
									"id" : "obj-31",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 121.0, 437.0, 15.0, 15.0 ],
									"id" : "obj-32",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "lcd-freeze",
									"text" : "p lcd-freeze",
									"numinlets" : 4,
									"numoutlets" : 3,
									"fontname" : "Arial",
									"patching_rect" : [ 196.0, 108.0, 128.0, 17.0 ],
									"outlettype" : [ "", "", "bang" ],
									"id" : "obj-33",
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 6.0, 174.0, 524.0, 386.0 ],
										"bglocked" : 0,
										"defrect" : [ 6.0, 174.0, 524.0, 386.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "catart.select can enable/disable freezing on click",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 276.0, 142.0, 239.0, 17.0 ],
													"id" : "obj-1",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "mouse up bang",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 188.0, 88.0, 51.0, 27.0 ],
													"id" : "obj-2",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess 1",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 201.0, 166.0, 60.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 181.0, 188.0, 50.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 181.0, 167.0, 15.0, 15.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_click-freeze",
													"numinlets" : 0,
													"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 181.0, 143.0, 92.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "mouse pos when idle and not frozen",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 56.0, 319.0, 96.0, 27.0 ],
													"id" : "obj-7",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 168.0, 284.0, 51.0, 17.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-8",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "rsx #0_ position",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 168.0, 264.0, 86.0, 17.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-9",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "mouse pos out to mapping to selection",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 138.0, 307.0, 179.0, 17.0 ],
													"id" : "obj-10",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 9.0, 266.0, 34.753418, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 9.0, 266.0, 34.753418, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_set $1" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "freeze state",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 9.0, 319.0, 41.0, 27.0 ],
													"id" : "obj-12",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "freeze/unfreeze",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 1.0, 21.0, 84.0, 17.0 ],
													"id" : "obj-13",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 4.0, 37.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-14",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 249.0, 84.0, 16.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-15",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 180.0, 120.0, 47.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-16",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 294.0, 96.0, 15.0, 15.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-17"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 293.0, 38.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-18",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "TODO: radius changed -> suppress freeze",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 311.0, 37.0, 114.0, 27.0 ],
													"id" : "obj-19",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 224.0, 63.0, 15.0, 15.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-20"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "any click release --> change state if not dragged before",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 244.0, 64.0, 267.0, 17.0 ],
													"id" : "obj-21",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 116.0, 212.0, 27.0, 17.0 ],
													"outlettype" : [ "bang", "" ],
													"id" : "obj-22",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 59.0, 264.0, 47.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-23",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 9.0, 300.0, 15.0, 15.0 ],
													"id" : "obj-24",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "invert to drive gate",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 2.0, 174.0, 53.0, 27.0 ],
													"id" : "obj-25",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 59.0, 176.0, 35.0, 17.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-26",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "ctrl-click --> change state",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 234.0, 123.0, 130.0, 17.0 ],
													"id" : "obj-27",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "mouse down flag",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 206.0, 37.0, 84.0, 17.0 ],
													"id" : "obj-28",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "mouse pos when idle",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 113.0, 21.0, 116.0, 17.0 ],
													"id" : "obj-29",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "(checked = frozen)",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 57.0, 88.0, 109.0, 17.0 ],
													"id" : "obj-30",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t i i",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 34.0, 105.0, 35.0, 17.0 ],
													"outlettype" : [ "int", "int" ],
													"id" : "obj-31",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 34.0, 140.0, 44.0, 17.0 ],
													"outlettype" : [ "bang", "" ],
													"id" : "obj-32",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 116.0, 178.0, 36.0, 17.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-33",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 187.0, 62.0, 32.0, 17.0 ],
													"outlettype" : [ "bang", "" ],
													"id" : "obj-34",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess 0",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 34.0, 41.0, 60.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-35",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 34.0, 79.0, 15.0, 15.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-36"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Freeze state",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 57.0, 60.0, 47.0, 27.0 ],
													"id" : "obj-37",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 187.0, 36.0, 15.0, 15.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-38",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 116.0, 37.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-39",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 116.0, 304.0, 15.0, 15.0 ],
													"id" : "obj-40",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 59.0, 302.0, 15.0, 15.0 ],
													"id" : "obj-41",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [ 13.0, 65.0, 43.0, 65.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 1 ],
													"destination" : [ "obj-23", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 1 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 1 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-16", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 99.0, 82.0, 15.0, 15.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-34"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p control-random-radius",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 0.0, 251.0, 121.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-35",
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 17.0, 46.0, 618.0, 495.0 ],
										"bglocked" : 0,
										"defrect" : [ 17.0, 46.0, 618.0, 495.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 85.0, 369.0, 13.0, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 85.0, 369.0, 13.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_0" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change 0",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontname" : "Arial",
													"patching_rect" : [ 348.0, 371.0, 49.0, 17.0 ],
													"outlettype" : [ "", "int", "int" ],
													"id" : "obj-2",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 422.0, 371.0, 13.0, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 422.0, 371.0, 13.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_0" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 2",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 250.0, 193.0, 46.0, 17.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "split 0 999999",
													"numinlets" : 3,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 348.0, 349.0, 84.0, 17.0 ],
													"outlettype" : [ "int", "int" ],
													"id" : "obj-5",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_num-nearest",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 348.0, 393.0, 110.0, 17.0 ],
													"id" : "obj-6",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 332.0, 299.0, 15.0, 15.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 438.0, 229.0, 32.723145, 17.0 ],
													"#loadbang" : 1,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 438.0, 229.0, 32.723145, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-8",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_0.125" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 453.0, 265.0, 99.15966, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 453.0, 265.0, 99.15966, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-9",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_(if ($1 > 0) (0 - $2))" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 368.0, 265.0, 75.706055, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 368.0, 265.0, 75.706055, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-10",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_(if ($1 < 0) $2)" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 348.0, 229.0, 34.753418, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 348.0, 229.0, 34.753418, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_set $1" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_num-nearest",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 348.0, 198.0, 112.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-12",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "accum 0.",
													"numinlets" : 3,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 348.0, 319.0, 50.0, 17.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-13",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "step value per pixel",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 497.0, 228.0, 56.0, 27.0 ],
													"id" : "obj-14",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "shift: knn",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 253.0, 96.0, 53.0, 17.0 ],
													"id" : "obj-15",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 315.0, 95.0, 29.0, 17.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-16",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "split 0. 999999.",
													"numinlets" : 3,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 27.0, 345.0, 84.0, 17.0 ],
													"outlettype" : [ "float", "float" ],
													"id" : "obj-17",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "control down: no radius",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 390.0, 74.0, 71.0, 27.0 ],
													"id" : "obj-18",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 250.0, 116.0, 46.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-19",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 315.0, 55.0, 15.0, 15.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-20"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "modifiers",
													"numinlets" : 1,
													"numoutlets" : 5,
													"fontname" : "Arial",
													"patching_rect" : [ 315.0, 74.0, 66.0, 17.0 ],
													"outlettype" : [ "int", "int", "int", "int", "int" ],
													"id" : "obj-21",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 215.0, 349.0, 13.0, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 215.0, 349.0, 13.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-22",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_0" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 215.0, 367.0, 15.0, 15.0 ],
													"id" : "obj-23",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_radius",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 27.0, 392.0, 84.0, 17.0 ],
													"id" : "obj-24",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 250.0, 141.0, 46.0, 17.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-25",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "use x-values, get relative diff",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 310.0, 152.0, 147.0, 17.0 ],
													"id" : "obj-26",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 11.0, 295.0, 15.0, 15.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-27"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 117.0, 218.0, 26.724609, 17.0 ],
													"#loadbang" : 1,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 117.0, 218.0, 26.724609, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-28",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_0.02" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 132.0, 261.0, 99.15966, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 132.0, 261.0, 99.15966, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-29",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_(if ($1 > 0) (0 - $2))" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 47.0, 261.0, 75.706055, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 47.0, 261.0, 75.706055, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-30",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_(if ($1 < 0) $2)" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "mouse pos when idle and not frozen --> store last x coord",
													"linecount" : 3,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 438.0, 22.0, 105.0, 38.0 ],
													"id" : "obj-31",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 417.0, 38.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-32",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "mouse pos when clicked",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 291.0, 21.0, 116.0, 17.0 ],
													"id" : "obj-33",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 27.0, 224.0, 34.753418, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 27.0, 224.0, 34.753418, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-34",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_set $1" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_radius",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 27.0, 194.0, 84.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-35",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "accum 0.",
													"numinlets" : 3,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 27.0, 315.0, 50.0, 17.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-36",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 286.0, 36.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-37",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "step value per pixel",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 180.0, 211.0, 61.0, 27.0 ],
													"id" : "obj-38",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 3,
													"presentation_rect" : [ 286.0, 171.0, 47.449219, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 286.0, 171.0, 47.449219, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-39",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_($3 - $1)" ],
													"numins" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "radius changed -> suppress freeze",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 236.0, 367.0, 100.0, 27.0 ],
													"id" : "obj-40",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 357.0, 98.0, 29.0, 17.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-41",
													"fontsize" : 9.0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 3 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 1 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-39", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-29", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-30", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-36", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-36", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-39", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-19", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mouse down flag",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 423.0, 40.0, 116.0, 17.0 ],
									"id" : "obj-36",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i 0",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 396.0, 82.0, 27.0, 17.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-37",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mouse pos when idle",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 262.0, 41.0, 116.0, 17.0 ],
									"id" : "obj-38",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p reschedule-2list",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 235.0, 60.0, 92.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-39",
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 166.0, 214.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 166.0, 214.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_init-delay",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 14.0, 21.0, 98.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "stop",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 14.0, 51.0, 29.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0 0",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 111.0, 55.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pipe 0 0 0",
													"numinlets" : 3,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 88.0, 55.0, 17.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 39.0, 15.0, 15.0 ],
													"outlettype" : [ "list" ],
													"id" : "obj-5",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 140.0, 15.0, 15.0 ],
													"id" : "obj-6",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_to-lcd",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 467.0, 437.0, 76.0, 17.0 ],
									"id" : "obj-40",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 3,
									"presentation_rect" : [ 476.0, 385.0, 156.604965, 17.0 ],
									"#loadbang" : 0,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 476.0, 385.0, 156.604965, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-41",
									"#init" : "",
									"#triggerall" : 1,
									"fontsize" : 9.0,
									"text" : [ "_drawsprite cursor (int $2) (int $3)" ],
									"numins" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 1. 2.",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 450.0, 165.0, 86.0, 17.0 ],
									"outlettype" : [ "float", "float" ],
									"id" : "obj-42",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_override",
									"numinlets" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 450.0, 141.0, 86.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-43",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_lcd-size",
									"numinlets" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 404.0, 106.0, 83.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-44",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-y-descriptor-max",
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 455.0, 309.0, 119.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-45",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-y-descriptor-min",
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 438.0, 289.0, 113.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-46",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-x-descriptor-max",
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 309.0, 119.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-47",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0-x-descriptor-min",
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 303.0, 289.0, 113.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-48",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 2",
									"numinlets" : 2,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 404.0, 162.0, 27.0, 17.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-49",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_lcd-pos",
									"numinlets" : 1,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 270.0, 255.0, 85.0, 17.0 ],
									"id" : "obj-50",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t f f",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Geneva",
									"patching_rect" : [ 387.0, 199.0, 32.5, 19.0 ],
									"outlettype" : [ "float", "float" ],
									"id" : "obj-51",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t f f",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Geneva",
									"patching_rect" : [ 255.0, 200.0, 33.5, 19.0 ],
									"outlettype" : [ "float", "float" ],
									"id" : "obj-52",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 0.",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 255.0, 163.0, 142.0, 17.0 ],
									"outlettype" : [ "float", "float" ],
									"id" : "obj-53",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 387.0, 362.0, 42.0, 17.0 ],
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-54",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale 127 1 0. 1.",
									"numinlets" : 6,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 387.0, 339.0, 98.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-55",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 255.0, 362.0, 42.0, 17.0 ],
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-56",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale 1 127 0. 1.",
									"numinlets" : 6,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 255.0, 339.0, 92.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-57",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p reschedule-2list",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 40.0, 60.0, 92.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-58",
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 165.0, 205.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 165.0, 205.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_init-delay",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 12.0, 21.0, 98.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "stop",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 12.0, 51.0, 29.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0 0",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 114.0, 55.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pipe 0 0 0",
													"numinlets" : 3,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 91.0, 55.0, 17.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 42.0, 15.0, 15.0 ],
													"outlettype" : [ "list" ],
													"id" : "obj-5",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 143.0, 15.0, 15.0 ],
													"id" : "obj-6",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mouse pos when clicked",
									"linecount" : 2,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 59.0, 35.0, 70.0, 27.0 ],
									"id" : "obj-59",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "out to selection",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 275.0, 439.0, 100.0, 17.0 ],
									"id" : "obj-60",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "hmm, several lcd per corpus are possible. better use outlets?",
									"linecount" : 2,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 359.0, 265.0, 191.0, 27.0 ],
									"hidden" : 1,
									"id" : "obj-61",
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 146.5, 411.0, 264.0, 411.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 205.5, 286.0, 130.0, 286.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-35", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 2 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 2 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-33", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-29", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-33", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-33", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [ 485.5, 425.0, 476.5, 425.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 1 ],
									"destination" : [ "obj-41", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-41", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 1 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-55", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-55", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-57", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-57", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-55", 1 ],
									"hidden" : 0,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-57", 2 ],
									"hidden" : 0,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-63", 4 ],
									"hidden" : 0,
									"color" : [ 0.368627, 0.870588, 0.039216, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-65", 3 ],
									"hidden" : 0,
									"color" : [ 0.368627, 0.870588, 0.039216, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 1 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [ 410.0, 221.0, 317.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 1 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-29", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-30", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-29", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-41", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-41", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_colorbar-in",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 678.0, 68.0, 113.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-154",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "lcd",
					"numinlets" : 1,
					"numoutlets" : 4,
					"patching_rect" : [ 513.0, 95.0, 20.0, 200.0 ],
					"outlettype" : [ "list", "list", "int", "" ],
					"hidden" : 1,
					"id" : "obj-155"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 513.0, 303.0, 18.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"hidden" : 1,
					"id" : "obj-156",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "c-descriptor-max",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 565.0, 336.0, 50.0, 17.0 ],
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"id" : "obj-157",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "c-descriptor-min",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 513.0, 336.0, 50.0, 17.0 ],
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"id" : "obj-158",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "c-descriptor-menu",
					"pattrmode" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 312.0, 416.0, 125.0, 18.0 ],
					"items" : [ "UnitID", 0, ",", "RelID", 1, ",", "UnitType", 2, ",", "SoundFile", 3, ",", "SoundSet", 4, ",", "WorkingSet", 5, ",", "Active", 6, ",", "StartSample", 7, ",", "SampleSize", 8, ",", "StartTime", 9, ",", "Duration", 10, ",", "Relstart", 11, ",", "Shift", 12, ",", "Pitch", 13, ",", "NoteNumber", 14, ",", "Loudness", 15, ",", "Periodicity", 16, ",", "SpectralFlatness", 17, ",", "SpectralCentroid", 18, ",", "HighFrequencyEnergy", 19, ",", "MidFrequencyEnergy", 20, ",", "HighFrequencyContent", 21, ",", "AC1", 22, ",", "Energy", 23, ",", "Label", 24 ],
					"numoutlets" : 3,
					"fontname" : "Arial",
					"patching_rect" : [ 513.0, 319.0, 125.0, 18.0 ],
					"outlettype" : [ "int", "", "" ],
					"presentation" : 1,
					"id" : "obj-159",
					"types" : [  ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "UnitID Loudness Relstart",
					"linecount" : 2,
					"bgcolor" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 536.0, 269.0, 102.0, 25.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-160",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "UnitID SoundFile Loudness",
					"linecount" : 2,
					"bgcolor" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 536.0, 240.0, 102.0, 25.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-161",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 106.0, 431.0, 18.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"hidden" : 1,
					"id" : "obj-162",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 513.0, 23.0, 18.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"hidden" : 1,
					"id" : "obj-163",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "trigger",
					"pattrmode" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 10.0, 416.0, 41.0, 18.0 ],
					"items" : [ "bow", ",", "fence", ",", "beat", ",", "chain", ",", "quant", ",", "seq", ",", "cont", ",", "click", ",", "grab" ],
					"numoutlets" : 3,
					"fontname" : "Arial",
					"patching_rect" : [ 4.0, 131.0, 41.0, 18.0 ],
					"outlettype" : [ "int", "", "" ],
					"presentation" : 1,
					"id" : "obj-164",
					"types" : [  ],
					"arrow" : 0,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "SpectralCentroid NoteNumber Loudness",
					"linecount" : 2,
					"bgcolor" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 536.0, 153.0, 102.0, 25.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-165",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 187.0, -56.0, 50.0, 17.0 ],
					"outlettype" : [ "bang" ],
					"hidden" : 1,
					"id" : "obj-166",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "y-descriptor-max",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 565.0, 56.0, 50.0, 17.0 ],
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"id" : "obj-167",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "y-descriptor-min",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 513.0, 56.0, 50.0, 17.0 ],
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"id" : "obj-168",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "x-descriptor-max",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 332.0, 430.0, 50.0, 17.0 ],
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"id" : "obj-169",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "x-descriptor-min",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 280.0, 430.0, 50.0, 17.0 ],
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"id" : "obj-170",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_lcd-size",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 332.0, -18.0, 73.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-171",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "400",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 187.0, -36.0, 70.0, 15.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-172",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p display",
					"numinlets" : 2,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"numoutlets" : 3,
					"fontname" : "Arial Black",
					"patching_rect" : [ 4.0, 40.0, 54.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"id" : "obj-173",
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 307.0, 265.0, 924.0, 495.0 ],
						"bglocked" : 0,
						"defrect" : [ 307.0, 265.0, 924.0, 495.0 ],
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
									"maxclass" : "comment",
									"text" : "limit sprite redraws",
									"linecount" : 2,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 330.0, 180.0, 57.0, 27.0 ],
									"id" : "obj-97",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "speedlim 50",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 266.0, 180.0, 64.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-96",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 789.0, 455.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "catart.lcd v2.9: 25.04.2009 fixed missing set-corpus for descr. presets",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 1.0, 50.0, 484.0, 17.0 ],
									"id" : "obj-2",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #1",
									"numinlets" : 0,
									"color" : [ 0.6, 0.4, 0.6, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 27.0, 69.0, 62.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p temp-trigger",
									"numinlets" : 3,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 809.0, 223.0, 90.0, 17.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-4",
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 492.0, 519.0, 356.0, 270.0 ],
										"bglocked" : 0,
										"defrect" : [ 492.0, 519.0, 356.0, 270.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "another Max5 change?  error from int when sending list from trigger",
													"linecount" : 3,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 150.0, 135.0, 108.0, 38.0 ],
													"id" : "obj-14",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t i",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 120.0, 135.0, 20.0, 20.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-13",
													"fontsize" : 12.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "recall trigger",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 4.0, 30.0, 71.0, 17.0 ],
													"id" : "obj-1",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "push temp trigger: send to trigger without storing",
													"linecount" : 5,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 96.0, 10.0, 66.0, 58.0 ],
													"id" : "obj-2",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1 i 0",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontname" : "Arial",
													"patching_rect" : [ 75.0, 73.0, 47.0, 17.0 ],
													"outlettype" : [ "int", "int", "int" ],
													"id" : "obj-3",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "int 0",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 30.0, 165.0, 31.0, 17.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-4",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 120.0, 105.0, 47.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 75.0, 46.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 31.0, 48.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-7",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 169.0, 49.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-8",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 93.0, 198.0, 15.0, 15.0 ],
													"id" : "obj-9",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "store trigger",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 189.0, 51.0, 100.0, 17.0 ],
													"id" : "obj-10",
													"fontsize" : 9.0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 2 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-5", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_pop-trigger",
									"numinlets" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 809.0, 200.0, 94.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_push-trigger",
									"numinlets" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 809.0, 177.0, 94.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_trigger",
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 809.0, 246.0, 77.0, 17.0 ],
									"id" : "obj-7",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_trigger",
									"numinlets" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 809.0, 154.0, 77.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 809.0, 455.0, 15.0, 15.0 ],
									"id" : "obj-9",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 159.0, 111.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 266.0, 280.0, 72.0, 17.0 ],
									"outlettype" : [ "int", "int" ],
									"id" : "obj-11",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "current voice",
									"linecount" : 2,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 337.0, 302.0, 48.0, 27.0 ],
									"id" : "obj-12",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "catart.lcd v2.8: 26.02.2009 set-title",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 1.0, 36.0, 484.0, 17.0 ],
									"id" : "obj-13",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_set-title",
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 630.0, 453.0, 124.0, 17.0 ],
									"id" : "obj-14",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p refresh",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 526.0, 122.0, 52.0, 17.0 ],
									"outlettype" : [ "bang", "bang" ],
									"id" : "obj-15",
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 1138.0, 732.0, 438.0, 293.0 ],
										"bglocked" : 0,
										"defrect" : [ 1138.0, 732.0, 438.0, 293.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_set-descriptors",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 46.0, 205.0, 108.0, 17.0 ],
													"id" : "obj-1",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-c-descriptor-menu",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 169.0, 88.0, 121.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-y-descriptor-menu",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 169.0, 66.0, 122.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-x-descriptor-menu",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 169.0, 44.0, 122.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 66.0, 184.0, 15.0, 15.0 ],
													"id" : "obj-5",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b b",
													"numinlets" : 1,
													"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
													"numoutlets" : 3,
													"fontname" : "Arial",
													"patching_rect" : [ 26.0, 41.0, 51.0, 17.0 ],
													"outlettype" : [ "bang", "bang", "bang" ],
													"id" : "obj-6",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 26.0, 21.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-7",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 26.0, 184.0, 15.0, 15.0 ],
													"id" : "obj-8",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "after import, update menus and redraw, but try to keep chosen descriptors",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 51.0, 21.0, 349.0, 17.0 ],
													"id" : "obj-9",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 4,
													"presentation_rect" : [ 46.0, 149.0, 47.994141, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 46.0, 149.0, 47.994141, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-10",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_$2 $3 $4" ],
													"numins" : 4
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-10", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-10", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 2 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_refresh-corpus",
									"numinlets" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 526.0, 88.0, 106.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "catart.lcd v2.7: 06.08.2008 knn controller, drag with shift",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 2.0, 21.0, 484.0, 17.0 ],
									"id" : "obj-17",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 441.0, 423.0, 16.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 401.0, 423.0, 35.0, 17.0 ],
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-19",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "rs #0_interp-time",
									"numinlets" : 1,
									"color" : [ 1.0, 0.541176, 0.843137, 1.0 ],
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 401.0, 442.0, 115.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-20",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "98. 2.",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 539.0, 399.0, 50.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-21",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 539.0, 380.0, 62.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-22",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 539.0, 361.0, 29.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-23",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_lcd-pos",
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 558.0, 340.0, 81.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-24",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 410.0, 151.0, 16.0, 16.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_init-delay",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 428.0, 151.0, 100.0, 17.0 ],
									"id" : "obj-26",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 187.0, 72.0, 115.248047, 17.0 ],
									"#loadbang" : 1,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 187.0, 72.0, 115.248047, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-27",
									"#init" : "",
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"text" : [ "_set (aa #2 #1 catart.lcd)" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 630.0, 434.0, 86.995605, 17.0 ],
									"#loadbang" : 0,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 630.0, 434.0, 86.995605, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-28",
									"#init" : "",
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"text" : [ "_(aa #2 #1) < $1 >" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r",
									"numinlets" : 1,
									"color" : [ 0.6, 0.4, 0.6, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 187.0, 88.0, 16.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-29",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b b",
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Arial",
									"patching_rect" : [ 402.0, 126.0, 83.0, 17.0 ],
									"outlettype" : [ "bang", "bang", "bang", "bang" ],
									"id" : "obj-30",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\r#0_workset 0;\r#0_trigger 1;\r#0_num-nearest 0;\r#0_radius 0.;\r#0_rate 1000;\r#0_rate_std 0;\r#0_xfade 10;\r#0_duration 0;\r#0_duration_std 0;\r#0_onset_std 0;\r#0_transposition 0;\r#0_transposition_std 0;\r#0_gain 0;\r#0_gain_std 0;\r#0_reverse 0;\r#0_pan 50;\r#0_pan_std 0;\r#0_interp-time 500;\r",
									"linecount" : 19,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 402.0, 181.0, 121.0, 201.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-31",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l l",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Arial",
									"patching_rect" : [ 606.0, 65.0, 58.0, 17.0 ],
									"outlettype" : [ "bang", "", "" ],
									"id" : "obj-32",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 654.0, 146.0, 67.255371, 17.0 ],
									"#loadbang" : 0,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 654.0, 146.0, 67.255371, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-33",
									"#init" : "",
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"text" : [ "_set-corpus $1" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_set-corpus",
									"numinlets" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 606.0, 44.0, 124.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-34",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "unit index",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 275.0, 158.0, 54.0, 17.0 ],
									"id" : "obj-35",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 33.0, 209.0, 55.675785, 17.0 ],
									"#loadbang" : 0,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 33.0, 209.0, 55.675785, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-36",
									"#init" : "",
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"text" : [ "_get-unit $1" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "catart.data.proxy #1",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 33.0, 227.0, 125.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-37",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p draw-unit",
									"numinlets" : 3,
									"color" : [ 0.380392, 0.611765, 0.611765, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 16.0, 387.0, 81.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-38",
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 14.0, 59.0, 449.0, 329.0 ],
										"bglocked" : 0,
										"defrect" : [ 14.0, 59.0, 449.0, 329.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p pixel-colour",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 85.0, 90.0, 76.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 304.0, 650.0, 444.0, 324.0 ],
														"bglocked" : 0,
														"defrect" : [ 304.0, 650.0, 444.0, 324.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 50.0, 98.0, 38.036137, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 50.0, 98.0, 38.036137, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-1",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_$1[$2]" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "unitstat matrix in",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 101.0, 40.0, 100.0, 17.0 ],
																	"id" : "obj-2",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 81.0, 40.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-3",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "symbol index",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 50.0, 26.0, 116.0, 17.0 ],
																	"id" : "obj-4",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "scale 0. 1. 0. 2.",
																	"numinlets" : 6,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 50.0, 144.0, 238.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-5",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "catart.display.axisrecv #0-c",
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"patching_rect" : [ 81.0, 61.0, 152.0, 17.0 ],
																	"outlettype" : [ "bang", "int", "", "" ],
																	"id" : "obj-6",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "descriptor min and max",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 174.0, 83.0, 116.0, 17.0 ],
																	"id" : "obj-7",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 50.0, 185.0, 304.995148, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 50.0, 185.0, 304.995148, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-8",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_($colormap iget $1 0) ($colormap iget $1 1) ($colormap iget $1 2)" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 230.0, 120.0, 109.609863, 17.0 ],
																	"#loadbang" : 1,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 230.0, 120.0, 109.609863, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-9",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_(($colormap rows) - 2.)" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 50.0, 40.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-10",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 216.0, 15.0, 15.0 ],
																	"id" : "obj-11",
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-1", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 3 ],
																	"destination" : [ "obj-5", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 2 ],
																	"destination" : [ "obj-5", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-5", 4 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l l",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontname" : "Arial",
													"patching_rect" : [ 1.0, 56.0, 95.0, 17.0 ],
													"outlettype" : [ "bang", "", "" ],
													"id" : "obj-2",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "corpus unit frow to draw",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 28.0, 15.0, 75.0, 27.0 ],
													"id" : "obj-3",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 1.0, 15.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "erase with white (don't care about units underneath)",
													"linecount" : 3,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 339.0, 86.0, 100.0, 38.0 ],
													"id" : "obj-5",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p unit-to-pixels",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 135.0, 209.0, 95.0, 17.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-6",
													"fontsize" : 9.0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 40.0, 464.0, 527.0, 332.0 ],
														"bglocked" : 0,
														"defrect" : [ 40.0, 464.0, 527.0, 332.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "corpus unit frow to convert to pixel position",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 177.0, 27.0, 214.0, 17.0 ],
																	"id" : "obj-1",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "unitstat matrix in",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 478.0, 26.0, 100.0, 17.0 ],
																	"id" : "obj-2",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "catart.display.axisrecv #0-y",
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"patching_rect" : [ 290.0, 65.0, 152.0, 17.0 ],
																	"outlettype" : [ "bang", "int", "", "" ],
																	"id" : "obj-3",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "catart.display.axisrecv #0-x",
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"patching_rect" : [ 130.0, 65.0, 152.0, 17.0 ],
																	"outlettype" : [ "bang", "int", "", "" ],
																	"id" : "obj-4",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r #0_lcd-size",
																	"numinlets" : 0,
																	"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 50.0, 64.0, 73.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-5",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 2",
																	"numinlets" : 2,
																	"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 50.0, 88.0, 27.0, 17.0 ],
																	"outlettype" : [ "int" ],
																	"id" : "obj-6",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "scale 0. 1. 1 127",
																	"numinlets" : 6,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 155.0, 143.0, 124.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-7",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "scale 1. 0. 1 127",
																	"numinlets" : 6,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 315.0, 143.0, 124.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-8",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 155.0, 107.0, 38.036137, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 155.0, 107.0, 38.036137, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-9",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_$1[$2]" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 315.0, 107.0, 38.036137, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 315.0, 107.0, 38.036137, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-10",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_$1[$2]" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "scale descriptors to pixels",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 168.0, 167.0, 199.0, 17.0 ],
																	"id" : "obj-11",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 155.0, 26.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-12",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 454.0, 26.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-13",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s #0_redraw",
																	"numinlets" : 1,
																	"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 208.0, 245.0, 73.0, 17.0 ],
																	"id" : "obj-14",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 315.0, 201.0, 15.0, 15.0 ],
																	"id" : "obj-15",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 155.0, 201.0, 15.0, 15.0 ],
																	"id" : "obj-16",
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 1 ],
																	"destination" : [ "obj-10", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 299.5, 224.0, 217.5, 224.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 3 ],
																	"destination" : [ "obj-8", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 2 ],
																	"destination" : [ "obj-8", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 139.5, 224.0, 217.5, 224.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 3 ],
																	"destination" : [ "obj-7", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 2 ],
																	"destination" : [ "obj-7", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-9", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-7", 4 ],
																	"hidden" : 0,
																	"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																	"midpoints" : [ 59.5, 129.0, 248.5, 129.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-8", 4 ],
																	"hidden" : 0,
																	"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																	"midpoints" : [ 59.5, 129.0, 408.5, 129.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "corpus unit frow to undraw",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 208.0, 15.0, 75.0, 27.0 ],
													"id" : "obj-7",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l b",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontname" : "Arial",
													"patching_rect" : [ 181.0, 56.0, 95.0, 17.0 ],
													"outlettype" : [ "bang", "", "bang" ],
													"id" : "obj-8",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p draw-pixels",
													"numinlets" : 4,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 239.0, 267.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-9",
													"fontsize" : 9.0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 44.0, 467.0, 400.0, 221.0 ],
														"bglocked" : 0,
														"defrect" : [ 44.0, 467.0, 400.0, 221.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "y [pixel]",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 171.0, 24.0, 49.0, 17.0 ],
																	"id" : "obj-1",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "x [pixel]",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 108.0, 24.0, 49.0, 17.0 ],
																	"id" : "obj-2",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 6,
																	"presentation_rect" : [ 50.0, 95.0, 205.823746, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 50.0, 95.0, 205.823746, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-3",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_framerect $2 $3 ($2 + 2) ($3 + 2) $4 $5 $6" ],
																	"numins" : 6
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 172.0, 40.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-4",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 111.0, 40.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-5",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 233.0, 40.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-6",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 50.0, 40.0, 15.0, 15.0 ],
																	"outlettype" : [ "bang" ],
																	"id" : "obj-7",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 130.0, 17.0, 17.0 ],
																	"id" : "obj-8",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "3-element rgb colour list",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 232.0, 24.0, 123.0, 17.0 ],
																	"id" : "obj-9",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "do it!",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 50.0, 24.0, 33.0, 17.0 ],
																	"id" : "obj-10",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "drawing commands for lcd",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 50.0, 155.0, 128.0, 17.0 ],
																	"id" : "obj-11",
																	"fontsize" : 9.0
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-3", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-3", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 265.0, 90.0, 65.989746, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 265.0, 90.0, 65.989746, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-10",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_255 255 255" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 181.0, 15.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 309.0, 20.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-12",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 267.0, 15.0, 15.0 ],
													"id" : "obj-13",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "unitstat matrix in",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 330.0, 20.0, 100.0, 17.0 ],
													"id" : "obj-14",
													"fontsize" : 9.0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-9", 3 ],
													"hidden" : 0,
													"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
													"midpoints" : [ 94.5, 132.0, 307.5, 132.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 3 ],
													"hidden" : 0,
													"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
													"midpoints" : [ 274.5, 132.0, 307.5, 132.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 2 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
													"midpoints" : [ 48.5, 142.0, 144.5, 142.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"midpoints" : [ 10.5, 163.0, 59.5, 163.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-9", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
													"midpoints" : [ 228.5, 142.0, 144.5, 142.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"midpoints" : [ 190.5, 163.0, 59.5, 163.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_erase-unit",
									"numinlets" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 33.0, 153.0, 108.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-39",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p draw-selection-sprite",
									"numinlets" : 3,
									"color" : [ 0.380392, 0.611765, 0.611765, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 266.0, 387.0, 118.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-40",
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 27.0, 444.0, 306.0, 366.0 ],
										"bglocked" : 0,
										"defrect" : [ 27.0, 444.0, 306.0, 366.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 182.0, 178.0, 57.79834, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 182.0, 178.0, 57.79834, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_(cat sel $1)" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change -1",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontname" : "Arial",
													"patching_rect" : [ 182.0, 120.0, 50.0, 17.0 ],
													"outlettype" : [ "", "int", "int" ],
													"id" : "obj-2",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "voice number",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 181.0, 22.0, 70.0, 17.0 ],
													"id" : "obj-3",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 182.0, 38.0, 15.0, 15.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-4",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "selected unit frow to draw sprite",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 1.0, 21.0, 160.0, 17.0 ],
													"id" : "obj-5",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p unit-to-pixels",
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 24.0, 172.0, 95.0, 17.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-6",
													"fontsize" : 9.0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 69.0, 461.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 69.0, 461.0, 600.0, 426.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "corpus unit frow to convert to pixel position",
																	"linecount" : 2,
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 177.0, 27.0, 130.0, 27.0 ],
																	"id" : "obj-1",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "unitstat matrix in",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 478.0, 26.0, 100.0, 17.0 ],
																	"id" : "obj-2",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "catart.display.axisrecv #0-y",
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"patching_rect" : [ 290.0, 65.0, 152.0, 17.0 ],
																	"outlettype" : [ "bang", "int", "", "" ],
																	"id" : "obj-3",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "catart.display.axisrecv #0-x",
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"patching_rect" : [ 130.0, 65.0, 152.0, 17.0 ],
																	"outlettype" : [ "bang", "int", "", "" ],
																	"id" : "obj-4",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r #0_lcd-size",
																	"numinlets" : 0,
																	"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 50.0, 64.0, 73.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-5",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 2",
																	"numinlets" : 2,
																	"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 50.0, 88.0, 27.0, 17.0 ],
																	"outlettype" : [ "int" ],
																	"id" : "obj-6",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "scale 0. 1. 1 127",
																	"numinlets" : 6,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 155.0, 143.0, 124.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-7",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "scale 1. 0. 1 127",
																	"numinlets" : 6,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 315.0, 143.0, 124.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-8",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 155.0, 107.0, 38.036137, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 155.0, 107.0, 38.036137, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-9",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_$1[$2]" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 315.0, 107.0, 38.036137, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 315.0, 107.0, 38.036137, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-10",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_$1[$2]" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "scale descriptors to pixels",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 168.0, 167.0, 199.0, 17.0 ],
																	"id" : "obj-11",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 155.0, 26.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-12",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 454.0, 26.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-13",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s #0_redraw",
																	"numinlets" : 1,
																	"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 212.0, 225.0, 73.0, 17.0 ],
																	"id" : "obj-14",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 315.0, 201.0, 15.0, 15.0 ],
																	"id" : "obj-15",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 155.0, 201.0, 15.0, 15.0 ],
																	"id" : "obj-16",
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 1 ],
																	"destination" : [ "obj-10", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 299.5, 224.0, 221.5, 224.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 3 ],
																	"destination" : [ "obj-8", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 2 ],
																	"destination" : [ "obj-8", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 139.5, 224.0, 221.5, 224.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 3 ],
																	"destination" : [ "obj-7", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 2 ],
																	"destination" : [ "obj-7", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-9", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-7", 4 ],
																	"hidden" : 0,
																	"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																	"midpoints" : [ 59.5, 129.0, 248.5, 129.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-8", 4 ],
																	"hidden" : 0,
																	"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																	"midpoints" : [ 59.5, 129.0, 408.5, 129.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "remove old, then draw new sprite",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 63.0, 65.0, 93.0, 27.0 ],
													"id" : "obj-7",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p selection-sprite-setup",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 43.0, 263.0, 119.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-8",
													"fontsize" : 9.0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 14.0, 59.0, 560.0, 448.0 ],
														"bglocked" : 0,
														"defrect" : [ 14.0, 59.0, 560.0, 448.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route int",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"patching_rect" : [ 100.0, 300.0, 72.0, 17.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-1",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "ftm.list",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 226.0, 207.0, 44.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-2",
																	"fontsize" : 9.0,
																	"saved_object_attributes" : 																	{
																		"ftm_scope" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 226.0, 176.0, 78.637207, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 226.0, 176.0, 78.637207, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-3",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_($col rowref $1)" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"patching_rect" : [ 377.0, 44.0, 35.0, 17.0 ],
																	"outlettype" : [ "int", "bang" ],
																	"id" : "obj-4",
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"triscale" : 0.9,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 346.0, 332.0, 57.23584, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 346.0, 332.0, 57.23584, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-5",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_append $*1" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"linecount" : 9,
																	"presentation_linecount" : 9,
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 346.0, 145.0, 56.0, 113.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 346.0, 145.0, 56.0, 113.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-6",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_255 0 0,", "_255 0 0,", "_255 150 0,", "_0 0 255,", "_176 0 255,", "_62 255 0,", "_0 255 238,", "_0 124 255,", "_26 0 255" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "fmat 0 3",
																	"numinlets" : 1,
																	"presentation_rect" : [ 346.0, 351.0, 70.222168, 18.0 ],
																	"scope" : 0,
																	"numoutlets" : 2,
																	"ftm_scope" : 0,
																	"persistence" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 346.0, 351.0, 70.222168, 18.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-7",
																	"description" : "fmat 0 3",
																	"name" : "col",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 377.0, 66.0, 129.007324, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 377.0, 66.0, 129.007324, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-8",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_hsl (($1 - 1) * 25) 255 128" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "swatch",
																	"numinlets" : 3,
																	"numoutlets" : 2,
																	"patching_rect" : [ 377.0, 91.0, 128.0, 32.0 ],
																	"outlettype" : [ "", "float" ],
																	"id" : "obj-9",
																	"compatibility" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i b",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"fontname" : "Arial",
																	"patching_rect" : [ 66.0, 118.0, 290.0, 17.0 ],
																	"outlettype" : [ "bang", "int", "bang" ],
																	"id" : "obj-10",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "uzi 10 0",
																	"numinlets" : 2,
																	"numoutlets" : 3,
																	"fontname" : "Arial",
																	"patching_rect" : [ 66.0, 146.0, 45.0, 17.0 ],
																	"outlettype" : [ "bang", "bang", "int" ],
																	"id" : "obj-11",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "2",
																	"numinlets" : 1,
																	"presentation_rect" : [ 127.0, 94.0, 39.091309, 18.0 ],
																	"scope" : 0,
																	"numoutlets" : 2,
																	"ftm_scope" : 0,
																	"persistence" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 127.0, 94.0, 39.091309, 18.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-12",
																	"description" : "2",
																	"name" : "rad",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"patching_rect" : [ 206.0, 146.0, 35.0, 17.0 ],
																	"outlettype" : [ "int", "bang" ],
																	"id" : "obj-13",
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"triscale" : 0.9,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 66.0, 94.0, 51.914059, 17.0 ],
																	"#loadbang" : 1,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 66.0, 94.0, 51.914059, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-14",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_($rad + 1)" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "local 0, idle 1, enablesprites 1, penmode Copy, font Arial 9",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 30.0, 65.0, 278.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-15",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "loadbang",
																	"linecount" : 2,
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 30.0, 46.0, 45.0, 27.0 ],
																	"outlettype" : [ "bang" ],
																	"id" : "obj-16",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 162.0, 378.0, 15.0, 15.0 ],
																	"id" : "obj-17",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"linecount" : 4,
																	"presentation_linecount" : 4,
																	"#untuple" : 0,
																	"numinlets" : 3,
																	"presentation_rect" : [ 100.0, 240.0, 210.0, 53.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 100.0, 240.0, 210.0, 53.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-18",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_recordsprite, frgb $*3,", "_frameoval (1 - $2) (1 - $2) ($2 + 1) ($2 + 1),", "_(if ($1 > 0) $1),", "_closesprite (cat sel $1)" ],
																	"numins" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "set up manual colour table per voice, sel0 if single voices",
																	"linecount" : 4,
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 418.0, 147.0, 69.0, 48.0 ],
																	"id" : "obj-19",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "label only for multi-voice sprites (id > 0)",
																	"linecount" : 3,
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 231.0, 326.0, 100.0, 38.0 ],
																	"id" : "obj-20",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"linecount" : 2,
																	"presentation_linecount" : 2,
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 100.0, 325.0, 121.0, 29.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 100.0, 325.0, 121.0, 29.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-21",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_moveto ($2 + 1) (1 - $2),", "_write $1" ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 1 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 2 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 2 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-21", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 39.5, 375.0, 171.0, 375.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-18", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-18", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l b",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontname" : "Arial",
													"patching_rect" : [ 2.0, 63.0, 55.0, 17.0 ],
													"outlettype" : [ "bang", "", "bang" ],
													"id" : "obj-9",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 2.0, 37.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-10",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 109.0, 40.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 2.0, 298.0, 15.0, 15.0 ],
													"id" : "obj-12",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 4,
													"presentation_rect" : [ 2.0, 228.0, 141.452621, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 2.0, 228.0, 141.452621, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-13",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_drawsprite $4 (int $2) (int $3)" ],
													"numins" : 4
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-13", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-13", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 2 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
													"midpoints" : [ 47.5, 148.0, 11.5, 148.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
													"midpoints" : [ 11.5, 154.0, 11.5, 154.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "speedlim 40",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 143.0, 162.0, 64.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-41",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1.0, 446.0, 15.0, 15.0 ],
									"id" : "obj-42",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #1_catart.lcd",
									"numinlets" : 0,
									"color" : [ 0.6, 0.4, 0.6, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 90.0, 88.0, 92.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-43",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r catart.lcd",
									"numinlets" : 0,
									"color" : [ 0.6, 0.4, 0.6, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 27.0, 88.0, 62.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-44",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 402.0, 107.0, 16.0, 16.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-45"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Arial",
									"patching_rect" : [ 568.0, 144.0, 42.0, 17.0 ],
									"outlettype" : [ "bang", "bang", "bang" ],
									"id" : "obj-46",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-c-update-range",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 722.0, 434.0, 124.0, 17.0 ],
									"id" : "obj-47",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-y-update-range",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 684.0, 414.0, 124.0, 17.0 ],
									"id" : "obj-48",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0-x-update-range",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 656.0, 394.0, 124.0, 17.0 ],
									"id" : "obj-49",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi 8",
									"numinlets" : 2,
									"numoutlets" : 3,
									"fontname" : "Arial",
									"patching_rect" : [ 656.0, 351.0, 50.0, 17.0 ],
									"outlettype" : [ "bang", "bang", "int" ],
									"id" : "obj-50",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 656.0, 373.0, 106.072258, 17.0 ],
									"#loadbang" : 0,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 656.0, 373.0, 106.072258, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-51",
									"#init" : "",
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"text" : [ "_$1 $2[1 $1] $2[2 $1]" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_update-ranges",
									"numinlets" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 656.0, 330.0, 101.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-52",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 654.0, 182.0, 112.782715, 17.0 ],
									"#loadbang" : 0,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 654.0, 182.0, 112.782715, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-53",
									"#init" : "",
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"text" : [ "_lookup-descriptor Active" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "catart.data.proxy #1",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 654.0, 201.0, 125.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-54",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 143.0, 184.0, 15.0, 15.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-55"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_reset-coordinates",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 526.0, 201.0, 118.0, 17.0 ],
									"id" : "obj-56",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 737.0, 276.0, 26.658691, 17.0 ],
									"#loadbang" : 0,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 737.0, 276.0, 26.658691, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-57",
									"#init" : "",
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"text" : [ "_clear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 655.0, 230.0, 72.673836, 17.0 ],
									"#loadbang" : 0,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 655.0, 230.0, 72.673836, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-58",
									"#init" : "",
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"text" : [ "_get-descriptors" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "catart.data.proxy #1",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 655.0, 249.0, 106.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-59",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 655.0, 276.0, 67.664062, 17.0 ],
									"#loadbang" : 0,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 655.0, 276.0, 67.664062, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-60",
									"#init" : "",
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"text" : [ "_append $1 $2" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_descriptor-menu",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 655.0, 299.0, 132.0, 17.0 ],
									"id" : "obj-61",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 243.0, 111.0, 27.0, 17.0 ],
									"outlettype" : [ "bang", "int" ],
									"id" : "obj-62",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 526.0, 230.0, 41.613285, 17.0 ],
									"#loadbang" : 0,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 526.0, 230.0, 41.613285, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-63",
									"#init" : "",
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"text" : [ "_get-stat" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "catart.data.proxy #1",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 526.0, 250.0, 125.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-64",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_init",
									"numinlets" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 402.0, 88.0, 69.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-65",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 266.0, 316.0, 55.675785, 17.0 ],
									"#loadbang" : 0,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 266.0, 316.0, 55.675785, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-66",
									"#init" : "",
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"text" : [ "_get-unit $1" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "catart.data.proxy #1",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 266.0, 334.0, 125.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-67",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 16.0, 281.0, 59.75391, 17.0 ],
									"#loadbang" : 0,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 16.0, 281.0, 59.75391, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-68",
									"#init" : "",
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"text" : [ "_get-last-unit" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "catart.data.proxy #1",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 16.0, 301.0, 125.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-69",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_redraw",
									"numinlets" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 143.0, 139.0, 82.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-70",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_draw-last-unit",
									"numinlets" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 16.0, 139.0, 112.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-71",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.mdispatch #0_ catart.lcd",
									"numinlets" : 2,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1.0, 111.0, 154.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-72",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 1.0, 89.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-73",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 243.0, 89.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-74",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "working set",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 264.0, 89.0, 63.0, 17.0 ],
									"id" : "obj-75",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p draw-radius-sprite",
									"numinlets" : 1,
									"color" : [ 0.380392, 0.611765, 0.611765, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 266.0, 420.0, 106.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-76",
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 168.0, 155.0, 540.0, 653.0 ],
										"bglocked" : 0,
										"defrect" : [ 168.0, 155.0, 540.0, 653.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change -1",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontname" : "Arial",
													"patching_rect" : [ 9.0, 90.0, 54.0, 17.0 ],
													"outlettype" : [ "", "int", "int" ],
													"id" : "obj-1",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "disable radius number box when k > 0",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 42.0, 64.0, 105.0, 27.0 ],
													"id" : "obj-2",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend radius enable",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 9.0, 112.0, 113.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_rsxm",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 9.0, 134.0, 90.0, 17.0 ],
													"id" : "obj-4",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 9.0, 68.0, 32.0, 17.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-5",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "knn box, k = 1 ~ 1/10 of lcd size",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 188.0, 395.0, 159.0, 17.0 ],
													"id" : "obj-6",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0 20 0 400",
													"numinlets" : 6,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 179.0, 302.0, 93.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-7",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_num-nearest",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 9.0, 46.0, 94.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-8",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"linecount" : 3,
													"presentation_linecount" : 3,
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 179.0, 411.0, 249.0, 41.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 179.0, 411.0, 249.0, 41.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-9",
													"#init" : "",
													"#triggerall" : 1,
													"fontsize" : 9.0,
													"text" : [ "_recordsprite,", "_framerect (1 - $1) (1 - $1) ($1 + 1) ($1 + 1) 255 0 0,", "_closesprite zone" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 407.0, 513.0, 72.541992, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 407.0, 513.0, 72.541992, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-10",
													"#init" : "",
													"#triggerall" : 1,
													"fontsize" : 9.0,
													"text" : [ "_enablesprites 1" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 375.0, 160.0, 66.161133, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 375.0, 160.0, 66.161133, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_($1 rowref 0)" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 375.0, 130.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-12",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-x-descriptor-max",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 195.0, 69.0, 144.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-13",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-x-descriptor-menu",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 104.0, 23.0, 151.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-14",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-x-descriptor-min",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 152.0, 46.0, 144.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-15",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 104.0, 522.0, 15.0, 15.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 104.0, 490.0, 15.0, 15.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-17"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 277.0, 163.0, 15.0, 15.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-18"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 104.0, 157.0, 15.0, 15.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-19"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 321.0, 99.0, 47.449219, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 321.0, 99.0, 47.449219, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-20",
													"#init" : "",
													"#triggerall" : 1,
													"fontsize" : 9.0,
													"text" : [ "_($2 - $1)" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 152.0, 101.0, 47.449219, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 152.0, 101.0, 47.449219, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-21",
													"#init" : "",
													"#triggerall" : 1,
													"fontsize" : 9.0,
													"text" : [ "_($2 - $1)" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 291.0, 250.0, 35.0, 17.0 ],
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-22",
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"triscale" : 0.9,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 122.0, 250.0, 35.0, 17.0 ],
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-23",
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"triscale" : 0.9,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 291.0, 302.0, 35.0, 17.0 ],
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-24",
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"triscale" : 0.9,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 122.0, 302.0, 35.0, 17.0 ],
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-25",
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"triscale" : 0.9,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-y-descriptor-menu",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 277.0, 23.0, 151.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-26",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_lcd-size",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 182.0, 129.0, 73.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-27",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-y-descriptor-min",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 321.0, 46.0, 148.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-28",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0-y-descriptor-max",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 364.0, 69.0, 148.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-29",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 2",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 182.0, 152.0, 27.0, 17.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-30",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0. 1. 1 127",
													"numinlets" : 6,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 122.0, 274.0, 87.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-31",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0. 1. 1 127",
													"numinlets" : 6,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 291.0, 274.0, 88.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-32",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "scale radius (fraction of sigma!) to pixels",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 389.0, 275.0, 105.0, 27.0 ],
													"id" : "obj-33",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0.",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 9.0, 331.0, 41.0, 17.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-34",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 104.0, 553.0, 29.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-35",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "hidesprite zone",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 9.0, 378.0, 78.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-36",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontname" : "Arial",
													"patching_rect" : [ 9.0, 355.0, 41.0, 17.0 ],
													"outlettype" : [ "bang", "bang", "" ],
													"id" : "obj-37",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_radius",
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 9.0, 186.0, 84.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-38",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 123.0, 522.0, 150.320786, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 123.0, 522.0, 150.320786, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-39",
													"#init" : "",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_drawsprite zone (int $1) (int $2)" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_lcd-pos",
													"numinlets" : 0,
													"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 123.0, 489.0, 110.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-40",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"linecount" : 3,
													"presentation_linecount" : 3,
													"#untuple" : 0,
													"numinlets" : 2,
													"presentation_rect" : [ 122.0, 329.0, 249.0, 41.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 122.0, 329.0, 249.0, 41.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-41",
													"#init" : "",
													"#triggerall" : 1,
													"fontsize" : 9.0,
													"text" : [ "_recordsprite,", "_frameoval (1 - $1) (1 - $2) ($1 + 1) ($2 + 1) 0 255 0,", "_closesprite zone" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 9.0, 587.0, 15.0, 15.0 ],
													"id" : "obj-42",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 3,
													"presentation_rect" : [ 291.0, 223.0, 68.648438, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 291.0, 223.0, 68.648438, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-43",
													"#init" : "0 0 (new fmat 1 1)",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_($1 * $3[$2])" ],
													"numins" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ftm.mess",
													"#untuple" : 0,
													"numinlets" : 3,
													"presentation_rect" : [ 122.0, 223.0, 68.648438, 17.0 ],
													"#loadbang" : 0,
													"numoutlets" : 1,
													"ftm_scope" : 0,
													"fontname" : "Geneva",
													"patching_rect" : [ 122.0, 223.0, 68.648438, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-44",
													"#init" : "0 0 (new fmat 1 1)",
													"#triggerall" : 0,
													"fontsize" : 9.0,
													"text" : [ "_($1 * $3[$2])" ],
													"numins" : 3
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-43", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-44", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-21", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-44", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 286.0, 478.0, 113.0, 478.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 113.0, 197.0, 113.0, 197.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-32", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-31", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-41", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-43", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-20", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-31", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-32", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-7", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-35", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [ 131.5, 404.0, 18.0, 404.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_draw-selected-unit",
									"numinlets" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 266.0, 138.0, 124.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-77",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t get-unitdata clear b",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Arial",
									"patching_rect" : [ 143.0, 204.0, 109.0, 17.0 ],
									"outlettype" : [ "", "clear", "bang" ],
									"id" : "obj-78",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_to-lcd",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 143.0, 448.0, 64.0, 17.0 ],
									"id" : "obj-79",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "catart.data.proxy #1",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 143.0, 250.0, 125.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-80",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "unit index",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 45.0, 183.0, 54.0, 17.0 ],
									"id" : "obj-81",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bang to redraw all units",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 163.0, 183.0, 117.0, 17.0 ],
									"id" : "obj-82",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p draw-all",
									"numinlets" : 5,
									"color" : [ 0.380392, 0.611765, 0.611765, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 143.0, 387.0, 95.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-83",
									"fontsize" : 9.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 238.0, 334.0, 460.0, 399.0 ],
										"bglocked" : 0,
										"defrect" : [ 238.0, 334.0, 460.0, 399.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 388.0, 52.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "corpus change",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 388.0, 22.0, 56.0, 27.0 ],
													"id" : "obj-2",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ftm.iter @mode row",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 232.0, 176.0, 101.0, 17.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-3",
													"fontsize" : 9.0,
													"saved_object_attributes" : 													{
														"ftm_scope" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p matmap-mapping",
													"numinlets" : 2,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 312.0, 94.0, 94.0, 17.0 ],
													"id" : "obj-4",
													"fontsize" : 9.0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 164.0, 384.0, 566.0, 414.0 ],
														"bglocked" : 0,
														"defrect" : [ 164.0, 384.0, 566.0, 414.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "toggle",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 209.0, 36.0, 15.0, 15.0 ],
																	"outlettype" : [ "int" ],
																	"id" : "obj-1"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 1 0",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 289.0, 66.0, 47.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-2",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 1 0",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 216.0, 66.0, 47.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-3",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "mnm.list2vec",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 14.0, 237.0, 71.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-4",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "mouse coordinates in pixels",
																	"linecount" : 2,
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 14.0, 20.0, 97.0, 27.0 ],
																	"id" : "obj-5",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r #0_lcd-pos",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 14.0, 53.0, 81.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-6",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "look up original coordiantes in pixels",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 147.0, 216.0, 177.0, 17.0 ],
																	"id" : "obj-7",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 0.",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 88.0, 216.0, 53.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-8",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "mnm.list2vec",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 88.0, 238.0, 71.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-9",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 398.0, 154.0, 50.0, 17.0 ],
																	"outlettype" : [ "bang" ],
																	"id" : "obj-10",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "process",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 400.0, 179.0, 50.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-11",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "mnm.matmap",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"patching_rect" : [ 14.0, 321.0, 69.0, 17.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-12",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "current unit frow",
																	"linecount" : 2,
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 130.0, 21.0, 56.0, 27.0 ],
																	"id" : "obj-13",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "toggle",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 266.0, 157.0, 15.0, 15.0 ],
																	"outlettype" : [ "int" ],
																	"id" : "obj-14"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 310.0, 124.0, 16.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-15",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "1",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 229.0, 120.0, 16.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-16",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 100",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"patching_rect" : [ 311.0, 92.0, 44.0, 17.0 ],
																	"outlettype" : [ "bang", "" ],
																	"id" : "obj-17",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "keyup",
																	"numinlets" : 0,
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"patching_rect" : [ 311.0, 38.0, 40.0, 17.0 ],
																	"outlettype" : [ "int", "int", "int", "int" ],
																	"id" : "obj-18",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 173.0, 50.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-19",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p unit-to-pixels",
																	"numinlets" : 2,
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"patching_rect" : [ 88.0, 192.0, 81.0, 17.0 ],
																	"outlettype" : [ "", "", "", "" ],
																	"id" : "obj-20",
																	"fontsize" : 9.0,
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 33.0, 440.0, 527.0, 332.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 33.0, 440.0, 527.0, 332.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 446.0, 201.0, 15.0, 15.0 ],
																					"id" : "obj-1",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 286.0, 201.0, 15.0, 15.0 ],
																					"id" : "obj-2",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "descriptor mean value frow to convert to pixel position",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 111.0, 27.0, 260.0, 17.0 ],
																					"id" : "obj-3",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "unitstat matrix in",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 412.0, 26.0, 100.0, 17.0 ],
																					"id" : "obj-4",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "catart.display.axisrecv #0-y",
																					"numinlets" : 1,
																					"numoutlets" : 4,
																					"fontname" : "Arial",
																					"patching_rect" : [ 224.0, 65.0, 152.0, 17.0 ],
																					"outlettype" : [ "bang", "int", "", "" ],
																					"id" : "obj-5",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "catart.display.axisrecv #0-x",
																					"numinlets" : 1,
																					"numoutlets" : 4,
																					"fontname" : "Arial",
																					"patching_rect" : [ 64.0, 65.0, 152.0, 17.0 ],
																					"outlettype" : [ "bang", "int", "", "" ],
																					"id" : "obj-6",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "r #0_lcd-size",
																					"numinlets" : 0,
																					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ -16.0, 64.0, 73.0, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-7",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 2",
																					"numinlets" : 2,
																					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ -16.0, 88.0, 27.0, 17.0 ],
																					"outlettype" : [ "int" ],
																					"id" : "obj-8",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "scale 0. 1. 1 127",
																					"numinlets" : 6,
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 89.0, 143.0, 124.0, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-9",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "scale 1. 0. 1 127",
																					"numinlets" : 6,
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 249.0, 143.0, 124.0, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-10",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"#untuple" : 0,
																					"numinlets" : 2,
																					"presentation_rect" : [ 89.0, 107.0, 38.036137, 17.0 ],
																					"#loadbang" : 0,
																					"numoutlets" : 1,
																					"ftm_scope" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 89.0, 107.0, 38.036137, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-11",
																					"#init" : "",
																					"#triggerall" : 0,
																					"fontsize" : 9.0,
																					"text" : [ "_$1[$2]" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"#untuple" : 0,
																					"numinlets" : 2,
																					"presentation_rect" : [ 249.0, 107.0, 38.036137, 17.0 ],
																					"#loadbang" : 0,
																					"numoutlets" : 1,
																					"ftm_scope" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 249.0, 107.0, 38.036137, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-12",
																					"#init" : "",
																					"#triggerall" : 0,
																					"fontsize" : 9.0,
																					"text" : [ "_$1[$2]" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "scale descriptors to pixels",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 102.0, 167.0, 199.0, 17.0 ],
																					"id" : "obj-13",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 89.0, 26.0, 15.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-14",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 388.0, 26.0, 15.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-15",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "s #0_redraw",
																					"numinlets" : 1,
																					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 142.0, 245.0, 73.0, 17.0 ],
																					"id" : "obj-16",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 249.0, 201.0, 15.0, 15.0 ],
																					"id" : "obj-17",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 89.0, 201.0, 15.0, 15.0 ],
																					"id" : "obj-18",
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-10", 0 ],
																					"destination" : [ "obj-17", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-12", 0 ],
																					"destination" : [ "obj-10", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-14", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-14", 0 ],
																					"destination" : [ "obj-12", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 3 ],
																					"destination" : [ "obj-10", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 2 ],
																					"destination" : [ "obj-10", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 1 ],
																					"destination" : [ "obj-12", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-16", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 233.5, 224.0, 151.5, 224.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 1 ],
																					"destination" : [ "obj-11", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-16", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 73.5, 224.0, 151.5, 224.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 3 ],
																					"destination" : [ "obj-9", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 2 ],
																					"destination" : [ "obj-9", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-10", 4 ],
																					"hidden" : 0,
																					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																					"midpoints" : [ -6.5, 129.0, 342.5, 129.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-9", 4 ],
																					"hidden" : 0,
																					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																					"midpoints" : [ -6.5, 129.0, 182.5, 129.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 0 ],
																					"destination" : [ "obj-18", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"fontname" : "Arial",
																		"default_fontsize" : 12.0,
																		"globalpatchername" : "",
																		"fontface" : 0,
																		"fontsize" : 12.0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 100 13",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"fontname" : "Arial",
																	"patching_rect" : [ 229.0, 91.0, 59.0, 17.0 ],
																	"outlettype" : [ "bang", "bang", "" ],
																	"id" : "obj-21",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"patching_rect" : [ 272.0, 36.0, 35.0, 17.0 ],
																	"outlettype" : [ "int", "bang" ],
																	"id" : "obj-22",
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"triscale" : 0.9,
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "key",
																	"numinlets" : 0,
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"patching_rect" : [ 229.0, 35.0, 40.0, 17.0 ],
																	"outlettype" : [ "int", "int", "int", "int" ],
																	"id" : "obj-23",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "ftm.value",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 88.0, 165.0, 53.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-24",
																	"fontsize" : 9.0,
																	"saved_object_attributes" : 																	{
																		"ftm_scope" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 131.0, 50.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-25",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "add new and original unit coordinates to examples for matmap, process",
																	"linecount" : 2,
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 32.0, 292.0, 175.0, 27.0 ],
																	"id" : "obj-26",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "d to define and move points",
																	"linecount" : 2,
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 247.0, 117.0, 73.0, 27.0 ],
																	"id" : "obj-27",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "return-key to process and apply",
																	"linecount" : 2,
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 398.0, 125.0, 100.0, 27.0 ],
																	"id" : "obj-28",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 3,
																	"presentation_rect" : [ 14.0, 278.0, 71.689453, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 14.0, 278.0, 71.689453, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-29",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_example $2 $3" ],
																	"numins" : 3
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-2", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 1 ],
																	"destination" : [ "obj-8", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-3", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-24", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-29", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-29", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 328.0, 52.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "current unit frow",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 328.0, 22.0, 56.0, 27.0 ],
													"id" : "obj-6",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_redraw",
													"numinlets" : 1,
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 1.0, 334.0, 73.0, 17.0 ],
													"id" : "obj-7",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 1.0, 178.0, 15.0, 15.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-8"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_label-group",
													"numinlets" : 0,
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 1.0, 136.0, 91.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-9",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 1.0, 205.0, 29.0, 17.0 ],
													"outlettype" : [ "bang", "int" ],
													"id" : "obj-10",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p group-labels",
													"numinlets" : 4,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 20.0, 283.0, 80.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"fontsize" : 9.0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 52.0, 259.0, 553.0, 596.0 ],
														"bglocked" : 0,
														"defrect" : [ 52.0, 259.0, 553.0, 596.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 518.0, 40.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-1",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "corpus change",
																	"linecount" : 2,
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 518.0, 10.0, 56.0, 27.0 ],
																	"id" : "obj-2",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "print",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 469.0, 388.0, 32.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-3",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "print",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 345.0, 391.0, 32.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-4",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 59.0, 408.0, 66.125977, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 59.0, 408.0, 66.125977, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-5",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_$group[$1 1]" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 148.0, 409.0, 66.125977, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 148.0, 409.0, 66.125977, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-6",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_$group[$1 0]" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "ftm.iter @mode row",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"patching_rect" : [ 15.0, 359.0, 101.0, 17.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-7",
																	"fontsize" : 9.0,
																	"saved_object_attributes" : 																	{
																		"ftm_scope" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 15.0, 328.0, 63.744144, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 15.0, 328.0, 63.744144, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-8",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_$groupcolour" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 161.0, 380.0, 144.489243, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 161.0, 380.0, 144.489243, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-9",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_append $1 ((new fmat) set $2)" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 354.0, 227.0, 73.113281, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 354.0, 227.0, 73.113281, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-10",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_rows ($1 rows)" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 6,
																	"presentation_rect" : [ 55.0, 515.0, 252.75293, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 55.0, 515.0, 252.75293, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-11",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_frgb $*4 $*5 $*6, moveto ($*2 + 2) ($*3 - 2), write $1" ],
																	"numins" : 6
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "fmat 0 3",
																	"numinlets" : 1,
																	"presentation_rect" : [ 374.0, 410.0, 109.491707, 18.0 ],
																	"scope" : 0,
																	"numoutlets" : 2,
																	"ftm_scope" : 0,
																	"persistence" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 374.0, 410.0, 109.491707, 18.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-12",
																	"description" : "fmat 0 3",
																	"name" : "groupcolour",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "mat 0 2",
																	"numinlets" : 1,
																	"presentation_rect" : [ 283.0, 409.0, 79.323242, 18.0 ],
																	"scope" : 0,
																	"numoutlets" : 2,
																	"ftm_scope" : 0,
																	"persistence" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 283.0, 409.0, 79.323242, 18.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-13",
																	"description" : "mat 0 2",
																	"name" : "group",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "compute and store group mean labels",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 184.0, 52.0, 182.0, 17.0 ],
																	"id" : "obj-14",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "todo: for all int values between min and max... (limited sense, only for relid or int. midi note number)",
																	"linecount" : 3,
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 298.0, 76.0, 167.0, 38.0 ],
																	"id" : "obj-15",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 3,
																	"presentation_rect" : [ 368.0, 60.0, 87.061516, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 368.0, 60.0, 87.061516, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-16",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_(if ($2 == int) $3)" ],
																	"numins" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "symbol table",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 171.0, 217.0, 68.0, 17.0 ],
																	"id" : "obj-17",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "only if there are any units in this group",
																	"linecount" : 2,
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 172.0, 351.0, 105.0, 27.0 ],
																	"id" : "obj-18",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 161.0, 332.0, 116.337891, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 161.0, 332.0, 116.337891, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-19",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_(if ($2[num][0] > 0) $1)" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 15.0, 67.0, 15.0, 15.0 ],
																	"outlettype" : [ "bang" ],
																	"id" : "obj-20"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 39.0, 70.0, 20.0, 17.0 ],
																	"outlettype" : [ "bang" ],
																	"id" : "obj-21",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "colour descriptor",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 162.0, 22.0, 88.0, 17.0 ],
																	"id" : "obj-22",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 161.0, 40.0, 15.0, 15.0 ],
																	"outlettype" : [ "int" ],
																	"id" : "obj-23",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 3,
																	"presentation_rect" : [ 161.0, 199.0, 181.561523, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 161.0, 199.0, 181.561523, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-24",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_(if (($2 == symbol) || ($2 == bool)) $3)" ],
																	"numins" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p group-colour",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 392.0, 331.0, 76.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-25",
																	"fontsize" : 9.0,
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 402.0, 628.0, 444.0, 324.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 402.0, 628.0, 444.0, 324.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "unitstat matrix in",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 101.0, 40.0, 100.0, 17.0 ],
																					"id" : "obj-1",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 81.0, 40.0, 15.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-2",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "symbol index",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 50.0, 26.0, 116.0, 17.0 ],
																					"id" : "obj-3",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "scale 0. 1. 0. 2.",
																					"numinlets" : 6,
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 50.0, 144.0, 238.0, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-4",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "catart.display.axisrecv #0-c",
																					"numinlets" : 1,
																					"numoutlets" : 4,
																					"fontname" : "Arial",
																					"patching_rect" : [ 81.0, 61.0, 152.0, 17.0 ],
																					"outlettype" : [ "bang", "int", "", "" ],
																					"id" : "obj-5",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "descriptor min and max",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 174.0, 83.0, 116.0, 17.0 ],
																					"id" : "obj-6",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"#untuple" : 0,
																					"numinlets" : 2,
																					"presentation_rect" : [ 50.0, 185.0, 304.995148, 17.0 ],
																					"#loadbang" : 0,
																					"numoutlets" : 1,
																					"ftm_scope" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 50.0, 185.0, 304.995148, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-7",
																					"#init" : "",
																					"#triggerall" : 0,
																					"fontsize" : 9.0,
																					"text" : [ "_($colormap iget $1 0) ($colormap iget $1 1) ($colormap iget $1 2)" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"#untuple" : 0,
																					"numinlets" : 2,
																					"presentation_rect" : [ 230.0, 120.0, 109.609863, 17.0 ],
																					"#loadbang" : 1,
																					"numoutlets" : 1,
																					"ftm_scope" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 230.0, 120.0, 109.609863, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-8",
																					"#init" : "",
																					"#triggerall" : 0,
																					"fontsize" : 9.0,
																					"text" : [ "_(($colormap rows) - 2.)" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 40.0, 15.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-9",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 50.0, 216.0, 15.0, 15.0 ],
																					"id" : "obj-10",
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-7", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 3 ],
																					"destination" : [ "obj-4", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 2 ],
																					"destination" : [ "obj-4", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-10", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-4", 4 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"fontname" : "Arial",
																		"default_fontsize" : 12.0,
																		"globalpatchername" : "",
																		"fontface" : 0,
																		"fontsize" : 12.0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "symbol name",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 171.0, 261.0, 68.0, 17.0 ],
																	"id" : "obj-26",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "symbol index",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 297.0, 262.0, 69.0, 17.0 ],
																	"id" : "obj-27",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 290.0, 332.0, 49.497074, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 290.0, 332.0, 49.497074, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-28",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_$1[mean]" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 290.0, 283.0, 120.714851, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 290.0, 283.0, 120.714851, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-29",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_get-stats-where $2 == $1" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "catart.data.proxy #1",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"patching_rect" : [ 290.0, 304.0, 137.0, 17.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-30",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "ftm.iter @mode row",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"patching_rect" : [ 161.0, 243.0, 139.0, 17.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-31",
																	"fontsize" : 9.0,
																	"saved_object_attributes" : 																	{
																		"ftm_scope" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 161.0, 150.0, 106.234863, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 161.0, 150.0, 106.234863, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-32",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_get-descriptor-type $1" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "catart.data.proxy #1",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"patching_rect" : [ 161.0, 171.0, 137.0, 17.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-33",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "unitstat matrix in",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 402.0, 22.0, 100.0, 17.0 ],
																	"id" : "obj-34",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 458.0, 40.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-35",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p unit-to-pixels",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"patching_rect" : [ 59.0, 437.0, 81.0, 17.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-36",
																	"fontsize" : 9.0,
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 40.0, 464.0, 527.0, 332.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 40.0, 464.0, 527.0, 332.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "descriptor mean value frow to convert to pixel position",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 177.0, 27.0, 260.0, 17.0 ],
																					"id" : "obj-1",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "unitstat matrix in",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 478.0, 26.0, 100.0, 17.0 ],
																					"id" : "obj-2",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "catart.display.axisrecv #0-y",
																					"numinlets" : 1,
																					"numoutlets" : 4,
																					"fontname" : "Arial",
																					"patching_rect" : [ 290.0, 65.0, 152.0, 17.0 ],
																					"outlettype" : [ "bang", "int", "", "" ],
																					"id" : "obj-3",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "catart.display.axisrecv #0-x",
																					"numinlets" : 1,
																					"numoutlets" : 4,
																					"fontname" : "Arial",
																					"patching_rect" : [ 130.0, 65.0, 152.0, 17.0 ],
																					"outlettype" : [ "bang", "int", "", "" ],
																					"id" : "obj-4",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "r #0_lcd-size",
																					"numinlets" : 0,
																					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 50.0, 64.0, 73.0, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-5",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 2",
																					"numinlets" : 2,
																					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 50.0, 88.0, 27.0, 17.0 ],
																					"outlettype" : [ "int" ],
																					"id" : "obj-6",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "scale 0. 1. 1 127",
																					"numinlets" : 6,
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 155.0, 143.0, 124.0, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-7",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "scale 1. 0. 1 127",
																					"numinlets" : 6,
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 315.0, 143.0, 124.0, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-8",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"#untuple" : 0,
																					"numinlets" : 2,
																					"presentation_rect" : [ 155.0, 107.0, 38.036137, 17.0 ],
																					"#loadbang" : 0,
																					"numoutlets" : 1,
																					"ftm_scope" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 155.0, 107.0, 38.036137, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-9",
																					"#init" : "",
																					"#triggerall" : 0,
																					"fontsize" : 9.0,
																					"text" : [ "_$1[$2]" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"#untuple" : 0,
																					"numinlets" : 2,
																					"presentation_rect" : [ 315.0, 107.0, 38.036137, 17.0 ],
																					"#loadbang" : 0,
																					"numoutlets" : 1,
																					"ftm_scope" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 315.0, 107.0, 38.036137, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-10",
																					"#init" : "",
																					"#triggerall" : 0,
																					"fontsize" : 9.0,
																					"text" : [ "_$1[$2]" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "scale descriptors to pixels",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 168.0, 167.0, 199.0, 17.0 ],
																					"id" : "obj-11",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 155.0, 26.0, 15.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-12",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 454.0, 26.0, 15.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-13",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "s #0_redraw",
																					"numinlets" : 1,
																					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 208.0, 245.0, 73.0, 17.0 ],
																					"id" : "obj-14",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 315.0, 201.0, 15.0, 15.0 ],
																					"id" : "obj-15",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 155.0, 201.0, 15.0, 15.0 ],
																					"id" : "obj-16",
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-10", 0 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-12", 0 ],
																					"destination" : [ "obj-10", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-12", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-13", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-13", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 1 ],
																					"destination" : [ "obj-10", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-14", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 299.5, 224.0, 217.5, 224.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 3 ],
																					"destination" : [ "obj-8", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 2 ],
																					"destination" : [ "obj-8", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-14", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 139.5, 224.0, 217.5, 224.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 3 ],
																					"destination" : [ "obj-7", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 2 ],
																					"destination" : [ "obj-7", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 1 ],
																					"destination" : [ "obj-9", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-7", 4 ],
																					"hidden" : 0,
																					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																					"midpoints" : [ 59.5, 129.0, 248.5, 129.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-8", 4 ],
																					"hidden" : 0,
																					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																					"midpoints" : [ 59.5, 129.0, 408.5, 129.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-16", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 0 ],
																					"destination" : [ "obj-7", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"fontname" : "Arial",
																		"default_fontsize" : 12.0,
																		"globalpatchername" : "",
																		"fontface" : 0,
																		"fontsize" : 12.0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 15.0, 520.0, 15.0, 15.0 ],
																	"id" : "obj-37",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "scaled world coordinate data",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 14.0, 23.0, 139.0, 17.0 ],
																	"id" : "obj-38",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 15.0, 39.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-39",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "if symbol, bool, or class, iterate and draw label at mean position",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 172.0, 131.0, 302.0, 17.0 ],
																	"id" : "obj-40",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 4,
																	"presentation_rect" : [ 15.0, 480.0, 213.615234, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 15.0, 480.0, 213.615234, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-41",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_frgb $*1, moveto ($*2 + 2) ($*3 - 2), write $4" ],
																	"numins" : 4
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 392.0, 381.0, 57.23584, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 392.0, 381.0, 57.23584, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-42",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_append $*2" ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-42", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-29", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-42", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-28", 0 ],
																	"destination" : [ "obj-9", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-19", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-28", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 1 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 290.5, 274.0, 401.5, 274.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 1 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-25", 1 ],
																	"hidden" : 0,
																	"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-36", 1 ],
																	"hidden" : 0,
																	"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
																	"midpoints" : [ 467.0, 432.0, 130.5, 432.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 1 ],
																	"destination" : [ "obj-41", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-41", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-39", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-41", 0 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-42", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-41", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-41", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 1 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 1 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 20.0, 251.0, 29.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-12",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ftm.iter @mode row",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 190.0, 136.0, 171.0, 17.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-13",
													"fontsize" : 9.0,
													"saved_object_attributes" : 													{
														"ftm_scope" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p model-to-world",
													"numinlets" : 4,
													"numoutlets" : 3,
													"fontname" : "Arial",
													"patching_rect" : [ 190.0, 96.0, 95.0, 17.0 ],
													"outlettype" : [ "", "", "int" ],
													"id" : "obj-14",
													"fontsize" : 9.0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 20.0, 233.0, 775.0, 516.0 ],
														"bglocked" : 0,
														"defrect" : [ 20.0, 233.0, 775.0, 516.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 438.0, 39.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-1",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "corpus change",
																	"linecount" : 2,
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 438.0, 9.0, 56.0, 27.0 ],
																	"id" : "obj-2",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "0.000001",
																	"numinlets" : 1,
																	"presentation_rect" : [ 506.0, 32.0, 79.121086, 18.0 ],
																	"scope" : 0,
																	"numoutlets" : 2,
																	"ftm_scope" : 0,
																	"persistence" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 506.0, 32.0, 79.121086, 18.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-3",
																	"description" : "0.000001",
																	"name" : "eps",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "points only while interpolating",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 44.0, 439.0, 151.0, 17.0 ],
																	"id" : "obj-4",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 24.0, 437.0, 15.0, 15.0 ],
																	"id" : "obj-5",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p interpolate",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"patching_rect" : [ 8.0, 287.0, 119.0, 17.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-6",
																	"fontsize" : 9.0,
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 282.0, 374.0, 498.0, 410.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 282.0, 374.0, 498.0, 410.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "toggle",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 105.0, 21.0, 15.0, 15.0 ],
																					"outlettype" : [ "int" ],
																					"id" : "obj-1"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "gate 1 1",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 105.0, 47.0, 47.0, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-2",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t f f f",
																					"numinlets" : 1,
																					"numoutlets" : 3,
																					"fontname" : "Arial",
																					"patching_rect" : [ 315.0, 45.0, 85.0, 17.0 ],
																					"outlettype" : [ "float", "float", "float" ],
																					"id" : "obj-3",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "> 0.",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 389.0, 70.0, 35.0, 17.0 ],
																					"outlettype" : [ "int" ],
																					"id" : "obj-4",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"#untuple" : 0,
																					"numinlets" : 2,
																					"presentation_rect" : [ 104.0, 203.0, 25.445801, 17.0 ],
																					"#loadbang" : 0,
																					"numoutlets" : 1,
																					"ftm_scope" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 104.0, 203.0, 25.445801, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-5",
																					"#init" : "0 1000",
																					"#triggerall" : 0,
																					"fontsize" : 9.0,
																					"text" : [ "_stop" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "bang: final drawing with labels",
																					"linecount" : 2,
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 66.0, 288.0, 93.0, 27.0 ],
																					"id" : "obj-6",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "ftm.schedule 1000",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 78.0, 173.0, 94.0, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-7",
																					"fontsize" : 9.0,
																					"saved_object_attributes" : 																					{
																						"ftm_scope" : 0
																					}

																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "r #0_interp-grain",
																					"numinlets" : 0,
																					"color" : [ 1.0, 0.541176, 0.843137, 1.0 ],
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 307.0, 143.0, 89.0, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-8",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "r #0_interp-time",
																					"numinlets" : 0,
																					"color" : [ 1.0, 0.541176, 0.843137, 1.0 ],
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 315.0, 21.0, 89.0, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-9",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "s #0_to-lcd",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 218.0, 328.0, 64.0, 17.0 ],
																					"id" : "obj-10",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t l clear",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"fontname" : "Arial",
																					"patching_rect" : [ 178.0, 267.0, 50.0, 17.0 ],
																					"outlettype" : [ "", "clear" ],
																					"id" : "obj-11",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"#untuple" : 0,
																					"numinlets" : 2,
																					"presentation_rect" : [ 178.0, 175.0, 44.184078, 17.0 ],
																					"#loadbang" : 0,
																					"numoutlets" : 1,
																					"ftm_scope" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 178.0, 175.0, 44.184078, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-12",
																					"#init" : "0 1000",
																					"#triggerall" : 0,
																					"fontsize" : 9.0,
																					"text" : [ "_0., 1. $2" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "line 0. 40",
																					"numinlets" : 3,
																					"numoutlets" : 2,
																					"fontname" : "Arial",
																					"patching_rect" : [ 178.0, 201.0, 68.0, 17.0 ],
																					"outlettype" : [ "", "" ],
																					"id" : "obj-13",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"#untuple" : 0,
																					"numinlets" : 2,
																					"presentation_rect" : [ 198.0, 93.0, 79.177742, 17.0 ],
																					"#loadbang" : 0,
																					"numoutlets" : 1,
																					"ftm_scope" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 198.0, 93.0, 79.177742, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-14",
																					"#init" : "",
																					"#triggerall" : 0,
																					"fontsize" : 9.0,
																					"text" : [ "_set $world, bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.object",
																					"text" : "fmat",
																					"numinlets" : 1,
																					"presentation_rect" : [ 198.0, 116.0, 52.731934, 18.0 ],
																					"scope" : 0,
																					"numoutlets" : 2,
																					"ftm_scope" : 0,
																					"persistence" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 198.0, 116.0, 52.731934, 18.0 ],
																					"outlettype" : [ "", "" ],
																					"id" : "obj-15",
																					"description" : "fmat",
																					"name" : "old",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "ftm.inter",
																					"numinlets" : 3,
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 178.0, 240.0, 50.0, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-16",
																					"fontsize" : 9.0,
																					"saved_object_attributes" : 																					{
																						"ftm_scope" : 0
																					}

																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "output for animated drawing (without labels)",
																					"linecount" : 2,
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 185.0, 289.0, 123.0, 27.0 ],
																					"id" : "obj-17",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"#untuple" : 0,
																					"numinlets" : 2,
																					"presentation_rect" : [ 276.0, 201.0, 35.48291, 17.0 ],
																					"#loadbang" : 0,
																					"numoutlets" : 1,
																					"ftm_scope" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 276.0, 201.0, 35.48291, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-18",
																					"#init" : "",
																					"#triggerall" : 0,
																					"fontsize" : 9.0,
																					"text" : [ "_$world" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "1",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 76.0, 139.0, 16.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-19",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t l b b",
																					"numinlets" : 1,
																					"numoutlets" : 3,
																					"fontname" : "Arial",
																					"patching_rect" : [ 100.0, 139.0, 166.0, 17.0 ],
																					"outlettype" : [ "", "bang", "bang" ],
																					"id" : "obj-20",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 178.0, 315.0, 15.0, 15.0 ],
																					"id" : "obj-21",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "interpolate between old and new coordinates",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 242.0, 241.0, 209.0, 17.0 ],
																					"id" : "obj-22",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "start line",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 247.0, 177.0, 123.0, 17.0 ],
																					"id" : "obj-23",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "save current coordinates, stop previous line",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 261.0, 119.0, 217.0, 17.0 ],
																					"id" : "obj-24",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "gate 2 1",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"fontname" : "Arial",
																					"patching_rect" : [ 50.0, 96.0, 47.0, 17.0 ],
																					"outlettype" : [ "", "" ],
																					"id" : "obj-25",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t 2 b",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"fontname" : "Arial",
																					"patching_rect" : [ 105.0, 71.0, 31.0, 17.0 ],
																					"outlettype" : [ "int", "bang" ],
																					"id" : "obj-26",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "descriptor choice has changed: next redraw interpolates",
																					"linecount" : 2,
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 162.0, 20.0, 147.0, 27.0 ],
																					"id" : "obj-27",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 87.0, 21.0, 15.0, 15.0 ],
																					"outlettype" : [ "bang" ],
																					"id" : "obj-28",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 142.0, 21.0, 15.0, 15.0 ],
																					"outlettype" : [ "int" ],
																					"id" : "obj-29",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 50.0, 314.0, 15.0, 15.0 ],
																					"id" : "obj-30",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "redraw",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 38.0, 21.0, 43.0, 17.0 ],
																					"id" : "obj-31",
																					"fontsize" : 9.0
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-2", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 1 ],
																					"destination" : [ "obj-10", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-21", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-12", 0 ],
																					"destination" : [ "obj-13", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-13", 0 ],
																					"destination" : [ "obj-16", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-14", 0 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-16", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-16", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-18", 0 ],
																					"destination" : [ "obj-16", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-19", 0 ],
																					"destination" : [ "obj-25", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 85.5, 163.0, 33.0, 163.0, 33.0, 81.0, 59.5, 81.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-26", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-20", 1 ],
																					"destination" : [ "obj-12", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-20", 2 ],
																					"destination" : [ "obj-18", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-20", 0 ],
																					"destination" : [ "obj-7", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-25", 1 ],
																					"destination" : [ "obj-19", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-25", 1 ],
																					"destination" : [ "obj-20", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-25", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-26", 1 ],
																					"destination" : [ "obj-14", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-26", 0 ],
																					"destination" : [ "obj-25", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-28", 0 ],
																					"destination" : [ "obj-25", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-29", 0 ],
																					"destination" : [ "obj-2", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 1 ],
																					"destination" : [ "obj-12", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 2 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-7", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-13", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-13", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"fontname" : "Arial",
																		"default_fontsize" : 12.0,
																		"globalpatchername" : "",
																		"fontface" : 0,
																		"fontsize" : 12.0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "colour",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 57.0, 418.0, 38.0, 17.0 ],
																	"id" : "obj-7",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 37.0, 417.0, 15.0, 15.0 ],
																	"id" : "obj-8",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "fvec $world col 7",
																	"numinlets" : 1,
																	"presentation_rect" : [ 272.0, 429.0, 102.464851, 18.0 ],
																	"scope" : 0,
																	"numoutlets" : 2,
																	"ftm_scope" : 0,
																	"persistence" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 272.0, 429.0, 102.464851, 18.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-9",
																	"description" : "fvec $world col 7",
																	"name" : "lb",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "fvec $world col 6",
																	"numinlets" : 1,
																	"presentation_rect" : [ 272.0, 409.0, 102.464851, 18.0 ],
																	"scope" : 0,
																	"numoutlets" : 2,
																	"ftm_scope" : 0,
																	"persistence" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 272.0, 409.0, 102.464851, 18.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-10",
																	"description" : "fvec $world col 6",
																	"name" : "lg",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "fvec $world col 5",
																	"numinlets" : 1,
																	"presentation_rect" : [ 272.0, 389.0, 100.452156, 18.0 ],
																	"scope" : 0,
																	"numoutlets" : 2,
																	"ftm_scope" : 0,
																	"persistence" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 272.0, 389.0, 100.452156, 18.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-11",
																	"description" : "fvec $world col 5",
																	"name" : "lr",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "print",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 156.0, 347.0, 32.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-12",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "labels per unit index",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 148.0, 386.0, 101.0, 17.0 ],
																	"id" : "obj-13",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "mat 0 1",
																	"numinlets" : 1,
																	"presentation_rect" : [ 148.0, 366.0, 103.59864, 18.0 ],
																	"scope" : 0,
																	"numoutlets" : 2,
																	"ftm_scope" : 0,
																	"persistence" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 148.0, 366.0, 103.59864, 18.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-14",
																	"description" : "mat 0 1",
																	"name" : "labelstrings",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p make-labels",
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 24.0, 253.0, 85.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-15",
																	"fontsize" : 9.0,
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 541.0, 463.0, 384.0, 395.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 541.0, 463.0, 384.0, 395.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 301.0, 21.0, 15.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-1",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "corpus change",
																					"linecount" : 2,
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 301.0, -9.0, 56.0, 27.0 ],
																					"id" : "obj-2",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "rebuild symbol list only when descriptor choice changed",
																					"linecount" : 2,
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 153.0, 69.0, 146.0, 27.0 ],
																					"id" : "obj-3",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b b clear",
																					"numinlets" : 1,
																					"numoutlets" : 3,
																					"fontname" : "Arial",
																					"patching_rect" : [ 70.0, 69.0, 56.0, 17.0 ],
																					"outlettype" : [ "bang", "bang", "clear" ],
																					"id" : "obj-4",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "ftm.value",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 5.0, 102.0, 53.0, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-5",
																					"fontsize" : 9.0,
																					"saved_object_attributes" : 																					{
																						"ftm_scope" : 0
																					}

																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "ftm.iter",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"fontname" : "Arial",
																					"patching_rect" : [ 5.0, 167.0, 46.0, 17.0 ],
																					"outlettype" : [ "", "" ],
																					"id" : "obj-6",
																					"fontsize" : 9.0,
																					"saved_object_attributes" : 																					{
																						"ftm_scope" : 0
																					}

																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "unitstat matrix in",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 171.0, 21.0, 100.0, 17.0 ],
																					"id" : "obj-7",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "f",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 30.0, 263.0, 21.0, 17.0 ],
																					"outlettype" : [ "float" ],
																					"id" : "obj-8",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 150.0, 21.0, 15.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-9",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"#untuple" : 0,
																					"numinlets" : 2,
																					"presentation_rect" : [ 143.0, 132.0, 106.234863, 17.0 ],
																					"#loadbang" : 0,
																					"numoutlets" : 1,
																					"ftm_scope" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 143.0, 132.0, 106.234863, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-10",
																					"#init" : "",
																					"#triggerall" : 0,
																					"fontsize" : 9.0,
																					"text" : [ "_get-descriptor-type $1" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "catart.data.proxy #1",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"fontname" : "Arial",
																					"patching_rect" : [ 143.0, 153.0, 106.0, 17.0 ],
																					"outlettype" : [ "", "" ],
																					"id" : "obj-11",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.object",
																					"text" : "dict float 1 int 2 symbol 3 bool 4",
																					"numinlets" : 1,
																					"presentation_rect" : [ 178.0, 223.0, 179.026337, 18.0 ],
																					"scope" : 0,
																					"numoutlets" : 2,
																					"ftm_scope" : 0,
																					"persistence" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 178.0, 223.0, 179.026337, 18.0 ],
																					"outlettype" : [ "", "" ],
																					"id" : "obj-12",
																					"description" : "dict float 1 int 2 symbol 3 bool 4",
																					"name" : "dial",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 97.0, 335.0, 15.0, 15.0 ],
																					"id" : "obj-13",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "int",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 71.0, 263.0, 21.0, 17.0 ],
																					"outlettype" : [ "int" ],
																					"id" : "obj-14",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"#untuple" : 0,
																					"numinlets" : 4,
																					"presentation_rect" : [ 112.0, 264.0, 47.036133, 17.0 ],
																					"#loadbang" : 0,
																					"numoutlets" : 1,
																					"ftm_scope" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 112.0, 264.0, 47.036133, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-15",
																					"#init" : "",
																					"#triggerall" : 0,
																					"fontsize" : 9.0,
																					"text" : [ "_$4[$1 0]" ],
																					"numins" : 4
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "gate 4",
																					"numinlets" : 2,
																					"numoutlets" : 4,
																					"fontname" : "Arial",
																					"patching_rect" : [ 30.0, 224.0, 133.0, 17.0 ],
																					"outlettype" : [ "", "", "", "" ],
																					"id" : "obj-16",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "lookup symbol name",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 123.0, 279.0, 99.0, 17.0 ],
																					"id" : "obj-17",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "get type and table, switch gate",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 152.0, 179.0, 152.0, 17.0 ],
																					"id" : "obj-18",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"#untuple" : 0,
																					"numinlets" : 2,
																					"presentation_rect" : [ 143.0, 195.0, 46.662601, 17.0 ],
																					"#loadbang" : 0,
																					"numoutlets" : 1,
																					"ftm_scope" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 143.0, 195.0, 46.662601, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-19",
																					"#init" : "",
																					"#triggerall" : 0,
																					"fontsize" : 9.0,
																					"text" : [ "_$dial[$2]" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "original unitdata fmat in",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 28.0, 22.0, 117.0, 17.0 ],
																					"id" : "obj-20",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 5.0, 21.0, 15.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-21",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"#untuple" : 0,
																					"numinlets" : 2,
																					"presentation_rect" : [ 5.0, 132.0, 119.800781, 17.0 ],
																					"#loadbang" : 0,
																					"numoutlets" : 1,
																					"ftm_scope" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 5.0, 132.0, 119.800781, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-22",
																					"#init" : "",
																					"#triggerall" : 0,
																					"fontsize" : 9.0,
																					"text" : [ "_($labels1 refer $1 col $2)" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "s #0_redraw",
																					"numinlets" : 1,
																					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 70.0, 103.0, 73.0, 17.0 ],
																					"id" : "obj-23",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "catart.display.axisrecv #0-l",
																					"numinlets" : 1,
																					"numoutlets" : 4,
																					"fontname" : "Arial",
																					"patching_rect" : [ 96.0, 44.0, 152.0, 17.0 ],
																					"outlettype" : [ "bang", "int", "", "" ],
																					"id" : "obj-24",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"#untuple" : 0,
																					"numinlets" : 2,
																					"presentation_rect" : [ 71.0, 305.0, 52.665527, 17.0 ],
																					"#loadbang" : 0,
																					"numoutlets" : 1,
																					"ftm_scope" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 71.0, 305.0, 52.665527, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-25",
																					"#init" : "",
																					"#triggerall" : 0,
																					"fontsize" : 9.0,
																					"text" : [ "_append $1" ]
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-10", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-15", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-19", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-14", 0 ],
																					"destination" : [ "obj-25", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-25", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-16", 3 ],
																					"destination" : [ "obj-14", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-16", 1 ],
																					"destination" : [ "obj-14", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-16", 2 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-16", 0 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-19", 0 ],
																					"destination" : [ "obj-16", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-21", 0 ],
																					"destination" : [ "obj-5", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-22", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-24", 1 ],
																					"destination" : [ "obj-10", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-24", 1 ],
																					"destination" : [ "obj-22", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-24", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-25", 0 ],
																					"destination" : [ "obj-13", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 2 ],
																					"destination" : [ "obj-13", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-23", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 1 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-22", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-16", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-25", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 0 ],
																					"destination" : [ "obj-24", 0 ],
																					"hidden" : 0,
																					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
																					"midpoints" : [ 159.0, 43.0, 105.5, 43.0 ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"fontname" : "Arial",
																		"default_fontsize" : 12.0,
																		"globalpatchername" : "",
																		"fontface" : 0,
																		"fontsize" : 12.0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "active descrid",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 253.0, 34.0, 74.0, 17.0 ],
																	"id" : "obj-16",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p make-colours",
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 37.0, 228.0, 88.0, 17.0 ],
																	"outlettype" : [ "int" ],
																	"id" : "obj-17",
																	"fontsize" : 9.0,
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 612.0, 90.0, 813.0, 506.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 612.0, 90.0, 813.0, 506.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "active flag column in unit data",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 567.0, 365.0, 145.0, 17.0 ],
																					"id" : "obj-1",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "active flag inversed and scaled into colourmap",
																					"linecount" : 2,
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 420.0, 354.0, 136.0, 27.0 ],
																					"id" : "obj-2",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "colormap has as last entry the \"inactive\" colour, but doesn't count in length for interpolation",
																					"linecount" : 2,
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 423.0, 121.0, 231.0, 27.0 ],
																					"id" : "obj-3",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 235.0, 430.0, 15.0, 15.0 ],
																					"id" : "obj-4",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "print",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 532.0, 325.0, 28.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-5",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "unitstat",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 197.0, 36.0, 74.0, 17.0 ],
																					"id" : "obj-6",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.object",
																					"text" : "fvec $labelcolour col 0",
																					"numinlets" : 1,
																					"presentation_rect" : [ 565.0, 324.0, 124.934082, 18.0 ],
																					"scope" : 0,
																					"numoutlets" : 2,
																					"ftm_scope" : 0,
																					"persistence" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 565.0, 324.0, 124.934082, 18.0 ],
																					"outlettype" : [ "", "" ],
																					"id" : "obj-7",
																					"description" : "fvec $labelcolour col 0",
																					"name" : "lc",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.object",
																					"text" : "fmat 0 1",
																					"numinlets" : 1,
																					"presentation_rect" : [ 421.0, 325.0, 104.279793, 18.0 ],
																					"scope" : 0,
																					"numoutlets" : 2,
																					"ftm_scope" : 0,
																					"persistence" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 421.0, 325.0, 104.279793, 18.0 ],
																					"outlettype" : [ "", "" ],
																					"id" : "obj-8",
																					"description" : "fmat 0 1",
																					"name" : "labelcolour",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.object",
																					"text" : "0",
																					"numinlets" : 1,
																					"presentation_rect" : [ 491.0, 239.0, 47.550781, 18.0 ],
																					"scope" : 0,
																					"numoutlets" : 2,
																					"ftm_scope" : 0,
																					"persistence" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 491.0, 239.0, 47.550781, 18.0 ],
																					"outlettype" : [ "", "" ],
																					"id" : "obj-9",
																					"description" : "0",
																					"name" : "black",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "label colour on/off",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 3.0, 21.0, 100.0, 17.0 ],
																					"id" : "obj-10",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 1",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 66.0, 157.0, 27.0, 17.0 ],
																					"outlettype" : [ "int" ],
																					"id" : "obj-11",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "toggle",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 1.0, 79.0, 15.0, 15.0 ],
																					"outlettype" : [ "int" ],
																					"id" : "obj-12"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "r #0_label-colour",
																					"numinlets" : 0,
																					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 1.0, 35.0, 99.0, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-13",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b i",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"fontname" : "Arial",
																					"patching_rect" : [ 1.0, 127.0, 50.0, 17.0 ],
																					"outlettype" : [ "bang", "int" ],
																					"id" : "obj-14",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "gate 2 1",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"fontname" : "Arial",
																					"patching_rect" : [ 66.0, 181.0, 47.0, 17.0 ],
																					"outlettype" : [ "", "" ],
																					"id" : "obj-15",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"linecount" : 3,
																					"presentation_linecount" : 3,
																					"#untuple" : 0,
																					"numinlets" : 2,
																					"presentation_rect" : [ 66.0, 337.0, 74.0, 41.0 ],
																					"#loadbang" : 0,
																					"numoutlets" : 1,
																					"ftm_scope" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 66.0, 337.0, 74.0, 41.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-16",
																					"#init" : "",
																					"#triggerall" : 0,
																					"fontsize" : 9.0,
																					"text" : [ "_($lr fill $black);", "_($lg fill $black);", "_($lb fill $black);" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "scale by min/range",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 281.0, 400.0, 118.0, 17.0 ],
																					"id" : "obj-17",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "catart.display.axisrecv #0-lc",
																					"numinlets" : 1,
																					"numoutlets" : 4,
																					"fontname" : "Arial",
																					"patching_rect" : [ 179.0, 294.0, 152.0, 17.0 ],
																					"outlettype" : [ "bang", "int", "", "" ],
																					"id" : "obj-18",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "descriptor min and max",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 276.0, 315.0, 116.0, 17.0 ],
																					"id" : "obj-19",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"linecount" : 5,
																					"presentation_linecount" : 5,
																					"#untuple" : 0,
																					"numinlets" : 5,
																					"presentation_rect" : [ 173.0, 335.0, 227.0, 65.0 ],
																					"#loadbang" : 0,
																					"numoutlets" : 1,
																					"ftm_scope" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 173.0, 335.0, 227.0, 65.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-20",
																					"#init" : "",
																					"#triggerall" : 0,
																					"fontsize" : 9.0,
																					"text" : [ "_($labelcolour set ($labelcolour1 refer $1 col $2));", "_((($lc sub $3) mul ($5 / ($4 - $3))) add $active);", "_(($lr set $labelcolour) lookup $cmapr);", "_(($lg set $labelcolour) lookup $cmapg);", "_(($lb set $labelcolour) lookup $cmapb);" ],
																					"numins" : 5
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t l l l",
																					"numinlets" : 1,
																					"numoutlets" : 3,
																					"fontname" : "Arial",
																					"patching_rect" : [ 103.0, 59.0, 60.0, 17.0 ],
																					"outlettype" : [ "", "", "" ],
																					"id" : "obj-21",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "index into colourmap as fvec",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 568.0, 287.0, 139.0, 17.0 ],
																					"id" : "obj-22",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "p draw-colourbar",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 259.0, 248.0, 89.0, 17.0 ],
																					"id" : "obj-23",
																					"fontsize" : 9.0,
																					"patcher" : 																					{
																						"fileversion" : 1,
																						"rect" : [ 10.0, 59.0, 530.0, 297.0 ],
																						"bglocked" : 0,
																						"defrect" : [ 10.0, 59.0, 530.0, 297.0 ],
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
																						"boxes" : [ 																							{
																								"box" : 																								{
																									"maxclass" : "ftm.mess",
																									"#untuple" : 0,
																									"numinlets" : 2,
																									"presentation_rect" : [ 305.0, 107.0, 104.077148, 17.0 ],
																									"#loadbang" : 0,
																									"numoutlets" : 1,
																									"ftm_scope" : 0,
																									"fontname" : "Geneva",
																									"patching_rect" : [ 305.0, 107.0, 104.077148, 17.0 ],
																									"outlettype" : [ "" ],
																									"id" : "obj-1",
																									"#init" : "",
																									"#triggerall" : 0,
																									"fontsize" : 9.0,
																									"text" : [ "_($colorbarheight - $1)" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "ftm.mess",
																									"#untuple" : 0,
																									"numinlets" : 2,
																									"presentation_rect" : [ 56.0, 50.0, 97.023926, 17.0 ],
																									"#loadbang" : 0,
																									"numoutlets" : 1,
																									"ftm_scope" : 0,
																									"fontname" : "Geneva",
																									"patching_rect" : [ 56.0, 50.0, 97.023926, 17.0 ],
																									"outlettype" : [ "" ],
																									"id" : "obj-2",
																									"#init" : "",
																									"#triggerall" : 0,
																									"fontsize" : 9.0,
																									"text" : [ "_(int $colorbarheight)" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "ftm.mess",
																									"#untuple" : 0,
																									"numinlets" : 2,
																									"presentation_rect" : [ 62.0, 160.0, 109.48243, 17.0 ],
																									"#loadbang" : 1,
																									"numoutlets" : 1,
																									"ftm_scope" : 0,
																									"fontname" : "Geneva",
																									"patching_rect" : [ 62.0, 160.0, 109.48243, 17.0 ],
																									"outlettype" : [ "" ],
																									"id" : "obj-3",
																									"#init" : "",
																									"#triggerall" : 0,
																									"fontsize" : 9.0,
																									"text" : [ "_size 20 $colorbarheight" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "ftm.object",
																									"text" : "200.",
																									"numinlets" : 1,
																									"presentation_rect" : [ 172.0, 50.0, 102.570312, 18.0 ],
																									"scope" : 0,
																									"numoutlets" : 2,
																									"ftm_scope" : 0,
																									"persistence" : 0,
																									"fontname" : "Geneva",
																									"patching_rect" : [ 172.0, 50.0, 102.570312, 18.0 ],
																									"outlettype" : [ "", "" ],
																									"id" : "obj-4",
																									"description" : "200.",
																									"name" : "colorbarheight",
																									"fontsize" : 9.0
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "ftm.mess",
																									"#untuple" : 0,
																									"numinlets" : 2,
																									"presentation_rect" : [ 50.0, 134.0, 417.376465, 17.0 ],
																									"#loadbang" : 0,
																									"numoutlets" : 1,
																									"ftm_scope" : 0,
																									"fontname" : "Geneva",
																									"patching_rect" : [ 50.0, 134.0, 417.376465, 17.0 ],
																									"outlettype" : [ "" ],
																									"id" : "obj-5",
																									"#init" : "",
																									"#triggerall" : 0,
																									"fontsize" : 9.0,
																									"text" : [ "_linesegment 0 $2 20 $2  ($colormap iget $1 0) ($colormap iget $1 1) ($colormap iget $1 2)" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "uzi 200",
																									"numinlets" : 2,
																									"numoutlets" : 3,
																									"fontname" : "Arial",
																									"patching_rect" : [ 56.0, 72.0, 44.0, 17.0 ],
																									"outlettype" : [ "bang", "bang", "int" ],
																									"id" : "obj-6",
																									"fontsize" : 9.0
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "s #0_colorbar-in",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"fontname" : "Arial",
																									"patching_rect" : [ 50.0, 183.0, 116.0, 17.0 ],
																									"id" : "obj-7",
																									"fontsize" : 9.0
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "comment",
																									"text" : "new descriptor chosen: draw colorbar",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"fontname" : "Arial",
																									"patching_rect" : [ 125.0, 78.0, 182.0, 17.0 ],
																									"id" : "obj-8",
																									"fontsize" : 9.0
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "ftm.mess",
																									"#untuple" : 0,
																									"numinlets" : 2,
																									"presentation_rect" : [ 50.0, 108.0, 225.005875, 17.0 ],
																									"#loadbang" : 0,
																									"numoutlets" : 1,
																									"ftm_scope" : 0,
																									"fontname" : "Geneva",
																									"patching_rect" : [ 50.0, 108.0, 225.005875, 17.0 ],
																									"outlettype" : [ "" ],
																									"id" : "obj-9",
																									"#init" : "",
																									"#triggerall" : 0,
																									"fontsize" : 9.0,
																									"text" : [ "_(($1 / $colorbarheight) * (($colormap rows) - 2))" ]
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"patching_rect" : [ 56.0, 30.0, 15.0, 15.0 ],
																									"outlettype" : [ "int" ],
																									"id" : "obj-10",
																									"comment" : ""
																								}

																							}
 ],
																						"lines" : [ 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-1", 0 ],
																									"destination" : [ "obj-5", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-10", 0 ],
																									"destination" : [ "obj-2", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-2", 0 ],
																									"destination" : [ "obj-6", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-3", 0 ],
																									"destination" : [ "obj-7", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-5", 0 ],
																									"destination" : [ "obj-7", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-6", 2 ],
																									"destination" : [ "obj-1", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-6", 2 ],
																									"destination" : [ "obj-9", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-9", 0 ],
																									"destination" : [ "obj-5", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
 ]
																					}
,
																					"saved_object_attributes" : 																					{
																						"default_fontface" : 0,
																						"default_fontname" : "Arial",
																						"fontname" : "Arial",
																						"default_fontsize" : 12.0,
																						"globalpatchername" : "",
																						"fontface" : 0,
																						"fontsize" : 12.0
																					}

																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.object",
																					"text" : "fvec $colour col 0",
																					"numinlets" : 1,
																					"presentation_rect" : [ 565.0, 299.0, 102.943848, 18.0 ],
																					"scope" : 0,
																					"numoutlets" : 2,
																					"ftm_scope" : 0,
																					"persistence" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 565.0, 299.0, 102.943848, 18.0 ],
																					"outlettype" : [ "", "" ],
																					"id" : "obj-24",
																					"description" : "fvec $colour col 0",
																					"name" : "c",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "index into colourmap",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 421.0, 288.0, 103.0, 17.0 ],
																					"id" : "obj-25",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "print",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 532.0, 303.0, 28.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-26",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.object",
																					"text" : "fmat 0 1",
																					"numinlets" : 1,
																					"presentation_rect" : [ 421.0, 303.0, 84.403328, 18.0 ],
																					"scope" : 0,
																					"numoutlets" : 2,
																					"ftm_scope" : 0,
																					"persistence" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 421.0, 303.0, 84.403328, 18.0 ],
																					"outlettype" : [ "", "" ],
																					"id" : "obj-27",
																					"description" : "fmat 0 1",
																					"name" : "colour",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "print",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 647.0, 381.0, 32.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-28",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.object",
																					"text" : "fvec",
																					"numinlets" : 1,
																					"presentation_rect" : [ 565.0, 381.0, 70.151855, 18.0 ],
																					"scope" : 0,
																					"numoutlets" : 2,
																					"ftm_scope" : 0,
																					"persistence" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 565.0, 381.0, 70.151855, 18.0 ],
																					"outlettype" : [ "", "" ],
																					"id" : "obj-29",
																					"description" : "fvec",
																					"name" : "active1",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "print",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"fontname" : "Arial",
																					"patching_rect" : [ 532.0, 381.0, 28.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-30",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.object",
																					"text" : "fmat 0 1",
																					"numinlets" : 1,
																					"presentation_rect" : [ 421.0, 381.0, 83.999031, 18.0 ],
																					"scope" : 0,
																					"numoutlets" : 2,
																					"ftm_scope" : 0,
																					"persistence" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 421.0, 381.0, 83.999031, 18.0 ],
																					"outlettype" : [ "", "" ],
																					"id" : "obj-31",
																					"description" : "fmat 0 1",
																					"name" : "active",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 292.0, 35.0, 15.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-32",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.object",
																					"text" : "fmat 4 1 255 0 0 $gray",
																					"numinlets" : 1,
																					"presentation_rect" : [ 421.0, 217.0, 153.674301, 18.0 ],
																					"scope" : 0,
																					"numoutlets" : 2,
																					"ftm_scope" : 0,
																					"persistence" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 421.0, 217.0, 153.674301, 18.0 ],
																					"outlettype" : [ "", "" ],
																					"id" : "obj-33",
																					"description" : "fmat 4 1 255 0 0 $gray",
																					"name" : "cmapb",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.object",
																					"text" : "fmat 4 1 0 255 0 $gray",
																					"numinlets" : 1,
																					"presentation_rect" : [ 421.0, 196.0, 153.674301, 18.0 ],
																					"scope" : 0,
																					"numoutlets" : 2,
																					"ftm_scope" : 0,
																					"persistence" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 421.0, 196.0, 153.674301, 18.0 ],
																					"outlettype" : [ "", "" ],
																					"id" : "obj-34",
																					"description" : "fmat 4 1 0 255 0 $gray",
																					"name" : "cmapg",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.object",
																					"text" : "fmat 4 1 0 0 255 $gray",
																					"numinlets" : 1,
																					"presentation_rect" : [ 421.0, 175.0, 151.661606, 18.0 ],
																					"scope" : 0,
																					"numoutlets" : 2,
																					"ftm_scope" : 0,
																					"persistence" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 421.0, 175.0, 151.661606, 18.0 ],
																					"outlettype" : [ "", "" ],
																					"id" : "obj-35",
																					"description" : "fmat 4 1 0 0 255 $gray",
																					"name" : "cmapr",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "scale by min/range",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 288.0, 217.0, 118.0, 17.0 ],
																					"id" : "obj-36",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "s #0_redraw",
																					"numinlets" : 1,
																					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 154.0, 430.0, 73.0, 17.0 ],
																					"id" : "obj-37",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.object",
																					"text" : "196",
																					"numinlets" : 1,
																					"presentation_rect" : [ 421.0, 239.0, 56.304691, 18.0 ],
																					"scope" : 0,
																					"numoutlets" : 2,
																					"ftm_scope" : 0,
																					"persistence" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 421.0, 239.0, 56.304691, 18.0 ],
																					"outlettype" : [ "", "" ],
																					"id" : "obj-38",
																					"description" : "196",
																					"name" : "gray",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "active descrid",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 312.0, 36.0, 74.0, 17.0 ],
																					"id" : "obj-39",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "catart.display.axisrecv #0-c",
																					"numinlets" : 1,
																					"numoutlets" : 4,
																					"fontname" : "Arial",
																					"patching_rect" : [ 186.0, 111.0, 152.0, 17.0 ],
																					"outlettype" : [ "bang", "int", "", "" ],
																					"id" : "obj-40",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 179.0, 35.0, 15.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-41",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 103.0, 35.0, 15.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-42",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"#untuple" : 0,
																					"numinlets" : 2,
																					"presentation_rect" : [ 416.0, 29.0, 109.609863, 17.0 ],
																					"#loadbang" : 1,
																					"numoutlets" : 1,
																					"ftm_scope" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 416.0, 29.0, 109.609863, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-43",
																					"#init" : "",
																					"#triggerall" : 0,
																					"fontsize" : 9.0,
																					"text" : [ "_(($colormap rows) - 2.)" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.object",
																					"text" : "fmat 4 3 0 0 255 0 255 0 255 0 0 $gray $gray $gray",
																					"numinlets" : 1,
																					"presentation_rect" : [ 421.0, 152.0, 298.856415, 18.0 ],
																					"scope" : 0,
																					"numoutlets" : 2,
																					"ftm_scope" : 0,
																					"persistence" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 421.0, 152.0, 298.856415, 18.0 ],
																					"outlettype" : [ "", "" ],
																					"id" : "obj-44",
																					"description" : "fmat 4 3 0 0 255 0 255 0 255 0 0 $gray $gray $gray",
																					"name" : "colormap",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "descriptor min and max",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 283.0, 132.0, 116.0, 17.0 ],
																					"id" : "obj-45",
																					"fontsize" : 9.0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"#untuple" : 0,
																					"numinlets" : 3,
																					"presentation_rect" : [ 153.0, 85.0, 309.85556, 17.0 ],
																					"#loadbang" : 0,
																					"numoutlets" : 1,
																					"ftm_scope" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 153.0, 85.0, 309.85556, 17.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-46",
																					"#init" : "",
																					"#triggerall" : 0,
																					"fontsize" : 9.0,
																					"text" : [ "_((($active set ($active1 refer $1 col $2)) eq 0.) mul (($3 + 1) * 2.))" ],
																					"numins" : 3
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "ftm.mess",
																					"linecount" : 5,
																					"presentation_linecount" : 5,
																					"#untuple" : 0,
																					"numinlets" : 5,
																					"presentation_rect" : [ 173.0, 152.0, 224.0, 65.0 ],
																					"#loadbang" : 0,
																					"numoutlets" : 1,
																					"ftm_scope" : 0,
																					"fontname" : "Geneva",
																					"patching_rect" : [ 173.0, 152.0, 224.0, 65.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-47",
																					"#init" : "",
																					"#triggerall" : 0,
																					"fontsize" : 9.0,
																					"text" : [ "_($colour set ($colour1 refer $1 col $2));", "_((($c sub $3) mul ($5 / ($4 - $3))) add $active);", "_(($r set $colour) lookup $cmapr);", "_(($g set $colour) lookup $cmapg);", "_(($b set $colour) lookup $cmapb);" ],
																					"numins" : 5
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "columns of colourmap",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"fontname" : "Arial",
																					"patching_rect" : [ 586.0, 195.0, 100.0, 17.0 ],
																					"id" : "obj-48",
																					"fontsize" : 9.0
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-12", 0 ],
																					"destination" : [ "obj-14", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-13", 0 ],
																					"destination" : [ "obj-12", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-14", 1 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-14", 0 ],
																					"destination" : [ "obj-37", 0 ],
																					"hidden" : 0,
																					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
																					"midpoints" : [ 10.5, 418.0, 163.5, 418.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-16", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 1 ],
																					"destination" : [ "obj-20", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-18", 3 ],
																					"destination" : [ "obj-20", 3 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-18", 2 ],
																					"destination" : [ "obj-20", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-18", 1 ],
																					"destination" : [ "obj-20", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-18", 0 ],
																					"destination" : [ "obj-37", 0 ],
																					"hidden" : 0,
																					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
																					"midpoints" : [ 188.5, 316.0, 163.5, 316.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-21", 0 ],
																					"destination" : [ "obj-15", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-21", 2 ],
																					"destination" : [ "obj-46", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-21", 1 ],
																					"destination" : [ "obj-47", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-26", 0 ],
																					"destination" : [ "obj-27", 0 ],
																					"hidden" : 1,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-28", 0 ],
																					"destination" : [ "obj-29", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-30", 0 ],
																					"destination" : [ "obj-31", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-32", 0 ],
																					"destination" : [ "obj-46", 1 ],
																					"hidden" : 0,
																					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-40", 1 ],
																					"destination" : [ "obj-23", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-40", 0 ],
																					"destination" : [ "obj-37", 0 ],
																					"hidden" : 0,
																					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
																					"midpoints" : [ 195.5, 139.0, 163.5, 139.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-40", 1 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-40", 3 ],
																					"destination" : [ "obj-47", 3 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-40", 2 ],
																					"destination" : [ "obj-47", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-40", 1 ],
																					"destination" : [ "obj-47", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-41", 0 ],
																					"destination" : [ "obj-18", 0 ],
																					"hidden" : 0,
																					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-41", 0 ],
																					"destination" : [ "obj-40", 0 ],
																					"hidden" : 0,
																					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-42", 0 ],
																					"destination" : [ "obj-21", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-43", 0 ],
																					"destination" : [ "obj-20", 4 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-43", 0 ],
																					"destination" : [ "obj-46", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-43", 0 ],
																					"destination" : [ "obj-47", 4 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"fontname" : "Arial",
																		"default_fontsize" : 12.0,
																		"globalpatchername" : "",
																		"fontface" : 0,
																		"fontsize" : 12.0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 232.0, 34.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-18",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 5,
																	"presentation_rect" : [ 428.0, 171.0, 315.770538, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 428.0, 171.0, 315.770538, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-19",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_((($y set ($y1 refer $1 col $2)) sub $3) mul ($5 / ($4 - $3 + $eps)))" ],
																	"numins" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 20.0, 332.0, 15.0, 15.0 ],
																	"outlettype" : [ "bang" ],
																	"id" : "obj-20"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "print all",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 429.0, 270.0, 46.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-21",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "print all",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 272.0, 270.0, 46.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-22",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "print",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 99.0, 364.0, 32.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-23",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "catart.display.axisrecv #0-y",
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"patching_rect" : [ 452.0, 133.0, 152.0, 17.0 ],
																	"outlettype" : [ "bang", "int", "", "" ],
																	"id" : "obj-24",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l l l",
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"patching_rect" : [ 8.0, 90.0, 60.0, 17.0 ],
																	"outlettype" : [ "bang", "", "", "" ],
																	"id" : "obj-25",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "scaled world coordinate data",
																	"linecount" : 2,
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 15.0, 385.0, 99.0, 27.0 ],
																	"id" : "obj-26",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "columns in world coordinates",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 271.0, 255.0, 141.0, 17.0 ],
																	"id" : "obj-27",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 2,
																	"presentation_rect" : [ 56.0, 333.0, 73.113281, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 56.0, 333.0, 73.113281, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-28",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_rows ($1 rows)" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "scale by min/range",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 158.0, 188.0, 118.0, 17.0 ],
																	"id" : "obj-29",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "fvec",
																	"numinlets" : 1,
																	"presentation_rect" : [ 429.0, 450.0, 68.358887, 18.0 ],
																	"scope" : 0,
																	"numoutlets" : 2,
																	"ftm_scope" : 0,
																	"persistence" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 429.0, 450.0, 68.358887, 18.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-30",
																	"description" : "fvec",
																	"name" : "labels1",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "fvec",
																	"numinlets" : 1,
																	"presentation_rect" : [ 429.0, 391.0, 90.432625, 18.0 ],
																	"scope" : 0,
																	"numoutlets" : 2,
																	"ftm_scope" : 0,
																	"persistence" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 429.0, 391.0, 90.432625, 18.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-31",
																	"description" : "fvec",
																	"name" : "labelcolour1",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "fvec",
																	"numinlets" : 1,
																	"presentation_rect" : [ 429.0, 329.0, 70.556152, 18.0 ],
																	"scope" : 0,
																	"numoutlets" : 2,
																	"ftm_scope" : 0,
																	"persistence" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 429.0, 329.0, 70.556152, 18.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-32",
																	"description" : "fvec",
																	"name" : "colour1",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "fvec",
																	"numinlets" : 1,
																	"presentation_rect" : [ 429.0, 309.0, 49.044918, 18.0 ],
																	"scope" : 0,
																	"numoutlets" : 2,
																	"ftm_scope" : 0,
																	"persistence" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 429.0, 309.0, 49.044918, 18.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-33",
																	"description" : "fvec",
																	"name" : "y1",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "fvec",
																	"numinlets" : 1,
																	"presentation_rect" : [ 429.0, 289.0, 48.671383, 18.0 ],
																	"scope" : 0,
																	"numoutlets" : 2,
																	"ftm_scope" : 0,
																	"persistence" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 429.0, 289.0, 48.671383, 18.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-34",
																	"description" : "fvec",
																	"name" : "x1",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "unitstat matrix in",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 100.0, 34.0, 100.0, 17.0 ],
																	"id" : "obj-35",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "catart.display.axisrecv #0-x",
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"fontname" : "Arial",
																	"patching_rect" : [ 114.0, 134.0, 152.0, 17.0 ],
																	"outlettype" : [ "bang", "int", "", "" ],
																	"id" : "obj-36",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r #0_lcd-size",
																	"numinlets" : 0,
																	"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 338.0, 34.0, 73.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-37",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 2",
																	"numinlets" : 2,
																	"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"patching_rect" : [ 338.0, 58.0, 27.0, 17.0 ],
																	"outlettype" : [ "int" ],
																	"id" : "obj-38",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "scale descriptors to pixels todo: move this and zoom to device mapping",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 283.0, 188.0, 330.0, 17.0 ],
																	"id" : "obj-39",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 76.0, 34.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-40",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s #0_redraw",
																	"numinlets" : 1,
																	"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 561.0, 415.0, 73.0, 17.0 ],
																	"id" : "obj-41",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "descr. x, y, colour, labelcolour, label",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 270.0, 238.0, 179.0, 17.0 ],
																	"id" : "obj-42",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "select columns from unitdata fmat, scale to model coordinates (0..1)",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 0.0, 10.0, 319.0, 17.0 ],
																	"id" : "obj-43",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "fvec $world col 4",
																	"numinlets" : 1,
																	"presentation_rect" : [ 272.0, 369.0, 100.351082, 18.0 ],
																	"scope" : 0,
																	"numoutlets" : 2,
																	"ftm_scope" : 0,
																	"persistence" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 272.0, 369.0, 100.351082, 18.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-44",
																	"description" : "fvec $world col 4",
																	"name" : "b",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "fvec $world col 3",
																	"numinlets" : 1,
																	"presentation_rect" : [ 272.0, 349.0, 100.351082, 18.0 ],
																	"scope" : 0,
																	"numoutlets" : 2,
																	"ftm_scope" : 0,
																	"persistence" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 272.0, 349.0, 100.351082, 18.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-45",
																	"description" : "fvec $world col 3",
																	"name" : "g",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "fvec $world col 2",
																	"numinlets" : 1,
																	"presentation_rect" : [ 272.0, 329.0, 98.338387, 18.0 ],
																	"scope" : 0,
																	"numoutlets" : 2,
																	"ftm_scope" : 0,
																	"persistence" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 272.0, 329.0, 98.338387, 18.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-46",
																	"description" : "fvec $world col 2",
																	"name" : "r",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "fvec $world col 1",
																	"numinlets" : 1,
																	"presentation_rect" : [ 272.0, 309.0, 100.008301, 18.0 ],
																	"scope" : 0,
																	"numoutlets" : 2,
																	"ftm_scope" : 0,
																	"persistence" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 272.0, 309.0, 100.008301, 18.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-47",
																	"description" : "fvec $world col 1",
																	"name" : "y",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "fvec $world col 0",
																	"numinlets" : 1,
																	"presentation_rect" : [ 272.0, 289.0, 99.634766, 18.0 ],
																	"scope" : 0,
																	"numoutlets" : 2,
																	"ftm_scope" : 0,
																	"persistence" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 272.0, 289.0, 99.634766, 18.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-48",
																	"description" : "fvec $world col 0",
																	"name" : "x",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.object",
																	"text" : "fmat 0 8",
																	"numinlets" : 1,
																	"presentation_rect" : [ 8.0, 364.0, 81.230469, 18.0 ],
																	"scope" : 0,
																	"numoutlets" : 2,
																	"ftm_scope" : 0,
																	"persistence" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 8.0, 364.0, 81.230469, 18.0 ],
																	"outlettype" : [ "", "" ],
																	"id" : "obj-49",
																	"description" : "fmat 0 8",
																	"name" : "world",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 8.0, 417.0, 15.0, 15.0 ],
																	"id" : "obj-50",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 8.0, 34.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-51",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "original unitdata fmat in",
																	"linecount" : 3,
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 27.0, 34.0, 63.0, 38.0 ],
																	"id" : "obj-52",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "columns in model unit data",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 428.0, 256.0, 128.0, 17.0 ],
																	"id" : "obj-53",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 5,
																	"presentation_rect" : [ 90.0, 171.0, 315.023468, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 90.0, 171.0, 315.023468, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-54",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_((($x set ($x1 refer $1 col $2)) sub $3) mul ($5 / ($4 - $3 + $eps)))" ],
																	"numins" : 5
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-15", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-17", 2 ],
																	"hidden" : 0,
																	"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-49", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-44", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-45", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-46", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-47", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-48", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-49", 0 ],
																	"hidden" : 1,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 3 ],
																	"destination" : [ "obj-19", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 2 ],
																	"destination" : [ "obj-19", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 1 ],
																	"destination" : [ "obj-19", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-41", 0 ],
																	"hidden" : 0,
																	"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
																	"midpoints" : [ 461.5, 208.0, 570.5, 208.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 1 ],
																	"destination" : [ "obj-6", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 1 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 1 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 2 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
																	"midpoints" : [ 44.833332, 119.0, 437.5, 119.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 3 ],
																	"destination" : [ "obj-28", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 2 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
																	"midpoints" : [ 44.833332, 119.0, 99.5, 119.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-28", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-28", 0 ],
																	"destination" : [ "obj-49", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-41", 0 ],
																	"hidden" : 0,
																	"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
																	"midpoints" : [ 123.5, 208.0, 570.5, 208.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 3 ],
																	"destination" : [ "obj-54", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 2 ],
																	"destination" : [ "obj-54", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 1 ],
																	"destination" : [ "obj-54", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 1 ],
																	"destination" : [ "obj-6", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-19", 4 ],
																	"hidden" : 0,
																	"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-54", 4 ],
																	"hidden" : 0,
																	"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-40", 0 ],
																	"destination" : [ "obj-15", 1 ],
																	"hidden" : 0,
																	"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
																	"midpoints" : [ 85.0, 203.0, 66.5, 203.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-40", 0 ],
																	"destination" : [ "obj-17", 1 ],
																	"hidden" : 0,
																	"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-40", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-40", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-47", 0 ],
																	"destination" : [ "obj-46", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-48", 0 ],
																	"destination" : [ "obj-45", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-48", 0 ],
																	"destination" : [ "obj-46", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-49", 0 ],
																	"destination" : [ "obj-50", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-51", 0 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-49", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 117.5, 436.0, 33.0, 436.0 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_redraw",
													"numinlets" : 1,
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 98.0, 334.0, 73.0, 17.0 ],
													"id" : "obj-15",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 98.0, 178.0, 15.0, 15.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_draw-labels",
													"numinlets" : 0,
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 98.0, 136.0, 91.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-17",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Arial",
													"patching_rect" : [ 98.0, 205.0, 29.0, 17.0 ],
													"outlettype" : [ "bang", "int" ],
													"id" : "obj-18",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p draw-label",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 117.0, 283.0, 67.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-19",
													"fontsize" : 9.0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 176.0, 555.0, 427.0, 241.0 ],
														"bglocked" : 0,
														"defrect" : [ 176.0, 555.0, 427.0, 241.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 30.0, 150.0, 15.0, 15.0 ],
																	"id" : "obj-1",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "world coordinate list",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 28.0, 35.0, 130.0, 17.0 ],
																	"id" : "obj-2",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 30.0, 58.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-3",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 268.0, 57.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-4",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 9,
																	"presentation_rect" : [ 30.0, 104.0, 302.305725, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 30.0, 104.0, 302.305725, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-5",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_frgb $6 $7 $8, moveto ($1 + 2) ($2 - 2), write $labelstrings[$9 0]" ],
																	"numins" : 9
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-5", 8 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 117.0, 251.0, 29.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-20",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 274.0, 51.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-21",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "active descrid",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 274.0, 21.0, 49.0, 27.0 ],
													"id" : "obj-22",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "corpus unit fmat to draw",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 128.0, 21.0, 85.0, 27.0 ],
													"id" : "obj-23",
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p draw-pixels",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Arial",
													"patching_rect" : [ 190.0, 283.0, 73.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-24",
													"fontsize" : 9.0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 449.0, 490.0, 561.0, 304.0 ],
														"bglocked" : 0,
														"defrect" : [ 449.0, 490.0, 561.0, 304.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "fastest (why + 2?)",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 274.0, 95.0, 100.0, 17.0 ],
																	"id" : "obj-1",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "standard so far, too many messages",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 304.0, 123.0, 173.0, 17.0 ],
																	"id" : "obj-2",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"linecount" : 4,
																	"presentation_linecount" : 4,
																	"#untuple" : 0,
																	"numinlets" : 6,
																	"presentation_rect" : [ 127.0, 123.0, 166.0, 53.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 127.0, 123.0, 166.0, 53.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-3",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_setpixel $2 $3 $4 $5 $6,", "_setpixel ($2 + 1) $3 $4 $5 $6,", "_setpixel $2 ($3 + 1) $4 $5 $6,", "_setpixel ($2 + 1) ($3 + 1) $4 $5 $6" ],
																	"numins" : 6
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "big but slow",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 453.0, 199.0, 100.0, 17.0 ],
																	"id" : "obj-4",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 6,
																	"presentation_rect" : [ 128.0, 200.0, 304.854523, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 128.0, 200.0, 304.854523, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-5",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_paintoval ($2 - $rad) ($3 - $rad) ($2 + $rad) ($3 + $rad) $4 $5 $6" ],
																	"numins" : 6
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "y [pixel]",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 216.0, 24.0, 49.0, 17.0 ],
																	"id" : "obj-6",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "x [pixel]",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 160.0, 24.0, 49.0, 17.0 ],
																	"id" : "obj-7",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 6,
																	"presentation_rect" : [ 128.0, 180.0, 114.34716, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 128.0, 180.0, 114.34716, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-8",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_setpixel $2 $3 $4 $5 $6" ],
																	"numins" : 6
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "ftm.mess",
																	"#untuple" : 0,
																	"numinlets" : 5,
																	"presentation_rect" : [ 50.0, 95.0, 205.823746, 17.0 ],
																	"#loadbang" : 0,
																	"numoutlets" : 1,
																	"ftm_scope" : 0,
																	"fontname" : "Geneva",
																	"patching_rect" : [ 50.0, 95.0, 205.823746, 17.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-9",
																	"#init" : "",
																	"#triggerall" : 0,
																	"fontsize" : 9.0,
																	"text" : [ "_framerect $1 $2 ($1 + 2) ($2 + 2) $3 $4 $5" ],
																	"numins" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 50.0, 40.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-10",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 200.0, 17.0, 17.0 ],
																	"id" : "obj-11",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "3-element rgb colour list",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 265.0, 24.0, 123.0, 17.0 ],
																	"id" : "obj-12",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "world coordinate list:",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 50.0, 24.0, 104.0, 17.0 ],
																	"id" : "obj-13",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "drawing commands for lcd",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 50.0, 225.0, 128.0, 17.0 ],
																	"id" : "obj-14",
																	"fontsize" : 9.0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "fast but too small",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Arial",
																	"patching_rect" : [ 265.0, 179.0, 100.0, 17.0 ],
																	"id" : "obj-15",
																	"fontsize" : 9.0
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 190.0, 50.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-25",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 232.0, 50.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-26",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 190.0, 336.0, 15.0, 15.0 ],
													"id" : "obj-27",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "unitstat matrix in",
													"linecount" : 2,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patching_rect" : [ 220.0, 21.0, 49.0, 27.0 ],
													"id" : "obj-28",
													"fontsize" : 9.0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-11", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-14", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-19", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-20", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 2 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 1 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-14", 2 ],
													"hidden" : 0,
													"midpoints" : [ 283.0, 88.0, 250.166672, 88.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-11", 2 ],
													"hidden" : 0,
													"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
													"midpoints" : [ 241.0, 81.0, 70.166664, 81.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0,
													"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
													"midpoints" : [ 241.0, 81.0, 224.833328, 81.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1/25 sec is enough",
									"linecount" : 2,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 207.0, 157.0, 50.0, 27.0 ],
									"id" : "obj-84",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "change corpus reference and update stats (without changing settings)",
									"linecount" : 3,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 661.0, 108.0, 129.0, 38.0 ],
									"id" : "obj-85",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 539.0, 340.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-86"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "no animation",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 456.0, 425.0, 66.0, 17.0 ],
									"id" : "obj-87",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "catart.lcd v2.6: 06.08.2008 rsxm as view/controller in true MVC --> have to clip radius from lcd",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 2.0, 6.0, 484.0, 17.0 ],
									"id" : "obj-88",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "catart.lcd v2.5: 03.07.2008 fix bug with draw-unit -> live clumping",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 2.0, -9.0, 388.0, 17.0 ],
									"id" : "obj-89",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "catart.lcd v2.4: 16.06.2008 fix bug for 0-range descriptors",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 2.0, -24.0, 388.0, 17.0 ],
									"id" : "obj-90",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "catart.lcd v2.3: 06.06.2008 switch off animation with 0 time",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 2.0, -39.0, 388.0, 17.0 ],
									"id" : "obj-91",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "catart.lcd v2.2: 25.05.2008 animation on descriptor change made with FTM course",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 2.0, -54.0, 388.0, 17.0 ],
									"id" : "obj-92",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "catart.lcd v2.1: group labels",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 2.0, -69.0, 387.0, 17.0 ],
									"id" : "obj-93",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "catart.lcd v2.0: optimised drawing by matrix scale to world(=device) coordinates",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 2.0, -84.0, 380.0, 17.0 ],
									"id" : "obj-94",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_voice",
									"numinlets" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 809.0, 273.0, 77.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-95",
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-72", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-40", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [ 535.5, 192.0, 152.5, 192.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 2 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 3 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 2 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 663.5, 170.0, 798.0, 170.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 1,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 1,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 1,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 1,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 1,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 1,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-83", 4 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-38", 1 ],
									"hidden" : 0,
									"midpoints" : [ 42.5, 364.0, 56.5, 364.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 2 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 1 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-83", 2 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-38", 2 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-40", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-51", 1 ],
									"hidden" : 0,
									"midpoints" : [ 535.5, 322.0, 752.572266, 322.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 0,
									"midpoints" : [ 535.5, 413.0, 275.5, 413.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-83", 1 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-83", 3 ],
									"hidden" : 0,
									"midpoints" : [ 275.5, 382.0, 209.5, 382.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [ 275.5, 443.0, 152.5, 443.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-96", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 1 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-4", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-83", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-83", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-95", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 818.5, 372.0, 818.0, 372.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-96", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "y-descriptor-menu",
					"pattrmode" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 184.0, 416.0, 125.0, 18.0 ],
					"items" : [ "UnitID", 0, ",", "RelID", 1, ",", "UnitType", 2, ",", "SoundFile", 3, ",", "SoundSet", 4, ",", "WorkingSet", 5, ",", "Active", 6, ",", "StartSample", 7, ",", "SampleSize", 8, ",", "StartTime", 9, ",", "Duration", 10, ",", "Relstart", 11, ",", "Shift", 12, ",", "Pitch", 13, ",", "NoteNumber", 14, ",", "Loudness", 15, ",", "Periodicity", 16, ",", "SpectralFlatness", 17, ",", "SpectralCentroid", 18, ",", "HighFrequencyEnergy", 19, ",", "MidFrequencyEnergy", 20, ",", "HighFrequencyContent", 21, ",", "AC1", 22, ",", "Energy", 23, ",", "Label", 24 ],
					"numoutlets" : 3,
					"fontname" : "Arial",
					"patching_rect" : [ 513.0, 39.0, 125.0, 18.0 ],
					"outlettype" : [ "int", "", "" ],
					"presentation" : 1,
					"id" : "obj-174",
					"types" : [  ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "x-descriptor-menu",
					"pattrmode" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 55.0, 416.0, 125.0, 18.0 ],
					"items" : [ "UnitID", 0, ",", "RelID", 1, ",", "UnitType", 2, ",", "SoundFile", 3, ",", "SoundSet", 4, ",", "WorkingSet", 5, ",", "Active", 6, ",", "StartSample", 7, ",", "SampleSize", 8, ",", "StartTime", 9, ",", "Duration", 10, ",", "Relstart", 11, ",", "Shift", 12, ",", "Pitch", 13, ",", "NoteNumber", 14, ",", "Loudness", 15, ",", "Periodicity", 16, ",", "SpectralFlatness", 17, ",", "SpectralCentroid", 18, ",", "HighFrequencyEnergy", 19, ",", "MidFrequencyEnergy", 20, ",", "HighFrequencyContent", 21, ",", "AC1", 22, ",", "Energy", 23, ",", "Label", 24 ],
					"numoutlets" : 3,
					"fontname" : "Arial",
					"patching_rect" : [ 142.0, 431.0, 125.0, 18.0 ],
					"outlettype" : [ "int", "", "" ],
					"presentation" : 1,
					"id" : "obj-175",
					"types" : [  ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "size $1 $1, local 0",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 187.0, -17.0, 95.0, 15.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-176",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_to-lcd",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 106.0, -18.0, 64.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-177",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 105.0, 2.0, 33.0, 15.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-178",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.display.axis #0_ #0-x",
					"numinlets" : 6,
					"numoutlets" : 6,
					"fontname" : "Arial",
					"patching_rect" : [ 143.0, 532.0, 144.0, 17.0 ],
					"outlettype" : [ "", "", "", "", "", "" ],
					"hidden" : 1,
					"id" : "obj-179",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "lcd",
					"idle" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 23.0, 8.0, 400.0, 400.0 ],
					"numoutlets" : 4,
					"enablesprites" : 1,
					"patching_rect" : [ 106.0, 23.0, 400.0, 400.0 ],
					"outlettype" : [ "list", "list", "int", "" ],
					"presentation" : 1,
					"id" : "obj-180",
					"local" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "grain rate",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 165.0, 55.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-181",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "to selection",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 19.0, 759.0, 62.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-182",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "trigger method",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 133.0, 83.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-184",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcherargs",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 788.0, 537.0, 64.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-185",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"#untuple" : 0,
					"numinlets" : 2,
					"#loadbang" : 0,
					"numoutlets" : 1,
					"ftm_scope" : 0,
					"fontname" : "Geneva",
					"patching_rect" : [ 788.0, 567.0, 60.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-186",
					"#init" : "",
					"#triggerall" : 0,
					"fontsize" : 9.0,
					"text" : [ "_patcher $*" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Colour Scale",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 533.0, 305.0, 66.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-187",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p reschedule",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 237.0, 581.0, 66.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-188",
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 207.0, 284.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 207.0, 284.0 ],
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
									"maxclass" : "ftm.mess",
									"#untuple" : 0,
									"numinlets" : 2,
									"presentation_rect" : [ 65.0, 66.0, 30.684082, 17.0 ],
									"#loadbang" : 0,
									"numoutlets" : 1,
									"ftm_scope" : 0,
									"fontname" : "Geneva",
									"patching_rect" : [ 65.0, 66.0, 30.684082, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"#init" : "",
									"#triggerall" : 0,
									"fontsize" : 9.0,
									"text" : [ "_{ $* }" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.list",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 65.0, 138.0, 76.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontsize" : 9.0,
									"saved_object_attributes" : 									{
										"ftm_scope" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.schedule 0",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 65.0, 102.0, 76.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontsize" : 9.0,
									"saved_object_attributes" : 									{
										"ftm_scope" : 2
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 174.0, 15.0, 15.0 ],
									"id" : "obj-5",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-133", 0 ],
					"destination" : [ "obj-199", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-164", 0 ],
					"destination" : [ "obj-198", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-159", 1 ],
					"destination" : [ "obj-195", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-174", 1 ],
					"destination" : [ "obj-192", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-194", 0 ],
					"destination" : [ "obj-193", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-193", 0 ],
					"destination" : [ "obj-183", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-180", 0 ],
					"destination" : [ "obj-197", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-122", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-102", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 1 ],
					"destination" : [ "obj-188", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 0 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 1 ],
					"destination" : [ "obj-122", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-103", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-111", 0 ],
					"destination" : [ "obj-69", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-116", 1 ],
					"destination" : [ "obj-122", 0 ],
					"hidden" : 1,
					"midpoints" : [ 199.5, 277.0, 107.5, 277.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-118", 0 ],
					"destination" : [ "obj-144", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-118", 1 ],
					"destination" : [ "obj-188", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-119", 1 ],
					"destination" : [ "obj-122", 0 ],
					"hidden" : 1,
					"midpoints" : [ 206.5, 279.0, 107.5, 279.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-119", 0 ],
					"destination" : [ "obj-147", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-59", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-122", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 0 ],
					"destination" : [ "obj-129", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 0 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 1 ],
					"destination" : [ "obj-121", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 0 ],
					"destination" : [ "obj-125", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 3 ],
					"destination" : [ "obj-128", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 2 ],
					"destination" : [ "obj-157", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 1 ],
					"destination" : [ "obj-158", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 0 ],
					"destination" : [ "obj-159", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-132", 0 ],
					"destination" : [ "obj-173", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-133", 1 ],
					"destination" : [ "obj-122", 0 ],
					"hidden" : 1,
					"midpoints" : [ 192.5, 278.0, 107.5, 278.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-133", 0 ],
					"destination" : [ "obj-123", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-133", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-134", 0 ],
					"destination" : [ "obj-153", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-136", 0 ],
					"destination" : [ "obj-138", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-138", 1 ],
					"destination" : [ "obj-122", 0 ],
					"hidden" : 1,
					"midpoints" : [ 206.5, 279.0, 107.5, 279.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-138", 0 ],
					"destination" : [ "obj-139", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-138", 0 ],
					"destination" : [ "obj-173", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-138", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-138", 1 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-143", 1 ],
					"destination" : [ "obj-188", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-143", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-144", 0 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-146", 0 ],
					"destination" : [ "obj-160", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-146", 0 ],
					"destination" : [ "obj-59", 3 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-147", 0 ],
					"destination" : [ "obj-119", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-148", 0 ],
					"destination" : [ "obj-149", 3 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-149", 3 ],
					"destination" : [ "obj-130", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-149", 2 ],
					"destination" : [ "obj-167", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-149", 1 ],
					"destination" : [ "obj-168", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-149", 0 ],
					"destination" : [ "obj-174", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-150", 0 ],
					"destination" : [ "obj-179", 3 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-151", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-152", 1 ],
					"destination" : [ "obj-122", 0 ],
					"hidden" : 1,
					"midpoints" : [ 201.5, 277.0, 107.5, 277.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-152", 0 ],
					"destination" : [ "obj-164", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-153", 2 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-153", 1 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-153", 3 ],
					"destination" : [ "obj-124", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-153", 0 ],
					"destination" : [ "obj-134", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-154", 0 ],
					"destination" : [ "obj-155", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-157", 0 ],
					"destination" : [ "obj-131", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-158", 0 ],
					"destination" : [ "obj-131", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-159", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-159", 0 ],
					"destination" : [ "obj-156", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-160", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-161", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-164", 0 ],
					"destination" : [ "obj-152", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-165", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-166", 0 ],
					"destination" : [ "obj-172", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-167", 0 ],
					"destination" : [ "obj-149", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-168", 0 ],
					"destination" : [ "obj-149", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-169", 0 ],
					"destination" : [ "obj-179", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-170", 0 ],
					"destination" : [ "obj-179", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-172", 0 ],
					"destination" : [ "obj-171", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-172", 0 ],
					"destination" : [ "obj-176", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-173", 2 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-173", 0 ],
					"destination" : [ "obj-120", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-173", 1 ],
					"destination" : [ "obj-59", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-174", 0 ],
					"destination" : [ "obj-149", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-174", 0 ],
					"destination" : [ "obj-163", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-175", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-175", 0 ],
					"destination" : [ "obj-179", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-176", 0 ],
					"destination" : [ "obj-180", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-177", 0 ],
					"destination" : [ "obj-180", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-178", 0 ],
					"destination" : [ "obj-180", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-179", 3 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-179", 2 ],
					"destination" : [ "obj-169", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-179", 1 ],
					"destination" : [ "obj-170", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-179", 0 ],
					"destination" : [ "obj-175", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-180", 2 ],
					"destination" : [ "obj-153", 3 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-180", 1 ],
					"destination" : [ "obj-153", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-180", 0 ],
					"destination" : [ "obj-153", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-185", 0 ],
					"destination" : [ "obj-186", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-186", 0 ],
					"destination" : [ "obj-114", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-188", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-189", 0 ],
					"destination" : [ "obj-174", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-190", 0 ],
					"destination" : [ "obj-175", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 3 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 3 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-43", 3 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-43", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-186", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-114", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-123", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-114", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 2 ],
					"destination" : [ "obj-159", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 3 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 1 ],
					"destination" : [ "obj-174", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-175", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 7 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 6 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 5 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 4 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-138", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-37", 0 ],
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
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 1 ],
					"destination" : [ "obj-111", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 2 ],
					"destination" : [ "obj-188", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-96", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-143", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-133", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 1 ],
					"destination" : [ "obj-188", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-159", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-174", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-175", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 1 ],
					"destination" : [ "obj-188", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 1 ],
					"destination" : [ "obj-188", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 1 ],
					"destination" : [ "obj-188", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 1 ],
					"destination" : [ "obj-188", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 1 ],
					"destination" : [ "obj-188", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 1 ],
					"destination" : [ "obj-188", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 1 ],
					"destination" : [ "obj-188", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-99", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-175", 1 ],
					"destination" : [ "obj-196", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ],
		"parameters" : 		{

		}

	}

}
