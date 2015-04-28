{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 675.0, 371.0, 399.0, 129.0 ],
		"bgcolor" : [ 0.529412, 1.0, 0.133333, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 1084.0, 371.0, 399.0, 128.0 ],
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
		"enablehscroll" : 0,
		"enablevscroll" : 0,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-67",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 469.0, 37.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 372.0, 9.0, 28.0, 20.0 ],
					"text" : "dry"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"frgb" : [ 0.145098, 0.07451, 0.376471, 1.0 ],
					"id" : "obj-61",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1.0, 5.0, 107.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 128.0, 94.0, 107.0, 23.0 ],
					"text" : "nav.delay.scrub",
					"textcolor" : [ 0.145098, 0.07451, 0.376471, 1.0 ]
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
					"id" : "obj-1",
					"maxclass" : "number",
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 116.0, 254.0, 41.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 115.0, 113.0, 41.0, 17.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 347.0, 328.0, 49.0, 17.0 ],
					"text" : "pak 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 343.0, 327.0, 66.0, 17.0 ],
					"text" : "line 0.5 20"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 157.0, 255.0, 97.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 156.0, 113.0, 97.0, 17.0 ],
					"text" : "transition time ms"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 338.0, 104.0, 25.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 107.0, 33.0, 25.0, 17.0 ],
					"text" : "ms"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 337.0, 64.0, 25.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 40.0, 33.0, 25.0, 17.0 ],
					"text" : "ms"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 84.0, 129.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 159.0, 57.0, 16.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 8.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 100.0, 129.0, 80.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 159.0, 57.0, 41.0, 16.0 ],
					"text" : "nav.rand",
					"varname" : "nav.rand[2]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4.0, 254.0, 110.0, 17.0 ],
					"text" : "scale 0 728 -500 100"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.8, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-10",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"orientation" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4.0, 231.0, 394.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 96.0, 394.0, 20.0 ],
					"size" : 728.0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 52.0, 324.0, 29.0, 15.0 ],
					"text" : "127"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-13",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 304.0, 9.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 172.0, 167.0, 143.0, 17.0 ],
					"text" : "reset record playback points."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 302.0, 167.0, 41.0, 15.0 ],
					"text" : "trigger"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-16",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 354.0, 193.0, 175.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 152.0, 31.0, 179.0, 17.0 ],
					"text" : "use input (1, def) or output (0) on feedback"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 336.0, 194.0, 17.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 134.0, 31.0, 17.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 336.0, 212.0, 45.0, 15.0 ],
					"text" : "sync $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 214.0, 270.0, 26.0, 15.0 ],
					"text" : "100"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 182.0, 271.0, 30.0, 17.0 ],
					"text" : "line~"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.631373, 0.207843, 0.34902, 1.0 ],
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-21",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 100.0, 148.0, 46.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 114.0, 57.0, 45.0, 23.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 22.0, 147.0, 74.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 116.0, 76.0, 45.0, 17.0 ],
					"text" : "feedback"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 304.0, 43.0, 51.0, 15.0 ],
					"text" : "power $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 304.0, 25.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 109.0, 2.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 51.0, 310.0, 79.0, 17.0 ],
					"text" : "scrubbed signal"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 134.0, 310.0, 22.0, 62.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 371.0, 31.0, 14.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.407843, 0.407843, 0.407843, 1.0 ],
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"id" : "obj-27",
					"interval" : 100,
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 156.0, 310.0, 13.0, 62.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 385.0, 31.0, 12.0, 62.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 295.0, 326.0, 26.0, 15.0 ],
					"text" : "100"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 138.0, 271.0, 30.0, 17.0 ],
					"text" : "line~"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-30",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 301.0, 102.0, 35.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 74.0, 33.0, 35.0, 17.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-31",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 301.0, 62.0, 35.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 33.0, 35.0, 17.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 100.0, 96.0, 45.0, 15.0 ],
					"text" : "delay $1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.631373, 0.207843, 0.34902, 1.0 ],
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-33",
					"maxclass" : "number",
					"maximum" : 3000,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 100.0, 78.0, 63.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 55.0, 45.0, 23.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 301.0, 142.0, 28.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 229.0, 2.0, 28.0, 15.0 ],
					"text" : "zero"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 301.0, 80.0, 45.0, 15.0 ],
					"text" : "ramp $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-36",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 301.0, 119.0, 55.0, 15.0 ],
					"text" : "overlap $1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.8, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-37",
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 7.0, 309.0, 23.0, 82.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 336.0, 1.0, 20.0, 94.0 ],
					"stripecolor" : [ 0.66667, 0.66667, 0.66667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.407843, 0.407843, 0.407843, 1.0 ],
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"id" : "obj-38",
					"interval" : 100,
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 32.0, 309.0, 18.0, 82.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 357.0, 1.0, 12.0, 94.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 5.0, 290.0, 185.0, 17.0 ],
					"text" : "scrubf~"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.631373, 0.207843, 0.34902, 1.0 ],
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-40",
					"maxclass" : "flonum",
					"maximum" : 3000.0,
					"minimum" : -3000.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 295.0, 298.0, 73.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 245.0, 58.0, 57.0, 23.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-41",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5.0, 394.0, 403.0, 27.0 ],
					"text" : "• scrubf~ varies a delay line by the rate given in the middle inlet. the right inlet controls how much of the sound is retained from previous runs through the delay line."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-42",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 77.0, 69.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 74.0, 50.0, 17.0 ],
					"text" : "max delay"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-43",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 242.0, 63.0, 62.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 19.0, 63.0, 17.0 ],
					"text" : "ramp buff rec"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-44",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 261.0, 103.0, 41.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 75.0, 19.0, 41.0, 17.0 ],
					"text" : "overlap "
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-45",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 206.0, 143.0, 115.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 134.0, 2.0, 115.0, 17.0 ],
					"text" : "zero out the delay line"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-46",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 235.0, 300.0, 55.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 249.0, 78.0, 55.0, 17.0 ],
					"text" : "SCRUB it!"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 171.0, 311.0, 51.0, 17.0 ],
					"text" : "dry signal"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 265.0, 281.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 301.0, 58.0, 16.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 8.0,
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 281.0, 280.0, 80.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 299.0, 58.0, 41.0, 16.0 ],
					"text" : "nav.rand",
					"varname" : "nav.rand"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 84.0, 59.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 48.0, 54.0, 17.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 8.0,
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 100.0, 59.0, 80.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 47.0, 54.0, 41.0, 16.0 ],
					"text" : "nav.rand",
					"varname" : "nav.rand[1]"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 0,
					"patching_rect" : [ 460.0, 75.0, 100.0, 17.0 ],
					"text" : "bgcolor 135 255 34"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-53",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 226.0, 12.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 281.0, 356.0, 46.0, 17.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-55",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 327.0, 358.0, 16.0, 15.0 ],
					"text" : "1"
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
					"patching_rect" : [ 181.0, 373.0, 226.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 259.0, 4.0, 69.0, 26.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-50", "toggle", "int", 0, 5, "obj-48", "toggle", "int", 0, 5, "obj-40", "flonum", "float", -383.0, 6, "obj-37", "gain~", "list", 117, 10.0, 5, "obj-33", "number", "int", 0, 5, "obj-31", "number", "int", 0, 5, "obj-30", "number", "int", 0, 6, "obj-26", "gain~", "list", 0, 10.0, 5, "obj-24", "toggle", "int", 0, 5, "obj-21", "flonum", "float", 0.8, 5, "obj-17", "toggle", "int", 0, 5, "obj-10", "slider", "float", 141.0, 5, "obj-7", "toggle", "int", 0, 5, "obj-1", "number", "int", 0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-50", "toggle", "int", 0, 5, "obj-48", "toggle", "int", 0, 5, "obj-40", "flonum", "float", -5.72, 6, "obj-37", "gain~", "list", 117, 10.0, 5, "obj-33", "number", "int", 50, 5, "obj-31", "number", "int", 0, 5, "obj-30", "number", "int", 0, 6, "obj-26", "gain~", "list", 0, 10.0, 5, "obj-24", "toggle", "int", 1, 5, "obj-21", "flonum", "float", 0.5, 5, "obj-17", "toggle", "int", 1, 5, "obj-10", "slider", "int", 141 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-50", "toggle", "int", 0, 5, "obj-48", "toggle", "int", 0, 5, "obj-40", "flonum", "float", -44.0, 6, "obj-37", "gain~", "list", 88, 10.0, 5, "obj-33", "number", "int", 200, 5, "obj-31", "number", "int", 0, 5, "obj-30", "number", "int", 0, 6, "obj-26", "gain~", "list", 0, 10.0, 5, "obj-24", "toggle", "int", 1, 5, "obj-21", "flonum", "float", 0.8, 5, "obj-17", "toggle", "int", 0, 5, "obj-10", "slider", "int", 141, 5, "obj-7", "toggle", "int", 0, 5, "obj-1", "number", "int", 0 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-50", "toggle", "int", 0, 5, "obj-48", "toggle", "int", 0, 5, "obj-40", "flonum", "float", 4.0, 6, "obj-37", "gain~", "list", 0, 10.0, 5, "obj-33", "number", "int", 200, 5, "obj-31", "number", "int", 0, 5, "obj-30", "number", "int", 0, 6, "obj-26", "gain~", "list", 0, 10.0, 5, "obj-24", "toggle", "int", 1, 5, "obj-21", "flonum", "float", 0.8, 5, "obj-17", "toggle", "int", 0, 5, "obj-10", "slider", "int", 141, 5, "obj-7", "toggle", "int", 0, 5, "obj-1", "number", "int", 0 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-50", "toggle", "int", 0, 5, "obj-48", "toggle", "int", 0, 5, "obj-40", "flonum", "float", -383.0, 6, "obj-37", "gain~", "list", 117, 10.0, 5, "obj-33", "number", "int", 0, 5, "obj-31", "number", "int", 0, 5, "obj-30", "number", "int", 0, 6, "obj-26", "gain~", "list", 0, 10.0, 5, "obj-24", "toggle", "int", 1, 5, "obj-21", "flonum", "float", 0.8, 5, "obj-17", "toggle", "int", 0, 5, "obj-10", "slider", "int", 141, 5, "obj-7", "toggle", "int", 0, 5, "obj-1", "number", "int", 0 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-50", "toggle", "int", 0, 5, "obj-48", "toggle", "int", 0, 5, "obj-40", "flonum", "float", 0.25, 6, "obj-37", "gain~", "list", 127, 10.0, 5, "obj-33", "number", "int", 50, 5, "obj-31", "number", "int", 0, 5, "obj-30", "number", "int", 0, 6, "obj-26", "gain~", "list", 0, 10.0, 5, "obj-24", "toggle", "int", 1, 5, "obj-21", "flonum", "float", 0.8, 5, "obj-17", "toggle", "int", 1 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-50", "toggle", "int", 0, 5, "obj-48", "toggle", "int", 0, 5, "obj-40", "flonum", "float", -2.0, 6, "obj-37", "gain~", "list", 127, 10.0, 5, "obj-33", "number", "int", 2000, 5, "obj-31", "number", "int", 500, 5, "obj-30", "number", "int", 500, 6, "obj-26", "gain~", "list", 0, 10.0, 5, "obj-24", "toggle", "int", 1, 5, "obj-21", "flonum", "float", 0.95, 5, "obj-17", "toggle", "int", 1 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-50", "toggle", "int", 0, 5, "obj-48", "toggle", "int", 0, 5, "obj-40", "flonum", "float", -10.0, 6, "obj-37", "gain~", "list", 127, 10.0, 5, "obj-33", "number", "int", 200, 5, "obj-31", "number", "int", 100, 5, "obj-30", "number", "int", 100, 6, "obj-26", "gain~", "list", 0, 10.0, 5, "obj-24", "toggle", "int", 1, 5, "obj-21", "flonum", "float", -6.0, 5, "obj-17", "toggle", "int", 1 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "obj-50", "toggle", "int", 0, 5, "obj-48", "toggle", "int", 0, 5, "obj-40", "flonum", "float", 0.0, 6, "obj-37", "gain~", "list", 88, 10.0, 5, "obj-33", "number", "int", 0, 5, "obj-31", "number", "int", 0, 5, "obj-30", "number", "int", 0, 6, "obj-26", "gain~", "list", 0, 10.0, 5, "obj-24", "toggle", "int", 1, 5, "obj-21", "flonum", "float", 0.0, 5, "obj-17", "toggle", "int", 0, 5, "obj-10", "slider", "int", 141, 5, "obj-7", "toggle", "int", 0, 5, "obj-1", "number", "int", 0 ]
						}
