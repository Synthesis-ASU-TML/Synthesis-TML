{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 701.0, 419.0, 632.0, 507.0 ],
		"bglocked" : 0,
		"defrect" : [ 701.0, 419.0, 632.0, 507.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 13.0,
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
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hint" : "",
					"id" : "obj-336",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 763.0, 202.0, 50.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 384.0, 210.0, 50.0, 18.0 ],
					"text" : "Position"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hint" : "",
					"id" : "obj-338",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 907.0, 249.0, 43.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 320.0, 274.0, 43.0, 18.0 ],
					"text" : "Tube4:"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Position of an access on an object.",
					"appearance" : 1,
					"hint" : "",
					"id" : "obj-339",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 883.0, 289.0, 32.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 456.0, 274.0, 32.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 0,
							"parameter_mmax" : 100.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 65 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Pickup",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Pickup[4]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"varname" : "Pickup[4]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Position of an access on an object.",
					"bkgndpict" : "",
					"bottommargin" : 3,
					"hint" : "",
					"id" : "obj-340",
					"invisiblebkgnd" : 1,
					"knobpict" : "Fma.PictsliderKnob.png",
					"leftmargin" : 2,
					"maxclass" : "pictslider",
					"movevertical" : 0,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 883.0, 265.0, 80.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 368.0, 274.0, 80.0, 16.0 ],
					"prototypename" : "M4L.black",
					"rightmargin" : 2,
					"rightvalue" : 100,
					"topmargin" : 2,
					"topvalue" : 100
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"bordercolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"grad2" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"id" : "obj-342",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 883.0, 265.0, 80.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 368.0, 274.0, 80.0, 15.0 ],
					"prototypename" : "M4L.horizontal-black",
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hint" : "",
					"id" : "obj-344",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 811.0, 249.0, 43.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 320.0, 258.0, 43.0, 18.0 ],
					"text" : "Tube3:"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Position of an access on an object.",
					"appearance" : 1,
					"hint" : "",
					"id" : "obj-345",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 787.0, 289.0, 32.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 456.0, 258.0, 32.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 0,
							"parameter_mmax" : 100.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 65 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Pickup",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Pickup[3]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"varname" : "Pickup[3]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Position of an access on an object.",
					"bkgndpict" : "",
					"bottommargin" : 3,
					"hint" : "",
					"id" : "obj-346",
					"invisiblebkgnd" : 1,
					"knobpict" : "Fma.PictsliderKnob.png",
					"leftmargin" : 2,
					"maxclass" : "pictslider",
					"movevertical" : 0,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 787.0, 265.0, 80.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 368.0, 258.0, 80.0, 16.0 ],
					"prototypename" : "M4L.black",
					"rightmargin" : 2,
					"rightvalue" : 100,
					"topmargin" : 2,
					"topvalue" : 100
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"bordercolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"grad2" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"id" : "obj-348",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 787.0, 265.0, 80.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 368.0, 258.0, 80.0, 15.0 ],
					"prototypename" : "M4L.horizontal-black",
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hint" : "",
					"id" : "obj-350",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 715.0, 249.0, 43.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 320.0, 242.0, 43.0, 18.0 ],
					"text" : "Tube2:"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Position of an access on an object.",
					"appearance" : 1,
					"hint" : "",
					"id" : "obj-351",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 691.0, 289.0, 32.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 456.0, 242.0, 32.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 0,
							"parameter_mmax" : 100.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 65 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Pickup",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Pickup[2]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"varname" : "Pickup[2]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Position of an access on an object.",
					"bkgndpict" : "",
					"bottommargin" : 3,
					"hint" : "",
					"id" : "obj-352",
					"invisiblebkgnd" : 1,
					"knobpict" : "Fma.PictsliderKnob.png",
					"leftmargin" : 2,
					"maxclass" : "pictslider",
					"movevertical" : 0,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 691.0, 265.0, 80.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 368.0, 242.0, 80.0, 16.0 ],
					"prototypename" : "M4L.black",
					"rightmargin" : 2,
					"rightvalue" : 100,
					"topmargin" : 2,
					"topvalue" : 100
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"bordercolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"grad2" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"id" : "obj-354",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 691.0, 265.0, 80.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 368.0, 242.0, 80.0, 15.0 ],
					"prototypename" : "M4L.horizontal-black",
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hint" : "",
					"id" : "obj-355",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 627.0, 289.0, 19.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 464.0, 210.0, 19.0, 18.0 ],
					"text" : "X"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hint" : "",
					"id" : "obj-356",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 619.0, 249.0, 43.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 320.0, 226.0, 43.0, 18.0 ],
					"text" : "Tube1:"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Position of an access on an object.",
					"appearance" : 1,
					"hint" : "",
					"id" : "obj-357",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 595.0, 289.0, 32.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 456.0, 226.0, 32.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 0,
							"parameter_mmax" : 100.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 65 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Pickup",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Pickup[1]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"varname" : "Pickup[1]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Position of an access on an object.",
					"bkgndpict" : "",
					"bottommargin" : 3,
					"hint" : "",
					"id" : "obj-358",
					"invisiblebkgnd" : 1,
					"knobpict" : "Fma.PictsliderKnob.png",
					"leftmargin" : 2,
					"maxclass" : "pictslider",
					"movevertical" : 0,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 595.0, 265.0, 80.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 368.0, 226.0, 80.0, 16.0 ],
					"prototypename" : "M4L.black",
					"rightmargin" : 2,
					"rightvalue" : 100,
					"topmargin" : 2,
					"topvalue" : 100
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hint" : "",
					"id" : "obj-360",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 947.0, 209.0, 51.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 510.0, 257.0, 48.0, 18.0 ],
					"text" : "Smooth"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Smoothens the changes of position of the access on an object, by applying a ramp.",
					"appearance" : 2,
					"hint" : "",
					"id" : "obj-361",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 947.0, 225.0, 43.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 513.0, 274.0, 40.0, 15.0 ],
					"prototypename" : "time",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 101,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 2,
							"parameter_mmax" : 5000.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 100.0 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Smooth",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "PickupSmooth",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"textcolor" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"varname" : "PickupSmooth"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold Italic",
					"fontsize" : 11.0,
					"frgb" : [ 0.301961, 0.337255, 0.403922, 1.0 ],
					"hint" : "",
					"id" : "obj-362",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 723.0, 201.0, 45.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 316.0, 190.0, 45.0, 19.0 ],
					"text" : "Pickup",
					"textcolor" : [ 0.301961, 0.337255, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"bordercolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"grad2" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"id" : "obj-363",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 595.0, 265.0, 80.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 368.0, 226.0, 80.0, 15.0 ],
					"prototypename" : "M4L.horizontal-black",
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hint" : "",
					"id" : "obj-364",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 851.0, 201.0, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.0, 241.0, 36.0, 18.0 ],
					"text" : "Rate:"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "The rate of random changes.",
					"appearance" : 2,
					"hint" : "",
					"id" : "obj-365",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 883.0, 201.0, 43.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 529.0, 242.0, 40.0, 15.0 ],
					"prototypename" : "time",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 100,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 2,
							"parameter_mmax" : 10000.0,
							"parameter_mmin" : 100.0,
							"parameter_initial" : [ 5000.0 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Rate",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "PickupRandRate",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"textcolor" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"varname" : "PickupRandRate"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Enables the random walk of access points.",
					"automation" : "Off",
					"automationon" : "On",
					"id" : "obj-366",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 595.0, 201.0, 72.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 497.0, 222.0, 72.0, 16.0 ],
					"prototypename" : "onoff",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_enum" : [ "Off", "On" ],
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 2,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "Enable",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "PickupRandEnable",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"text" : "Random walk",
					"texton" : "Random walk",
					"varname" : "PickupRandEnable"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hint" : "",
					"id" : "obj-335",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 763.0, 42.0, 50.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 384.0, 66.0, 50.0, 18.0 ],
					"text" : "Position"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold Italic",
					"fontsize" : 11.0,
					"frgb" : [ 0.301961, 0.337255, 0.403922, 1.0 ],
					"hint" : "",
					"id" : "obj-334",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 435.0, 89.0, 43.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 37.0, 190.0, 43.0, 19.0 ],
					"text" : "Tubes",
					"textcolor" : [ 0.301961, 0.337255, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.698039, 0.717647, 0.0 ],
					"blinkcolor" : [ 0.921569, 0.94902, 0.05098, 1.0 ],
					"fgcolor" : [ 0.301961, 0.337255, 0.403922, 1.0 ],
					"id" : "obj-333",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.568627, 0.619608, 0.662745, 0.0 ],
					"patching_rect" : [ 387.0, 89.0, 18.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 59.0, 227.0, 18.0, 18.0 ],
					"prototypename" : "M4L.interface"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Output gain",
					"clip_size" : 1,
					"display_range" : [ -70.0, 30.0 ],
					"hint" : "",
					"id" : "obj-7",
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 139.0, 473.0, 59.0, 96.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 492.0, 342.0, 40.0, 133.0 ],
					"prototypename" : "M4L.live.gain~.V.extended",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 4,
							"parameter_mmax" : 30.0,
							"parameter_mmin" : -70.0,
							"parameter_initial" : [ -12 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Master",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "AudioOutputGain",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"varname" : "AudioOutputGain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hint" : "",
					"id" : "obj-261",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 907.0, 89.0, 43.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 320.0, 130.0, 43.0, 18.0 ],
					"text" : "Tube4:"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Position of an access on an object.",
					"appearance" : 1,
					"hint" : "",
					"id" : "obj-262",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 883.0, 129.0, 32.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 456.0, 130.0, 32.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 0,
							"parameter_mmax" : 100.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 35 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Excite",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Excite[4]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"varname" : "Excite[4]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Position of an access on an object.",
					"bkgndpict" : "",
					"bottommargin" : 3,
					"hint" : "",
					"id" : "obj-263",
					"invisiblebkgnd" : 1,
					"knobpict" : "Fma.PictsliderKnob.png",
					"leftmargin" : 2,
					"maxclass" : "pictslider",
					"movevertical" : 0,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 883.0, 105.0, 80.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 368.0, 130.0, 80.0, 16.0 ],
					"prototypename" : "M4L.black",
					"rightmargin" : 2,
					"rightvalue" : 100,
					"topmargin" : 2,
					"topvalue" : 100
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"bordercolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"grad2" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"id" : "obj-265",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 883.0, 105.0, 80.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 368.0, 130.0, 80.0, 15.0 ],
					"prototypename" : "M4L.horizontal-black",
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hint" : "",
					"id" : "obj-255",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 811.0, 89.0, 43.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 320.0, 114.0, 43.0, 18.0 ],
					"text" : "Tube3:"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Position of an access on an object.",
					"appearance" : 1,
					"hint" : "",
					"id" : "obj-256",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 787.0, 129.0, 32.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 456.0, 114.0, 32.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 0,
							"parameter_mmax" : 100.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 35 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Excite",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Excite[3]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"varname" : "Excite[3]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Position of an access on an object.",
					"bkgndpict" : "",
					"bottommargin" : 3,
					"hint" : "",
					"id" : "obj-257",
					"invisiblebkgnd" : 1,
					"knobpict" : "Fma.PictsliderKnob.png",
					"leftmargin" : 2,
					"maxclass" : "pictslider",
					"movevertical" : 0,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 787.0, 105.0, 80.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 368.0, 114.0, 80.0, 16.0 ],
					"prototypename" : "M4L.black",
					"rightmargin" : 2,
					"rightvalue" : 100,
					"topmargin" : 2,
					"topvalue" : 100
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"bordercolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"grad2" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"id" : "obj-259",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 787.0, 105.0, 80.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 368.0, 114.0, 80.0, 15.0 ],
					"prototypename" : "M4L.horizontal-black",
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hint" : "",
					"id" : "obj-249",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 715.0, 89.0, 43.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 320.0, 98.0, 43.0, 18.0 ],
					"text" : "Tube2:"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Position of an access on an object.",
					"appearance" : 1,
					"hint" : "",
					"id" : "obj-250",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 691.0, 129.0, 32.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 456.0, 98.0, 32.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 0,
							"parameter_mmax" : 100.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 35 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Excite",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Excite[2]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"varname" : "Excite[2]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Position of an access on an object.",
					"bkgndpict" : "",
					"bottommargin" : 3,
					"hint" : "",
					"id" : "obj-251",
					"invisiblebkgnd" : 1,
					"knobpict" : "Fma.PictsliderKnob.png",
					"leftmargin" : 2,
					"maxclass" : "pictslider",
					"movevertical" : 0,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 691.0, 105.0, 80.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 368.0, 98.0, 80.0, 16.0 ],
					"prototypename" : "M4L.black",
					"rightmargin" : 2,
					"rightvalue" : 100,
					"topmargin" : 2,
					"topvalue" : 100
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"bordercolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"grad2" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"id" : "obj-253",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 691.0, 105.0, 80.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 368.0, 98.0, 80.0, 15.0 ],
					"prototypename" : "M4L.horizontal-black",
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hint" : "",
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 627.0, 129.0, 19.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 464.0, 66.0, 19.0, 18.0 ],
					"text" : "X"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hint" : "",
					"id" : "obj-52",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 619.0, 89.0, 43.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 320.0, 82.0, 43.0, 18.0 ],
					"text" : "Tube1:"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Position of an access on an object.",
					"appearance" : 1,
					"hint" : "",
					"id" : "obj-51",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 595.0, 129.0, 32.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 456.0, 82.0, 32.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 0,
							"parameter_mmax" : 100.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 35 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Excite",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Excite[1]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"varname" : "Excite[1]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Position of an access on an object.",
					"bkgndpict" : "",
					"bottommargin" : 3,
					"hint" : "",
					"id" : "obj-48",
					"invisiblebkgnd" : 1,
					"knobpict" : "Fma.PictsliderKnob.png",
					"leftmargin" : 2,
					"maxclass" : "pictslider",
					"movevertical" : 0,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 595.0, 105.0, 80.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 368.0, 82.0, 80.0, 16.0 ],
					"prototypename" : "M4L.black",
					"rightmargin" : 2,
					"rightvalue" : 100,
					"topmargin" : 2,
					"topvalue" : 100
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hint" : "",
					"id" : "obj-147",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 947.0, 49.0, 51.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 510.0, 113.0, 48.0, 18.0 ],
					"text" : "Smooth"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Smoothens the changes of position of the access on an object, by applying a ramp.",
					"appearance" : 2,
					"hint" : "",
					"id" : "obj-148",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 947.0, 65.0, 43.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 513.0, 130.0, 40.0, 15.0 ],
					"prototypename" : "time",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 101,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 2,
							"parameter_mmax" : 5000.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 100.0 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Smooth",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "ExciteSmooth",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"textcolor" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"varname" : "ExciteSmooth"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold Italic",
					"fontsize" : 11.0,
					"frgb" : [ 0.301961, 0.337255, 0.403922, 1.0 ],
					"hint" : "",
					"id" : "obj-146",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 723.0, 41.0, 43.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 316.0, 46.0, 43.0, 19.0 ],
					"text" : "Excite",
					"textcolor" : [ 0.301961, 0.337255, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"bordercolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"grad2" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"id" : "obj-50",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 595.0, 105.0, 80.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 368.0, 82.0, 80.0, 15.0 ],
					"prototypename" : "M4L.horizontal-black",
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hint" : "",
					"id" : "obj-198",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 427.0, 65.0, 43.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 45.0, 214.0, 43.0, 18.0 ],
					"text" : "MIDI in"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Adjust the pitch, in cents (100 cents = 1 semi-tone).",
					"appearance" : 1,
					"hint" : "",
					"id" : "obj-197",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 539.0, 185.0, 47.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 213.0, 269.0, 47.0, 23.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 9,
							"parameter_mmax" : 50.0,
							"parameter_mmin" : -50.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Detune",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Detune[4]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "ct",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"showname" : 0,
					"varname" : "Detune[4]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Adjust the pitch, in cents (100 cents = 1 semi-tone).",
					"appearance" : 1,
					"hint" : "",
					"id" : "obj-196",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 491.0, 185.0, 47.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 173.0, 269.0, 47.0, 23.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 9,
							"parameter_mmax" : 50.0,
							"parameter_mmin" : -50.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Detune",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Detune[3]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "ct",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"showname" : 0,
					"varname" : "Detune[3]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Adjust the pitch, in cents (100 cents = 1 semi-tone).",
					"appearance" : 1,
					"hint" : "",
					"id" : "obj-195",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 443.0, 185.0, 47.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 133.0, 269.0, 47.0, 23.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 9,
							"parameter_mmax" : 50.0,
							"parameter_mmin" : -50.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Detune",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Detune[2]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "ct",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"showname" : 0,
					"varname" : "Detune[2]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Adjust the pitch, in cents (100 cents = 1 semi-tone).",
					"appearance" : 1,
					"hint" : "",
					"id" : "obj-108",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 395.0, 185.0, 47.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 93.0, 269.0, 47.0, 23.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 9,
							"parameter_mmax" : 50.0,
							"parameter_mmin" : -50.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Detune",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Detune[1]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "ct",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"showname" : 0,
					"varname" : "Detune[1]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Overall perceived pitch of the object.",
					"hint" : "",
					"id" : "obj-184",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 515.0, 137.0, 44.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 205.0, 217.0, 44.0, 47.0 ],
					"prototypename" : "pitch",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 8,
							"parameter_mmax" : 127.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 64.0 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Tube4",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Pitch[4]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"varname" : "Pitch[4]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Overall perceived pitch of the object.",
					"hint" : "",
					"id" : "obj-183",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 467.0, 137.0, 44.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 165.0, 217.0, 44.0, 47.0 ],
					"prototypename" : "pitch",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 8,
							"parameter_mmax" : 127.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 60.0 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Tube3",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Pitch[3]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"varname" : "Pitch[3]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Overall perceived pitch of the object.",
					"hint" : "",
					"id" : "obj-182",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 419.0, 137.0, 44.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 125.0, 217.0, 44.0, 47.0 ],
					"prototypename" : "pitch",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 8,
							"parameter_mmax" : 127.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 55.0 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Tube2",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Pitch[2]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"varname" : "Pitch[2]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Overall perceived pitch of the object.",
					"hint" : "",
					"id" : "obj-109",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 371.0, 137.0, 44.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 85.0, 217.0, 44.0, 47.0 ],
					"prototypename" : "pitch",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 8,
							"parameter_mmax" : 127.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 39.0 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Tube1",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Pitch[1]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"varname" : "Pitch[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hint" : "",
					"id" : "obj-185",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 331.0, 193.0, 48.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 45.0, 277.0, 48.0, 18.0 ],
					"text" : "Detune:"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Panpot",
					"appearance" : 1,
					"id" : "obj-181",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 315.0, 313.0, 47.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 452.0, 438.0, 47.0, 36.0 ],
					"prototypename" : "pan",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 6,
							"parameter_mmax" : 50.0,
							"parameter_mmin" : -50.0,
							"parameter_initial" : [ 30 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Pan",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Pan[4]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"triangle" : 1,
					"varname" : "Pan[4]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Panpot",
					"appearance" : 1,
					"id" : "obj-163",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 235.0, 313.0, 47.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 412.0, 438.0, 47.0, 36.0 ],
					"prototypename" : "pan",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 6,
							"parameter_mmax" : 50.0,
							"parameter_mmin" : -50.0,
							"parameter_initial" : [ 10 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Pan",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Pan[3]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"triangle" : 1,
					"varname" : "Pan[3]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Panpot",
					"appearance" : 1,
					"id" : "obj-157",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 155.0, 313.0, 47.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 372.0, 438.0, 47.0, 36.0 ],
					"prototypename" : "pan",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 6,
							"parameter_mmax" : 50.0,
							"parameter_mmin" : -50.0,
							"parameter_initial" : [ -10 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Pan",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Pan[2]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"triangle" : 1,
					"varname" : "Pan[2]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Panpot",
					"appearance" : 1,
					"id" : "obj-140",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 75.0, 313.0, 47.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 324.0, 438.0, 47.0, 36.0 ],
					"prototypename" : "pan",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 6,
							"parameter_mmax" : 50.0,
							"parameter_mmin" : -50.0,
							"parameter_initial" : [ -30 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Pan",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Pan[1]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"triangle" : 1,
					"varname" : "Pan[1]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Output gain",
					"clip_size" : 1,
					"display_range" : [ -70.0, 30.0 ],
					"hint" : "",
					"id" : "obj-111",
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 267.0, 257.0, 35.0, 95.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 444.0, 342.0, 35.0, 96.0 ],
					"prototypename" : "M4L.live.gain~.V.extended",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 4,
							"parameter_mmax" : 30.0,
							"parameter_mmin" : -70.0,
							"parameter_initial" : [ 0 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Tube4",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Gain[4]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"varname" : "Gain[4]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Output gain",
					"clip_size" : 1,
					"display_range" : [ -70.0, 30.0 ],
					"hint" : "",
					"id" : "obj-86",
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 187.0, 257.0, 35.0, 95.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 404.0, 342.0, 35.0, 96.0 ],
					"prototypename" : "M4L.live.gain~.V.extended",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 4,
							"parameter_mmax" : 30.0,
							"parameter_mmin" : -70.0,
							"parameter_initial" : [ 0 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Tube3",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Gain[3]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"varname" : "Gain[3]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Output gain",
					"clip_size" : 1,
					"display_range" : [ -70.0, 30.0 ],
					"hint" : "",
					"id" : "obj-85",
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 107.0, 257.0, 35.0, 95.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 364.0, 342.0, 35.0, 96.0 ],
					"prototypename" : "M4L.live.gain~.V.extended",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 4,
							"parameter_mmax" : 30.0,
							"parameter_mmin" : -70.0,
							"parameter_initial" : [ 0 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Tube2",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Gain[2]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"varname" : "Gain[2]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Output gain",
					"clip_size" : 1,
					"display_range" : [ -70.0, 30.0 ],
					"hint" : "",
					"id" : "obj-84",
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 27.0, 257.0, 35.0, 95.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 324.0, 342.0, 35.0, 96.0 ],
					"prototypename" : "M4L.live.gain~.V.extended",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 4,
							"parameter_mmax" : 30.0,
							"parameter_mmin" : -70.0,
							"parameter_initial" : [ 0 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Tube1",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Gain[1]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"varname" : "Gain[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.666667, 0.698039, 0.717647, 1.0 ],
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 859.0, 441.0, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 292.0, 173.0, 18.0, 20.0 ],
					"text" : "<",
					"textcolor" : [ 0.666667, 0.698039, 0.717647, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.666667, 0.698039, 0.717647, 1.0 ],
					"id" : "obj-176",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 843.0, 441.0, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 292.0, 93.0, 18.0, 20.0 ],
					"text" : ">",
					"textcolor" : [ 0.666667, 0.698039, 0.717647, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"hint" : "",
					"id" : "obj-173",
					"justification" : 1,
					"linecolor" : [ 0.666667, 0.698039, 0.717647, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 779.0, 465.0, 8.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 284.0, 94.0, 32.0, 16.0 ],
					"prototypename" : "M4L.live.line.dark.H"
				}

			}
