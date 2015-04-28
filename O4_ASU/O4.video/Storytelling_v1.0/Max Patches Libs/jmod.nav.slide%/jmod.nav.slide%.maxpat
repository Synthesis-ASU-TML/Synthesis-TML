{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 9,
			"architecture" : "x86"
		}
,
		"rect" : [ 6.0, 44.0, 835.0, 544.0 ],
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
					"fontface" : 1,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 376.0, 665.0, 19.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 94.0, 83.0, 21.0, 19.0 ],
					"text" : "+"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 386.0, 551.0, 19.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 59.0, 83.0, 23.0, 19.0 ],
					"text" : "*"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 0.29 ],
					"hint" : "bias",
					"id" : "obj-11",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 376.0, 647.0, 46.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 106.0, 83.0, 40.0, 18.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 442.0, 633.0, 348.0, 19.0 ],
					"text" : "jcom.parameter scalebias/bias @type decimal@range/bounds 0 10",
					"varname" : "slide_up[2]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 0.286275 ],
					"hint" : "scale",
					"id" : "obj-5",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 376.0, 584.0, 46.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 68.0, 83.0, 33.0, 18.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 442.0, 570.0, 353.0, 19.0 ],
					"text" : "jcom.parameter scalebias/scale @type decimal@range/bounds 0 10",
					"varname" : "slide_up[1]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "feedbacl amnt",
					"bgcolor" : [ 0.776471, 0.776471, 0.776471, 0.72549 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"defaultvalue" : 0.4,
					"fgcolor" : [ 0.827451, 0.43412, 0.410519, 1.0 ],
					"fontsize" : 10.5,
					"hint" : "shift-drag for finer resoltion",
					"id" : "obj-55",
					"maxclass" : "jcom.textslider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 425.0, 339.0, 93.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 21.0, 145.0, 17.0 ],
					"text" : "feedback/blur",
					"textpos" : [ 2.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.776471, 0.776471, 0.776471, 0.72549 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"defaultvalue" : 3.0,
					"fgcolor" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"fontsize" : 10.5,
					"hint" : "shift-drag for finer resoltion",
					"id" : "obj-54",
					"maxclass" : "jcom.textslider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 376.0, 102.0, 93.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.999998, 40.0, 116.0, 17.0 ],
					"range" : [ 0.0, 240.0 ],
					"text" : "slideUp",
					"textpos" : [ 2.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 1.0, 0.403922, 0.0, 0.0 ],
					"annotation" : "smoother",
					"appearance" : 1,
					"automation" : "Off",
					"automationon" : "On",
					"bgcolor" : [ 0.615686, 0.662745, 0.705882, 1.0 ],
					"fontface" : 0,
					"fontsize" : 9.0,
					"hint" : "blur",
					"id" : "obj-50",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 425.0, 472.0, 62.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.999999, 80.5, 58.0, 17.868423 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "live.text[2]",
							"parameter_shortname" : "FILTER",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "Off", "On" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_speedlim" : 0.0
						}

					}
,
					"text" : "Smooth",
					"texton" : "SMOOTH",
					"varname" : "live.text[2]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "The slide down factor - meaning how quickly (in frames) colors move from bright to dark",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 0.286275 ],
					"hint" : "",
					"id" : "obj-42",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 506.0, 156.0, 48.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 118.0, 58.5, 32.0, 19.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 385.0, 142.0, 60.0, 19.0 ],
					"text" : "change 0"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.776471, 0.776471, 0.776471, 0.72549 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"defaultvalue" : 10.0,
					"fgcolor" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"fontsize" : 10.5,
					"hint" : "shift-drag for finer resoltion",
					"id" : "obj-44",
					"maxclass" : "jcom.textslider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 386.0, 166.0, 93.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.999999, 59.5, 116.0, 17.0 ],
					"range" : [ 0.0, 240.0 ],
					"text" : "slideDown",
					"textpos" : [ 2.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "The slide up factor - meaning how quickly (in frames) colors move from dark up to bright",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 0.286275 ],
					"hint" : "",
					"id" : "obj-41",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 497.0, 88.0, 48.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 118.0, 39.0, 32.0, 19.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 376.0, 74.0, 60.0, 19.0 ],
					"text" : "change 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 537.0, 339.0, 592.0, 19.0 ],
					"text" : "jcom.parameter feedback @type decimal @range/clipmode low @range/bounds 0. 1. @description \"feedbacl amnt\"",
					"varname" : "delayLength"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 497.0, 472.0, 322.0, 19.0 ],
					"text" : "jcom.parameter smooth @type binary @description smoother",
					"varname" : "order"
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
					"patching_rect" : [ 132.0, 355.0, 53.0, 19.0 ],
					"text" : "jcom.out"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-2",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 132.0, 250.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 158.0, 250.0, 79.0, 19.0 ],
					"text" : "VIDEO INPUT"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 132.0, 294.0, 80.0, 19.0 ],
					"text" : "jcom.in 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 146.0, 104.0, 140.0, 17.0 ],
					"text" : "/documentation/generate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 169.0, 393.0, 89.0, 19.0 ],
					"text" : "VIDEO OUTPUT"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-9",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 132.0, 393.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 132.0, 329.0, 87.0, 19.0 ],
					"text" : "jalg.nav.slide%",
					"varname" : "jalg.nav.slide%"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-15",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 563.0, 142.0, 575.0, 31.0 ],
					"text" : "jcom.parameter slideDown @type decimal @ramp/drive scheduler @range/clipmode low @range/bounds 0 100 @description \"The slide down factor - meaning how quickly (in frames) colors move from bright to dark\"",
					"varname" : "slide_down"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-16",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 563.0, 74.0, 560.0, 31.0 ],
					"text" : "jcom.parameter slideUp @type decimal @ramp/drive scheduler @range/clipmode low @range/bounds 0 100 @description \"The slide up factor - meaning how quickly (in frames) colors move from dark up to bright\"",
					"varname" : "slide_up"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 51.0, 104.0, 88.0, 19.0 ],
					"text" : "command input"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-19",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 24.0, 142.0, 238.0, 55.0 ],
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"Create a Motion-Blur type of effect by using a brightness-based envelope follower\"",
					"varname" : "jcom.hub"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-20",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 204.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-21",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, 104.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 2,
					"id" : "obj-22",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 349.5, 540.0, 469.5, 162.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 59.0, 83.0, 87.0, 18.0 ],
					"rounded" : 10
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.62, 0.0, 0.36, 1.0 ],
					"has_bypass" : 1,
					"has_freeze" : 1,
					"has_mute" : 1,
					"id" : "obj-34",
					"maxclass" : "jcom.ui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"prefix" : "video",
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 0.0, 150.0, 105.0 ],
					"text" : "/nav.slide%"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
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
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 155.5, 138.0, 33.5, 138.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
 ]
	}

}