, 						{
							"number" : 10,
							"data" : [ 5, "obj-50", "toggle", "int", 0, 5, "obj-48", "toggle", "int", 0, 5, "obj-40", "flonum", "float", 0.0, 6, "obj-37", "gain~", "list", 88, 10.0, 5, "obj-33", "number", "int", 0, 5, "obj-31", "number", "int", 0, 5, "obj-30", "number", "int", 0, 6, "obj-26", "gain~", "list", 0, 10.0, 5, "obj-24", "toggle", "int", 1, 5, "obj-21", "flonum", "float", 0.0, 5, "obj-17", "toggle", "int", 0, 5, "obj-10", "slider", "int", 141, 5, "obj-7", "toggle", "int", 0, 5, "obj-1", "number", "int", 0 ]
						}
, 						{
							"number" : 11,
							"data" : [ 5, "obj-50", "toggle", "int", 0, 5, "obj-48", "toggle", "int", 0, 5, "obj-40", "flonum", "float", 0.0, 6, "obj-37", "gain~", "list", 88, 10.0, 5, "obj-33", "number", "int", 0, 5, "obj-31", "number", "int", 0, 5, "obj-30", "number", "int", 0, 6, "obj-26", "gain~", "list", 0, 10.0, 5, "obj-24", "toggle", "int", 1, 5, "obj-21", "flonum", "float", 0.0, 5, "obj-17", "toggle", "int", 0, 5, "obj-10", "slider", "int", 141, 5, "obj-7", "toggle", "int", 0, 5, "obj-1", "number", "int", 0 ]
						}