, 			{
				"box" : 				{
					"hint" : "",
					"id" : "obj-170",
					"justification" : 1,
					"linecolor" : [ 0.666667, 0.698039, 0.717647, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 811.0, 465.0, 8.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 436.0, 302.0, 15.0, 32.0 ],
					"prototypename" : "M4L.live.line.dark.H"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.666667, 0.698039, 0.717647, 1.0 ],
					"id" : "obj-154",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 851.0, 441.0, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 284.0, 245.0, 18.0, 20.0 ],
					"text" : ">",
					"textcolor" : [ 0.666667, 0.698039, 0.717647, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"hint" : "",
					"id" : "obj-26",
					"justification" : 1,
					"linecolor" : [ 0.666667, 0.698039, 0.717647, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 819.0, 465.0, 8.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 236.0, 246.0, 80.0, 16.0 ],
					"prototypename" : "M4L.live.line.dark.H"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hint" : "",
					"id" : "obj-235",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 851.0, 41.0, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.0, 97.0, 36.0, 18.0 ],
					"text" : "Rate:"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "The rate of random changes.",
					"appearance" : 2,
					"hint" : "",
					"id" : "obj-237",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 883.0, 41.0, 43.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 529.0, 98.0, 40.0, 15.0 ],
					"prototypename" : "time",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 100,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 2,
							"parameter_mmax" : 10000.0,
							"parameter_mmin" : 100.0,
							"parameter_initial" : [ 5000.0 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Rate",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "ExciteRandRate",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"textcolor" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"varname" : "ExciteRandRate"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Enables the random walk of access points.",
					"automation" : "Off",
					"automationon" : "On",
					"id" : "obj-238",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 595.0, 41.0, 72.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 497.0, 78.0, 72.0, 16.0 ],
					"prototypename" : "onoff",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_enum" : [ "Off", "On" ],
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 2,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "Enable",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "ExciteRandEnable",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"text" : "Random walk",
					"texton" : "Random walk",
					"varname" : "ExciteRandEnable"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"frgb" : [ 0.568627, 0.619608, 0.662745, 1.0 ],
					"hint" : "",
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 867.0, 441.0, 19.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 437.0, 310.0, 19.0, 19.0 ],
					"text" : "v",
					"textcolor" : [ 0.568627, 0.619608, 0.662745, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Initialize parameters by calling preset 1.",
					"automation" : "Arm",
					"automationon" : "Trigger",
					"fontsize" : 11.0,
					"id" : "obj-106",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 379.0, 409.0, 56.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 212.0, 454.0, 56.0, 18.0 ],
					"prototypename" : "numbers.default",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 2,
							"parameter_enum" : [ "Arm", "Trigger" ],
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 2,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "ResetAll",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "ResetAll",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"text" : "Reset all",
					"texton" : "Reset all",
					"varname" : "ResetAll"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"hint" : "",
					"id" : "obj-95",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 179.0, 593.0, 31.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 545.0, 348.0, 32.0, 18.0 ],
					"text" : "DSP",
					"textcolor" : [ 0.101961, 0.121569, 0.172549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Renumber and clear presets, import/export banks of presets as text files.",
					"border" : 1,
					"bordercolor" : [ 0.27451, 0.32549, 0.4, 1.0 ],
					"borderoncolor" : [ 0.27451, 0.32549, 0.4, 1.0 ],
					"button" : 1,
					"clicktabcolor" : [ 0.917647, 0.94902, 0.054902, 1.0 ],
					"clicktextcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"hint" : "",
					"hovertabcolor" : [ 0.572549, 0.615686, 0.658824, 1.0 ],
					"hovertextcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"htabcolor" : [ 0.917647, 0.94902, 0.054902, 1.0 ],
					"htextcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-21",
					"margin" : 2,
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 531.0, 425.0, 152.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 40.0, 435.0, 152.0, 16.0 ],
					"prototypename" : "M4L.numbers",
					"rounded" : 12.0,
					"tabcolor" : [ 0.572549, 0.615686, 0.658824, 1.0 ],
					"tabs" : [ "renum", "clear", "load", "save" ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold Italic",
					"fontsize" : 11.0,
					"frgb" : [ 0.301961, 0.337255, 0.403922, 1.0 ],
					"hint" : "",
					"id" : "obj-101",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 463.0, 433.0, 53.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.0, 414.0, 53.0, 19.0 ],
					"text" : "Presets",
					"textcolor" : [ 0.301961, 0.337255, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"active1" : [ 0.984314, 0.819608, 0.05098, 1.0 ],
					"active2" : [ 0.984314, 0.819608, 0.05098, 1.0 ],
					"annotation" : "Shift-click in a circle to store, click on circle to recall. Option-shift-click to remove.",
					"bgcolor" : [ 0.666667, 0.698039, 0.717647, 0.0 ],
					"bordercolor" : [ 0.666667, 0.698039, 0.717647, 0.0 ],
					"bubblesize" : 8,
					"circlecolor" : [ 0.666667, 0.698039, 0.717647, 0.0 ],
					"clicked1" : [ 1.0, 1.0, 1.0, 1.0 ],
					"clicked2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"emptycolor" : [ 0.301961, 0.337255, 0.403922, 1.0 ],
					"fontsize" : 18.0,
					"frozen_box_attributes" : [ "pattrstorage" ],
					"hint" : "",
					"id" : "obj-91",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 379.0, 461.0, 136.0, 25.0 ],
					"pattrstorage" : "",
					"presentation" : 1,
					"presentation_rect" : [ 48.0, 454.0, 144.0, 25.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-32", "live.dial", "float", 21.889763, 5, "obj-35", "live.dial", "float", 73.385826, 5, "obj-10", "live.numbox", "float", 122.0, 5, "obj-165", "live.text", "float", 0.0, 5, "obj-167", "live.text", "float", 0.0, 5, "obj-21", "tab", "int", -1, 5, "obj-106", "live.text", "float", 0.0, 5, "obj-238", "live.text", "float", 1.0, 5, "obj-237", "live.numbox", "float", 5000.0, 5, "obj-84", "live.gain~", "float", 0.0, 5, "obj-85", "live.gain~", "float", 0.0, 5, "obj-86", "live.gain~", "float", 0.0, 5, "obj-111", "live.gain~", "float", 0.0, 5, "obj-140", "live.dial", "float", -30.0, 5, "obj-157", "live.dial", "float", -10.0, 5, "obj-163", "live.dial", "float", 10.0, 5, "obj-181", "live.dial", "float", 30.0, 5, "obj-109", "live.dial", "float", 74.0, 5, "obj-182", "live.dial", "float", 93.0, 5, "obj-183", "live.dial", "float", 19.0, 5, "obj-184", "live.dial", "float", 13.0, 5, "obj-108", "live.dial", "float", -15.0, 5, "obj-195", "live.dial", "float", 2.0, 5, "obj-196", "live.dial", "float", 4.0, 5, "obj-197", "live.dial", "float", 9.0, 5, "obj-148", "live.numbox", "float", 100.0, 6, "obj-48", "pictslider", "list", 5, 0, 5, "obj-51", "live.numbox", "float", 5.0, 6, "obj-251", "pictslider", "list", 12, 0, 5, "obj-250", "live.numbox", "float", 12.0, 6, "obj-257", "pictslider", "list", 15, 0, 5, "obj-256", "live.numbox", "float", 15.0, 6, "obj-263", "pictslider", "list", 52, 0, 5, "obj-262", "live.numbox", "float", 52.0, 5, "obj-7", "live.gain~", "float", -12.0, 5, "obj-366", "live.text", "float", 1.0, 5, "obj-365", "live.numbox", "float", 5000.0, 5, "obj-361", "live.numbox", "float", 100.0, 6, "obj-358", "pictslider", "list", 83, 0, 5, "obj-357", "live.numbox", "float", 83.0, 6, "obj-352", "pictslider", "list", 50, 0, 5, "obj-351", "live.numbox", "float", 50.0, 6, "obj-346", "pictslider", "list", 60, 0, 5, "obj-345", "live.numbox", "float", 60.0, 6, "obj-340", "pictslider", "list", 83, 0, 5, "obj-339", "live.numbox", "float", 83.0 ]
						}
 ],
					"prototypename" : "M4L.H",
					"stored1" : [ 0.494118, 0.556863, 0.607843, 1.0 ],
					"stored2" : [ 0.572549, 0.615686, 0.658824, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "Preset"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hint" : "",
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 371.0, 265.0, 45.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 55.0, 310.0, 42.0, 18.0 ],
					"text" : "Modes"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Open QuickRecord.",
					"automation" : "Arm",
					"automationon" : "Trigger",
					"hint" : "",
					"id" : "obj-167",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 67.0, 585.0, 48.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 438.0, 44.0, 16.0 ],
					"prototypename" : "numbers.default",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 2,
							"parameter_enum" : [ "Arm", "Trigger" ],
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 2,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "Record",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "AudioRecord",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"text" : "Record",
					"texton" : "Record",
					"varname" : "AudioRecord"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Load DSP Status",
					"automation" : "Arm",
					"automationon" : "Trigger",
					"hint" : "",
					"id" : "obj-165",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 35.0, 561.0, 48.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 538.0, 420.0, 44.0, 16.0 ],
					"prototypename" : "numbers.default",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 2,
							"parameter_enum" : [ "Arm", "Trigger" ],
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 2,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "Setup",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "AudioSetup",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"text" : "Setup",
					"texton" : "Setup",
					"varname" : "AudioSetup"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold Italic",
					"fontsize" : 11.0,
					"frgb" : [ 0.301961, 0.337255, 0.403922, 1.0 ],
					"hint" : "",
					"id" : "obj-159",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 537.0, 43.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 316.0, 318.0, 43.0, 19.0 ],
					"text" : "Audio",
					"textcolor" : [ 0.301961, 0.337255, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold Italic",
					"fontsize" : 11.0,
					"frgb" : [ 0.301961, 0.337255, 0.403922, 1.0 ],
					"hint" : "",
					"id" : "obj-156",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 27.0, 25.0, 99.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 6.0, 99.0, 19.0 ],
					"text" : "Excitation Sound",
					"textcolor" : [ 0.301961, 0.337255, 0.403922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hint" : "",
					"id" : "obj-73",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 331.0, 153.0, 38.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 53.0, 249.0, 38.0, 18.0 ],
					"text" : "Pitch:"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Determines the number of modes of vibration calculated in the simulation of the object. As the number of modes is increased, higher partials are added to the resultant sound.",
					"appearance" : 2,
					"hint" : "",
					"id" : "obj-10",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 371.0, 281.0, 45.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 56.0, 326.0, 40.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 0,
							"parameter_mmax" : 256.0,
							"parameter_mmin" : 1.0,
							"parameter_initial" : [ 80 ],
							"parameter_type" : 1,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Modes",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Modes",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"varname" : "Modes"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Describes how the object loses energy. Higher values result in an object that sounds more metallic.",
					"hint" : "",
					"id" : "obj-35",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 427.0, 265.0, 53.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 109.0, 302.0, 53.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 5,
							"parameter_mmax" : 100.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 60.0 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Brightness",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Brightness",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"varname" : "Brightness"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Describes how the object loses energy. Higher values result in an object that sounds more damped.",
					"hint" : "",
					"id" : "obj-32",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 483.0, 265.0, 44.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 181.0, 302.0, 44.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 5,
							"parameter_mmax" : 100.0,
							"parameter_mmin" : 0.0,
							"parameter_initial" : [ 40.0 ],
							"parameter_type" : 0,
							"parameter_initial_enable" : 1,
							"parameter_shortname" : "Damping",
							"parameter_modmax" : 127.0,
							"parameter_longname" : "Damping",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 1,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0
						}

					}
