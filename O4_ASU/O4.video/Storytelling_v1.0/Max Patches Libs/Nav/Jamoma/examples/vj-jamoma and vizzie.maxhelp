{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 647.0, 128.0, 1091.0, 804.0 ],
		"bglocked" : 0,
		"defrect" : [ 647.0, 128.0, 1091.0, 804.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"args" : [  ],
					"bgmode" : 1,
					"border" : 1,
					"id" : "obj-2",
					"maxclass" : "bpatcher",
					"name" : "delayr-patch.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 295.0, 98.0, 250.0, 154.0 ],
					"presentation_rect" : [ 296.0, 98.0, 0.0, 0.0 ],
					"prototypename" : "pixl",
					"varname" : "delayr-patch[2]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-16",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.input%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 114.0, 388.0, 300.0, 70.0 ],
					"presentation_rect" : [ 185.0, 43.0, 300.0, 70.0 ],
					"varname" : "/input%1[1]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"bgmode" : 1,
					"border" : 1,
					"id" : "obj-20",
					"maxclass" : "bpatcher",
					"name" : "4mixr-patch.maxpat",
					"numinlets" : 8,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 743.0, 467.0, 280.0, 154.0 ],
					"prototypename" : "pixl",
					"varname" : "4mixr-patch[1]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"bgmode" : 1,
					"border" : 1,
					"id" : "obj-33",
					"maxclass" : "bpatcher",
					"name" : "2toner-patch.maxpat",
					"numinlets" : 7,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 71.0, 551.0, 260.0, 154.0 ],
					"prototypename" : "pixl",
					"varname" : "2toner-patch"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"bgmode" : 1,
					"border" : 1,
					"id" : "obj-21",
					"maxclass" : "bpatcher",
					"name" : "4mixr-patch.maxpat",
					"numinlets" : 8,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 433.0, 490.0, 280.0, 154.0 ],
					"prototypename" : "pixl",
					"varname" : "4mixr-patch"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/motion%" ],
					"id" : "obj-57",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.motion%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 264.0, 295.0, 300.0, 70.0 ],
					"presentation_rect" : [ 15.0, 15.0, 300.0, 70.0 ],
					"varname" : "/motion%"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"bgmode" : 1,
					"border" : 1,
					"id" : "obj-12",
					"maxclass" : "bpatcher",
					"name" : "delayr-patch.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 619.0, 207.0, 250.0, 154.0 ],
					"prototypename" : "pixl",
					"varname" : "delayr-patch[1]"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"bgmode" : 1,
					"border" : 1,
					"id" : "obj-5",
					"maxclass" : "bpatcher",
					"name" : "viewr-patch.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 371.0, 657.0, 280.0, 110.0 ],
					"prototypename" : "pixl"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"bgmode" : 1,
					"border" : 1,
					"id" : "obj-4",
					"maxclass" : "bpatcher",
					"name" : "delayr-patch.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 25.0, 117.0, 250.0, 154.0 ],
					"prototypename" : "pixl",
					"varname" : "delayr-patch"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-1",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.input%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 257.0, 9.0, 300.0, 70.0 ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"varname" : "/input%1"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/edge%" ],
					"id" : "obj-17",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.edge%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 620.0, 126.0, 300.0, 70.0 ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"varname" : "jmod.edge%"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 3 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-17", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-57", 1 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-20::obj-6" : [ "4mixr-presets", "4mixr-presets", 0 ],
			"obj-2::obj-26" : [ "delayr-presets[2]", "delayr-presets", 0 ],
			"obj-33::obj-13" : [ "2toner_pre", "2toner_pre", 0 ],
			"obj-12::obj-26" : [ "delayr-presets[1]", "delayr-presets", 0 ],
			"obj-4::obj-26" : [ "delayr-presets", "delayr-presets", 0 ],
			"obj-21::obj-6" : [ "4routr_pre", "4routr_pre", 0 ]
		}

	}

}
