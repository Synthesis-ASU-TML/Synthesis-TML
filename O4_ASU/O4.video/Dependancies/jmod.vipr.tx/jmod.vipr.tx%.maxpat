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
		"rect" : [ 60.0, 202.0, 1280.0, 706.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
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
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 206.5, 829.000122, 37.0, 18.0 ],
					"text" : "front"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 895.0, 137.0, 19.0 ],
					"text" : "r maadvipr_osc_returns_"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 240.0, 138.0, 19.0 ],
					"text" : "s maadvipr_osc_returns_"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 305.0, 1005.0, 104.0, 19.0 ],
					"text" : "prepend jit_matrix"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 9.999987, 955.0, 348.0, 19.0 ],
					"text" : "jcom.oscroute /latency /connected /avgbandwidth /compressedout"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 10.0, 925.0, 145.0, 19.0 ],
					"text" : "jcom.oscroute /vipr /maad"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 210.0, 730.0, 60.0, 19.0 ],
					"text" : "route text"
				}

			}
, 			{
				"box" : 				{
					"bubblepoint" : 0.22,
					"bubbleside" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 1220.0, 65.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 180.0, 60.0, 19.0 ],
					"text" : "video out"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-12",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 360.0, 775.0, 586.0, 31.0 ],
					"text" : "jcom.parameter comm/videoport @type integer @repetitions/allow 1 @description \"Set destination video port for vipr.\"",
					"varname" : "width[7]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 360.0, 700.0, 508.0, 19.0 ],
					"text" : "jcom.parameter comm/destip @type string @repetitions/allow 1 @description \"Set destination IP.\"",
					"varname" : "width[5]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-10",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 360.0, 635.0, 559.0, 31.0 ],
					"text" : "jcom.parameter vipr/bframes @type integer @range/clipmode low @range/bounds 0 1 @repetitions/allow 0 @description \"Adjust bframes.\"",
					"varname" : "width[4]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"onscreen" : 0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 215.0, 1220.0, 156.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 185.0, 75.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-6",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 360.0, 590.0, 605.0, 31.0 ],
					"text" : "jcom.parameter vipr/gop @type integer @range/clipmode low @range/bounds 0 1 @repetitions/allow 0 @description \"Adjust GOP.\"",
					"varname" : "width[2]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-53",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 360.0, 545.0, 583.0, 31.0 ],
					"text" : "jcom.parameter vipr/bitrate @type integer @range/clipmode low @range/bounds 1 100000 @repetitions/allow 0 @description \"Adjust bitrate.\"",
					"varname" : "width[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-50",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 360.0, 500.0, 573.0, 31.0 ],
					"text" : "jcom.parameter vipr/codec @type integer @range/clipmode none @repetitions/allow 1 @description \"Select codec.\"",
					"varname" : "width[3]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-209",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 635.0, 60.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 155.0, 60.0, 20.0 ],
					"text" : "bframes"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-208",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 590.0, 60.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 135.0, 45.0, 20.0 ],
					"text" : "gop\n"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-197",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 545.0, 60.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 115.0, 45.0, 20.0 ],
					"text" : "bitrate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-196",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 500.0, 60.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 95.0, 44.0, 20.0 ],
					"text" : "codec"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-190",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 1130.0, 75.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 200.0, 75.0, 20.0 ],
					"text" : "connected"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-188",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 1085.0, 60.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 240.0, 60.0, 20.0 ],
					"text" : "latency"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-186",
					"maxclass" : "led",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 215.0, 1130.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 200.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-130",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 455.0, 75.000031, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 70.0, 65.0, 20.0 ],
					"text" : "compress"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Toggle video compression.",
					"id" : "obj-131",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 210.0, 455.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 70.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-135",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 775.0, 98.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 44.999992, 45.0, 20.0 ],
					"text" : "port"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-136",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 700.0, 89.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 25.0, 45.0, 20.0 ],
					"text" : "dest ip"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Set destination video port for vipr.",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-140",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 210.0, 775.0, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 44.999992, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Set destination IP.",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-141",
					"keymode" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 210.0, 700.0, 104.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 50.0, 25.0, 95.0, 20.0 ],
					"text" : "\"0\""
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-20",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 215.0, 1085.0, 59.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 240.0, 75.0, 20.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"bubblepoint" : 0.22,
					"bubbleside" : 0,
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"frgb" : 0.0,
					"id" : "obj-82",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 1175.0, 98.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 220.0, 75.0, 19.0 ],
					"text" : "KB/sec"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-80",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 215.0, 1175.0, 75.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 220.0, 75.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.184314, 0.8, 0.180392, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 6,
							"architecture" : "x86"
						}
