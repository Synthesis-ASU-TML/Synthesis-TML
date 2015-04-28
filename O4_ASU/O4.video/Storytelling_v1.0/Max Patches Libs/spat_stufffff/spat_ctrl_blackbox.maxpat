{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 8
		}
,
		"rect" : [ 65.0, 382.0, 1461.0, 509.0 ],
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
					"hidden" : 1,
					"id" : "obj-417",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 479.0, 86.303589, 72.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -582.0, 483.0, 72.0, 20.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.909804, 0.909804, 0.231373, 1.0 ],
					"id" : "obj-416",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 504.0, 167.303589, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -387.0, 24.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.270588, 0.823529, 0.239216, 1.0 ],
					"id" : "obj-415",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 407.0, 168.303589, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -336.0, 22.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-314",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 0,
					"patching_rect" : [ 425.0, 191.303589, 82.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -391.0, 45.0, 82.0, 20.0 ],
					"text" : "delctrl_filter L"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-130",
					"maxclass" : "number",
					"maximum" : 8,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 27.0, 66.282715, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -255.0, 25.979126, 50.0, 20.0 ],
					"varname" : "number"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"id" : "obj-126",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1259.0, 87.282715, 98.0, 17.0 ],
					"text" : "offset -775. -160."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"id" : "obj-127",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1141.0, 88.282715, 98.0, 17.0 ],
					"text" : "offset -515. -160."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"id" : "obj-128",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1170.5, 46.282715, 98.0, 17.0 ],
					"text" : "offset -260. -160."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"id" : "obj-129",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1083.0, 46.282715, 85.0, 17.0 ],
					"text" : "offset -6. -160."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"id" : "obj-121",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 976.0, 46.282715, 85.0, 17.0 ],
					"text" : "offset -775. -4."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"id" : "obj-117",
					"maxclass" : "newobj",
					"numinlets" : 10,
					"numoutlets" : 10,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
					"patching_rect" : [ 1303.0, 21.282715, 140.5, 19.0 ],
					"text" : "sel 1 2 3 4 5 6 7 8 9"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"id" : "obj-118",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 886.0, 47.282715, 85.0, 17.0 ],
					"text" : "offset -515. -4."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"id" : "obj-119",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 798.5, 47.282715, 85.0, 17.0 ],
					"text" : "offset -260. -4."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"id" : "obj-120",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 711.0, 47.282715, 72.0, 17.0 ],
					"text" : "offset -6. -4."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "bpatcher",
					"name" : "multiple_multiple_geometries.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ -7.0, -6.0 ],
					"patching_rect" : [ 15.0, 47.282715, 257.0, 163.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -266.0, 6.979126, 1038.0, 332.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-117", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-117", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-117", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-117", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-117", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-117", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-117", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-117", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-130", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-314", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-415", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-314", 4 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-416", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-415", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-417", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-416", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-417", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "multiple_multiple_geometries.maxpat",
				"bootpath" : "/Users/sound/Desktop/Desktop Sound BB /spat_stufffff/vimic_shapes_FEB1312",
				"patcherrelativepath" : "../spat_stufffff/vimic_shapes_FEB1312",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "multiple_geometries.maxpat",
				"bootpath" : "/Users/sound/Desktop/Desktop Sound BB /spat_stufffff/vimic_shapes_FEB1312",
				"patcherrelativepath" : "../spat_stufffff/vimic_shapes_FEB1312",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "eis_autofudge.maxpat",
				"bootpath" : "/Users/sound/Desktop/Desktop Sound BB /spat_stufffff/vimic_shapes_FEB1312",
				"patcherrelativepath" : "../spat_stufffff/vimic_shapes_FEB1312",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "brownian",
				"bootpath" : "/Users/sound/Desktop/Desktop Sound BB /spat_stufffff/vimic_shapes_FEB1312",
				"patcherrelativepath" : "../spat_stufffff/vimic_shapes_FEB1312",
				"type" : "maxb",
				"implicit" : 1
			}
, 			{
				"name" : "eis_geometric.maxpat",
				"bootpath" : "/Users/sound/Desktop/Desktop Sound BB /spat_stufffff/vimic_shapes_FEB1312",
				"patcherrelativepath" : "../spat_stufffff/vimic_shapes_FEB1312",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "eis_shapefudger.maxpat",
				"bootpath" : "/Users/sound/Desktop/Desktop Sound BB /spat_stufffff/vimic_shapes_FEB1312",
				"patcherrelativepath" : "../spat_stufffff/vimic_shapes_FEB1312",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "eis_slider-horizontal.maxpat",
				"bootpath" : "/Users/sound/Desktop/Desktop Sound BB /spat_stufffff/vimic_shapes_FEB1312",
				"patcherrelativepath" : "../spat_stufffff/vimic_shapes_FEB1312",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "doubleclick.maxpat",
				"bootpath" : "/Users/sound/Desktop/Desktop Sound BB /spat_stufffff/vimic_shapes_FEB1312",
				"patcherrelativepath" : "../spat_stufffff/vimic_shapes_FEB1312",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "to_spat_ctrl.maxpat",
				"bootpath" : "/Users/sound/Desktop/Desktop Sound BB /spat_stufffff/vimic_shapes_FEB1312",
				"patcherrelativepath" : "../spat_stufffff/vimic_shapes_FEB1312",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "delctrl_filter.maxpat",
				"bootpath" : "/Users/sound/Desktop/Desktop Sound BB /spat_stufffff",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "active_pick",
				"bootpath" : "/Users/sound/Documents/Max Patches Libs/TML/pro/wysiwyg/dvnt/everything",
				"patcherrelativepath" : "../../../Documents/Max Patches Libs/TML/pro/wysiwyg/dvnt/everything",
				"type" : "maxb",
				"implicit" : 1
			}
 ]
	}

}
