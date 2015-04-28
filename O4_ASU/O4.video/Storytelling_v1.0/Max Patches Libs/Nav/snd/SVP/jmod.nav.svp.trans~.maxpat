{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 72.0, 44.0, 902.0, 397.0 ],
		"bglocked" : 0,
		"defrect" : [ 72.0, 44.0, 902.0, 397.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 329.0, 287.0, 20.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 24.0, 20.0, 172.0 ]
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"bgcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"bgcolor2" : [ 0.917647, 0.917647, 0.917647, 1.0 ],
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"framecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hltcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"id" : "obj-249",
					"items" : [ "envpres", "off", ",", "envpres", "on" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 271.0, 467.0, 66.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 604.0, 302.0, 97.0, 17.0 ],
					"textcolor" : [ 0.568627, 0.082353, 0.160784, 1.0 ],
					"textcolor2" : [ 0.568627, 0.082353, 0.160784, 1.0 ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"align" : 1,
					"arrow" : 0,
					"bgcolor" : [ 0.87451, 0.87451, 0.87451, 1.0 ],
					"bgcolor2" : [ 0.917647, 0.917647, 0.917647, 1.0 ],
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"framecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hltcolor" : [ 0.87451, 0.87451, 0.87451, 1.0 ],
					"id" : "obj-254",
					"items" : [ "envscale", "off", ",", "envscale", "on" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 271.0, 452.0, 66.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 604.0, 287.0, 97.0, 17.0 ],
					"textcolor" : [ 0.568627, 0.082353, 0.160784, 1.0 ],
					"textcolor2" : [ 0.568627, 0.082353, 0.160784, 1.0 ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"bgcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"bgcolor2" : [ 0.917647, 0.917647, 0.917647, 1.0 ],
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"framecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hltcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"id" : "obj-260",
					"items" : [ "envmode", "trueenv", ",", "envmode", "lpc" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 271.0, 482.0, 88.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 604.0, 317.0, 98.0, 17.0 ],
					"textcolor" : [ 0.568627, 0.082353, 0.160784, 1.0 ],
					"textcolor2" : [ 0.568627, 0.082353, 0.160784, 1.0 ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-271",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 347.0, 454.0, 152.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 175.0, 291.0, 152.0, 17.0 ],
					"text" : "envscale, timbre & mean factor"
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.066667, 0.066667, 0.066667, 1.0 ],
					"candicane2" : [ 0.556863, 0.827451, 0.431373, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"contdata" : 1,
					"id" : "obj-272",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 340.0, 452.0, 172.0, 16.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 270.0, 22.0, 24.0, 182.0 ],
					"setminmax" : [ 0.0, 2.0 ],
					"setstyle" : 1,
					"signed" : 1,
					"slidercolor" : [ 0.384314, 0.439216, 0.713726, 1.0 ],
					"thickness" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.6, 0.4, 0.6, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-278",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 409.0, 482.0, 41.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 666.0, 339.0, 27.0, 18.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-279",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 408.0, 471.0, 52.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 637.0, 339.0, 28.0, 17.0 ],
					"text" : "LPC"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-280",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 272.0, 437.0, 67.0, 17.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 199.0, 187.0, 30.0, 27.0 ],
					"text" : "spctrl env:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-281",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 271.0, 403.0, 35.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 231.0, 188.0, 31.0, 17.0 ],
					"text" : "pitch:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-282",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 273.0, 421.0, 109.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 789.0, 229.0, 109.0, 17.0 ],
					"text" : "transposition (in cent)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"cantchange" : 1,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-283",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 299.0, 401.0, 36.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 455.0, 252.0, 36.0, 17.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"cantchange" : 1,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-284",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 335.0, 436.0, 37.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 489.0, 89.0, 37.0, 17.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
					"candicane2" : [ 0.556863, 0.827451, 0.431373, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candycane" : 2,
					"contdata" : 1,
					"id" : "obj-285",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 300.0, 405.0, 304.0, 49.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 197.0, 22.0, 68.0, 185.0 ],
					"setminmax" : [ -1200.0, 1200.0 ],
					"setstyle" : 1,
					"settype" : 0,
					"signed" : 1,
					"size" : 2,
					"slidercolor" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"thickness" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.6, 0.4, 0.6, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-305",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 361.0, 482.0, 45.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 576.0, 337.0, 44.0, 18.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-307",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 362.0, 471.0, 39.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 533.0, 338.0, 39.0, 17.0 ],
					"text" : "max f0"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-318",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 510.0, 452.0, 32.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 267.0, 196.0, 17.0, 17.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"bgcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"bgcolor2" : [ 0.917647, 0.917647, 0.917647, 1.0 ],
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"framecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hltcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"id" : "obj-250",
					"items" : [ "stereopres", "off", ",", "stereopres", "on" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 575.0, 187.0, 75.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 534.0, 316.0, 66.0, 17.0 ],
					"textcolor" : [ 0.568627, 0.082353, 0.160784, 1.0 ],
					"textcolor2" : [ 0.568627, 0.082353, 0.160784, 1.0 ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"bgcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"bgcolor2" : [ 0.917647, 0.917647, 0.917647, 1.0 ],
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"framecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hltcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"id" : "obj-251",
					"items" : [ "shapeinv", "off", ",", "shapeinv", "on" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 575.0, 172.0, 75.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 534.0, 301.0, 66.0, 17.0 ],
					"textcolor" : [ 0.568627, 0.082353, 0.160784, 1.0 ],
					"textcolor2" : [ 0.568627, 0.082353, 0.160784, 1.0 ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"bgcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"bgcolor2" : [ 0.917647, 0.917647, 0.917647, 1.0 ],
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"framecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hltcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"id" : "obj-252",
					"items" : [ "transients", "off", ",", "transients", "on" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 575.0, 157.0, 75.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 534.0, 286.0, 66.0, 17.0 ],
					"textcolor" : [ 0.568627, 0.082353, 0.160784, 1.0 ],
					"textcolor2" : [ 0.568627, 0.082353, 0.160784, 1.0 ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"bgcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"bgcolor2" : [ 0.917647, 0.917647, 0.917647, 1.0 ],
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"framecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hltcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"id" : "obj-253",
					"items" : [ "sinmode", "vocoder", ",", "sinmode", "additive" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 178.0, 209.0, 84.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 620.0, 249.0, 81.0, 17.0 ],
					"textcolor" : [ 0.568627, 0.082353, 0.160784, 1.0 ],
					"textcolor2" : [ 0.568627, 0.082353, 0.160784, 1.0 ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"align" : 1,
					"arrow" : 0,
					"bgcolor" : [ 0.87451, 0.87451, 0.87451, 1.0 ],
					"bgcolor2" : [ 0.917647, 0.917647, 0.917647, 1.0 ],
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"framecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hltcolor" : [ 0.87451, 0.87451, 0.87451, 1.0 ],
					"id" : "obj-255",
					"items" : [ 3, ",", 3.5, ",", 4, ",", 4.5, ",", 5, ",", 6 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 491.0, 186.0, 34.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 537.0, 260.0, 35.0, 17.0 ],
					"textcolor" : [ 0.568627, 0.082353, 0.160784, 1.0 ],
					"textcolor2" : [ 0.568627, 0.082353, 0.160784, 1.0 ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-256",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 524.0, 173.0, 41.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 570.0, 247.0, 42.0, 17.0 ],
					"text" : "fft over"
				}

			}
, 			{
				"box" : 				{
					"align" : 1,
					"arrow" : 0,
					"bgcolor" : [ 0.87451, 0.87451, 0.87451, 1.0 ],
					"bgcolor2" : [ 0.917647, 0.917647, 0.917647, 1.0 ],
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"framecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hltcolor" : [ 0.87451, 0.87451, 0.87451, 1.0 ],
					"id" : "obj-258",
					"items" : [ 0, ",", 1, ",", 2, ",", 3, ",", 4 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 491.0, 171.0, 34.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 537.0, 245.0, 35.0, 17.0 ],
					"textcolor" : [ 0.568627, 0.082353, 0.160784, 1.0 ],
					"textcolor2" : [ 0.568627, 0.082353, 0.160784, 1.0 ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"align" : 1,
					"arrow" : 0,
					"bgcolor" : [ 0.87451, 0.87451, 0.87451, 1.0 ],
					"bgcolor2" : [ 0.917647, 0.917647, 0.917647, 1.0 ],
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"framecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hltcolor" : [ 0.87451, 0.87451, 0.87451, 1.0 ],
					"id" : "obj-259",
					"items" : [ 512, ",", 750, ",", 1024, ",", 1250, ",", 1500, ",", 1750, ",", 2048, ",", 2250, ",", 2500, ",", 2750, ",", 3000, ",", 3500, ",", 4096, ",", 5000, ",", 6000, ",", 7000, ",", 8192 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 491.0, 156.0, 34.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 537.0, 230.0, 35.0, 17.0 ],
					"textcolor" : [ 0.568627, 0.082353, 0.160784, 1.0 ],
					"textcolor2" : [ 0.568627, 0.082353, 0.160784, 1.0 ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-315",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 525.0, 160.0, 25.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 571.0, 234.0, 26.0, 17.0 ],
					"text" : "fft:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-316",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 524.0, 187.0, 50.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 570.0, 261.0, 51.0, 17.0 ],
					"text" : "oversamp"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.937255, 0.937255, 0.937255, 1.0 ],
					"border" : 1,
					"id" : "obj-317",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 489.0, 154.0, 82.0, 52.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 535.0, 228.0, 83.0, 52.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.380392, 0.611765, 0.611765, 1.0 ],
					"id" : "obj-199",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 433.0, 235.0, 31.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 164.0, 184.0, 28.0, 17.0 ],
					"text" : "error",
					"textcolor" : [ 0.380392, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.380392, 0.611765, 0.611765, 1.0 ],
					"id" : "obj-200",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 401.0, 235.0, 31.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 132.0, 184.0, 31.0, 17.0 ],
					"text" : "relax",
					"textcolor" : [ 0.380392, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
					"id" : "obj-201",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 368.0, 235.0, 31.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 99.0, 184.0, 31.0, 17.0 ],
					"text" : "trans",
					"textcolor" : [ 0.760784, 0.709804, 0.811765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
					"id" : "obj-202",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 337.0, 235.0, 31.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 68.0, 184.0, 31.0, 17.0 ],
					"text" : "noise",
					"textcolor" : [ 0.760784, 0.709804, 0.811765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
					"id" : "obj-203",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 305.0, 234.0, 31.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.0, 182.0, 31.0, 17.0 ],
					"text" : "sinus",
					"textcolor" : [ 0.760784, 0.709804, 0.811765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-286",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 432.0, 246.0, 31.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 163.0, 195.0, 31.0, 17.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-287",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 399.0, 246.0, 31.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 130.0, 195.0, 31.0, 17.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-288",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 367.0, 246.0, 31.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 98.0, 195.0, 31.0, 17.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-289",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 335.0, 246.0, 31.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 66.0, 195.0, 31.0, 17.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-290",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 303.0, 246.0, 31.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 34.0, 194.0, 31.0, 17.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"border_bottom" : 0,
					"bordercolor" : [ 0.164706, 0.164706, 0.164706, 1.0 ],
					"candicane2" : [ 0.172549, 0.172549, 0.345098, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candycane" : 5,
					"compatibility" : 1,
					"contdata" : 1,
					"id" : "obj-291",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 300.0, 120.0, 161.0, 110.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 31.0, 21.0, 163.0, 177.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 1,
					"size" : 5,
					"slidercolor" : [ 0.14902, 0.035294, 0.219608, 1.0 ],
					"spacing" : 2,
					"thickness" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-309",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "float", "float", "float", "float", "float" ],
					"patching_rect" : [ 333.0, 164.0, 101.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 757.0, 86.0, 101.0, 17.0 ],
					"text" : "unpack 0. 0. 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-5",
					"items" : [ "remix", "off", ",", "remix", "on" ],
					"labelclick" : 1,
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 204.0, 131.0, 66.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 621.0, 231.0, 79.0, 17.0 ],
					"textcolor" : [ 0.65098, 0.0, 0.019608, 1.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-75",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 493.0, 137.0, 163.0, 20.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 504.0, 77.0, 118.0, 34.0 ],
					"text" : "phase vocoder config"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 695.0, 200.0, 141.0, 19.0 ],
					"text" : "jcom.meter_receive 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 695.0, 155.0, 141.0, 19.0 ],
					"text" : "jcom.meter_receive 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 695.0, 225.0, 80.0, 4.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 151.0, 10.0, 80.0, 4.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 695.0, 180.0, 80.0, 4.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 151.0, 5.0, 80.0, 4.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 85.0, 465.0, 94.0, 19.0 ],
					"text" : "jcom.out~ 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-18",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 695.0, 35.0, 401.0, 43.0 ],
					"text" : "jcom.parameter samplerateRatio @type decimal @range/bounds 0. 1. @repetitions/allow 1 @range/clipmode both @ramp/drive scheduler @description \"A ratio of the emulated sample-rate to the global sample-rate.\"",
					"varname" : "samplerateRatio"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-19",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 695.0, 85.0, 425.0, 43.0 ],
					"text" : "jcom.parameter bitdepth @type integer @range/bounds 1 24 @range/clipmode both @ramp/drive scheduler @repetitions/allow 0 @description \"The number of bits that will be retained in each sample - use this for bit crunching effects\"",
					"varname" : "bitdepth"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 86.0, 72.0, 19.0 ],
					"text" : "control input"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-50",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 243.0, 142.0, 85.0, 17.0 ],
					"text" : "/preset/dump"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-49",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 93.0, 142.0, 144.0, 17.0 ],
					"text" : "/documentation/generate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-48",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 43.0, 117.0, 203.0, 17.0 ],
					"text" : "/preset/store 1 default, /preset/write"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-47",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 58.0, 142.0, 34.0, 17.0 ],
					"text" : "/init"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-45",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 345.0, 142.0, 206.0, 17.0 ],
					"text" : "/samplerateRatio:ramp/function cosine"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-44",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 331.0, 117.0, 115.0, 17.0 ],
					"text" : "/samplerateRatio 0.4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 90.0, 350.0, 94.0, 19.0 ],
					"text" : "jcom.in~ 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 35.0, 405.0, 132.0, 19.0 ],
					"text" : "jalg.degrade~.maxpat"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-37",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 120.0, 525.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-36",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 89.0, 525.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-35",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 13.0, 240.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-33",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 163.0, 300.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-32",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 300.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-30",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 83.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 13.0, 186.0, 548.0, 19.0 ],
					"text" : "jcom.hub @module_type audio @description \"Emulate the use of lower sample-rates and bit-resolution.\""
				}

			}
, 			{
				"box" : 				{
					"has_bypass" : 1,
					"has_gain" : 1,
					"has_meters" : 2,
					"has_mix" : 1,
					"has_mute" : 1,
					"id" : "obj-31",
					"maxclass" : "jcom.ui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"prefix" : "audio",
					"presentation" : 1,
					"presentation_rect" : [ 2.0, 2.0, 300.0, 210.0 ],
					"text" : "/editing_this_module"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-318", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-272", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-290", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-309", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-309", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-291", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-289", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-309", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-288", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-309", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-287", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-309", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-286", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-309", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-39", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-39", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 52.5, 164.0, 22.5, 164.0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 102.5, 170.0, 22.5, 170.0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 252.5, 173.0, 22.5, 173.0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 67.5, 167.0, 22.5, 167.0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 340.5, 176.0, 22.5, 176.0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 354.5, 179.0, 22.5, 179.0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ]
	}

}
