{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 3,
			"architecture" : "x86"
		}
,
		"rect" : [ 0.0, 324.0, 1280.0, 706.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
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
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 75.0, 255.0, 290.0, 17.0 ],
					"text" : "/densityScale 1. 1. 1. 1."
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Reset fluids.",
					"id" : "obj-4",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 390.0, 1010.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Reset fluids.",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-10",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 390.0, 975.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 255.0, 270.0, 15.0 ],
					"text" : "reset"
				}

			}
, 			{
				"box" : 				{
					"comment" : "message",
					"id" : "obj-166",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 215.0, 290.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "message",
					"id" : "obj-165",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 190.0, 290.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "message",
					"id" : "obj-163",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 185.0, 440.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-140",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 915.0, 105.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 220.0, 105.0, 19.0 ],
					"text" : "velocityOutHeight"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-138",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 870.0, 105.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 200.0, 105.0, 19.0 ],
					"text" : "velocityOutWidth"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-136",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 825.0, 105.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 180.0, 105.0, 19.0 ],
					"text" : "velocityBlend"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-134",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 780.0, 105.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 160.0, 105.0, 19.0 ],
					"text" : "densityBlend"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-132",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 735.0, 105.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 140.0, 105.0, 19.0 ],
					"text" : "timestep"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-130",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 690.0, 105.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 120.0, 105.0, 19.0 ],
					"text" : "gravityMagnitude"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-128",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 645.0, 105.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 100.0, 105.0, 19.0 ],
					"text" : "gravityAngle"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-126",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 600.0, 135.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 80.0, 135.0, 19.0 ],
					"text" : "temperatureMagnitude"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-124",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 555.0, 105.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 60.0, 105.0, 19.0 ],
					"text" : "vorticity"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-122",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 510.0, 105.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 40.0, 105.0, 19.0 ],
					"text" : "viscosity"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-120",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 465.0, 45.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 20.0, 45.0, 19.0 ],
					"text" : "flowOp"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "//velocity out height.",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-59",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 525.0, 915.0, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 145.0, 220.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-60",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 585.0, 915.0, 510.0, 31.0 ],
					"text" : "jcom.parameter velocityOutHeight @type integer @range/clipmode none @range/bounds 0. 1000. @repetitions/allow 0 @ramp/drive none @description \"//velocity out height.\"",
					"varname" : "velocityOutWidth[1]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "//velocity out width.",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-58",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 525.0, 870.0, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 145.0, 200.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "//velocity blend.",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-43",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 525.0, 825.0, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 145.0, 180.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-46",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 585.0, 825.0, 450.0, 31.0 ],
					"text" : "jcom.parameter velocityBlend @type decimal @range/clipmode none @range/bounds 0. 1000. @repetitions/allow 0 @ramp/drive none @description \"//velocity blend.\"",
					"varname" : "viscosity[6]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "//density blend.",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-48",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 525.0, 780.0, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 145.0, 160.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-51",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 585.0, 780.0, 450.0, 31.0 ],
					"text" : "jcom.parameter densityBlend @type decimal @range/clipmode none @range/bounds 0. 1000. @repetitions/allow 0 @ramp/drive none @description \"//density blend.\"",
					"varname" : "viscosity[7]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "//time step.",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-36",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 525.0, 735.0, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 145.0, 140.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-40",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 585.0, 735.0, 450.0, 31.0 ],
					"text" : "jcom.parameter timestep @type decimal @range/clipmode none @range/bounds 0. 1000. @repetitions/allow 0 @ramp/drive none @description \"//time step.\"",
					"varname" : "viscosity[5]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "//gravity magnitude.",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-32",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 525.0, 690.0, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 145.0, 120.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-34",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 585.0, 690.0, 465.0, 31.0 ],
					"text" : "jcom.parameter gravityMagnitude @type decimal @range/clipmode none @range/bounds 0. 1000. @repetitions/allow 0 @ramp/drive none @description \"//gravity magnitude.\"",
					"varname" : "viscosity[4]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "//gravity angle.",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-30",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 525.0, 645.0, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 145.0, 100.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-31",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 585.0, 645.0, 465.0, 31.0 ],
					"text" : "jcom.parameter gravityAngle @type decimal @range/clipmode none @range/bounds 0. 1000. @repetitions/allow 0 @ramp/drive none @description \"//gravity angle.\"",
					"varname" : "viscosity[3]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "//temperature magnitude.",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-27",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 525.0, 600.0, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 145.0, 80.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-28",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 585.0, 600.0, 495.0, 31.0 ],
					"text" : "jcom.parameter temperatureMagnitude @type decimal @range/clipmode none @range/bounds 0. 1000. @repetitions/allow 0 @ramp/drive none @description \"//temperature magnitude.\"",
					"varname" : "viscosity[2]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "//Vorticity of fluids.",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-12",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 525.0, 555.0, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 145.0, 60.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-25",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 585.0, 555.0, 435.0, 31.0 ],
					"text" : "jcom.parameter vorticity @type decimal @range/clipmode none @range/bounds 0. 1000. @repetitions/allow 0 @ramp/drive none @description \"//Vorticity of fluids.\"",
					"varname" : "viscosity[1]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "//Viscosity of fluids.",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-11",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 525.0, 510.0, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 145.0, 40.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 3,
					"outlettype" : [ "", "jit_matrix", "jit_matrix" ],
					"patching_rect" : [ 125.0, 380.0, 90.0, 19.0 ],
					"text" : "jalg.tml.fluids%"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 236.0, 22.0, 60.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 237.0, 22.0, 60.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-20",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 241.0, 173.0, 199.0, 31.0 ],
					"text" : "<-- this message creates your xml preset file and a default state "
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 190.0, 151.0, 275.0, 19.0 ],
					"text" : "<-- this message creates your html reference page "
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 43.0, 174.0, 198.0, 17.0 ],
					"text" : "/preset/store 1 default, /preset/write"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 43.0, 152.0, 145.0, 17.0 ],
					"text" : "/documentation/generate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-26",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 172.0, 106.0, 305.0, 43.0 ],
					"text" : "In order to create all jcom.parameters/messages/returns, you can use the jcom.parameterCreate utility to the left : just double-click on it and choose the desired attributes",
					"textcolor" : [ 0.709804, 0.101961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 41.0, 128.0, 131.0, 19.0 ],
					"text" : "jcom.parameterCreate"
				}

			}
, 			{
				"box" : 				{
					"comment" : "message",
					"id" : "obj-7",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 160.0, 290.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "message",
					"id" : "obj-6",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 160.0, 440.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 160.0, 410.0, 65.0, 19.0 ],
					"text" : "jcom.out 2"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Operation performed on optical flow.",
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-2",
					"items" : [ "pass", ",", "*", ",", "/", ",", "addition", ",", "subtraction", ",", "+m", ",", "-m", ",", "%", ",", "min", ",", "max", ",", "abs", ",", "avg", ",", "absdiff", ",", "wrap", ",", "fold", ",", "!pass", ",", "!/", ",", "!-", ",", "!%", ",", "&", ",", "|", ",", "^", ",", "~", ",", ">>", ",", "<<", ",", "&&", ",", "||", ",", "!", ",", ">", ",", "<", ",", ">=", ",", "<=", ",", "==", ",", "!=", ",", ">p", ",", "<p", ",", ">=p", ",", "<=p", ",", "==p", ",", "!=p", ",", "sin", ",", "cos", ",", "tan", ",", "asin", ",", "acos", ",", "atan", ",", "atan2", ",", "sinh", ",", "cosh", ",", "tanh", ",", "asinh", ",", "acosh", ",", "atanh", ",", "exp", ",", "exp2", ",", "ln", ",", "log2", ",", "log10", ",", "hypot", ",", "pow", ",", "sqrt", ",", "ceil", ",", "floor", ",", "round", ",", "trunc", ",", "ignore" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 520.0, 465.0, 60.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 135.0, 20.0, 60.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 630.0, 465.0, 570.0, 19.0 ],
					"text" : "jcom.parameter flowOp @repetitions/allow 1 @type string @description \"Operation performed on optical flow.\"",
					"varname" : "module_in[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-45",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 235.0, 330.0, 141.0, 19.0 ],
					"text" : "algorithm section"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 3,
							"architecture" : "x86"
						}