, 						{
							"number" : 12,
							"data" : [ 5, "obj-50", "toggle", "int", 0, 5, "obj-48", "toggle", "int", 0, 5, "obj-40", "flonum", "float", 0.0, 6, "obj-37", "gain~", "list", 117, 10.0, 5, "obj-33", "number", "int", 0, 5, "obj-31", "number", "int", 0, 5, "obj-30", "number", "int", 0, 6, "obj-26", "gain~", "list", 0, 10.0, 5, "obj-24", "toggle", "int", 0, 5, "obj-21", "flonum", "float", 0.0, 5, "obj-17", "toggle", "int", 0, 5, "obj-10", "slider", "int", 141, 5, "obj-7", "toggle", "int", 0, 5, "obj-1", "number", "int", 0 ]
						}
, 						{
							"number" : 13,
							"data" : [ 5, "obj-50", "toggle", "int", 0, 5, "obj-48", "toggle", "int", 0, 5, "obj-40", "flonum", "float", 0.0, 6, "obj-37", "gain~", "list", 117, 10.0, 5, "obj-33", "number", "int", 0, 5, "obj-31", "number", "int", 0, 5, "obj-30", "number", "int", 0, 6, "obj-26", "gain~", "list", 0, 10.0, 5, "obj-24", "toggle", "int", 0, 5, "obj-21", "flonum", "float", 0.0, 5, "obj-17", "toggle", "int", 0, 5, "obj-10", "slider", "int", 141, 5, "obj-7", "toggle", "int", 0, 5, "obj-1", "number", "int", 0 ]
						}
 ],
					"spacing" : 2
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 344.0, 356.0, 40.0, 17.0 ],
					"text" : "r patch"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-58",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 68.0, 377.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.407843, 0.407843, 0.407843, 1.0 ],
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"id" : "obj-59",
					"interval" : 100,
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 226.0, 30.0, 71.0, 12.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 3.0, 58.0, 12.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 242.0, 5.0, 40.0, 17.0 ],
					"text" : " in"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-62",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 321.0, 28.0, 45.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 73.0, 2.0, 45.0, 17.0 ],
					"text" : "on / off"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-63",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 163.0, 86.0, 25.0, 17.0 ],
					"text" : "ms"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.223529, 1.0, 0.035294, 1.0 ],
					"id" : "obj-64",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 228.0, 275.0, 156.0, 67.0 ],
					"rounded" : 20
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-65",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 322.0, 254.0, 46.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 321.0, 112.0, 46.0, 17.0 ],
					"text" : "l zero"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-1", 0 ]
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
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 2 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 109.5, 182.0, 223.5, 182.0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [ 109.5, 182.0, 191.5, 182.0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 1 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 1 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{

		}

	}

}
