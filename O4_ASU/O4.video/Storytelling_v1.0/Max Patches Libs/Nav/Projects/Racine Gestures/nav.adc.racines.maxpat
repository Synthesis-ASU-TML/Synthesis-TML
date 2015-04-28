{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 356.0, 355.0, 199.0, 162.0 ],
		"bgcolor" : [ 0.513726, 0.772549, 0.003922, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 356.0, 355.0, 199.0, 162.0 ],
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
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 251.0, 45.0, 77.0, 20.0 ],
					"text" : "adc~ 1 2 5 6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 157.0, 23.0, 31.0, 20.0 ],
					"text" : "r s4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 113.0, 24.0, 31.0, 20.0 ],
					"text" : "r s3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 74.0, 25.0, 31.0, 20.0 ],
					"text" : "r s2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 32.0, 25.0, 31.0, 20.0 ],
					"text" : "r s1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 12.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-20",
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"patching_rect" : [ 157.0, 4.0, 26.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 161.0, 2.0, 19.0, 19.0 ],
					"text" : "S"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 12.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-19",
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"patching_rect" : [ 114.0, 4.0, 26.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 118.0, 2.0, 19.0, 19.0 ],
					"text" : "B"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 12.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-11",
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"patching_rect" : [ 71.0, 4.0, 26.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 75.0, 2.0, 19.0, 19.0 ],
					"text" : "C"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 12.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-10",
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"patching_rect" : [ 32.0, 4.0, 26.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.0, 2.0, 19.0, 19.0 ],
					"text" : "V"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-4",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 123.0, 208.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-3",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 95.0, 208.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-2",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 66.0, 207.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-1",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 37.0, 207.0, 25.0, 25.0 ]
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
					"patching_rect" : [ 126.0, 167.0, 33.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 126.0, 141.0, 33.0, 17.0 ],
					"text" : "chns"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 92.0, 185.0, 53.0, 15.0 ],
					"text" : "nchans $1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-8",
					"maxclass" : "number",
					"maximum" : 16,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 105.0, 164.0, 20.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.0, 138.0, 20.0, 18.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 182.0, 146.0, 89.0, 17.0 ],
					"text" : "prepend samptype"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-12",
					"items" : [ "int8", ",", "int16", ",", "int24", ",", "int32", ",", "float32", ",", "float64", ",", "mulaw", ",", "alaw" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 39.0, 164.0, 65.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 39.0, 138.0, 65.0, 17.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 39.0, 146.0, 35.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 39.0, 120.0, 35.0, 16.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 75.0, 146.0, 17.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 75.0, 120.0, 17.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 94.0, 146.0, 62.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 94.0, 120.0, 62.0, 17.0 ],
					"text" : "sfrecord~ 8"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 0,
					"patching_rect" : [ 147.0, 341.0, 94.0, 17.0 ],
					"text" : "bgcolor 131 197 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-17",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 4.0, 159.0, 30.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 137.0, 30.0, 17.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.380392, 0.611765, 0.611765, 1.0 ],
					"id" : "obj-18",
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 3.0, 28.0, 29.0, 129.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 3.0, 29.0, 132.0 ],
					"stripecolor" : [ 0.66667, 0.66667, 0.66667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"coldcolor" : [ 0.384314, 0.0, 0.705882, 1.0 ],
					"dbperled" : 2,
					"hotcolor" : [ 0.996078, 0.690196, 0.164706, 1.0 ],
					"id" : "obj-23",
					"maxclass" : "meter~",
					"ntepidleds" : 5,
					"numinlets" : 1,
					"numleds" : 20,
					"numoutlets" : 1,
					"nwarmleds" : 4,
					"outlettype" : [ "float" ],
					"overloadcolor" : [ 0.996078, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 180.0, 47.0, 14.0, 93.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 180.0, 22.0, 14.0, 93.0 ],
					"tepidcolor" : [ 0.0, 0.584314, 0.470588, 1.0 ],
					"warmcolor" : [ 0.768627, 0.835294, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"coldcolor" : [ 0.384314, 0.0, 0.705882, 1.0 ],
					"dbperled" : 2,
					"hotcolor" : [ 0.996078, 0.690196, 0.164706, 1.0 ],
					"id" : "obj-24",
					"maxclass" : "meter~",
					"ntepidleds" : 5,
					"numinlets" : 1,
					"numleds" : 20,
					"numoutlets" : 1,
					"nwarmleds" : 4,
					"outlettype" : [ "float" ],
					"overloadcolor" : [ 0.996078, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 138.0, 47.0, 14.0, 93.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 138.0, 22.0, 14.0, 93.0 ],
					"tepidcolor" : [ 0.0, 0.584314, 0.470588, 1.0 ],
					"warmcolor" : [ 0.768627, 0.835294, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"coldcolor" : [ 0.384314, 0.0, 0.705882, 1.0 ],
					"dbperled" : 2,
					"hotcolor" : [ 0.996078, 0.690196, 0.164706, 1.0 ],
					"id" : "obj-25",
					"maxclass" : "meter~",
					"ntepidleds" : 5,
					"numinlets" : 1,
					"numleds" : 20,
					"numoutlets" : 1,
					"nwarmleds" : 4,
					"outlettype" : [ "float" ],
					"overloadcolor" : [ 0.996078, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 96.0, 47.0, 14.0, 93.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 96.0, 22.0, 14.0, 93.0 ],
					"tepidcolor" : [ 0.0, 0.584314, 0.470588, 1.0 ],
					"warmcolor" : [ 0.768627, 0.835294, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"coldcolor" : [ 0.384314, 0.0, 0.705882, 1.0 ],
					"dbperled" : 2,
					"hotcolor" : [ 0.996078, 0.690196, 0.164706, 1.0 ],
					"id" : "obj-26",
					"maxclass" : "meter~",
					"ntepidleds" : 5,
					"numinlets" : 1,
					"numleds" : 20,
					"numoutlets" : 1,
					"nwarmleds" : 4,
					"outlettype" : [ "float" ],
					"overloadcolor" : [ 0.996078, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 55.0, 47.0, 14.0, 93.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 55.0, 22.0, 14.0, 93.0 ],
					"tepidcolor" : [ 0.0, 0.584314, 0.470588, 1.0 ],
					"warmcolor" : [ 0.768627, 0.835294, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-61",
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 160.0, 47.0, 18.0, 94.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 160.0, 22.0, 18.0, 94.0 ],
					"stripecolor" : [ 0.66667, 0.66667, 0.66667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-62",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 158.0, 255.0, 41.0, 27.0 ],
					"text" : "send~ ad4_sig"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-63",
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 118.0, 47.0, 18.0, 94.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 118.0, 22.0, 18.0, 94.0 ],
					"stripecolor" : [ 0.66667, 0.66667, 0.66667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-64",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 116.0, 255.0, 41.0, 27.0 ],
					"text" : "send~ ad3_sig"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-65",
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 76.0, 47.0, 18.0, 94.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 76.0, 22.0, 18.0, 94.0 ],
					"stripecolor" : [ 0.66667, 0.66667, 0.66667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-66",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 74.0, 255.0, 41.0, 27.0 ],
					"text" : "send~ ad2_sig"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-67",
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 35.0, 47.0, 18.0, 94.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 35.0, 22.0, 18.0, 94.0 ],
					"stripecolor" : [ 0.66667, 0.66667, 0.66667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-68",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 32.0, 255.0, 41.0, 27.0 ],
					"text" : "send~ ad1_sig"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-70",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 62.0, 337.0, 16.0, 15.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 78.0, 336.0, 46.0, 17.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"bubblesize" : 8,
					"id" : "obj-72",
					"margin" : 4,
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 163.0, 142.0, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 163.0, 116.0, 27.0, 37.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 6, "obj-18", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 2, 5, "obj-8", "number", "int", 5, 5, "<invalid>", "toggle", "int", 0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 6, "obj-18", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
						}
, 						{
							"number" : 3,
							"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 6, "obj-18", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
						}
, 						{
							"number" : 4,
							"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 6, "obj-18", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
						}
, 						{
							"number" : 5,
							"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 6, "obj-18", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
						}
, 						{
							"number" : 6,
							"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 6, "obj-18", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
						}
, 						{
							"number" : 7,
							"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 6, "obj-18", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
						}
, 						{
							"number" : 8,
							"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 6, "obj-18", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
						}
, 						{
							"number" : 9,
							"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 6, "obj-18", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
						}
, 						{
							"number" : 10,
							"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 6, "obj-18", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
						}
, 						{
							"number" : 11,
							"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 6, "obj-18", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
						}
, 						{
							"number" : 12,
							"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 6, "obj-18", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
						}
, 						{
							"number" : 13,
							"data" : [ 6, "obj-67", "gain~", "list", 128, 10.0, 6, "obj-65", "gain~", "list", 128, 10.0, 6, "obj-63", "gain~", "list", 128, 10.0, 6, "obj-61", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 6, "<invalid>", "gain~", "list", 128, 10.0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 5, "<invalid>", "led", "int", 0, 6, "obj-18", "gain~", "list", 128, 10.0, 5, "obj-17", "number", "int", 128, 5, "obj-14", "toggle", "int", 0, 5, "obj-12", "umenu", "int", 0, 5, "obj-8", "number", "int", 2 ]
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
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 0.0, 329.0, 39.0, 17.0 ],
					"text" : "r patch"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.498039, 0.643137, 0.133333, 1.0 ],
					"border" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-75",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 36.0, 142.0, 127.0, 41.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.0, 116.0, 127.0, 41.0 ],
					"rounded" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-28", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-28", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ]
	}

}