,
						"rect" : [ 5.0, 44.0, 875.0, 300.0 ],
						"bgcolor" : [ 0.697499, 0.697499, 0.697499, 1.0 ],
						"bglocked" : 0,
						"openinpresentation" : 1,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 1,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-193",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1740.0, 704.999939, 100.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "loadbang",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-220",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1245.0, 705.0, 100.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "loadbang",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-234",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 795.0, 705.0, 100.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "loadbang",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-235",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 345.0, 705.0, 100.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "loadbang",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-192",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1725.0, 150.0, 100.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "loadbang",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-105",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1260.0, 165.0, 100.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "loadbang",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-93",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 780.0, 165.0, 100.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "loadbang",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-92",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 315.0, 180.000015, 100.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "loadbang",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-279",
									"ignoreclick" : 1,
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1658.0, 738.0, 18.0, 67.0 ],
									"presentation" : 1,
									"presentation_linecount" : 5,
									"presentation_rect" : [ 820.0, 150.0, 18.0, 67.0 ],
									"text" : "s\nc\na\nl\ne",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-280",
									"ignoreclick" : 1,
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1162.0, 736.0, 18.0, 67.0 ],
									"presentation" : 1,
									"presentation_linecount" : 5,
									"presentation_rect" : [ 600.0, 150.0, 18.0, 67.0 ],
									"text" : "s\nc\na\nl\ne",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-281",
									"ignoreclick" : 1,
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 712.0, 736.0, 18.0, 67.0 ],
									"presentation" : 1,
									"presentation_linecount" : 5,
									"presentation_rect" : [ 380.0, 150.0, 18.0, 67.0 ],
									"text" : "s\nc\na\nl\ne",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-282",
									"ignoreclick" : 1,
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 256.0, 736.0, 18.0, 67.0 ],
									"presentation" : 1,
									"presentation_linecount" : 5,
									"presentation_rect" : [ 160.0, 150.0, 18.0, 67.0 ],
									"text" : "s\nc\na\nl\ne",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-278",
									"ignoreclick" : 1,
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1636.0, 188.000015, 18.0, 67.0 ],
									"presentation" : 1,
									"presentation_linecount" : 5,
									"presentation_rect" : [ 600.0, 6.0, 18.0, 67.0 ],
									"text" : "s\nc\na\nl\ne",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-277",
									"ignoreclick" : 1,
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1172.0, 202.000015, 18.0, 67.0 ],
									"presentation" : 1,
									"presentation_linecount" : 5,
									"presentation_rect" : [ 820.0, 6.0, 18.0, 67.0 ],
									"text" : "s\nc\na\nl\ne",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-276",
									"ignoreclick" : 1,
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 692.0, 202.000015, 18.0, 67.0 ],
									"presentation" : 1,
									"presentation_linecount" : 5,
									"presentation_rect" : [ 380.0, 6.0, 18.0, 67.0 ],
									"text" : "s\nc\na\nl\ne",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-275",
									"ignoreclick" : 1,
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 225.999985, 216.000015, 18.0, 67.0 ],
									"presentation" : 1,
									"presentation_linecount" : 5,
									"presentation_rect" : [ 160.0, 6.0, 18.0, 67.0 ],
									"text" : "s\nc\na\nl\ne",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-272",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1454.0, 252.000015, 60.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 664.0, 8.0, 60.0, 19.0 ],
									"text" : "saturation",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-273",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 988.0, 254.000015, 60.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 444.0, 8.0, 60.0, 19.0 ],
									"text" : "saturation",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-270",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1470.0, 808.0, 60.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 664.0, 152.0, 60.0, 19.0 ],
									"text" : "saturation",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-271",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 974.0, 808.0, 60.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 444.0, 152.0, 60.0, 19.0 ],
									"text" : "saturation",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-268",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 524.0, 808.0, 60.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 224.0, 152.0, 60.0, 19.0 ],
									"text" : "saturation",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-269",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 71.999985, 792.0, 60.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 152.0, 60.0, 19.0 ],
									"text" : "saturation",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-267",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 508.0, 268.0, 60.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 224.0, 8.0, 60.0, 19.0 ],
									"text" : "saturation",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-266",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 41.999989, 268.0, 60.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.0, 8.0, 60.0, 19.0 ],
									"text" : "saturation",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-252",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1655.0, 915.0, 120.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "tml.ejm.bilogscaler",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-253",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1655.0, 942.0, 50.0, 18.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "set $1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-254",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1655.0, 970.0, 57.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 814.0, 275.0, 42.0, 18.0 ],
									"text" : "1.00",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-255",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1740.0, 660.0, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 0.01",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-256",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1745.0, 795.0, 46.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 836.0, 207.0, 34.0, 16.0 ],
									"text" : "0.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-257",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1745.0, 885.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 836.0, 259.0, 34.0, 16.0 ],
									"text" : "-100.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-258",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1740.0, 630.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 836.0, 155.0, 34.0, 16.0 ],
									"text" : "100.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-259",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1745.0, 825.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 836.0, 225.0, 34.0, 16.0 ],
									"text" : "-1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-260",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1745.0, 855.0, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "expr $f1/sqrt(10.)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-261",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1745.0, 735.0, 46.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 836.0, 189.0, 34.0, 16.0 ],
									"text" : "1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-262",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1745.0, 765.0, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "expr $f1/sqrt(10.)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-263",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1655.0, 690.0, 60.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border_bottom" : 1,
									"border_left" : 1,
									"border_right" : 1,
									"border_top" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"candicane2" : [ 0.14696, 0.2072, 0.35792, 1.0 ],
									"candicane3" : [ 0.29392, 0.41441, 0.71583, 1.0 ],
									"candicane4" : [ 0.44088, 0.62161, 0.07375, 1.0 ],
									"candicane5" : [ 0.58784, 0.82881, 0.43166, 1.0 ],
									"candicane6" : [ 0.7348, 0.03601, 0.78958, 1.0 ],
									"candicane7" : [ 0.88176, 0.24321, 0.14749, 1.0 ],
									"candicane8" : [ 0.02872, 0.45042, 0.50541, 1.0 ],
									"candycane" : 1,
									"compatibility" : 0,
									"contdata" : 1,
									"drawpeaks" : 0,
									"ghostbar" : 0,
									"hidden" : 0,
									"id" : "obj-264",
									"ignoreclick" : 0,
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1655.0, 735.0, 44.0, 153.0 ],
									"peakcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 820.0, 155.0, 15.0, 120.0 ],
									"setminmax" : [ -1.0, 1.0 ],
									"setstyle" : 1,
									"settype" : 1,
									"signed" : 1,
									"size" : 1,
									"slidercolor" : [ 0.793478, 0.793478, 0.793478, 1.0 ],
									"spacing" : 0,
									"thickness" : 2
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-238",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1160.0, 915.0, 120.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "tml.ejm.bilogscaler",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-239",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1160.0, 942.0, 50.0, 18.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "set $1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-240",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1160.0, 970.0, 57.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 595.0, 275.0, 42.0, 18.0 ],
									"text" : "0.00",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-241",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1245.0, 660.0, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 0.01",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-242",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1250.0, 795.0, 46.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 616.0, 207.000015, 34.0, 16.0 ],
									"text" : "0.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-243",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1250.0, 885.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 616.0, 259.0, 34.0, 16.0 ],
									"text" : "-100.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-244",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1245.0, 630.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 616.0, 155.000015, 34.0, 16.0 ],
									"text" : "100.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-245",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1250.0, 825.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 616.0, 225.000015, 34.0, 16.0 ],
									"text" : "-1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-246",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1250.0, 855.0, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "expr $f1/sqrt(10.)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-247",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1250.0, 735.0, 46.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 616.0, 189.000015, 34.0, 16.0 ],
									"text" : "1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-248",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1250.0, 765.0, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "expr $f1/sqrt(10.)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-249",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1160.0, 690.0, 60.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border_bottom" : 1,
									"border_left" : 1,
									"border_right" : 1,
									"border_top" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"candicane2" : [ 0.14696, 0.2072, 0.35792, 1.0 ],
									"candicane3" : [ 0.29392, 0.41441, 0.71583, 1.0 ],
									"candicane4" : [ 0.44088, 0.62161, 0.07375, 1.0 ],
									"candicane5" : [ 0.58784, 0.82881, 0.43166, 1.0 ],
									"candicane6" : [ 0.7348, 0.03601, 0.78958, 1.0 ],
									"candicane7" : [ 0.88176, 0.24321, 0.14749, 1.0 ],
									"candicane8" : [ 0.02872, 0.45042, 0.50541, 1.0 ],
									"candycane" : 1,
									"compatibility" : 0,
									"contdata" : 1,
									"drawpeaks" : 0,
									"ghostbar" : 0,
									"hidden" : 0,
									"id" : "obj-250",
									"ignoreclick" : 0,
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1160.0, 735.0, 44.0, 153.0 ],
									"peakcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 600.0, 155.0, 15.0, 120.0 ],
									"setminmax" : [ -1.0, 1.0 ],
									"setstyle" : 1,
									"settype" : 1,
									"signed" : 1,
									"size" : 1,
									"slidercolor" : [ 0.793478, 0.793478, 0.793478, 1.0 ],
									"spacing" : 0,
									"thickness" : 2
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-221",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 710.0, 915.0, 120.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "tml.ejm.bilogscaler",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-222",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 710.0, 942.0, 50.0, 18.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "set $1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-223",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 710.0, 970.0, 57.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 375.0, 275.0, 42.0, 18.0 ],
									"text" : "0.00",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-224",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 795.0, 660.0, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 0.01",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-225",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 800.0, 795.0, 46.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 397.0, 207.0, 34.0, 16.0 ],
									"text" : "0.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-226",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 800.0, 885.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 397.0, 259.0, 34.0, 16.0 ],
									"text" : "-100.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-227",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 795.0, 630.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 397.0, 155.0, 34.0, 16.0 ],
									"text" : "100.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-228",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 800.0, 825.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 397.0, 225.0, 34.0, 16.0 ],
									"text" : "-1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-229",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 800.0, 855.0, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "expr $f1/sqrt(10.)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-230",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 800.0, 735.0, 46.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 397.0, 189.0, 34.0, 16.0 ],
									"text" : "1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-231",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 800.0, 765.0, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "expr $f1/sqrt(10.)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-232",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 710.0, 690.0, 60.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border_bottom" : 1,
									"border_left" : 1,
									"border_right" : 1,
									"border_top" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"candicane2" : [ 0.14696, 0.2072, 0.35792, 1.0 ],
									"candicane3" : [ 0.29392, 0.41441, 0.71583, 1.0 ],
									"candicane4" : [ 0.44088, 0.62161, 0.07375, 1.0 ],
									"candicane5" : [ 0.58784, 0.82881, 0.43166, 1.0 ],
									"candicane6" : [ 0.7348, 0.03601, 0.78958, 1.0 ],
									"candicane7" : [ 0.88176, 0.24321, 0.14749, 1.0 ],
									"candicane8" : [ 0.02872, 0.45042, 0.50541, 1.0 ],
									"candycane" : 1,
									"compatibility" : 0,
									"contdata" : 1,
									"drawpeaks" : 0,
									"ghostbar" : 0,
									"hidden" : 0,
									"id" : "obj-233",
									"ignoreclick" : 0,
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 710.0, 735.0, 44.0, 153.0 ],
									"peakcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 380.0, 155.0, 15.0, 120.0 ],
									"setminmax" : [ -1.0, 1.0 ],
									"setstyle" : 1,
									"settype" : 1,
									"signed" : 1,
									"size" : 1,
									"slidercolor" : [ 0.793478, 0.793478, 0.793478, 1.0 ],
									"spacing" : 0,
									"thickness" : 2
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-207",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1636.0, 369.0, 120.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "tml.ejm.bilogscaler",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-208",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1636.0, 396.0, 50.0, 18.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "set $1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-209",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1636.0, 424.0, 57.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 816.0, 130.0, 42.0, 18.0 ],
									"text" : "0.00",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-210",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1726.0, 109.0, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 0.01",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-211",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1726.0, 249.000015, 46.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 836.0, 62.0, 34.0, 16.0 ],
									"text" : "0.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-212",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1726.0, 339.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 836.0, 114.0, 34.0, 16.0 ],
									"text" : "-100.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-213",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1726.0, 79.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 836.0, 10.000002, 34.0, 16.0 ],
									"text" : "100.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-214",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1726.0, 279.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 836.0, 80.0, 34.0, 16.0 ],
									"text" : "-1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-215",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1726.0, 309.0, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "expr $f1/sqrt(10.)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-216",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1726.0, 189.000015, 46.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 836.0, 44.0, 34.0, 16.0 ],
									"text" : "1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-217",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1726.0, 219.000015, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "expr $f1/sqrt(10.)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-218",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1636.0, 144.000015, 60.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border_bottom" : 1,
									"border_left" : 1,
									"border_right" : 1,
									"border_top" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"candicane2" : [ 0.14696, 0.2072, 0.35792, 1.0 ],
									"candicane3" : [ 0.29392, 0.41441, 0.71583, 1.0 ],
									"candicane4" : [ 0.44088, 0.62161, 0.07375, 1.0 ],
									"candicane5" : [ 0.58784, 0.82881, 0.43166, 1.0 ],
									"candicane6" : [ 0.7348, 0.03601, 0.78958, 1.0 ],
									"candicane7" : [ 0.88176, 0.24321, 0.14749, 1.0 ],
									"candicane8" : [ 0.02872, 0.45042, 0.50541, 1.0 ],
									"candycane" : 1,
									"compatibility" : 0,
									"contdata" : 1,
									"drawpeaks" : 0,
									"ghostbar" : 0,
									"hidden" : 0,
									"id" : "obj-219",
									"ignoreclick" : 0,
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1636.0, 189.000015, 44.0, 153.0 ],
									"peakcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 820.0, 10.000002, 15.0, 120.0 ],
									"setminmax" : [ -1.0, 1.0 ],
									"setstyle" : 1,
									"settype" : 1,
									"signed" : 1,
									"size" : 1,
									"slidercolor" : [ 0.793478, 0.793478, 0.793478, 1.0 ],
									"spacing" : 0,
									"thickness" : 2
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-194",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 690.0, 380.0, 120.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "tml.ejm.bilogscaler",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-195",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 690.0, 407.0, 50.0, 18.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "set $1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-196",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 690.0, 435.0, 57.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 376.0, 130.0, 42.0, 18.0 ],
									"text" : "0.00",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-197",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 780.0, 120.0, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 0.01",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-198",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 780.0, 260.0, 46.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 396.0, 62.0, 34.0, 16.0 ],
									"text" : "0.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-199",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 780.0, 350.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 396.0, 114.0, 33.0, 16.0 ],
									"text" : "-100.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-200",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 780.0, 90.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 396.0, 10.0, 34.0, 16.0 ],
									"text" : "100.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-201",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 780.0, 290.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 396.0, 80.0, 34.0, 16.0 ],
									"text" : "-1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-202",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 780.0, 320.0, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "expr $f1/sqrt(10.)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-203",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 780.0, 200.000015, 46.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 396.0, 44.0, 34.0, 16.0 ],
									"text" : "1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-204",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 780.0, 230.000015, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "expr $f1/sqrt(10.)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-205",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 690.0, 155.000015, 60.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border_bottom" : 1,
									"border_left" : 1,
									"border_right" : 1,
									"border_top" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"candicane2" : [ 0.14696, 0.2072, 0.35792, 1.0 ],
									"candicane3" : [ 0.29392, 0.41441, 0.71583, 1.0 ],
									"candicane4" : [ 0.44088, 0.62161, 0.07375, 1.0 ],
									"candicane5" : [ 0.58784, 0.82881, 0.43166, 1.0 ],
									"candicane6" : [ 0.7348, 0.03601, 0.78958, 1.0 ],
									"candicane7" : [ 0.88176, 0.24321, 0.14749, 1.0 ],
									"candicane8" : [ 0.02872, 0.45042, 0.50541, 1.0 ],
									"candycane" : 1,
									"compatibility" : 0,
									"contdata" : 1,
									"drawpeaks" : 0,
									"ghostbar" : 0,
									"hidden" : 0,
									"id" : "obj-206",
									"ignoreclick" : 0,
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 690.0, 200.000015, 44.0, 153.0 ],
									"peakcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 380.0, 10.0, 15.0, 120.0 ],
									"setminmax" : [ -1.0, 1.0 ],
									"setstyle" : 1,
									"settype" : 1,
									"signed" : 1,
									"size" : 1,
									"slidercolor" : [ 0.793478, 0.793478, 0.793478, 1.0 ],
									"spacing" : 0,
									"thickness" : 2
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-179",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 255.0, 915.0, 120.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "tml.ejm.bilogscaler",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-180",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 255.0, 942.0, 50.0, 18.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "set $1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-181",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 255.0, 970.0, 57.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 156.0, 275.0, 42.0, 18.0 ],
									"text" : "0.00",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-182",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 340.0, 660.0, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 0.01",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-183",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 345.0, 795.0, 46.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 176.0, 208.0, 34.0, 16.0 ],
									"text" : "0.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-184",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 345.0, 885.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 176.0, 260.0, 33.0, 16.0 ],
									"text" : "-100.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-185",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 340.0, 630.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 176.0, 156.0, 34.0, 16.0 ],
									"text" : "100.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-186",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 345.0, 825.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 176.0, 226.0, 34.0, 16.0 ],
									"text" : "-1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-187",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 345.0, 855.0, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "expr $f1/sqrt(10.)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-188",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 345.0, 735.0, 46.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 176.0, 190.0, 34.0, 16.0 ],
									"text" : "1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-189",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 345.0, 765.0, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "expr $f1/sqrt(10.)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-190",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 255.0, 690.0, 60.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border_bottom" : 1,
									"border_left" : 1,
									"border_right" : 1,
									"border_top" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"candicane2" : [ 0.14696, 0.2072, 0.35792, 1.0 ],
									"candicane3" : [ 0.29392, 0.41441, 0.71583, 1.0 ],
									"candicane4" : [ 0.44088, 0.62161, 0.07375, 1.0 ],
									"candicane5" : [ 0.58784, 0.82881, 0.43166, 1.0 ],
									"candicane6" : [ 0.7348, 0.03601, 0.78958, 1.0 ],
									"candicane7" : [ 0.88176, 0.24321, 0.14749, 1.0 ],
									"candicane8" : [ 0.02872, 0.45042, 0.50541, 1.0 ],
									"candycane" : 1,
									"compatibility" : 0,
									"contdata" : 1,
									"drawpeaks" : 0,
									"ghostbar" : 0,
									"hidden" : 0,
									"id" : "obj-191",
									"ignoreclick" : 0,
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 255.0, 735.0, 44.0, 153.0 ],
									"peakcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 160.0, 155.0, 15.0, 120.0 ],
									"setminmax" : [ -1.0, 1.0 ],
									"setstyle" : 1,
									"settype" : 1,
									"signed" : 1,
									"size" : 1,
									"slidercolor" : [ 0.793478, 0.793478, 0.793478, 1.0 ],
									"spacing" : 0,
									"thickness" : 2
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-108",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1170.0, 380.0, 120.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "tml.ejm.bilogscaler",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-109",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1170.0, 407.0, 50.0, 18.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "set $1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-110",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1170.0, 435.0, 57.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 599.0, 130.0, 42.0, 18.0 ],
									"text" : "0.00",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-123",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1260.0, 120.0, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 0.01",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-127",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1260.0, 260.0, 46.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 615.0, 62.0, 34.0, 16.0 ],
									"text" : "0.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-128",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1260.0, 350.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 615.0, 114.0, 33.0, 16.0 ],
									"text" : "-100.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-129",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1260.0, 90.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 615.0, 10.0, 34.0, 16.0 ],
									"text" : "100.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-173",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1260.0, 290.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 615.0, 80.0, 34.0, 16.0 ],
									"text" : "-1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-174",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1260.0, 320.0, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "expr $f1/sqrt(10.)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-175",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1260.0, 200.000015, 46.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 615.0, 44.0, 34.0, 16.0 ],
									"text" : "1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-176",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1260.0, 230.000015, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "expr $f1/sqrt(10.)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-177",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1170.0, 155.000015, 60.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border_bottom" : 1,
									"border_left" : 1,
									"border_right" : 1,
									"border_top" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"candicane2" : [ 0.14696, 0.2072, 0.35792, 1.0 ],
									"candicane3" : [ 0.29392, 0.41441, 0.71583, 1.0 ],
									"candicane4" : [ 0.44088, 0.62161, 0.07375, 1.0 ],
									"candicane5" : [ 0.58784, 0.82881, 0.43166, 1.0 ],
									"candicane6" : [ 0.7348, 0.03601, 0.78958, 1.0 ],
									"candicane7" : [ 0.88176, 0.24321, 0.14749, 1.0 ],
									"candicane8" : [ 0.02872, 0.45042, 0.50541, 1.0 ],
									"candycane" : 1,
									"compatibility" : 0,
									"contdata" : 1,
									"drawpeaks" : 0,
									"ghostbar" : 0,
									"hidden" : 0,
									"id" : "obj-178",
									"ignoreclick" : 0,
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1170.0, 200.000015, 44.0, 153.0 ],
									"peakcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 599.0, 10.000001, 15.0, 120.0 ],
									"setminmax" : [ -1.0, 1.0 ],
									"setstyle" : 1,
									"settype" : 1,
									"signed" : 1,
									"size" : 1,
									"slidercolor" : [ 0.793478, 0.793478, 0.793478, 1.0 ],
									"spacing" : 0,
									"thickness" : 2
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-1",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 224.999985, 395.0, 120.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "tml.ejm.bilogscaler",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-2",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 224.999985, 422.0, 50.0, 18.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "set $1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-15",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 224.999985, 450.0, 57.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 156.0, 130.0, 42.0, 18.0 ],
									"text" : "0.00",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-16",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 315.0, 135.000015, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 0.01",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-17",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 315.0, 275.0, 46.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 176.0, 62.0, 34.0, 16.0 ],
									"text" : "0.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-33",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 315.0, 365.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 176.0, 114.0, 33.0, 16.0 ],
									"text" : "-100.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-36",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 315.0, 105.000008, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 176.0, 10.0, 34.0, 16.0 ],
									"text" : "100.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-73",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 315.0, 305.0, 45.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 176.0, 80.0, 34.0, 16.0 ],
									"text" : "-1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-75",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 315.0, 335.0, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "expr $f1/sqrt(10.)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-76",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 315.0, 215.000015, 46.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 176.0, 44.0, 34.0, 16.0 ],
									"text" : "1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-77",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 315.0, 245.000015, 100.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "expr $f1/sqrt(10.)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-89",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 224.999985, 170.000015, 60.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border_bottom" : 1,
									"border_left" : 1,
									"border_right" : 1,
									"border_top" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"candicane2" : [ 0.14696, 0.2072, 0.35792, 1.0 ],
									"candicane3" : [ 0.29392, 0.41441, 0.71583, 1.0 ],
									"candicane4" : [ 0.44088, 0.62161, 0.07375, 1.0 ],
									"candicane5" : [ 0.58784, 0.82881, 0.43166, 1.0 ],
									"candicane6" : [ 0.7348, 0.03601, 0.78958, 1.0 ],
									"candicane7" : [ 0.88176, 0.24321, 0.14749, 1.0 ],
									"candicane8" : [ 0.02872, 0.45042, 0.50541, 1.0 ],
									"candycane" : 1,
									"compatibility" : 0,
									"contdata" : 1,
									"drawpeaks" : 0,
									"ghostbar" : 0,
									"hidden" : 0,
									"id" : "obj-91",
									"ignoreclick" : 0,
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 224.999985, 215.000015, 44.0, 153.0 ],
									"peakcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 160.0, 10.0, 15.0, 120.0 ],
									"setminmax" : [ -1.0, 1.0 ],
									"setstyle" : 1,
									"settype" : 1,
									"signed" : 1,
									"size" : 1,
									"slidercolor" : [ 0.793478, 0.793478, 0.793478, 1.0 ],
									"spacing" : 0,
									"thickness" : 2
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-8",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 525.0, 770.0, 83.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "loadmess 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-9",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1455.0, 215.000031, 83.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "loadmess 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-10",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 510.0, 230.000015, 83.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "loadmess 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-13",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1470.0, 770.0, 83.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "loadmess 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-7",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 975.0, 780.0, 83.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "loadmess 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-6",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 75.000008, 765.0, 83.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "loadmess 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-4",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 990.0, 225.000137, 83.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "loadmess 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-3",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 44.999985, 240.000015, 83.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "loadmess 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-148",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 1575.0, 945.0, 35.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "t b f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-149",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1575.0, 915.0, 50.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-170",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1560.0, 990.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-171",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1515.0, 990.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-172",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1470.0, 990.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-38",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 630.0, 945.0, 35.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "t b f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-39",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 630.0, 915.0, 50.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-40",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 615.0, 990.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-52",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 570.0, 990.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-54",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 525.0, 990.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-55",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 1560.0, 390.0, 35.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "t b f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-56",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1560.0, 360.0, 50.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-140",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1545.0, 435.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-141",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1500.0, 435.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-142",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1455.0, 435.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-143",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 615.0, 405.0, 35.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "t b f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-144",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 615.0, 375.0, 50.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-145",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 600.0, 450.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-146",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 555.0, 450.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-147",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 510.0, 450.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-165",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 1080.0, 960.0, 35.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "t b f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-166",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1080.0, 930.0, 50.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-167",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1065.0, 1005.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-168",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1020.0, 1005.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-169",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 975.0, 1005.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-160",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 180.000015, 945.0, 35.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "t b f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-161",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 180.000015, 915.0, 50.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-162",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 165.000015, 990.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-163",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 120.000008, 990.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-164",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 75.000008, 990.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-155",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 1095.0, 405.0, 35.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "t b f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-156",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1095.0, 375.0, 50.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-157",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1080.0, 450.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-158",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1035.0, 450.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-159",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 990.0, 450.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-150",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"patching_rect" : [ 149.999985, 420.0, 35.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "t b f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-151",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 149.999985, 390.0, 50.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-152",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 134.999985, 465.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-153",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 89.999985, 465.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-154",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 44.999981, 465.0, 34.0, 21.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "* 1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-71",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 705.0, 1005.0, 150.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 225.0, 275.0, 115.0, 21.0 ],
									"text" : "pressureIMultiply",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-74",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 675.0, 1095.0, 32.5, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "0.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-78",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 525.0, 1125.0, 105.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "pak f f f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-79",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 615.0, 1095.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-80",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 570.0, 1095.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-81",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 1095.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-82",
									"ignoreclick" : 0,
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 705.0, 1035.0, 225.0, 43.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.parameter pressureIMultiply @type array @ramp/drive none @description \"//pressure imultiply.\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"varname" : "dim[5]"
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-83",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 525.0, 1045.0, 154.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.list2parameter 4",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border_bottom" : 1,
									"border_left" : 1,
									"border_right" : 1,
									"border_top" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"candicane2" : [ 0.14696, 0.2072, 0.35792, 1.0 ],
									"candicane3" : [ 0.29392, 0.41441, 0.71583, 1.0 ],
									"candicane4" : [ 0.44088, 0.62161, 0.07375, 1.0 ],
									"candicane5" : [ 0.58784, 0.82881, 0.43166, 1.0 ],
									"candicane6" : [ 0.7348, 0.03601, 0.78958, 1.0 ],
									"candicane7" : [ 0.88176, 0.24321, 0.14749, 1.0 ],
									"candicane8" : [ 0.02872, 0.45042, 0.50541, 1.0 ],
									"candycane" : 1,
									"compatibility" : 0,
									"contdata" : 1,
									"drawpeaks" : 0,
									"ghostbar" : 0,
									"hidden" : 0,
									"id" : "obj-84",
									"ignoreclick" : 0,
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 0,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 810.0, 135.0, 15.0 ],
									"peakcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 225.0, 155.0, 155.0, 15.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"setstyle" : 1,
									"settype" : 1,
									"signed" : 0,
									"size" : 1,
									"slidercolor" : [ 0.793478, 0.793478, 0.793478, 1.0 ],
									"spacing" : 0,
									"thickness" : 2
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-85",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 525.0, 840.0, 86.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "saturation $1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-86",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "float", "float", "float" ],
									"patching_rect" : [ 525.0, 915.0, 69.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "unpack f f f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"compatibility" : 0,
									"hidden" : 0,
									"id" : "obj-87",
									"ignoreclick" : 0,
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 870.0, 128.0, 32.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 225.0, 170.0, 155.0, 104.999985 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-88",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1635.0, 450.0, 150.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 665.0, 130.0, 95.0, 21.0 ],
									"text" : "velocityIScale",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-90",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1605.0, 540.0, 32.5, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "0.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-94",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1455.0, 570.0, 105.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "pak f f f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-95",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1545.0, 540.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-96",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1500.0, 540.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-97",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1455.0, 540.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-98",
									"ignoreclick" : 0,
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1635.0, 480.0, 188.0, 43.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.parameter velocityIScale @type array @ramp/drive none @description \"//velocity iscale.\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"varname" : "dim[6]"
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-99",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 1455.0, 490.0, 154.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.list2parameter 4",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border_bottom" : 1,
									"border_left" : 1,
									"border_right" : 1,
									"border_top" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"candicane2" : [ 0.14696, 0.2072, 0.35792, 1.0 ],
									"candicane3" : [ 0.29392, 0.41441, 0.71583, 1.0 ],
									"candicane4" : [ 0.44088, 0.62161, 0.07375, 1.0 ],
									"candicane5" : [ 0.58784, 0.82881, 0.43166, 1.0 ],
									"candicane6" : [ 0.7348, 0.03601, 0.78958, 1.0 ],
									"candicane7" : [ 0.88176, 0.24321, 0.14749, 1.0 ],
									"candicane8" : [ 0.02872, 0.45042, 0.50541, 1.0 ],
									"candycane" : 1,
									"compatibility" : 0,
									"contdata" : 1,
									"drawpeaks" : 0,
									"ghostbar" : 0,
									"hidden" : 0,
									"id" : "obj-100",
									"ignoreclick" : 0,
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 0,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1455.0, 255.000031, 135.0, 15.0 ],
									"peakcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 665.0, 10.000002, 155.0, 15.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"setstyle" : 1,
									"settype" : 1,
									"signed" : 0,
									"size" : 1,
									"slidercolor" : [ 0.793478, 0.793478, 0.793478, 1.0 ],
									"spacing" : 0,
									"thickness" : 2
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-101",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1455.0, 285.000031, 86.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "saturation $1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-102",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "float", "float", "float" ],
									"patching_rect" : [ 1455.0, 360.0, 69.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "unpack f f f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"compatibility" : 0,
									"hidden" : 0,
									"id" : "obj-103",
									"ignoreclick" : 0,
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1455.0, 315.0, 128.0, 32.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 665.0, 25.0, 155.0, 104.999985 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-104",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 690.0, 465.0, 150.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 225.0, 130.0, 115.0, 21.0 ],
									"text" : "velocityIMultiply",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-106",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 660.0, 555.0, 32.5, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "0.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-111",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 510.0, 585.0, 105.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "pak f f f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-112",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 600.0, 555.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-113",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 555.0, 555.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-114",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 510.0, 555.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-115",
									"ignoreclick" : 0,
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 690.0, 495.0, 195.0, 43.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.parameter velocityIMultiply @type array @ramp/drive none @description \"//velocity imultiply.\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"varname" : "dim[7]"
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-116",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 510.0, 505.0, 154.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.list2parameter 4",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border_bottom" : 1,
									"border_left" : 1,
									"border_right" : 1,
									"border_top" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"candicane2" : [ 0.14696, 0.2072, 0.35792, 1.0 ],
									"candicane3" : [ 0.29392, 0.41441, 0.71583, 1.0 ],
									"candicane4" : [ 0.44088, 0.62161, 0.07375, 1.0 ],
									"candicane5" : [ 0.58784, 0.82881, 0.43166, 1.0 ],
									"candicane6" : [ 0.7348, 0.03601, 0.78958, 1.0 ],
									"candicane7" : [ 0.88176, 0.24321, 0.14749, 1.0 ],
									"candicane8" : [ 0.02872, 0.45042, 0.50541, 1.0 ],
									"candycane" : 1,
									"compatibility" : 0,
									"contdata" : 1,
									"drawpeaks" : 0,
									"ghostbar" : 0,
									"hidden" : 0,
									"id" : "obj-117",
									"ignoreclick" : 0,
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 0,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 510.0, 270.0, 135.0, 15.0 ],
									"peakcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 225.0, 10.0, 155.0, 15.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"setstyle" : 1,
									"settype" : 1,
									"signed" : 0,
									"size" : 1,
									"slidercolor" : [ 0.793478, 0.793478, 0.793478, 1.0 ],
									"spacing" : 0,
									"thickness" : 2
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-118",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 510.0, 300.0, 86.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "saturation $1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-120",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "float", "float", "float" ],
									"patching_rect" : [ 510.0, 375.0, 69.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "unpack f f f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"compatibility" : 0,
									"hidden" : 0,
									"id" : "obj-121",
									"ignoreclick" : 0,
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 510.0, 330.0, 128.0, 32.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 225.0, 25.0, 155.0, 104.999985 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-122",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1650.0, 1005.0, 150.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 665.0, 275.0, 90.0, 21.0 ],
									"text" : "densityScale",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-126",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1620.0, 1095.0, 32.5, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "1.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-130",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1470.0, 1125.0, 105.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "pak f f f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-131",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1560.0, 1095.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-132",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1515.0, 1095.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-133",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1470.0, 1095.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-134",
									"ignoreclick" : 0,
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1650.0, 1035.0, 197.0, 43.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.parameter densityScale @type array @ramp/drive none @description \"//pressure Multiply.\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"varname" : "dim[8]"
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-135",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 1470.0, 1045.0, 154.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.list2parameter 4",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border_bottom" : 1,
									"border_left" : 1,
									"border_right" : 1,
									"border_top" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"candicane2" : [ 0.14696, 0.2072, 0.35792, 1.0 ],
									"candicane3" : [ 0.29392, 0.41441, 0.71583, 1.0 ],
									"candicane4" : [ 0.44088, 0.62161, 0.07375, 1.0 ],
									"candicane5" : [ 0.58784, 0.82881, 0.43166, 1.0 ],
									"candicane6" : [ 0.7348, 0.03601, 0.78958, 1.0 ],
									"candicane7" : [ 0.88176, 0.24321, 0.14749, 1.0 ],
									"candicane8" : [ 0.02872, 0.45042, 0.50541, 1.0 ],
									"candycane" : 1,
									"compatibility" : 0,
									"contdata" : 1,
									"drawpeaks" : 0,
									"ghostbar" : 0,
									"hidden" : 0,
									"id" : "obj-136",
									"ignoreclick" : 0,
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 0,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1470.0, 810.0, 135.0, 15.0 ],
									"peakcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 665.0, 155.0, 155.0, 15.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"setstyle" : 1,
									"settype" : 1,
									"signed" : 0,
									"size" : 1,
									"slidercolor" : [ 0.793478, 0.793478, 0.793478, 1.0 ],
									"spacing" : 0,
									"thickness" : 2
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-137",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1470.0, 840.0, 86.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "saturation $1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-138",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "float", "float", "float" ],
									"patching_rect" : [ 1470.0, 915.0, 69.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "unpack f f f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"compatibility" : 0,
									"hidden" : 0,
									"id" : "obj-139",
									"ignoreclick" : 0,
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1470.0, 870.0, 128.0, 32.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 665.0, 170.0, 155.0, 104.999985 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-31",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1155.0, 1020.0, 150.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 445.0, 275.0, 115.0, 21.0 ],
									"text" : "pressureScale",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-37",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1125.0, 1110.0, 32.5, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "0.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-41",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 975.0, 1140.0, 105.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "pak f f f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-42",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1065.0, 1110.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-43",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1020.0, 1110.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-44",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 975.0, 1110.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-45",
									"ignoreclick" : 0,
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1155.0, 1050.0, 191.0, 43.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.parameter pressureScale @type array @ramp/drive none @description \"//pressure scale.\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"varname" : "dim[3]"
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-46",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 975.0, 1060.0, 154.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.list2parameter 4",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border_bottom" : 1,
									"border_left" : 1,
									"border_right" : 1,
									"border_top" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"candicane2" : [ 0.14696, 0.2072, 0.35792, 1.0 ],
									"candicane3" : [ 0.29392, 0.41441, 0.71583, 1.0 ],
									"candicane4" : [ 0.44088, 0.62161, 0.07375, 1.0 ],
									"candicane5" : [ 0.58784, 0.82881, 0.43166, 1.0 ],
									"candicane6" : [ 0.7348, 0.03601, 0.78958, 1.0 ],
									"candicane7" : [ 0.88176, 0.24321, 0.14749, 1.0 ],
									"candicane8" : [ 0.02872, 0.45042, 0.50541, 1.0 ],
									"candycane" : 1,
									"compatibility" : 0,
									"contdata" : 1,
									"drawpeaks" : 0,
									"ghostbar" : 0,
									"hidden" : 0,
									"id" : "obj-47",
									"ignoreclick" : 0,
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 0,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 975.0, 810.0, 135.0, 15.0 ],
									"peakcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 445.0, 155.0, 155.0, 15.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"setstyle" : 1,
									"settype" : 1,
									"signed" : 0,
									"size" : 1,
									"slidercolor" : [ 0.793478, 0.793478, 0.793478, 1.0 ],
									"spacing" : 0,
									"thickness" : 2
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-48",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 975.0, 840.0, 86.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "saturation $1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-49",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "float", "float", "float" ],
									"patching_rect" : [ 975.0, 930.0, 69.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "unpack f f f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"compatibility" : 0,
									"hidden" : 0,
									"id" : "obj-50",
									"ignoreclick" : 0,
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 975.0, 870.0, 128.0, 32.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 445.0, 170.0, 155.0, 104.999985 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-51",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 255.000031, 1005.0, 150.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 275.0, 115.0, 21.0 ],
									"text" : "pressureMultiply",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-53",
									"ignoreclick" : 0,
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 225.000015, 1095.0, 32.5, 34.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "0.25",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-57",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 75.000008, 1125.0, 105.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "pak f f f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-58",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 165.000015, 1095.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-59",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 120.000008, 1095.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-60",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 75.000008, 1095.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-61",
									"ignoreclick" : 0,
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 255.000031, 1035.0, 216.0, 43.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.parameter pressureMultiply @type array @ramp/drive none @description \"//pressure Multiply.\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"varname" : "dim[4]"
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-62",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 75.000008, 1045.0, 154.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.list2parameter 4",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border_bottom" : 1,
									"border_left" : 1,
									"border_right" : 1,
									"border_top" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"candicane2" : [ 0.14696, 0.2072, 0.35792, 1.0 ],
									"candicane3" : [ 0.29392, 0.41441, 0.71583, 1.0 ],
									"candicane4" : [ 0.44088, 0.62161, 0.07375, 1.0 ],
									"candicane5" : [ 0.58784, 0.82881, 0.43166, 1.0 ],
									"candicane6" : [ 0.7348, 0.03601, 0.78958, 1.0 ],
									"candicane7" : [ 0.88176, 0.24321, 0.14749, 1.0 ],
									"candicane8" : [ 0.02872, 0.45042, 0.50541, 1.0 ],
									"candycane" : 1,
									"compatibility" : 0,
									"contdata" : 1,
									"drawpeaks" : 0,
									"ghostbar" : 0,
									"hidden" : 0,
									"id" : "obj-63",
									"ignoreclick" : 0,
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 0,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 75.000008, 795.0, 135.0, 15.0 ],
									"peakcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 155.0, 155.0, 15.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"setstyle" : 1,
									"settype" : 1,
									"signed" : 0,
									"size" : 1,
									"slidercolor" : [ 0.793478, 0.793478, 0.793478, 1.0 ],
									"spacing" : 0,
									"thickness" : 2
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-64",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 75.000008, 825.0, 86.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "saturation $1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-69",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "float", "float", "float" ],
									"patching_rect" : [ 75.000008, 915.0, 69.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "unpack f f f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"compatibility" : 0,
									"hidden" : 0,
									"id" : "obj-70",
									"ignoreclick" : 0,
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 75.000008, 855.0, 128.0, 32.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 170.0, 155.0, 104.999985 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-12",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1170.0, 465.0, 150.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 445.0, 130.0, 90.0, 21.0 ],
									"text" : "velocityScale",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-14",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1140.0, 555.0, 32.5, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "0.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-18",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 990.0, 585.0, 105.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "pak f f f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-19",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1080.0, 555.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-20",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1035.0, 555.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-21",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 990.0, 555.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-22",
									"ignoreclick" : 0,
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1170.0, 495.0, 181.0, 43.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.parameter velocityScale @type array @ramp/drive none @description \"//velocity scale.\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"varname" : "dim[2]"
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-23",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 990.0, 505.0, 154.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.list2parameter 4",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border_bottom" : 1,
									"border_left" : 1,
									"border_right" : 1,
									"border_top" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"candicane2" : [ 0.14696, 0.2072, 0.35792, 1.0 ],
									"candicane3" : [ 0.29392, 0.41441, 0.71583, 1.0 ],
									"candicane4" : [ 0.44088, 0.62161, 0.07375, 1.0 ],
									"candicane5" : [ 0.58784, 0.82881, 0.43166, 1.0 ],
									"candicane6" : [ 0.7348, 0.03601, 0.78958, 1.0 ],
									"candicane7" : [ 0.88176, 0.24321, 0.14749, 1.0 ],
									"candicane8" : [ 0.02872, 0.45042, 0.50541, 1.0 ],
									"candycane" : 1,
									"compatibility" : 0,
									"contdata" : 1,
									"drawpeaks" : 0,
									"ghostbar" : 0,
									"hidden" : 0,
									"id" : "obj-24",
									"ignoreclick" : 0,
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 0,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 990.0, 255.000137, 135.0, 15.0 ],
									"peakcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 445.0, 10.0, 155.0, 15.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"setstyle" : 1,
									"settype" : 1,
									"signed" : 0,
									"size" : 1,
									"slidercolor" : [ 0.793478, 0.793478, 0.793478, 1.0 ],
									"spacing" : 0,
									"thickness" : 2
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-25",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 990.0, 285.000122, 86.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "saturation $1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-28",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "float", "float", "float" ],
									"patching_rect" : [ 990.0, 375.0, 69.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "unpack f f f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"compatibility" : 0,
									"hidden" : 0,
									"id" : "obj-29",
									"ignoreclick" : 0,
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 990.0, 315.0, 128.0, 32.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 445.0, 25.0, 155.0, 105.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"bubble" : 0,
									"bubblepoint" : 0.5,
									"bubbleside" : 1,
									"bubbletextmargin" : 5,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"hidden" : 0,
									"id" : "obj-11",
									"ignoreclick" : 1,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 224.999985, 479.999969, 150.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 130.0, 105.0, 21.0 ],
									"text" : "velocityMultiply",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"underline" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-5",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 194.999985, 570.0, 32.5, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "0.",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-32",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 44.999985, 615.0, 105.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "pak f f f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-72",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 134.999985, 570.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-65",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 89.999985, 570.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"cantchange" : 0,
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 0,
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
									"id" : "obj-66",
									"ignoreclick" : 0,
									"maxclass" : "flonum",
									"maximum" : "<none>",
									"minimum" : "<none>",
									"mouseup" : 0,
									"numdecimalplaces" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"outputonclick" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 44.999985, 570.0, 45.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"triscale" : 1.0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-67",
									"ignoreclick" : 0,
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 224.999985, 509.999969, 180.0, 43.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.parameter velocityMultiply @type array @ramp/drive none @description \"//velocity Multiply.\"",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0,
									"varname" : "dim[1]"
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 0,
									"id" : "obj-68",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 44.999985, 520.0, 154.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "jcom.list2parameter 4",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border_bottom" : 1,
									"border_left" : 1,
									"border_right" : 1,
									"border_top" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"candicane2" : [ 0.14696, 0.2072, 0.35792, 1.0 ],
									"candicane3" : [ 0.29392, 0.41441, 0.71583, 1.0 ],
									"candicane4" : [ 0.44088, 0.62161, 0.07375, 1.0 ],
									"candicane5" : [ 0.58784, 0.82881, 0.43166, 1.0 ],
									"candicane6" : [ 0.7348, 0.03601, 0.78958, 1.0 ],
									"candicane7" : [ 0.88176, 0.24321, 0.14749, 1.0 ],
									"candicane8" : [ 0.02872, 0.45042, 0.50541, 1.0 ],
									"candycane" : 1,
									"compatibility" : 0,
									"contdata" : 1,
									"drawpeaks" : 0,
									"ghostbar" : 0,
									"hidden" : 0,
									"id" : "obj-124",
									"ignoreclick" : 0,
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 0,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 44.999985, 270.0, 135.0, 15.0 ],
									"peakcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 10.0, 155.0, 15.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"setstyle" : 1,
									"settype" : 1,
									"signed" : 0,
									"size" : 1,
									"slidercolor" : [ 0.793478, 0.793478, 0.793478, 1.0 ],
									"spacing" : 0,
									"thickness" : 2
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"gradient" : 0,
									"hidden" : 0,
									"id" : "obj-125",
									"ignoreclick" : 0,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 44.999985, 300.0, 86.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "saturation $1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 0,
									"id" : "obj-119",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "float", "float", "float" ],
									"patching_rect" : [ 44.999985, 390.0, 69.0, 20.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "unpack f f f",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"compatibility" : 0,
									"hidden" : 0,
									"id" : "obj-107",
									"ignoreclick" : 0,
									"maxclass" : "swatch",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 44.999985, 330.0, 128.0, 32.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 25.0, 155.0, 105.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 1,
									"id" : "obj-26",
									"ignoreclick" : 0,
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 74.999985, 65.000008, 109.0, 29.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "window flags grow, window exec",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
									"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"gradient" : 0,
									"hidden" : 1,
									"id" : "obj-27",
									"ignoreclick" : 0,
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 189.999985, 65.000008, 398.0, 29.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"text" : "window size 0 45 875 345, window flags nogrow, window exec, savewindow 1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 1,
									"id" : "obj-30",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "front" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 3,
											"architecture" : "x86"
										}
