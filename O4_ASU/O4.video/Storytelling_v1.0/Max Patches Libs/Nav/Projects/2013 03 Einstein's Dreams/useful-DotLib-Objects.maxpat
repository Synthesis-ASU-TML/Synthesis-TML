{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 8
		}
,
		"rect" : [ 1163.0, 565.0, 320.0, 310.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 106.5, 215.0, 179.0, 20.0 ],
					"presentation_rect" : [ 310.5, 259.0, 0.0, 0.0 ],
					"text" : "exponentional moving deviation"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.745098, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 13.0, 215.0, 84.0, 20.0 ],
					"text" : "dot.emd 0.0.1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 66.5, 182.0, 156.0, 20.0 ],
					"presentation_rect" : [ 272.0, 229.0, 0.0, 0.0 ],
					"text" : "exponentional moving avrg"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.745098, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 182.0, 54.0, 20.0 ],
					"text" : "dot.ema"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.745098, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 154.0, 66.0, 20.0 ],
					"text" : "dot.history"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 13.0, 262.0, 150.0, 20.0 ],
					"text" : "clip/fold/wrap/clamp/mute"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.745098, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 242.0, 255.0, 20.0 ],
					"text" : "dot.boundary @min none @max clamp 34.6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 72.5, 63.0, 150.0, 20.0 ],
					"presentation_rect" : [ 278.0, 106.0, 0.0, 0.0 ],
					"text" : "jab + velocity"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 88.0, 96.0, 150.0, 20.0 ],
					"presentation_rect" : [ 291.0, 141.0, 0.0, 0.0 ],
					"text" : "curtain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 151.0, 125.0, 150.0, 20.0 ],
					"text" : "schmitt attack speed"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.745098, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 125.0, 138.0, 20.0 ],
					"text" : "dot.attackslope 20 50"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 96.0, 75.0, 20.0 ],
					"text" : "dot.distance"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 13.0, 63.0, 59.5, 20.0 ],
					"text" : "dot.jab"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 13.0, 83.0, 33.0 ],
					"text" : "dot.cartesianToQuaternion"
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [ 			{
				"name" : "dot.cartesianToQuaternion.maxpat",
				"bootpath" : "/Code/MaxSearchPath/Dot/dot_20121204/quaternions/dot.cartesianToQuaternion",
				"patcherrelativepath" : "../../../../../MaxSearchPath/Dot/dot_20121204/quaternions/dot.cartesianToQuaternion",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dot.quaternion.multiply.maxpat",
				"bootpath" : "/Code/MaxSearchPath/Dot/dot_20121204/quaternions/dot.quaternion.multiply",
				"patcherrelativepath" : "../../../../../MaxSearchPath/Dot/dot_20121204/quaternions/dot.quaternion.multiply",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dot.jab.maxpat",
				"bootpath" : "/Code/MaxSearchPath/Dot/dot_20121204/filters/dot.jab",
				"patcherrelativepath" : "../../../../../MaxSearchPath/Dot/dot_20121204/filters/dot.jab",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dot.median.maxpat",
				"bootpath" : "/Code/MaxSearchPath/Dot/dot_20121204/filters/dot.median",
				"patcherrelativepath" : "../../../../../MaxSearchPath/Dot/dot_20121204/filters/dot.median",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dot.split.maxpat",
				"bootpath" : "/Code/MaxSearchPath/Dot/dot_20121204/filters/dot.split",
				"patcherrelativepath" : "../../../../../MaxSearchPath/Dot/dot_20121204/filters/dot.split",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dot.extrema.maxpat",
				"bootpath" : "/Code/MaxSearchPath/Dot/dot_20121204/filters/dot.extrema",
				"patcherrelativepath" : "../../../../../MaxSearchPath/Dot/dot_20121204/filters/dot.extrema",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dot.windowedextrema.maxpat",
				"bootpath" : "/Code/MaxSearchPath/Dot/dot_20121204/filters/dot.windowedextrema",
				"patcherrelativepath" : "../../../../../MaxSearchPath/Dot/dot_20121204/filters/dot.windowedextrema",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dot.distance.maxpat",
				"bootpath" : "/Code/MaxSearchPath/Dot/dot_20121204/filters/dot.distance",
				"patcherrelativepath" : "../../../../../MaxSearchPath/Dot/dot_20121204/filters/dot.distance",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dot.attackslope.maxpat",
				"bootpath" : "/Code/MaxSearchPath/Dot/dot_20121204/filters/dot.attackslope",
				"patcherrelativepath" : "../../../../../MaxSearchPath/Dot/dot_20121204/filters/dot.attackslope",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dot.threshtrig.maxpat",
				"bootpath" : "/Code/MaxSearchPath/Dot/dot_20121204/filters/dot.threshtrig",
				"patcherrelativepath" : "../../../../../MaxSearchPath/Dot/dot_20121204/filters/dot.threshtrig",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dot.boundary.maxpat",
				"bootpath" : "/Code/MaxSearchPath/Dot/dot_20121204/filters/dot.boundary",
				"patcherrelativepath" : "../../../../../MaxSearchPath/Dot/dot_20121204/filters/dot.boundary",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dot.history.maxpat",
				"bootpath" : "/Code/MaxSearchPath/Dot/dot_20121204/filters/dot.history",
				"patcherrelativepath" : "../../../../../MaxSearchPath/Dot/dot_20121204/filters/dot.history",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dot.ema.maxpat",
				"bootpath" : "/Code/MaxSearchPath/Dot/dot_20121204/statistics/dot.ema",
				"patcherrelativepath" : "../../../../../MaxSearchPath/Dot/dot_20121204/statistics/dot.ema",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dot.emd.maxpat",
				"bootpath" : "/Code/MaxSearchPath/Dot/dot_20121204/statistics/dot.emd",
				"patcherrelativepath" : "../../../../../MaxSearchPath/Dot/dot_20121204/statistics/dot.emd",
				"type" : "JSON",
				"implicit" : 1
			}
 ]
	}

}
