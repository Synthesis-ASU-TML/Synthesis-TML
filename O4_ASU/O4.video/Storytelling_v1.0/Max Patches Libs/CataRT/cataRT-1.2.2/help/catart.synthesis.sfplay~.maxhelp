{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 1.0, 44.0, 746.0, 625.0 ],
		"bglocked" : 0,
		"defrect" : [ 1.0, 44.0, 746.0, 625.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "import maxmsp-sequences",
					"numoutlets" : 1,
					"patching_rect" : [ 122.0, 95.0, 130.0, 15.0 ],
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "import maxmsp-sounds",
					"numoutlets" : 1,
					"patching_rect" : [ 122.0, 59.0, 115.0, 15.0 ],
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "import maxmsp-loops",
					"numoutlets" : 1,
					"patching_rect" : [ 122.0, 77.0, 108.0, 15.0 ],
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "init and import example corpora",
					"linecount" : 4,
					"numoutlets" : 0,
					"hidden" : 1,
					"patching_rect" : [ 177.0, 197.0, 57.0, 52.0 ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "all of theses grain transformations DO NOT WORK with direct-from-disk synthesis",
					"numoutlets" : 0,
					"patching_rect" : [ 281.0, 247.0, 495.0, 20.0 ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"#init" : "",
					"#triggerall" : 0,
					"patching_rect" : [ 342.0, 352.0, 61.0, 17.0 ],
					"id" : "obj-6",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"#untuple" : 0,
					"text" : [ "_reverse $1" ],
					"ftm_scope" : 1,
					"fontsize" : 9.0,
					"#loadbang" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "duration",
					"numoutlets" : 2,
					"patching_rect" : [ 284.0, 126.0, 35.0, 17.0 ],
					"id" : "obj-7",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 0,
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "std: amount of random variation of panning per grain",
					"numoutlets" : 0,
					"patching_rect" : [ 449.0, 393.0, 274.0, 18.0 ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pan: stereo position 0 (left) - 100 (right)",
					"numoutlets" : 0,
					"patching_rect" : [ 449.0, 373.0, 218.0, 18.0 ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "reverse prob [0-100%]: chance of playing grain reversed",
					"numoutlets" : 0,
					"patching_rect" : [ 449.0, 353.0, 355.0, 18.0 ],
					"id" : "obj-10",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "std: amount of random variation of gain",
					"numoutlets" : 0,
					"patching_rect" : [ 449.0, 333.0, 208.0, 18.0 ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "gain [dB]: volume change of grain",
					"numoutlets" : 0,
					"patching_rect" : [ 449.0, 313.0, 204.0, 18.0 ],
					"id" : "obj-12",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "std: amount of random variation of transposition",
					"numoutlets" : 0,
					"patching_rect" : [ 449.0, 293.0, 254.0, 18.0 ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "transposition: pitch change in half-tones",
					"numoutlets" : 0,
					"patching_rect" : [ 449.0, 273.0, 212.0, 18.0 ],
					"id" : "obj-14",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "onset std [ms]: amount of random variation of grain start",
					"numoutlets" : 0,
					"patching_rect" : [ 449.0, 187.0, 298.0, 18.0 ],
					"id" : "obj-15",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "onset_std",
					"numoutlets" : 2,
					"patching_rect" : [ 284.0, 184.0, 35.0, 17.0 ],
					"id" : "obj-16",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 0,
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "size std [ms]: amount of random variation around grain size",
					"numoutlets" : 0,
					"patching_rect" : [ 449.0, 158.0, 310.0, 18.0 ],
					"id" : "obj-17",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "duration_std",
					"numoutlets" : 2,
					"patching_rect" : [ 284.0, 155.0, 35.0, 17.0 ],
					"id" : "obj-18",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 0,
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "attack and release fade times separately",
					"numoutlets" : 0,
					"patching_rect" : [ 449.0, 108.0, 214.0, 18.0 ],
					"id" : "obj-19",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "release",
					"numoutlets" : 2,
					"patching_rect" : [ 323.0, 85.0, 35.0, 17.0 ],
					"id" : "obj-20",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 0,
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "attack",
					"numoutlets" : 2,
					"patching_rect" : [ 284.0, 86.0, 35.0, 17.0 ],
					"id" : "obj-21",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 0,
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t l",
					"numoutlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 206.0, 328.0, 18.0, 17.0 ],
					"id" : "obj-22",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "crossfade time [ms]: fade-in and fade-out time of each grain",
					"numoutlets" : 0,
					"patching_rect" : [ 449.0, 68.0, 345.0, 18.0 ],
					"id" : "obj-23",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "grain size [ms]: force length of played grain, 0 means original size from segmentation",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 449.0, 129.0, 251.0, 29.0 ],
					"id" : "obj-24",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "xfade",
					"numoutlets" : 2,
					"patching_rect" : [ 284.0, 63.0, 35.0, 17.0 ],
					"id" : "obj-25",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 0,
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"patching_rect" : [ 10.0, 402.0, 35.0, 23.0 ],
					"id" : "obj-26",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"fontsize" : 14.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "import",
					"numoutlets" : 1,
					"patching_rect" : [ 10.0, 264.0, 40.0, 15.0 ],
					"id" : "obj-27",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "catart.synthesis~ <corpusname>",
					"numoutlets" : 0,
					"patching_rect" : [ 1.0, 32.0, 239.0, 23.0 ],
					"id" : "obj-28",
					"fontname" : "Arial Black",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 556.0, 33.0, 33.0 ],
					"id" : "obj-29",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 27.0, 74.0, 15.0, 15.0 ],
					"id" : "obj-30",
					"outlettype" : [ "bang" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "export",
					"numoutlets" : 1,
					"patching_rect" : [ 55.0, 216.0, 40.0, 15.0 ],
					"id" : "obj-31",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "import",
					"numoutlets" : 1,
					"patching_rect" : [ 10.0, 216.0, 40.0, 15.0 ],
					"id" : "obj-32",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "cataRT modules help",
					"numoutlets" : 0,
					"patching_rect" : [ 1.0, 13.0, 324.0, 20.0 ],
					"id" : "obj-33",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "empty corpus",
					"numoutlets" : 1,
					"patching_rect" : [ 18.0, 302.0, 150.0, 15.0 ],
					"id" : "obj-34",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "segmentation",
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 119.0, 69.0, 17.0 ],
					"id" : "obj-35",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 80.0, 119.0, 143.0, 17.0 ],
					"id" : "obj-36",
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Arial",
					"pattrmode" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"items" : [ "none", ",", "chop", ",", "split", ",", "import sdif", ",", "import ascii", ",", "yin note segmentation", ",", "silence segmentation", ",", "import soundfile markers" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 2,
					"args" : [  ],
					"patching_rect" : [ 10.0, 134.0, 213.0, 33.0 ],
					"id" : "obj-37",
					"outlettype" : [ "", "clear" ],
					"border" : 1,
					"name" : "catart.segmentation.params.maxpat",
					"offset" : [ 0.0, -82.0 ],
					"numinlets" : 1,
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 10.0, 74.0, 15.0, 15.0 ],
					"id" : "obj-38",
					"outlettype" : [ "bang" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"#init" : "",
					"hidden" : 1,
					"#triggerall" : 0,
					"patching_rect" : [ 124.0, 72.0, 81.0, 17.0 ],
					"id" : "obj-39",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"#untuple" : 0,
					"text" : [ "_import-limit $1" ],
					"ftm_scope" : 0,
					"fontsize" : 9.0,
					"#loadbang" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s synthelp_catart.import",
					"numoutlets" : 0,
					"hidden" : 1,
					"patching_rect" : [ 125.0, 91.0, 130.0, 17.0 ],
					"id" : "obj-40",
					"fontname" : "Arial",
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.init synthelp",
					"numoutlets" : 2,
					"patching_rect" : [ 10.0, 93.0, 104.0, 17.0 ],
					"id" : "obj-41",
					"outlettype" : [ "bang", "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart",
					"text" : "catart.data synthelp",
					"numoutlets" : 2,
					"patching_rect" : [ 10.0, 234.0, 120.0, 17.0 ],
					"id" : "obj-42",
					"outlettype" : [ "", "bang" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.select synthelp",
					"numoutlets" : 3,
					"patching_rect" : [ 10.0, 371.0, 115.0, 17.0 ],
					"id" : "obj-43",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart.lcd",
					"text" : "catart.lcd synthelp",
					"numoutlets" : 3,
					"patching_rect" : [ 10.0, 347.0, 116.0, 17.0 ],
					"id" : "obj-44",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.synthesis.sfplay~ synthelp",
					"numoutlets" : 2,
					"patching_rect" : [ 10.0, 438.0, 241.0, 23.0 ],
					"id" : "obj-45",
					"outlettype" : [ "signal", "signal" ],
					"fontname" : "Arial",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"fontsize" : 14.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"patching_rect" : [ 10.0, 173.0, 37.0, 17.0 ],
					"id" : "obj-46",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 0.0,
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"numoutlets" : 2,
					"patching_rect" : [ 51.0, 481.0, 22.0, 65.0 ],
					"id" : "obj-47",
					"outlettype" : [ "signal", "int" ],
					"orientation" : 2,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"patching_rect" : [ 10.0, 481.0, 13.0, 66.0 ],
					"id" : "obj-48",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"interval" : 100,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"patching_rect" : [ 76.0, 481.0, 13.0, 66.0 ],
					"id" : "obj-49",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"interval" : 100,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"numoutlets" : 2,
					"patching_rect" : [ 26.0, 481.0, 22.0, 65.0 ],
					"id" : "obj-50",
					"outlettype" : [ "signal", "int" ],
					"orientation" : 2,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "import limit [s]",
					"numoutlets" : 0,
					"patching_rect" : [ 58.0, 176.0, 80.0, 17.0 ],
					"id" : "obj-51",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.import synthelp",
					"numoutlets" : 3,
					"patching_rect" : [ 10.0, 281.0, 119.0, 17.0 ],
					"id" : "obj-52",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"ignoreclick" : 1,
					"numoutlets" : 2,
					"types" : [  ],
					"patching_rect" : [ 5.0, 194.0, 149.0, 329.0 ],
					"rounded" : 0.0,
					"id" : "obj-53",
					"outlettype" : [ "", "" ],
					"border" : 0.0,
					"background" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.vecdisplay",
					"fgcolor5" : [ 1.0, 1.0, 0.0, 1.0 ],
					"numoutlets" : 6,
					"patching_rect" : [ 51.0, 264.0, 95.0, 16.0 ],
					"fgcolor4" : [ 1.0, 0.0, 1.0, 1.0 ],
					"id" : "obj-54",
					"outlettype" : [ "", "", "", "", "", "" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ftm_scope" : 0,
					"view1" : 2,
					"fgcolor1" : [ 0.235294, 0.603922, 0.352941, 1.0 ],
					"numinlets" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "grain picking",
					"numoutlets" : 0,
					"patching_rect" : [ 281.0, 40.0, 88.0, 20.0 ],
					"id" : "obj-55",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "int: selected unit index -> play unit",
					"numoutlets" : 0,
					"patching_rect" : [ 72.0, 406.0, 168.0, 17.0 ],
					"id" : "obj-56",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"#init" : "",
					"#triggerall" : 0,
					"patching_rect" : [ 342.0, 64.0, 50.0, 17.0 ],
					"id" : "obj-57",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"#untuple" : 0,
					"text" : [ "_xfade $1" ],
					"ftm_scope" : 0,
					"fontsize" : 9.0,
					"#loadbang" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"#init" : "",
					"#triggerall" : 0,
					"patching_rect" : [ 342.0, 128.0, 62.0, 17.0 ],
					"id" : "obj-58",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"#untuple" : 0,
					"text" : [ "_duration $1" ],
					"ftm_scope" : 0,
					"fontsize" : 9.0,
					"#loadbang" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"#init" : "",
					"#triggerall" : 0,
					"patching_rect" : [ 342.0, 157.0, 82.0, 17.0 ],
					"id" : "obj-59",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"#untuple" : 0,
					"text" : [ "_duration_std $1" ],
					"ftm_scope" : 0,
					"fontsize" : 9.0,
					"#loadbang" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"#init" : "",
					"#triggerall" : 0,
					"patching_rect" : [ 342.0, 186.0, 69.0, 17.0 ],
					"id" : "obj-60",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"#untuple" : 0,
					"text" : [ "_onset_std $1" ],
					"ftm_scope" : 0,
					"fontsize" : 9.0,
					"#loadbang" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"#init" : "",
					"#triggerall" : 0,
					"patching_rect" : [ 342.0, 272.0, 84.0, 17.0 ],
					"id" : "obj-61",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"#untuple" : 0,
					"text" : [ "_transposition $1" ],
					"ftm_scope" : 0,
					"fontsize" : 9.0,
					"#loadbang" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"#init" : "",
					"#triggerall" : 0,
					"patching_rect" : [ 342.0, 292.0, 104.0, 17.0 ],
					"id" : "obj-62",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"#untuple" : 0,
					"text" : [ "_transposition_std $1" ],
					"ftm_scope" : 0,
					"fontsize" : 9.0,
					"#loadbang" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"#init" : "",
					"#triggerall" : 0,
					"patching_rect" : [ 342.0, 312.0, 50.0, 17.0 ],
					"id" : "obj-63",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"#untuple" : 0,
					"text" : [ "_gain $1" ],
					"ftm_scope" : 0,
					"fontsize" : 9.0,
					"#loadbang" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"#init" : "",
					"#triggerall" : 0,
					"patching_rect" : [ 342.0, 332.0, 63.0, 17.0 ],
					"id" : "obj-64",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"#untuple" : 0,
					"text" : [ "_gain_std $1" ],
					"ftm_scope" : 0,
					"fontsize" : 9.0,
					"#loadbang" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"#init" : "",
					"#triggerall" : 0,
					"patching_rect" : [ 342.0, 372.0, 50.0, 17.0 ],
					"id" : "obj-65",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"#untuple" : 0,
					"text" : [ "_pan $1" ],
					"ftm_scope" : 0,
					"fontsize" : 9.0,
					"#loadbang" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"#init" : "",
					"#triggerall" : 0,
					"patching_rect" : [ 342.0, 392.0, 60.0, 17.0 ],
					"id" : "obj-66",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"#untuple" : 0,
					"text" : [ "_pan_std $1" ],
					"ftm_scope" : 0,
					"fontsize" : 9.0,
					"#loadbang" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 0. 0.",
					"numoutlets" : 1,
					"patching_rect" : [ 284.0, 104.0, 49.0, 17.0 ],
					"id" : "obj-67",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 1,
					"#init" : "",
					"#triggerall" : 0,
					"patching_rect" : [ 342.0, 104.0, 72.0, 17.0 ],
					"id" : "obj-68",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"#untuple" : 0,
					"text" : [ "_env_ar $1 $2" ],
					"ftm_scope" : 2,
					"fontsize" : 9.0,
					"#loadbang" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"ignoreclick" : 1,
					"numoutlets" : 2,
					"types" : [  ],
					"patching_rect" : [ 5.0, 194.0, 149.0, 329.0 ],
					"rounded" : 0.0,
					"id" : "obj-69",
					"outlettype" : [ "", "" ],
					"border" : 0.0,
					"background" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 257.0, 29.0, 472.0, 205.0 ],
					"rounded" : 25,
					"id" : "obj-70",
					"border" : 1,
					"bgcolor" : [ 0.796078, 0.145098, 0.356863, 1.0 ],
					"background" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 257.0, 239.0, 472.0, 197.0 ],
					"rounded" : 25,
					"id" : "obj-71",
					"border" : 1,
					"bgcolor" : [ 1.0, 0.168627, 0.188235, 1.0 ],
					"background" : 1,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-67", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-41", 1 ],
					"hidden" : 0,
					"midpoints" : [ 36.0, 91.0, 104.5, 91.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 1 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"midpoints" : [ 241.5, 471.0, 83.0, 471.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-52", 1 ],
					"hidden" : 1,
					"midpoints" : [ 14.5, 526.0, 151.0, 526.0, 151.0, 213.0, 69.5, 213.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 1 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 1 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 1 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [ 241.5, 471.0, 60.0, 471.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [ 19.5, 471.0, 35.0, 471.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 2 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 1,
					"midpoints" : [ 19.5, 471.0, 17.0, 471.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 1 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [ 68.0, 432.0, 19.5, 432.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 19.5, 399.0, 19.5, 399.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-52", 0 ],
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
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