,
										"rect" : [ 840.0, 548.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 50.0, 144.0, 19.0 ],
													"text" : "jcom.oscroute /view/panel"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "front" ],
													"patching_rect" : [ 50.0, 92.0, 40.0, 19.0 ],
													"text" : "t front"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-4",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-5",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 114.0, 15.0, 15.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-4", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 14.999981, 65.000015, 42.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Verdana",
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p front",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.8, 0.84, 0.71, 1.0 ],
									"fontface" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 1,
									"id" : "obj-34",
									"ignoreclick" : 0,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 14.999985, 105.000008, 65.0, 19.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "nogrow", "close", "zoom", "nofloat", "menu", "minimize", ";", "#Q", "window", "constrain", 50, 50, 32768, 32768, ";", "#Q", "window", "size", 5, 44, 880, 344, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ],
									"text" : "thispatcher",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 0,
									"comment" : "",
									"hidden" : 1,
									"id" : "obj-35",
									"ignoreclick" : 0,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 14.999981, 35.000011, 15.0, 15.0 ],
									"presentation" : 0,
									"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-151", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 234.499985, 424.0, 217.899994, 424.0, 217.899994, 380.0, 159.499985, 380.0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-117", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-101", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-100", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-103", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-101", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-140", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1514.5, 407.0, 1554.5, 407.0 ],
									"source" : [ "obj-102", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-141", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1489.5, 407.0, 1509.5, 407.0 ],
									"source" : [ "obj-102", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-142", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1464.5, 407.0, 1464.5, 407.0 ],
									"source" : [ "obj-102", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-102", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-103", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-175", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-116", 3 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 669.5, 619.0, 479.399994, 619.0, 479.399994, 213.200027, 675.0, 213.200027, 675.0, 492.0, 560.0, 492.0 ],
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-119", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-109", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-108", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-156", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1179.5, 409.0, 1162.900024, 409.0, 1162.900024, 365.0, 1104.5, 365.0 ],
									"source" : [ "obj-108", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-110", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-109", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-121", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 519.5, 606.0, 495.0, 606.0, 495.0, 327.0, 519.5, 327.0 ],
									"source" : [ "obj-111", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-111", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-112", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-111", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-111", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-114", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-116", 10 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-115", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-106", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 560.0, 539.0, 669.5, 539.0 ],
									"source" : [ "obj-116", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-112", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 546.5, 539.0, 609.5, 539.0 ],
									"source" : [ "obj-116", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-113", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 533.0, 539.0, 564.5, 539.0 ],
									"source" : [ "obj-116", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-114", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-116", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-115", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-116", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-118", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-117", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-121", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-118", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-152", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 104.499985, 437.0, 144.499985, 437.0 ],
									"source" : [ "obj-119", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-153", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 79.499985, 437.0, 99.499985, 437.0 ],
									"source" : [ "obj-119", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-154", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-119", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-145", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 569.5, 422.0, 609.5, 422.0 ],
									"source" : [ "obj-120", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-146", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 544.5, 422.0, 564.5, 422.0 ],
									"source" : [ "obj-120", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-147", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-120", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-120", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-121", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-177", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1269.5, 147.0, 1179.5, 147.0 ],
									"source" : [ "obj-123", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-125", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-124", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-107", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-125", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-135", 3 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1629.5, 1155.0, 1439.400024, 1155.0, 1439.400024, 758.200012, 1635.0, 758.200012, 1635.0, 1032.0, 1520.0, 1032.0 ],
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-177", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1269.5, 287.0, 1247.0, 287.0, 1247.0, 145.000015, 1179.5, 145.000015 ],
									"source" : [ "obj-127", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-177", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1269.5, 377.0, 1247.0, 377.0, 1247.0, 145.000015, 1179.5, 145.000015 ],
									"source" : [ "obj-128", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-123", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-129", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-136", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-139", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1479.5, 1146.0, 1455.0, 1146.0, 1455.0, 867.0, 1479.5, 867.0 ],
									"source" : [ "obj-130", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-130", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-131", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-130", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-132", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-130", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-133", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-135", 10 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-134", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-126", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1520.0, 1079.0, 1629.5, 1079.0 ],
									"source" : [ "obj-135", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-131", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1506.5, 1079.0, 1569.5, 1079.0 ],
									"source" : [ "obj-135", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-132", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1493.0, 1079.0, 1524.5, 1079.0 ],
									"source" : [ "obj-135", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-133", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1479.5, 1079.0, 1479.5, 1079.0 ],
									"source" : [ "obj-135", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-134", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-135", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-137", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-136", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-139", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-137", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-170", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1529.5, 962.0, 1569.5, 962.0 ],
									"source" : [ "obj-138", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-171", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1504.5, 962.0, 1524.5, 962.0 ],
									"source" : [ "obj-138", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-172", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1479.5, 962.0, 1479.5, 962.0 ],
									"source" : [ "obj-138", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-138", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-139", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-23", 3 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1149.5, 618.110046, 959.400024, 618.110046, 959.400024, 211.180038, 1155.0, 211.180038, 1155.0, 492.0, 1040.0, 492.0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-99", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1554.5, 472.5, 1491.5, 472.5 ],
									"source" : [ "obj-140", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-99", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1509.5, 472.5, 1478.0, 472.5 ],
									"source" : [ "obj-141", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-99", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-142", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-145", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 640.5, 437.5, 624.5, 437.5 ],
									"source" : [ "obj-143", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-145", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 624.5, 437.5, 609.5, 437.5 ],
									"source" : [ "obj-143", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-146", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 640.5, 437.5, 579.5, 437.5 ],
									"source" : [ "obj-143", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-146", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 624.5, 437.5, 564.5, 437.5 ],
									"source" : [ "obj-143", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-147", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 640.5, 437.5, 534.5, 437.5 ],
									"source" : [ "obj-143", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-147", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 624.5, 437.5, 519.5, 437.5 ],
									"source" : [ "obj-143", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-143", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-144", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-116", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 609.5, 487.5, 546.5, 487.5 ],
									"source" : [ "obj-145", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-116", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 564.5, 487.5, 533.0, 487.5 ],
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-116", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-147", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-170", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1600.5, 977.5, 1584.5, 977.5 ],
									"source" : [ "obj-148", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-170", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1584.5, 977.5, 1569.5, 977.5 ],
									"source" : [ "obj-148", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-171", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1600.5, 977.5, 1539.5, 977.5 ],
									"source" : [ "obj-148", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-171", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1584.5, 977.5, 1524.5, 977.5 ],
									"source" : [ "obj-148", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-172", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1600.5, 977.5, 1494.5, 977.5 ],
									"source" : [ "obj-148", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-172", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1584.5, 977.5, 1479.5, 977.5 ],
									"source" : [ "obj-148", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-148", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-149", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-152", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 175.499985, 452.5, 159.499985, 452.5 ],
									"source" : [ "obj-150", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-152", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 159.499985, 452.5, 144.499985, 452.5 ],
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-153", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 175.499985, 452.5, 114.499985, 452.5 ],
									"source" : [ "obj-150", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-153", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 159.499985, 452.5, 99.499985, 452.5 ],
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-154", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 175.499985, 452.5, 69.499985, 452.5 ],
									"source" : [ "obj-150", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-154", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 159.499985, 452.5, 54.499981, 452.5 ],
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-150", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-151", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-68", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 144.499985, 502.5, 81.499985, 502.5 ],
									"source" : [ "obj-152", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-68", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 99.499985, 502.5, 67.999985, 502.5 ],
									"source" : [ "obj-153", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-68", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 54.499981, 502.5, 54.499985, 502.5 ],
									"source" : [ "obj-154", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-157", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1120.5, 437.5, 1104.5, 437.5 ],
									"source" : [ "obj-155", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-157", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1104.5, 437.5, 1089.5, 437.5 ],
									"source" : [ "obj-155", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-158", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1120.5, 437.5, 1059.5, 437.5 ],
									"source" : [ "obj-155", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-158", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1104.5, 437.5, 1044.5, 437.5 ],
									"source" : [ "obj-155", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-159", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1120.5, 437.5, 1014.5, 437.5 ],
									"source" : [ "obj-155", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-159", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1104.5, 437.5, 999.5, 437.5 ],
									"source" : [ "obj-155", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-155", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-156", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-23", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1089.5, 487.5, 1026.5, 487.5 ],
									"source" : [ "obj-157", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-23", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1044.5, 487.5, 1013.0, 487.5 ],
									"source" : [ "obj-158", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-23", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 999.5, 487.5, 999.5, 487.5 ],
									"source" : [ "obj-159", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-89", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 324.5, 162.000015, 234.499985, 162.000015 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-162", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 205.500015, 977.5, 189.500015, 977.5 ],
									"source" : [ "obj-160", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-162", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 189.500015, 977.5, 174.500015, 977.5 ],
									"source" : [ "obj-160", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-163", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 205.500015, 977.5, 144.5, 977.5 ],
									"source" : [ "obj-160", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-163", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 189.500015, 977.5, 129.5, 977.5 ],
									"source" : [ "obj-160", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-164", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 205.500015, 977.5, 99.500008, 977.5 ],
									"source" : [ "obj-160", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-164", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 189.500015, 977.5, 84.500008, 977.5 ],
									"source" : [ "obj-160", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-160", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-161", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-62", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 174.500015, 1027.5, 111.500008, 1027.5 ],
									"source" : [ "obj-162", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-62", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 129.5, 1027.5, 98.000008, 1027.5 ],
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-62", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-164", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-167", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1105.5, 992.5, 1089.5, 992.5 ],
									"source" : [ "obj-165", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-167", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1089.5, 992.5, 1074.5, 992.5 ],
									"source" : [ "obj-165", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-168", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1105.5, 992.5, 1044.5, 992.5 ],
									"source" : [ "obj-165", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-168", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1089.5, 992.5, 1029.5, 992.5 ],
									"source" : [ "obj-165", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-169", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1105.5, 992.5, 999.5, 992.5 ],
									"source" : [ "obj-165", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-169", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1089.5, 992.5, 984.5, 992.5 ],
									"source" : [ "obj-165", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-165", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-166", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-46", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1074.5, 1042.5, 1011.5, 1042.5 ],
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-46", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1029.5, 1042.5, 998.0, 1042.5 ],
									"source" : [ "obj-168", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-46", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-169", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-89", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 324.5, 302.0, 302.0, 302.0, 302.0, 160.000015, 234.499985, 160.000015 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-135", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1569.5, 1027.5, 1506.5, 1027.5 ],
									"source" : [ "obj-170", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-135", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1524.5, 1027.5, 1493.0, 1027.5 ],
									"source" : [ "obj-171", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-135", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1479.5, 1027.5, 1479.5, 1027.5 ],
									"source" : [ "obj-172", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-174", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-173", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-177", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1269.5, 349.0, 1247.0, 349.0, 1247.0, 145.000015, 1179.5, 145.000015 ],
									"source" : [ "obj-174", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-176", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-175", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-177", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1269.5, 259.0, 1247.0, 259.0, 1247.0, 145.000015, 1179.5, 145.000015 ],
									"source" : [ "obj-176", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-178", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-177", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-108", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-178", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-161", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 264.5, 944.0, 247.900009, 944.0, 247.900009, 905.0, 189.500015, 905.0 ],
									"source" : [ "obj-179", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-180", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-179", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-29", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 999.5, 606.0, 975.0, 606.0, 975.0, 312.000031, 999.5, 312.000031 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-181", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-180", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-190", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 349.5, 684.5, 264.5, 684.5 ],
									"source" : [ "obj-182", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-190", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 354.5, 822.0, 332.0, 822.0, 332.0, 680.0, 264.5, 680.0 ],
									"source" : [ "obj-183", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-190", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 354.5, 912.0, 332.0, 912.0, 332.0, 680.0, 264.5, 680.0 ],
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-182", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-187", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-186", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-190", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 354.5, 884.0, 332.0, 884.0, 332.0, 680.0, 264.5, 680.0 ],
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-189", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-188", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-190", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 354.5, 794.0, 332.0, 794.0, 332.0, 680.0, 264.5, 680.0 ],
									"source" : [ "obj-189", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-18", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1089.5, 579.0, 1085.5, 579.0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-191", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-190", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-179", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-191", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-216", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-192", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-261", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-193", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-144", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 699.5, 409.0, 683.296021, 409.0, 683.296021, 365.0, 624.5, 365.0 ],
									"source" : [ "obj-194", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-195", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-194", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-196", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-195", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-205", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 789.5, 147.0, 699.5, 147.0 ],
									"source" : [ "obj-197", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-205", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 789.5, 287.0, 767.0, 287.0, 767.0, 145.000015, 699.5, 145.000015 ],
									"source" : [ "obj-198", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-205", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 789.5, 377.0, 767.0, 377.0, 767.0, 145.000015, 699.5, 145.000015 ],
									"source" : [ "obj-199", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-15", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-18", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1044.5, 579.0, 1042.5, 579.0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-197", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-200", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-202", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-201", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-205", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 789.5, 349.0, 767.0, 349.0, 767.0, 145.000015, 699.5, 145.000015 ],
									"source" : [ "obj-202", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-204", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-203", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-205", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 789.5, 259.0, 767.0, 259.0, 767.0, 145.000015, 699.5, 145.000015 ],
									"source" : [ "obj-204", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-206", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-205", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-194", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-206", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-208", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-207", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-56", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1645.5, 398.0, 1627.464966, 398.0, 1627.464966, 350.0, 1569.5, 350.0 ],
									"source" : [ "obj-207", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-209", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-208", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-18", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 999.5, 579.0, 999.5, 579.0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-218", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1735.5, 136.0, 1645.5, 136.0 ],
									"source" : [ "obj-210", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-218", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1735.5, 276.0, 1713.0, 276.0, 1713.0, 134.000015, 1645.5, 134.000015 ],
									"source" : [ "obj-211", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-218", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1735.5, 366.0, 1713.0, 366.0, 1713.0, 134.000015, 1645.5, 134.000015 ],
									"source" : [ "obj-212", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-210", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-213", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-215", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-214", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-218", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1735.5, 338.0, 1713.0, 338.0, 1713.0, 134.000015, 1645.5, 134.000015 ],
									"source" : [ "obj-215", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-217", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-216", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-218", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1735.5, 248.000015, 1713.0, 248.000015, 1713.0, 134.000015, 1645.5, 134.000015 ],
									"source" : [ "obj-217", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-219", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-218", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-207", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-219", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-23", 10 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-247", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-220", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-222", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-221", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-39", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 719.5, 944.0, 700.161133, 944.0, 700.161133, 905.0, 639.5, 905.0 ],
									"source" : [ "obj-221", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-223", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-222", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-232", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 804.5, 684.5, 719.5, 684.5 ],
									"source" : [ "obj-224", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-232", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 809.5, 822.0, 787.0, 822.0, 787.0, 680.0, 719.5, 680.0 ],
									"source" : [ "obj-225", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-232", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 809.5, 912.0, 787.0, 912.0, 787.0, 680.0, 719.5, 680.0 ],
									"source" : [ "obj-226", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-224", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-227", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-229", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-228", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-232", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 809.5, 884.0, 787.0, 884.0, 787.0, 680.0, 719.5, 680.0 ],
									"source" : [ "obj-229", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1040.0, 539.0, 1149.5, 539.0 ],
									"source" : [ "obj-23", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1026.5, 539.0, 1089.5, 539.0 ],
									"source" : [ "obj-23", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1013.0, 539.0, 1044.5, 539.0 ],
									"source" : [ "obj-23", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 999.5, 539.0, 999.5, 539.0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-22", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-23", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-231", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-230", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-232", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 809.5, 794.0, 787.0, 794.0, 787.0, 680.0, 719.5, 680.0 ],
									"source" : [ "obj-231", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-233", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-232", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-221", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-233", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-230", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-234", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-188", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-235", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-166", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1169.5, 944.0, 1154.95459, 944.0, 1154.95459, 920.0, 1089.5, 920.0 ],
									"source" : [ "obj-238", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-239", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-238", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-240", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-239", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-25", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-249", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1254.5, 684.5, 1169.5, 684.5 ],
									"source" : [ "obj-241", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-249", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1259.5, 822.0, 1237.0, 822.0, 1237.0, 680.0, 1169.5, 680.0 ],
									"source" : [ "obj-242", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-249", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1259.5, 912.0, 1237.0, 912.0, 1237.0, 680.0, 1169.5, 680.0 ],
									"source" : [ "obj-243", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-241", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-244", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-246", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-245", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-249", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1259.5, 884.0, 1237.0, 884.0, 1237.0, 680.0, 1169.5, 680.0 ],
									"source" : [ "obj-246", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-248", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-247", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-249", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1259.5, 794.0, 1237.0, 794.0, 1237.0, 680.0, 1169.5, 680.0 ],
									"source" : [ "obj-248", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-250", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-249", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-29", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-238", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-250", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-149", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1664.5, 944.0, 1646.5, 944.0, 1646.5, 905.0, 1584.5, 905.0 ],
									"source" : [ "obj-252", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-253", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-252", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-254", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-253", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-263", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1749.5, 684.5, 1664.5, 684.5 ],
									"source" : [ "obj-255", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-263", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1754.5, 822.0, 1732.0, 822.0, 1732.0, 680.0, 1664.5, 680.0 ],
									"source" : [ "obj-256", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-263", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1754.5, 912.0, 1732.0, 912.0, 1732.0, 680.0, 1664.5, 680.0 ],
									"source" : [ "obj-257", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-255", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-258", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-260", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-259", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-34", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"midpoints" : [ 84.499985, 99.000015, 24.499985, 99.000015 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-263", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1754.5, 884.0, 1732.0, 884.0, 1732.0, 680.0, 1664.5, 680.0 ],
									"source" : [ "obj-260", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-262", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-261", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-263", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1754.5, 794.0, 1732.0, 794.0, 1732.0, 680.0, 1664.5, 680.0 ],
									"source" : [ "obj-262", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-264", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-263", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-252", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-264", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-34", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"midpoints" : [ 199.499985, 99.000015, 24.499985, 99.000015 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-157", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1049.5, 422.0, 1089.5, 422.0 ],
									"source" : [ "obj-28", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-158", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1024.5, 422.0, 1044.5, 422.0 ],
									"source" : [ "obj-28", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-159", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-28", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-124", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-34", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-107", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 54.499985, 636.0, 30.0, 636.0, 30.0, 327.0, 54.499985, 327.0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-89", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 324.5, 392.0, 302.0, 392.0, 302.0, 160.000015, 234.499985, 160.000015 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-30", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-16", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-46", 3 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1134.5, 1172.138428, 944.400024, 1172.138428, 944.400024, 841.199951, 1140.0, 841.199951, 1140.0, 1047.0, 1025.0, 1047.0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-40", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 655.5, 977.5, 639.5, 977.5 ],
									"source" : [ "obj-38", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-40", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 639.5, 977.5, 624.5, 977.5 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-52", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 655.5, 977.5, 594.5, 977.5 ],
									"source" : [ "obj-38", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-52", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 639.5, 977.5, 579.5, 977.5 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-54", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 655.5, 977.5, 549.5, 977.5 ],
									"source" : [ "obj-38", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-54", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 639.5, 977.5, 534.5, 977.5 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-38", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-24", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-83", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 624.5, 1027.5, 561.5, 1027.5 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-50", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 984.5, 1161.0, 960.0, 1161.0, 960.0, 1092.0, 966.0, 1092.0, 966.0, 960.0, 960.0, 960.0, 960.0, 867.0, 984.5, 867.0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-41", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1074.5, 1134.0, 1070.5, 1134.0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-41", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1029.5, 1134.0, 1027.5, 1134.0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-41", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 984.5, 1134.0, 984.5, 1134.0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-46", 10 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-37", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1025.0, 1094.0, 1134.5, 1094.0 ],
									"source" : [ "obj-46", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-42", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1011.5, 1094.0, 1074.5, 1094.0 ],
									"source" : [ "obj-46", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-43", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 998.0, 1094.0, 1029.5, 1094.0 ],
									"source" : [ "obj-46", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-44", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-45", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-46", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-48", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-50", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-167", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1034.5, 977.0, 1074.5, 977.0 ],
									"source" : [ "obj-49", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-168", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1009.5, 977.0, 1029.5, 977.0 ],
									"source" : [ "obj-49", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-169", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-68", 3 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 204.499985, 647.0, 14.4, 647.0, 14.4, 201.800018, 210.0, 201.800018, 210.0, 507.0, 94.999985, 507.0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-49", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-83", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 579.5, 1027.5, 548.0, 1027.5 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-62", 3 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 234.500015, 1170.0, 44.400047, 1170.0, 44.400047, 826.199951, 240.000031, 826.199951, 240.000031, 1032.0, 125.000008, 1032.0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-83", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 534.5, 1027.5, 534.5, 1027.5 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-140", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1585.5, 422.5, 1569.5, 422.5 ],
									"source" : [ "obj-55", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-140", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1569.5, 422.5, 1554.5, 422.5 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-141", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1585.5, 422.5, 1524.5, 422.5 ],
									"source" : [ "obj-55", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-141", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1569.5, 422.5, 1509.5, 422.5 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-142", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1585.5, 422.5, 1479.5, 422.5 ],
									"source" : [ "obj-55", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-142", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1569.5, 422.5, 1464.5, 422.5 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-55", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-70", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 84.500008, 1146.0, 60.000023, 1146.0, 60.000023, 852.0, 84.500008, 852.0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-57", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 174.500015, 1119.0, 170.5, 1119.0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-57", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 129.5, 1119.0, 127.500008, 1119.0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-63", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-57", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 84.500008, 1119.0, 84.500008, 1119.0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-62", 10 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-53", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 125.000008, 1079.0, 234.500015, 1079.0 ],
									"source" : [ "obj-62", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-58", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 111.500008, 1079.0, 174.500015, 1079.0 ],
									"source" : [ "obj-62", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-59", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 98.000008, 1079.0, 129.5, 1079.0 ],
									"source" : [ "obj-62", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-60", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 84.500008, 1079.0, 84.500008, 1079.0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-61", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-62", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-64", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-70", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-32", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 99.499985, 601.5, 97.499985, 601.5 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-32", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 54.499985, 601.5, 54.499985, 601.5 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-68", 10 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 94.999985, 554.0, 204.499985, 554.0 ],
									"source" : [ "obj-68", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-65", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 67.999985, 554.0, 99.499985, 554.0 ],
									"source" : [ "obj-68", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-66", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 54.499985, 554.0, 54.499985, 554.0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-67", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-68", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-72", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 81.499985, 554.0, 144.499985, 554.0 ],
									"source" : [ "obj-68", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-162", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 134.5, 962.0, 174.500015, 962.0 ],
									"source" : [ "obj-69", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-163", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 109.500008, 962.0, 129.5, 962.0 ],
									"source" : [ "obj-69", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-164", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-47", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-69", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-32", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 144.499985, 601.5, 140.499985, 601.5 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-75", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-83", 3 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 684.5, 1157.0, 494.400055, 1157.0, 494.400055, 755.200012, 690.0, 755.200012, 690.0, 1032.0, 575.0, 1032.0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-89", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 324.5, 364.0, 302.0, 364.0, 302.0, 160.000015, 234.499985, 160.000015 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-77", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-89", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 324.5, 274.0, 302.0, 274.0, 302.0, 160.000015, 234.499985, 160.000015 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-87", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 534.5, 1146.0, 510.000031, 1146.0, 510.000031, 867.0, 534.5, 867.0 ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-78", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-84", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-78", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-78", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-83", 10 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-74", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 575.0, 1079.0, 684.5, 1079.0 ],
									"source" : [ "obj-83", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-79", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 561.5, 1079.0, 624.5, 1079.0 ],
									"source" : [ "obj-83", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-80", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 548.0, 1079.0, 579.5, 1079.0 ],
									"source" : [ "obj-83", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-81", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-82", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-85", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-87", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-40", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 584.5, 962.0, 624.5, 962.0 ],
									"source" : [ "obj-86", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-52", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 559.5, 962.0, 579.5, 962.0 ],
									"source" : [ "obj-86", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-54", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 534.5, 962.0, 534.5, 962.0 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-86", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-91", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-89", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-100", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-99", 3 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1614.5, 602.0, 1424.400024, 602.0, 1424.400024, 199.200043, 1620.0, 199.200043, 1620.0, 477.0, 1505.0, 477.0 ],
									"source" : [ "obj-90", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-91", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-76", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-92", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-203", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-93", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-103", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1464.5, 591.0, 1440.0, 591.0, 1440.0, 312.000031, 1464.5, 312.000031 ],
									"source" : [ "obj-94", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-94", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-94", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-94", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-97", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-99", 10 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-98", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-90", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1505.0, 524.0, 1614.5, 524.0 ],
									"source" : [ "obj-99", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-95", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1491.5, 524.0, 1554.5, 524.0 ],
									"source" : [ "obj-99", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-96", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 1478.0, 524.0, 1509.5, 524.0 ],
									"source" : [ "obj-99", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-97", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-99", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.8, 0.8, 0.9 ],
									"destination" : [ "obj-98", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-99", 10 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 255.0, 375.0, 46.0, 19.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Verdana",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p panel"
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
					"patching_rect" : [ 60.0, 475.0, 284.0, 31.0 ],
					"text" : "jcom.return return_c @range/bounds 0. 1. @description \"Document what this return does...\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 160.0, 330.0, 73.0, 19.0 ],
					"text" : "jcom.in 3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 14.0, 211.0, 526.0, 19.0 ],
					"text" : "jcom.hub @module_type video @description \"Fluid simulation based on the Navier-Stokes equations.\"",
					"varname" : "jcom.hub"
				}

			}
, 			{
				"box" : 				{
					"comment" : "message",
					"id" : "obj-38",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 14.0, 139.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "message",
					"id" : "obj-39",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 251.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 315.0, 375.0, 216.0, 17.0 ],
					"text" : "/panel/open"
				}

			}
, 			{
				"box" : 				{
					"has_bypass" : 1,
					"has_mute" : 1,
					"has_panel" : 1,
					"has_preview" : 1,
					"id" : "obj-16",
					"maxclass" : "jcom.ui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"prefix" : "video",
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 280.0 ],
					"text" : "/myFluids"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-8",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 585.0, 510.0, 435.0, 31.0 ],
					"text" : "jcom.parameter viscosity @type decimal @range/clipmode none @range/bounds 0. 1000. @repetitions/allow 0 @ramp/drive none @description \"//Viscosity of fluids.\"",
					"varname" : "viscosity"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-56",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 585.0, 870.0, 465.0, 31.0 ],
					"text" : "jcom.parameter velocityOutWidth @type integer @range/clipmode none @range/bounds 0. 1000. @repetitions/allow 0 @ramp/drive none @description \"//velocity out width.\"",
					"varname" : "velocityOutWidth"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 570.0, 975.0, 564.0, 19.0 ],
					"text" : "jcom.parameter reset @type generic @range/clipmode none @repetitions/allow 0 @description \"Reset fluids.\"",
					"varname" : "reset"
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
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-165", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 1 ]
				}

			}
 ]
	}

}
