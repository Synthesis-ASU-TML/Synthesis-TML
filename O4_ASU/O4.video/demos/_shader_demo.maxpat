{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 8
		}
,
		"rect" : [ 0.0, 44.0, 714.0, 768.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
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
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-26",
					"maxclass" : "jit.fpsgui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 600.0, 30.0, 80.0, 35.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 600.0, 30.0, 80.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 285.0, 555.0, 49.0, 20.0 ],
					"text" : "s vid_2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-82",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 15.0, 315.0, 47.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 15.0, 15.0, 285.0, 47.0 ],
					"text" : "Processing Video as OpenGL Textures on the GPU\nEvan Montpellier\nASU Tempe, Dec. 13 2013"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-80",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 435.0, 105.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 375.0, 90.0, 135.0, 20.0 ],
					"text" : "video source 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 885.0, 465.0, 47.0, 20.0 ],
					"text" : "r vid_2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-69",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 780.0, 90.0, 75.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 525.0, 225.0, 150.0, 20.0 ],
					"text" : "compositing"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-68",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1080.0, 90.0, 135.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.0, 225.0, 150.0, 20.0 ],
					"text" : "convolution"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-66",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 930.0, 90.0, 135.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 525.0, 420.0, 150.0, 20.0 ],
					"text" : "temporal interpolation"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-52",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 300.0, 215.0, 75.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 140.0, 35.0, 20.0 ],
					"text" : "(esc)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-49",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 655.0, 105.0, 55.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 225.0, 90.0, 55.0, 20.0 ],
					"text" : "camera"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 180.0, 165.0, 75.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 25.0, 120.0, 75.0, 20.0 ],
					"text" : "floating"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-45",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 300.0, 165.0, 75.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 25.0, 140.0, 75.0, 20.0 ],
					"text" : "fullscreen"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-43",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 330.0, 75.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 25.0, 180.0, 75.0, 20.0 ],
					"text" : "bypass all"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 300.0, 105.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 25.0, 160.0, 75.0, 20.0 ],
					"text" : "render dest"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 105.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 25.0, 100.0, 75.0, 20.0 ],
					"text" : "rendering"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 795.0, 240.0, 82.0, 20.0 ],
					"text" : "r all_modules"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 615.0, 240.0, 82.0, 20.0 ],
					"text" : "r all_modules"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 270.0, 165.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 100.0, 140.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.0, 195.0, 79.0, 18.0 ],
					"text" : "fullscreen $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 270.0, 135.0, 43.0, 20.0 ],
					"text" : "sel 27"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 270.0, 105.0, 59.5, 20.0 ],
					"text" : "key"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "myRadialblur" ],
					"id" : "obj-56",
					"maxclass" : "bpatcher",
					"name" : "jmod.gl.cf.radialblur%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 645.0, 720.0, 150.0, 175.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 330.0, 255.0, 150.0, 175.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "myMedian2p" ],
					"id" : "obj-51",
					"maxclass" : "bpatcher",
					"name" : "jmod.gl.cf.median.2p%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 645.0, 630.0, 150.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 180.0, 660.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "myLaplace" ],
					"id" : "obj-46",
					"maxclass" : "bpatcher",
					"name" : "jmod.gl.cf.laplace%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 645.0, 480.0, 150.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 180.0, 520.0, 150.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "myGaussian2p" ],
					"id" : "obj-44",
					"maxclass" : "bpatcher",
					"name" : "jmod.gl.cf.gaussian.2p%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 645.0, 390.0, 150.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 180.0, 460.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "myErode" ],
					"id" : "obj-42",
					"maxclass" : "bpatcher",
					"name" : "jmod.gl.cf.erode%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 645.0, 300.0, 150.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 180.0, 390.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "myEmboss" ],
					"id" : "obj-39",
					"maxclass" : "bpatcher",
					"name" : "jmod.gl.cf.emboss%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 450.0, 810.0, 150.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 180.0, 255.0, 150.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "myEdgedetect" ],
					"id" : "obj-37",
					"maxclass" : "bpatcher",
					"name" : "jmod.gl.cf.edgedetect%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 450.0, 690.0, 150.0, 105.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.0, 605.0, 150.0, 105.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "myDilate" ],
					"id" : "obj-35",
					"maxclass" : "bpatcher",
					"name" : "jmod.gl.cf.dilate%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 450.0, 600.0, 150.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.0, 535.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "myConvolve" ],
					"id" : "obj-33",
					"maxclass" : "bpatcher",
					"name" : "jmod.gl.cf.convolve%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 450.0, 375.0, 150.0, 210.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.0, 325.0, 150.0, 210.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "myBlur" ],
					"id" : "obj-23",
					"maxclass" : "bpatcher",
					"name" : "jmod.gl.cf.blur%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 450.0, 300.0, 150.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.0, 255.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-119",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 915.0, 60.0, 45.0 ],
					"text" : "/width -49.376953"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "myIn2" ],
					"id" : "obj-75",
					"maxclass" : "bpatcher",
					"name" : "jmod.input%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 30.0, 465.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 375.0, 120.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "myComposite" ],
					"id" : "obj-74",
					"maxclass" : "bpatcher",
					"name" : "jmod.gl.composite%.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 825.0, 510.0, 150.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 525.0, 255.0, 150.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 150.0, 330.0, 100.0, 19.0 ],
					"text" : "route text"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Sets the name of the render destination for the slab.",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-73",
					"keymode" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 150.0, 300.0, 105.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 100.0, 160.0, 80.0, 20.0 ],
					"text" : "test"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-65",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.0, 360.0, 89.0, 18.0 ],
					"text" : "/destination $1"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "mySobel" ],
					"id" : "obj-60",
					"maxclass" : "bpatcher",
					"name" : "jmod.gl.cf.sobel%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 825.0, 390.0, 150.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 330.0, 505.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "mySharpen" ],
					"id" : "obj-59",
					"maxclass" : "bpatcher",
					"name" : "jmod.gl.cf.sharpen%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 825.0, 300.0, 150.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 330.0, 430.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 330.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 100.0, 180.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 360.0, 101.0, 18.0 ],
					"text" : "/video/bypass $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 390.0, 84.0, 20.0 ],
					"text" : "s all_modules"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 420.0, 240.0, 82.0, 20.0 ],
					"text" : "r all_modules"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "mySlide" ],
					"id" : "obj-70",
					"maxclass" : "bpatcher",
					"name" : "jmod.gl.tp.slide%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 825.0, 675.0, 150.0, 105.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 525.0, 450.0, 150.0, 105.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.0, 105.0, 39.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 285.0, 125.0, 39.0, 18.0 ],
					"text" : "close"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.79757, 0.695129, 0.866667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 105.0, 37.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 225.0, 125.0, 37.0, 18.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 450.0, 105.0, 44.0, 20.0 ],
					"text" : "r draw"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 450.0, 150.0, 114.0, 20.0 ],
					"text" : "jit.qt.grab 1280 720"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 450.0, 180.0, 135.0, 20.0 ],
					"text" : "jit.dimmap @invert 1 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-30",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 105.0, 660.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 30.0, 795.0, 32.5, 20.0 ],
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 855.0, 60.0, 18.0 ],
					"text" : "/width $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 30.0, 825.0, 45.0, 20.0 ],
					"text" : "* 50."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 765.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 30.0, 690.0, 60.0, 20.0 ],
					"text" : "metro 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 660.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 30.0, 735.0, 100.0, 20.0 ],
					"text" : "snapshot~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 105.0, 690.0, 65.0, 20.0 ],
					"text" : "cycle~ 0.4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 600.0, 45.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 225.0, 150.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 150.0, 165.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 100.0, 120.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.0, 195.0, 54.0, 31.0 ],
					"text" : "floating $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 825.0, 840.0, 225.0, 20.0 ],
					"text" : "jit.gl.videoplane test @transform_reset 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 210.0, 45.0, 20.0 ],
					"text" : "s draw"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "erase", "bang", "bang" ],
					"patching_rect" : [ 30.0, 165.0, 100.0, 20.0 ],
					"text" : "t erase b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 150.0, 240.0, 232.0, 20.0 ],
					"text" : "jit.window test @fsmenubar 0 @floating 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 30.0, 240.0, 100.0, 20.0 ],
					"text" : "jit.gl.render test"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 30.0, 135.0, 100.0, 20.0 ],
					"text" : "qmetro 16"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 105.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 100.0, 100.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.949028, 0.949028, 0.949028, 1.0 ],
					"id" : "obj-81",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 15.0, 675.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 15.0, 675.0, 60.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.949028, 0.949028, 0.949028, 1.0 ],
					"id" : "obj-79",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 420.0, 90.0, 315.0, 120.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 360.0, 90.0, 330.0, 120.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.949028, 0.949028, 0.949028, 1.0 ],
					"id" : "obj-78",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 435.0, 375.0, 150.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 210.0, 90.0, 135.0, 120.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
					"id" : "obj-63",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 930.0, 90.0, 135.0, 135.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 510.0, 420.0, 180.0, 150.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.949028, 0.949028, 0.949028, 1.0 ],
					"id" : "obj-62",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 780.0, 90.0, 135.0, 135.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 510.0, 225.0, 180.0, 180.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.949028, 0.949028, 0.949028, 1.0 ],
					"id" : "obj-57",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1080.0, 90.0, 135.0, 135.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 225.0, 480.0, 525.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.949028, 0.949028, 0.949028, 1.0 ],
					"id" : "obj-50",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 90.0, 375.0, 330.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 90.0, 180.0, 120.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 459.5, 210.0, 590.5, 210.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 624.5, 285.0, 654.5, 285.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 624.5, 387.0, 654.5, 387.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 624.5, 477.0, 654.5, 477.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 624.5, 627.0, 654.5, 627.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 624.5, 717.0, 654.5, 717.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 804.5, 272.0, 834.5, 272.0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 804.5, 387.0, 834.5, 387.0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 804.5, 285.0, 810.0, 285.0, 810.0, 630.0, 834.5, 630.0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 804.5, 477.0, 834.5, 477.0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-23", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 549.5, 136.0, 459.5, 136.0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 609.5, 136.0, 459.5, 136.0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 590.5, 951.0, 630.0, 951.0, 630.0, 270.0, 785.5, 270.0 ],
					"source" : [ "obj-39", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 429.5, 285.0, 459.5, 285.0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 429.5, 372.0, 459.5, 372.0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 429.5, 597.0, 459.5, 597.0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 429.5, 687.0, 459.5, 687.0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 429.5, 807.0, 459.5, 807.0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-42", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-46", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-51", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 785.5, 897.0, 810.0, 897.0, 810.0, 285.0, 965.5, 285.0 ],
					"source" : [ "obj-56", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-59", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 39.5, 270.0, 405.0, 270.0, 405.0, 27.0, 609.5, 27.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-60", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-70", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-74", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-75", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 120.5, 197.0, 39.5, 197.0 ],
					"source" : [ "obj-8", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 80.0, 197.0, 84.5, 197.0 ],
					"source" : [ "obj-8", 1 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "jmod.gl.tp.slide%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.tp.slide%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.tp.slide%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.gl.tp.slide%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.tp.slide%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.tp.slide%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.gl.cf.sharpen%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.sharpen%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.sharpen%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.gl.cf.sharpen%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.sharpen%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.sharpen%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.gl.cf.sobel%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.sobel%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.sobel%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.gl.cf.sobel%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.sobel%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.sobel%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.gl.composite%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.composite%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.composite%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.gl.composite%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.composite%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.composite%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.input%.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/modules/video/input%",
				"patcherrelativepath" : "../../../../../../Applications/Max6/Cycling '74/Jamoma/modules/video/input%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.input%.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/modules/video/input%",
				"patcherrelativepath" : "../../../../../../Applications/Max6/Cycling '74/Jamoma/modules/video/input%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.thru.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/components/thru",
				"patcherrelativepath" : "../../../../../../Applications/Max6/Cycling '74/Jamoma/library/components/thru",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.input%.ui.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/modules/video/input%",
				"patcherrelativepath" : "../../../../../../Applications/Max6/Cycling '74/Jamoma/modules/video/input%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.gl.cf.blur%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.blur%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.blur%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.gl.cf.blur%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.blur%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.blur%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.gl.cf.convolve%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.convolve%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.convolve%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.gl.cf.convolve%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.convolve%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.convolve%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.gl.cf.dilate%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.dilate%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.dilate%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.gl.cf.dilate%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.dilate%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.dilate%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.gl.cf.edgedetect%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.edgedetect%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.edgedetect%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.gl.cf.edgedetect%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.edgedetect%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.edgedetect%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.gl.cf.emboss%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.emboss%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.emboss%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.gl.cf.emboss%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.emboss%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.emboss%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.gl.cf.erode%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.erode%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.erode%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.gl.cf.erode%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.erode%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.erode%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.gl.cf.gaussian.2p%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.gaussian.2p%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.gaussian.2p%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.gl.cf.gaussian.2p%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.gaussian.2p%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.gaussian.2p%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.list2parameter.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/components/list2parameter",
				"patcherrelativepath" : "../../../../../../Applications/Max6/Cycling '74/Jamoma/library/components/list2parameter",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.gl.cf.laplace%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.laplace%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.laplace%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.gl.cf.laplace%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.laplace%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.laplace%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.gl.cf.median.2p%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.median.2p%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.median.2p%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.gl.cf.median.2p%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.median.2p%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.median.2p%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.gl.cf.radialblur%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.radialblur%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.radialblur%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.gl.cf.radialblur%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/Git/ASU_repo/ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.radialblur%",
				"patcherrelativepath" : "../ASU_video_workshop_2013_12_13/jamoma_shaders/jmod.gl.cf.radialblur%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.parameter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.ui.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.oscroute.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.pass.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.hub.mxo",
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
, 			{
				"name" : "jcom.dataspace.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.textslider.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.message.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
