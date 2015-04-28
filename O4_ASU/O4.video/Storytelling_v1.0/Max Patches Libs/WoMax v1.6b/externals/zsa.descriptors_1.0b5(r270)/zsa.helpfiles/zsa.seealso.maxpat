{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 579.0, 518.0, 141.0, 51.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 69.0, 510.0, 385.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "uzi 0 0",
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "int" ],
					"patching_rect" : [ 290.746796, 174.695709, 46.0, 20.0 ],
					"id" : "obj-20",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route count",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 290.746796, 149.902313, 71.0, 20.0 ],
					"id" : "obj-19",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear, append (Objects:)",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 268.419189, 77.024796, 139.0, 18.0 ],
					"id" : "obj-18",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend append",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 271.801239, 233.177948, 98.0, 20.0 ],
					"id" : "obj-14",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "regexp (?:.+/)?(.+)\\\\.maxhelp",
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 235.801239, 206.09433, 163.0, 20.0 ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t count s clear",
					"numoutlets" : 3,
					"outlettype" : [ "count", "", "clear" ],
					"patching_rect" : [ 179.5, 50.93689, 85.0, 20.0 ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "autohelp_see_menu[1]",
					"numoutlets" : 3,
					"items" : [ "zsa.bark~.maxhelp", ",", "zsa.centroid~.maxhelp", ",", "zsa.decrease.maxhelp", ",", "zsa.decrease~.maxhelp", ",", "zsa.energy~.maxhelp", ",", "zsa.freqpeak~.maxhelp", ",", "zsa.fund.maxhelp", ",", "zsa.kurtosis~.maxhelp", ",", "zsa.mel~.maxhelp", ",", "zsa.rolloff~.maxhelp", ",", "zsa.seealso.maxpat", ",", "zsa.skewness~.maxhelp", ",", "zsa.slope.maxhelp", ",", "zsa.slope~.maxhelp", ",", "zsa.spread~.maxhelp" ],
					"prefix" : "Hitachi 320:/Users/ej/Perso-works/spectral_stuff/zsa/jourdan_zsa/zsa.helpfiles/",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 180.0, 126.714493, 130.0, 20.0 ],
					"id" : "obj-3",
					"fontname" : "Arial",
					"autopopulate" : 1,
					"numinlets" : 1,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess prefix zsa.helpfiles",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 179.5, 17.93689, 164.0, 20.0 ],
					"id" : "obj-6",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend help",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 327.5, 307.327576, 81.0, 20.0 ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 327.5, 332.327576, 53.0, 20.0 ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "See Also:",
					"numoutlets" : 0,
					"presentation_rect" : [ 5.0, 4.0, 100.0, 20.0 ],
					"frgb" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"patching_rect" : [ 5.0, 4.0, 100.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-10",
					"fontname" : "Arial",
					"textcolor" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"numinlets" : 1,
					"fontface" : 1,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "autohelp_see_menu",
					"numoutlets" : 3,
					"presentation_rect" : [ 5.0, 24.0, 130.0, 20.0 ],
					"items" : [ "(Objects:)", ",", "zsa.bark~", ",", "zsa.centroid~", ",", "zsa.decrease", ",", "zsa.decrease~", ",", "zsa.energy~", ",", "zsa.freqpeak~", ",", "zsa.fund", ",", "zsa.kurtosis~", ",", "zsa.mel~", ",", "zsa.rolloff~", ",", "zsa.skewness~", ",", "zsa.slope", ",", "zsa.slope~", ",", "zsa.spread~" ],
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 272.0, 274.327576, 130.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-11",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_see_panel",
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 140.0, 50.0 ],
					"border" : 2,
					"bgcolor" : [ 0.184314, 0.254902, 0.34902, 1.0 ],
					"patching_rect" : [ 0.0, 0.0, 140.0, 50.0 ],
					"presentation" : 1,
					"id" : "obj-26",
					"background" : 1,
					"numinlets" : 1,
					"bordercolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-20", 2 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 327.246796, 200.240402, 374.894043, 200.240402, 374.894043, 121.352356, 189.5, 121.352356 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 2 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 277.919189, 99.564224, 431.242645, 99.564224, 431.242645, 244.567978 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 2 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 2 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
