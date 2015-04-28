{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 80.0, 44.0, 491.0, 338.0 ],
		"bglocked" : 0,
		"defrect" : [ 80.0, 44.0, 491.0, 338.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "little convenience hack: prevent opening of this help patch to clear all your corpora's data",
					"linecount" : 4,
					"numoutlets" : 0,
					"hidden" : 1,
					"patching_rect" : [ 356.0, 15.0, 115.0, 52.0 ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess autoinit 0",
					"numoutlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 252.0, 22.0, 97.0, 17.0 ],
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s catart.init",
					"numoutlets" : 0,
					"hidden" : 1,
					"patching_rect" : [ 252.0, 42.0, 64.0, 17.0 ],
					"id" : "obj-3",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "clear ALL corpus data, leave parameters intact",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 306.0, 201.0, 127.0, 29.0 ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 308.0, 231.0, 17.0, 17.0 ],
					"id" : "obj-5",
					"outlettype" : [ "bang" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "init all parameters (and clear data) of ALL corpora",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 128.0, 200.0, 171.0, 29.0 ],
					"id" : "obj-6",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 130.0, 230.0, 17.0, 17.0 ],
					"id" : "obj-7",
					"outlettype" : [ "bang" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart[1]",
					"text" : "catart.init",
					"numoutlets" : 2,
					"patching_rect" : [ 130.0, 254.0, 188.0, 17.0 ],
					"id" : "obj-8",
					"outlettype" : [ "bang", "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "clear corpus data, leave parameters intact",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 306.0, 79.0, 126.0, 29.0 ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 308.0, 113.0, 24.0, 24.0 ],
					"id" : "obj-10",
					"outlettype" : [ "bang" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "init all parameters (and clear data) of corpus \"init-help-corpus\"",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 128.0, 78.0, 170.0, 29.0 ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 130.0, 112.0, 24.0, 24.0 ],
					"id" : "obj-12",
					"outlettype" : [ "bang" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "args: corpus name or no arg to init all corpora",
					"linecount" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 331.0, 142.0, 100.0, 41.0 ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "catart.init <corpusname | nothing>",
					"numoutlets" : 0,
					"patching_rect" : [ 1.0, 40.0, 236.0, 23.0 ],
					"id" : "obj-14",
					"fontname" : "Arial Black",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "cataRT modules help",
					"numoutlets" : 0,
					"patching_rect" : [ 1.0, 15.0, 134.0, 20.0 ],
					"id" : "obj-15",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart",
					"text" : "catart.init init-help-corpus",
					"numoutlets" : 2,
					"patching_rect" : [ 130.0, 147.0, 188.0, 23.0 ],
					"id" : "obj-16",
					"outlettype" : [ "bang", "" ],
					"fontname" : "Arial",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"fontsize" : 14.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The catart.init abstraction MUST exist and be initialised once for cataRT to function. It initialises and/or clears the data of one corpus whose name is given as argument. If no argument is given, all corpora are initialised or cleared.",
					"linecount" : 14,
					"numoutlets" : 0,
					"patching_rect" : [ 1.0, 66.0, 99.0, 167.0 ],
					"id" : "obj-17",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 115.0, 67.0, 331.0, 212.0 ],
					"rounded" : 0,
					"id" : "obj-18",
					"border" : 1,
					"bgcolor" : [ 0.792157, 0.462745, 0.960784, 1.0 ],
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-16", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