,
						"rect" : [ 304.0, 294.0, 786.0, 706.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 675.0, 60.0, 69.0, 20.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-19",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 675.0, 15.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-156",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 285.0, 375.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 285.0, 405.0, 70.0, 17.0 ],
									"text" : "interlace $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-145",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 420.0, 375.0, 81.0, 20.0 ],
									"text" : "Pixel Format:",
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-153",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 420.0, 435.0, 50.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-154",
									"items" : [ "PIX_FMT_YUV420P", ",", "PIX_FMT_YUYV422", ",", "PIX_FMT_RGB24", ",", "PIX_FMT_BGR24", ",", "PIX_FMT_YUV422P", ",", "PIX_FMT_YUV444P", ",", "PIX_FMT_YUV410P", ",", "PIX_FMT_YUV411P", ",", "PIX_FMT_GRAY8", ",", "PIX_FMT_MONOWHITE", ",", "PIX_FMT_MONOBLACK", ",", "PIX_FMT_PAL8", ",", "PIX_FMT_YUVJ420P", ",", "PIX_FMT_YUVJ422P", ",", "PIX_FMT_YUVJ444P", ",", "PIX_FMT_XVMC_MPEG2_MC", ",", "PIX_FMT_XVMC_MPEG2_IDCT", ",", "PIX_FMT_UYVY422", ",", "PIX_FMT_UYYVYY411", ",", "PIX_FMT_BGR8", ",", "PIX_FMT_BGR4", ",", "PIX_FMT_BGR4_BYTE", ",", "PIX_FMT_RGB8", ",", "PIX_FMT_RGB4", ",", "PIX_FMT_RGB4_BYTE", ",", "PIX_FMT_NV12", ",", "PIX_FMT_NV21", ",", "PIX_FMT_ARGB", ",", "PIX_FMT_RGBA", ",", "PIX_FMT_ABGR", ",", "PIX_FMT_BGRA", ",", "PIX_FMT_GRAY16BE", ",", "PIX_FMT_GRAY16LE", ",", "PIX_FMT_YUV440P", ",", "PIX_FMT_YUVJ440P", ",", "PIX_FMT_YUVA420P", ",", "PIX_FMT_VDPAU_H264", ",", "PIX_FMT_VDPAU_MPEG1", ",", "PIX_FMT_VDPAU_MPEG2", ",", "PIX_FMT_VDPAU_WMV3", ",", "PIX_FMT_VDPAU_VC1", ",", "PIX_FMT_RGB48BE", ",", "PIX_FMT_RGB48LE", ",", "PIX_FMT_RGB565BE", ",", "PIX_FMT_RGB565LE", ",", "PIX_FMT_RGB555BE", ",", "PIX_FMT_RGB555LE", ",", "PIX_FMT_BGR565BE", ",", "PIX_FMT_BGR565LE", ",", "PIX_FMT_BGR555BE", ",", "PIX_FMT_BGR555LE", ",", "PIX_FMT_VAAPI_MOCO", ",", "PIX_FMT_VAAPI_IDCT", ",", "PIX_FMT_VAAPI_VLD", ",", "PIX_FMT_YUV420P16LE", ",", "PIX_FMT_YUV420P16BE", ",", "PIX_FMT_YUV422P16LE", ",", "PIX_FMT_YUV422P16BE", ",", "PIX_FMT_YUV444P16LE", ",", "PIX_FMT_YUV444P16BE", ",", "PIX_FMT_VDPAU_MPEG4", ",", "PIX_FMT_DXVA2_VLD", ",", "PIX_FMT_RGB444BE", ",", "PIX_FMT_RGB444LE", ",", "PIX_FMT_BGR444BE", ",", "PIX_FMT_BGR444LE", ",", "PIX_FMT_Y400A" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 420.0, 405.0, 137.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-155",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 495.0, 435.0, 58.0, 17.0 ],
									"text" : "pixfmt $1"
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
									"patching_rect" : [ 80.0, 116.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-16",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 466.0, 92.0, 195.0, 87.0 ],
									"text" : "out_dim: scales the matrix internally before encoding or after decoding. This is essentially free since the object has to resample the matrix to convert between colorspaces already."
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
									"patching_rect" : [ 503.0, 43.0, 58.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-14",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 443.0, 43.0, 58.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 443.0, 67.0, 123.0, 20.0 ],
									"text" : "pak out_dim 320 240"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-2",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 401.0, 278.0, 267.0, 87.0 ],
									"text" : "the external converts the Jitter bitmap to an internal colorspace that each codec can operate on. The resample option sets the method used for the conversion. FAST_BILINEAR (default) is significantly cheaper, but others may give better quality results."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-8",
									"items" : [ "SWS_FAST_BILINEAR", ",", "SWS_BILINEAR", ",", "SWS_BICUBIC", ",", "SWS_X", ",", "SWS_POINT", ",", "SWS_AREA", ",", "SWS_BICUBLIN", ",", "SWS_GAUSS" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 382.0, 231.0, 168.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 382.0, 256.0, 74.0, 17.0 ],
									"text" : "resample $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"frgb" : 0.0,
									"id" : "obj-5",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 59.0, 27.0, 130.0, 32.0 ],
									"text" : "Engage debug for additional printouts."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-4",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 224.0, 85.0, 222.0, 100.0 ],
									"text" : "These are all of the available codecs (based on ffmpeg). See the ffmpeg website for more information. Most are either encode or decode, but not both, and have not been tested in Jitter. You are welcome to try any, but be ready for Max to crash!"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-3",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 162.0, 232.0, 226.0, 100.0 ],
									"text" : "FFVHuff and Huffyuv support 3 different prediction algorithms. Median (default), tests the best in most cases, but only works with the YUV pixel formats.\n[Unfortunately, this parameter is also used by other recent libavcodec codecs for other reasons.]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-9",
									"items" : [ "Left", ",", "Plane", ",", "Median" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 59.0, 231.0, 100.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 59.0, 256.0, 72.0, 17.0 ],
									"text" : "predictor $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 45.0, 525.0, 88.0, 20.0 ],
									"text" : "s toAVCODEC"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"frgb" : 0.0,
									"id" : "obj-49",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 37.0, 9.0, 130.0, 19.0 ],
									"text" : "watch the Max window!"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 38.0, 33.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-24",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.0, 57.0, 59.0, 17.0 ],
									"text" : "debug $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 149.0, 58.0, 17.0 ],
									"text" : "codec $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-6",
									"items" : [ "AV_CODEC_ID_NONE", ",", "AV_CODEC_ID_MPEG1VIDEO", ",", "AV_CODEC_ID_MPEG2VIDEO", ",", "AV_CODEC_ID_MPEG2VIDEO_XVMC", ",", "AV_CODEC_ID_H261", ",", "AV_CODEC_ID_H263", ",", "AV_CODEC_ID_RV10", ",", "AV_CODEC_ID_RV20", ",", "AV_CODEC_ID_MJPEG", ",", "AV_CODEC_ID_MJPEGB", ",", "AV_CODEC_ID_LJPEG", ",", "AV_CODEC_ID_SP5X", ",", "AV_CODEC_ID_JPEGLS", ",", "AV_CODEC_ID_MPEG4", ",", "AV_CODEC_ID_RAWVIDEO", ",", "AV_CODEC_ID_MSMPEG4V1", ",", "AV_CODEC_ID_MSMPEG4V2", ",", "AV_CODEC_ID_MSMPEG4V3", ",", "AV_CODEC_ID_WMV1", ",", "AV_CODEC_ID_WMV2", ",", "AV_CODEC_ID_H263P", ",", "AV_CODEC_ID_H263I", ",", "AV_CODEC_ID_FLV1", ",", "AV_CODEC_ID_SVQ1", ",", "AV_CODEC_ID_SVQ3", ",", "AV_CODEC_ID_DVVIDEO", ",", "AV_CODEC_ID_HUFFYUV", ",", "AV_CODEC_ID_CYUV", ",", "AV_CODEC_ID_H264", ",", "AV_CODEC_ID_INDEO3", ",", "AV_CODEC_ID_VP3", ",", "AV_CODEC_ID_THEORA", ",", "AV_CODEC_ID_ASV1", ",", "AV_CODEC_ID_ASV2", ",", "AV_CODEC_ID_FFV1", ",", "AV_CODEC_ID_4XM", ",", "AV_CODEC_ID_VCR1", ",", "AV_CODEC_ID_CLJR", ",", "AV_CODEC_ID_MDEC", ",", "AV_CODEC_ID_ROQ", ",", "AV_CODEC_ID_INTERPLAY_VIDEO", ",", "AV_CODEC_ID_XAN_WC3", ",", "AV_CODEC_ID_XAN_WC4", ",", "AV_CODEC_ID_RPZA", ",", "AV_CODEC_ID_CINEPAK", ",", "AV_CODEC_ID_WS_VQA", ",", "AV_CODEC_ID_MSRLE", ",", "AV_CODEC_ID_MSVIDEO1", ",", "AV_CODEC_ID_IDCIN", ",", "AV_CODEC_ID_8BPS", ",", "AV_CODEC_ID_SMC", ",", "AV_CODEC_ID_FLIC", ",", "AV_CODEC_ID_TRUEMOTION1", ",", "AV_CODEC_ID_VMDVIDEO", ",", "AV_CODEC_ID_MSZH", ",", "AV_CODEC_ID_ZLIB", ",", "AV_CODEC_ID_QTRLE", ",", "AV_CODEC_ID_TSCC", ",", "AV_CODEC_ID_ULTI", ",", "AV_CODEC_ID_QDRAW", ",", "AV_CODEC_ID_VIXL", ",", "AV_CODEC_ID_QPEG", ",", "AV_CODEC_ID_PNG", ",", "AV_CODEC_ID_PPM", ",", "AV_CODEC_ID_PBM", ",", "AV_CODEC_ID_PGM", ",", "AV_CODEC_ID_PGMYUV", ",", "AV_CODEC_ID_PAM", ",", "AV_CODEC_ID_FFVHUFF", ",", "AV_CODEC_ID_RV30", ",", "AV_CODEC_ID_RV40", ",", "AV_CODEC_ID_VC1", ",", "AV_CODEC_ID_WMV3", ",", "AV_CODEC_ID_LOCO", ",", "AV_CODEC_ID_WNV1", ",", "AV_CODEC_ID_AASC", ",", "AV_CODEC_ID_INDEO2", ",", "AV_CODEC_ID_FRAPS", ",", "AV_CODEC_ID_TRUEMOTION2", ",", "AV_CODEC_ID_BMP", ",", "AV_CODEC_ID_CSCD", ",", "AV_CODEC_ID_MMVIDEO", ",", "AV_CODEC_ID_ZMBV", ",", "AV_CODEC_ID_AVS", ",", "AV_CODEC_ID_SMACKVIDEO", ",", "AV_CODEC_ID_NUV", ",", "AV_CODEC_ID_KMVC", ",", "AV_CODEC_ID_FLASHSV", ",", "AV_CODEC_ID_CAVS", ",", "AV_CODEC_ID_JPEG2000", ",", "AV_CODEC_ID_VMNC", ",", "AV_CODEC_ID_VP5", ",", "AV_CODEC_ID_VP6", ",", "AV_CODEC_ID_VP6F", ",", "AV_CODEC_ID_TARGA", ",", "AV_CODEC_ID_DSICINVIDEO", ",", "AV_CODEC_ID_TIERTEXSEQVIDEO", ",", "AV_CODEC_ID_TIFF", ",", "AV_CODEC_ID_GIF", ",", "AV_CODEC_ID_DXA", ",", "AV_CODEC_ID_DNXHD", ",", "AV_CODEC_ID_THP", ",", "AV_CODEC_ID_SGI", ",", "AV_CODEC_ID_C93", ",", "AV_CODEC_ID_BETHSOFTVID", ",", "AV_CODEC_ID_PTX", ",", "AV_CODEC_ID_TXD", ",", "AV_CODEC_ID_VP6A", ",", "AV_CODEC_ID_AMV", ",", "AV_CODEC_ID_VB", ",", "AV_CODEC_ID_PCX", ",", "AV_CODEC_ID_SUNRAST", ",", "AV_CODEC_ID_INDEO4", ",", "AV_CODEC_ID_INDEO5", ",", "AV_CODEC_ID_MIMIC", ",", "AV_CODEC_ID_RL2", ",", "AV_CODEC_ID_ESCAPE124", ",", "AV_CODEC_ID_DIRAC", ",", "AV_CODEC_ID_BFI", ",", "AV_CODEC_ID_CMV", ",", "AV_CODEC_ID_MOTIONPIXELS", ",", "AV_CODEC_ID_TGV", ",", "AV_CODEC_ID_TGQ", ",", "AV_CODEC_ID_TQI", ",", "AV_CODEC_ID_AURA", ",", "AV_CODEC_ID_AURA2", ",", "AV_CODEC_ID_V210X", ",", "AV_CODEC_ID_TMV", ",", "AV_CODEC_ID_V210", ",", "AV_CODEC_ID_DPX", ",", "AV_CODEC_ID_MAD", ",", "AV_CODEC_ID_FRWU", ",", "AV_CODEC_ID_FLASHSV2", ",", "AV_CODEC_ID_CDGRAPHICS", ",", "AV_CODEC_ID_R210", ",", "AV_CODEC_ID_ANM", ",", "AV_CODEC_ID_BINKVIDEO", ",", "AV_CODEC_ID_IFF_ILBM", ",", "AV_CODEC_ID_IFF_BYTERUN1", ",", "AV_CODEC_ID_KGV1", ",", "AV_CODEC_ID_YOP", ",", "AV_CODEC_ID_VP8", ",", "AV_CODEC_ID_PICTOR", ",", "AV_CODEC_ID_ANSI", ",", "AV_CODEC_ID_A64_MULTI", ",", "AV_CODEC_ID_A64_MULTI5", ",", "AV_CODEC_ID_R10K", ",", "AV_CODEC_ID_MXPEG", ",", "AV_CODEC_ID_LAGARITH", ",", "AV_CODEC_ID_PRORES", ",", "AV_CODEC_ID_JV", ",", "AV_CODEC_ID_DFA", ",", "AV_CODEC_ID_WMV3IMAGE", ",", "AV_CODEC_ID_VC1IMAGE", ",", "AV_CODEC_ID_UTVIDEO", ",", "AV_CODEC_ID_BMV_VIDEO", ",", "AV_CODEC_ID_VBLE", ",", "AV_CODEC_ID_DXTORY", ",", "AV_CODEC_ID_V410", ",", "AV_CODEC_ID_XWD", ",", "AV_CODEC_ID_CDXL", ",", "AV_CODEC_ID_XBM", ",", "AV_CODEC_ID_ZEROCODEC", ",", "AV_CODEC_ID_MSS1", ",", "AV_CODEC_ID_MSA1", ",", "AV_CODEC_ID_TSCC2", ",", "AV_CODEC_ID_MTS2", ",", "AV_CODEC_ID_CLLC", ",", "AV_CODEC_ID_MSS2", ",", "AV_CODEC_ID_VP9", ",", "AV_CODEC_ID_AIC" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 80.0, 85.0, 137.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-51",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 19.0, 522.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 89.5, 201.0, 54.5, 201.0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 391.5, 363.0, 54.5, 363.0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 391.5, 357.5, 28.5, 357.5 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 452.5, 220.0, 54.5, 220.0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-155", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 429.5, 463.0, 484.0, 463.0, 484.0, 425.0, 504.5, 425.0 ],
									"source" : [ "obj-153", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-153", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-154", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 504.5, 488.0, 54.5, 488.0 ],
									"source" : [ "obj-155", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 504.5, 486.5, 28.5, 486.5 ],
									"source" : [ "obj-155", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-156", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 47.5, 175.0, 28.5, 175.0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 89.5, 108.0, 89.5, 108.0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 68.5, 343.0, 54.5, 343.0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 206.5, 865.000122, 111.0, 19.0 ],
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
					"text" : "p advanced options"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Adjust GOP.",
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-147",
					"maxclass" : "number",
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 210.0, 590.0, 77.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 135.0, 75.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Select codec.",
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-149",
					"items" : [ "MPEG4", ",", "MPEG1", ",", "MPEG2", ",", "FFVHUFF", ",", "MJPEG", ",", "FFV1", ",", "ASV1", ",", "ASV2", ",", "Raw" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 210.0, 500.0, 137.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 95.0, 76.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Adjust bframes.",
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-151",
					"maxclass" : "number",
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 210.0, 635.0, 77.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 155.0, 75.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Adjust bitrate.",
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-159",
					"maxclass" : "number",
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 210.0, 545.0, 77.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 115.0, 75.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "",
					"comment" : "video in",
					"id" : "obj-8",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 265.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 585.0, 265.0, 135.0, 19.0 ],
					"text" : "VIDEO/TEXTURE INPUT"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-38",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 360.0, 455.0, 571.0, 31.0 ],
					"text" : "jcom.parameter vipr/compress @type integer @range/clipmode both @range/bounds 0 1 @repetitions/allow 0 @description \"Toggle video compression.\"",
					"varname" : "width[6]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 405.0, 150.0, 32.5, 17.0 ],
					"text" : "/init"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-36",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.0, 150.0, 196.0, 17.0 ],
					"text" : "/preset/store 1 default, /preset/write"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 500.0, 367.0, 53.0, 19.0 ],
					"text" : "jcom.out"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 540.0, 297.0, 58.0, 19.0 ],
					"text" : "jcom.in 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-23",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 15.0, 195.0, 563.0, 31.0 ],
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"Send compressed video and audio over networks using Benjamin Day Smith's vipr and MAAD~ objects.\"",
					"varname" : "jcom.hub"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 255.0, 150.0, 137.0, 17.0 ],
					"text" : "/documentation/generate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 530.0, 397.0, 86.0, 19.0 ],
					"text" : "VIDEO OUTPUT"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-28",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 397.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 127.0, 87.0, 19.0 ],
					"text" : "command input"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-31",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 240.0, 25.0, 25.0 ]
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
					"patching_rect" : [ 15.0, 150.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 500.0, 340.0, 75.0, 19.0 ],
					"text" : "jalg.vipr.tx%"
				}

			}
, 			{
				"box" : 				{
					"has_bypass" : 1,
					"has_freeze" : 1,
					"has_mute" : 1,
					"has_preview" : 1,
					"id" : "obj-34",
					"maxclass" : "jcom.ui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"prefix" : "video",
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 280.0 ],
					"text" : "/myModule.1"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 101.749985, 1115.0, 224.5, 1115.0 ],
					"source" : [ "obj-103", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 19.499987, 1070.0, 224.5, 1070.0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 266.25, 986.5, 314.5, 986.5 ],
					"source" : [ "obj-103", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 183.999985, 1160.0, 224.5, 1160.0 ],
					"source" : [ "obj-103", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-141", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-140", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-141", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-159", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 264.5, 180.5, 24.5, 180.5 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 54.5, 180.5, 24.5, 180.5 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 414.5, 180.5, 24.5, 180.5 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 314.5, 1205.0, 224.5, 1205.0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-159", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-96", 0 ]
				}

			}
 ]
	}

}