,
					"varname" : "Damping"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Turn DSP on and off.",
					"bgcolor" : [ 0.415686, 0.454902, 0.52549, 1.0 ],
					"hint" : "",
					"id" : "obj-6",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"offgradcolor1" : [ 1.0, 1.0, 1.0, 1.0 ],
					"offgradcolor2" : [ 0.415686, 0.454902, 0.52549, 1.0 ],
					"ongradcolor1" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ongradcolor2" : [ 1.0, 0.74902, 0.231373, 1.0 ],
					"patching_rect" : [ 139.0, 585.0, 40.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 540.0, 366.0, 40.0, 40.0 ],
					"prototypename" : "M4L.white"
				}

			}
, 			{
				"box" : 				{
					"hint" : "",
					"id" : "obj-87",
					"justification" : 1,
					"linecolor" : [ 0.666667, 0.698039, 0.717647, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 795.0, 465.0, 8.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 124.0, 174.0, 320.0, 16.0 ],
					"prototypename" : "M4L.live.line.dark.H"
				}

			}
, 			{
				"box" : 				{
					"hint" : "",
					"id" : "obj-79",
					"justification" : 1,
					"linecolor" : [ 0.666667, 0.698039, 0.717647, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 803.0, 465.0, 8.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 116.0, 182.0, 16.0, 24.0 ],
					"prototypename" : "M4L.live.line.dark.H"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"bordercolor" : [ 0.494118, 0.556863, 0.607843, 1.0 ],
					"grad2" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"hint" : "",
					"id" : "obj-25",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 375.0, 457.0, 144.0, 32.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 44.0, 453.0, 144.0, 28.0 ],
					"prototypename" : "M4L.horizontal-black",
					"rounded" : 16
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.698039, 0.717647, 1.0 ],
					"bordercolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"grad2" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"hint" : "",
					"id" : "obj-15",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 851.0, 465.0, 8.0, 8.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.0, 206.0, 225.0, 152.0 ],
					"prototypename" : "M4L.horizontal-black",
					"rounded" : 16
				}

			}
