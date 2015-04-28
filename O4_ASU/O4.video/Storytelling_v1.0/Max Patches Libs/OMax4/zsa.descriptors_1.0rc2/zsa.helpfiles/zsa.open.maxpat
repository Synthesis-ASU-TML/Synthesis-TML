{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 430.0, 503.0, 828.0, 456.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
		"bglocked" : 0,
		"defrect" : [ 430.0, 503.0, 828.0, 456.0 ],
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
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "regexp zsa\\\\.(.+).maxhelp Zsa.%1",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-44",
					"fontname" : "Arial",
					"numoutlets" : 5,
					"patching_rect" : [ 352.0, 109.0, 190.0, 20.0 ],
					"outlettype" : [ "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax showdoc $2.maxref.xml",
					"linecount" : 2,
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-43",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 448.0, 308.0, 163.0, 32.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "append Reference",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-35",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 352.0, 147.0, 109.0, 20.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend open",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-34",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 352.0, 178.0, 85.0, 20.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-33",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 352.0, 205.0, 59.0, 20.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js zsa.open.js",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-30",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 352.0, 75.0, 83.0, 20.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"fontface" : 3,
					"textcolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"fontsize" : 12.0,
					"textovercolor" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"text" : "open Zsa.ampstats~ Reference",
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"tosymbol" : 0,
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 25.0, 195.402344, 21.798828 ],
					"id" : "obj-29",
					"fontname" : "Arial",
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"numoutlets" : 3,
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"patching_rect" : [ 352.0, 268.0, 211.035141, 26.798828 ],
					"textoncolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"presentation" : 1,
					"textoveroncolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"fontface" : 3,
					"textcolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"fontsize" : 12.0,
					"fontlink" : 1,
					"textovercolor" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"text" : "open Zsa.Descriptors Overview",
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 195.402344, 21.798828 ],
					"id" : "obj-55",
					"fontname" : "Arial",
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"numoutlets" : 3,
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"patching_rect" : [ 67.0, 93.0, 195.402344, 21.798828 ],
					"textoncolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"presentation" : 1,
					"textoveroncolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load zsa.overview.maxpat",
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"id" : "obj-41",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 67.0, 136.0, 145.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"id" : "obj-42",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 67.0, 173.0, 57.0, 20.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "text $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-32",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 352.0, 238.0, 50.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