, 			{
				"box" : 				{
					"hint" : "",
					"id" : "obj-171",
					"justification" : 1,
					"linecolor" : [ 0.666667, 0.698039, 0.717647, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 787.0, 465.0, 8.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 436.0, 158.0, 16.0, 24.0 ],
					"prototypename" : "M4L.live.line.dark.H"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.698039, 0.717647, 1.0 ],
					"bordercolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"grad2" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"hint" : "",
					"id" : "obj-166",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 867.0, 465.0, 8.0, 8.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 316.0, 206.0, 264.0, 96.0 ],
					"prototypename" : "M4L.horizontal-black",
					"rounded" : 16
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.698039, 0.717647, 1.0 ],
					"bordercolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"grad2" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"hint" : "",
					"id" : "obj-71",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 867.0, 481.0, 8.0, 8.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 316.0, 62.0, 264.0, 96.0 ],
					"prototypename" : "M4L.horizontal-black",
					"rounded" : 16
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.698039, 0.717647, 1.0 ],
					"bordercolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"grad2" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"hint" : "",
					"id" : "obj-23",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 851.0, 481.0, 8.0, 8.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 316.0, 334.0, 280.0, 152.0 ],
					"prototypename" : "M4L.horizontal-black",
					"rounded" : 16
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.698039, 0.717647, 1.0 ],
					"bordercolor" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"grad2" : [ 0.094118, 0.113725, 0.137255, 1.0 ],
					"hint" : "",
					"id" : "obj-136",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 835.0, 481.0, 8.0, 8.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.0, 430.0, 160.0, 56.0 ],
					"prototypename" : "M4L.horizontal-black",
					"rounded" : 16
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@File", "jongly.aif" ],
					"hint" : "",
					"id" : "obj-17",
					"maxclass" : "bpatcher",
					"name" : "FMA.SoundPlayer~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 27.0, 41.0, 272.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 22.0, 272.0, 136.0 ],
					"varname" : "Fma.SoundPlayer~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-251", 0 ],
					"hidden" : 0,
					"midpoints" : [ 700.5, 153.0, 684.5, 153.0, 684.5, 95.0, 700.5, 95.0 ],
					"source" : [ "obj-250", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-250", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-251", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-257", 0 ],
					"hidden" : 0,
					"midpoints" : [ 796.5, 153.0, 780.5, 153.0, 780.5, 95.0, 796.5, 95.0 ],
					"source" : [ "obj-256", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-256", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-257", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 0 ],
					"hidden" : 0,
					"midpoints" : [ 892.5, 153.0, 876.5, 153.0, 876.5, 95.0, 892.5, 95.0 ],
					"source" : [ "obj-262", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-262", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-263", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-340", 0 ],
					"hidden" : 0,
					"midpoints" : [ 892.5, 313.0, 876.5, 313.0, 876.5, 255.0, 892.5, 255.0 ],
					"source" : [ "obj-339", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-339", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-340", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-346", 0 ],
					"hidden" : 0,
					"midpoints" : [ 796.5, 313.0, 780.5, 313.0, 780.5, 255.0, 796.5, 255.0 ],
					"source" : [ "obj-345", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-345", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-346", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-352", 0 ],
					"hidden" : 0,
					"midpoints" : [ 700.5, 313.0, 684.5, 313.0, 684.5, 255.0, 700.5, 255.0 ],
					"source" : [ "obj-351", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-351", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-352", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-358", 0 ],
					"hidden" : 0,
					"midpoints" : [ 604.5, 313.0, 588.5, 313.0, 588.5, 255.0, 604.5, 255.0 ],
					"source" : [ "obj-357", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-357", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-358", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [ 604.5, 153.0, 588.5, 153.0, 588.5, 95.0, 604.5, 95.0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-17::obj-65" : [ "Transp", "Transp", 0 ],
			"obj-196" : [ "Detune[3]", "Detune", 0 ],
			"obj-51" : [ "Excite[1]", "Excite", 0 ],
			"obj-140" : [ "Pan[1]", "Pan", 0 ],
			"obj-351" : [ "Pickup[2]", "Pickup", 0 ],
			"obj-183" : [ "Pitch[3]", "Tube3", 0 ],
			"obj-361" : [ "PickupSmooth", "Smooth", 0 ],
			"obj-197" : [ "Detune[4]", "Detune", 0 ],
			"obj-250" : [ "Excite[2]", "Excite", 0 ],
			"obj-167" : [ "AudioRecord", "Record", 0 ],
			"obj-157" : [ "Pan[2]", "Pan", 0 ],
			"obj-345" : [ "Pickup[3]", "Pickup", 0 ],
			"obj-7" : [ "AudioOutputGain", "Master", 0 ],
			"obj-184" : [ "Pitch[4]", "Tube4", 0 ],
			"obj-17::obj-6" : [ "Folder", "Folder", 0 ],
			"obj-238" : [ "ExciteRandEnable", "Enable", 0 ],
			"obj-10" : [ "Modes", "Modes", 0 ],
			"obj-256" : [ "Excite[3]", "Excite", 0 ],
			"obj-35" : [ "Brightness", "Brightness", 0 ],
			"obj-163" : [ "Pan[3]", "Pan", 0 ],
			"obj-165" : [ "AudioSetup", "Setup", 0 ],
			"obj-32" : [ "Damping", "Damping", 0 ],
			"obj-339" : [ "Pickup[4]", "Pickup", 0 ],
			"obj-17::obj-82" : [ "Gain", "Gain", 0 ],
			"obj-85" : [ "Gain[2]", "Tube2", 0 ],
			"obj-86" : [ "Gain[3]", "Tube3", 0 ],
			"obj-17::obj-39" : [ "Loop", "Loop", 0 ],
			"obj-108" : [ "Detune[1]", "Detune", 0 ],
			"obj-237" : [ "ExciteRandRate", "Rate", 0 ],
			"obj-262" : [ "Excite[4]", "Excite", 0 ],
			"obj-181" : [ "Pan[4]", "Pan", 0 ],
			"obj-109" : [ "Pitch[1]", "Tube1", 0 ],
			"obj-366" : [ "PickupRandEnable", "Enable", 0 ],
			"obj-17::obj-50" : [ "Play", "Play", 0 ],
			"obj-195" : [ "Detune[2]", "Detune", 0 ],
			"obj-148" : [ "ExciteSmooth", "Smooth", 0 ],
			"obj-111" : [ "Gain[4]", "Tube4", 0 ],
			"obj-357" : [ "Pickup[1]", "Pickup", 0 ],
			"obj-182" : [ "Pitch[2]", "Tube2", 0 ],
			"obj-365" : [ "PickupRandRate", "Rate", 0 ],
			"obj-84" : [ "Gain[1]", "Tube1", 0 ],
			"obj-106" : [ "ResetAll", "ResetAll", 0 ]
		}

	}

}
