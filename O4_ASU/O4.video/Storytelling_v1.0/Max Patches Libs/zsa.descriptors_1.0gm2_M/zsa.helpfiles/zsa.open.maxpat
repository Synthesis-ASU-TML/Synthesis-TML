{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 487.0, 9.0, 196.0, 51.0 ],
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
					"text" : "expr $f1 - sin($f1*6.283185)/6.283185",
					"numinlets" : 1,
					"id" : "obj-17",
					"numoutlets" : 1,
					"patching_rect" : [ 52.0, 209.0, 213.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"presentation_rect" : [ 129.0, 209.0, 0.0, 0.0 ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr $f1 - sin($f1*6.283185)/6.283185",
					"numinlets" : 1,
					"id" : "obj-16",
					"numoutlets" : 1,
					"patching_rect" : [ 213.0, 212.0, 213.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr $f1*0.5+0.5",
					"numinlets" : 1,
					"id" : "obj-15",
					"numoutlets" : 1,
					"patching_rect" : [ 52.0, 113.0, 99.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"presentation_rect" : [ 66.0, 113.0, 0.0, 0.0 ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr $f1*0.5+0.5",
					"numinlets" : 1,
					"id" : "obj-14",
					"numoutlets" : 1,
					"patching_rect" : [ 213.0, 113.0, 99.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "textcolor 0.85 0.53 0.25 $1",
					"numinlets" : 2,
					"id" : "obj-10",
					"numoutlets" : 1,
					"patching_rect" : [ 213.0, 255.0, 153.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"presentation_rect" : [ 213.0, 217.0, 0.0, 0.0 ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line 0.",
					"numinlets" : 3,
					"id" : "obj-11",
					"numoutlets" : 2,
					"patching_rect" : [ 213.0, 164.0, 46.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"presentation_rect" : [ 213.0, 184.0, 0.0, 0.0 ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "$1 1937",
					"numinlets" : 2,
					"id" : "obj-12",
					"numoutlets" : 1,
					"patching_rect" : [ 213.0, 139.0, 54.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"presentation_rect" : [ 213.0, 159.0, 0.0, 0.0 ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"id" : "obj-13",
					"numoutlets" : 1,
					"patching_rect" : [ 213.0, 88.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 213.0, 127.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "textcolor 0.85 0.53 0.25 $1",
					"numinlets" : 2,
					"id" : "obj-9",
					"numoutlets" : 1,
					"patching_rect" : [ 52.0, 255.0, 153.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line 0.",
					"numinlets" : 3,
					"id" : "obj-6",
					"numoutlets" : 2,
					"patching_rect" : [ 52.0, 164.0, 46.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "$1 2000",
					"numinlets" : 2,
					"id" : "obj-5",
					"numoutlets" : 1,
					"patching_rect" : [ 52.0, 139.0, 54.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 1,
					"patching_rect" : [ 52.0, 88.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 1",
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 1,
					"patching_rect" : [ 52.0, 46.0, 72.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "regexp zsa\\\\.(.+).maxhelp Zsa.%1",
					"numinlets" : 1,
					"id" : "obj-44",
					"numoutlets" : 5,
					"patching_rect" : [ 465.0, 167.0, 190.0, 20.0 ],
					"outlettype" : [ "", "", "", "", "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax showdoc $2.maxref.xml",
					"linecount" : 2,
					"numinlets" : 2,
					"id" : "obj-43",
					"numoutlets" : 1,
					"patching_rect" : [ 561.0, 367.0, 163.0, 32.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "append Reference",
					"numinlets" : 1,
					"id" : "obj-35",
					"numoutlets" : 1,
					"patching_rect" : [ 465.0, 205.0, 109.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend open",
					"numinlets" : 1,
					"id" : "obj-34",
					"numoutlets" : 1,
					"patching_rect" : [ 465.0, 236.0, 85.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"numinlets" : 1,
					"id" : "obj-33",
					"numoutlets" : 1,
					"patching_rect" : [ 465.0, 263.0, 59.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js zsa.open.js",
					"numinlets" : 1,
					"id" : "obj-30",
					"numoutlets" : 1,
					"patching_rect" : [ 465.0, 133.0, 83.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"id" : "obj-29",
					"tosymbol" : 0,
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 465.0, 326.0, 211.035141, 26.798828 ],
					"textoncolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"text" : "open Zsa.ampstats~ Reference",
					"textoveroncolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "", "int" ],
					"textcolor" : [ 0.85, 0.53, 0.25, 0.602196 ],
					"textovercolor" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"fontname" : "Arial",
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"presentation_rect" : [ 0.0, 25.0, 195.402344, 21.798828 ],
					"fontface" : 3,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"bgoncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bordercolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"id" : "obj-55",
					"borderoncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 52.0, 322.0, 195.402344, 21.798828 ],
					"textoncolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"text" : "open Zsa.Descriptors Overview",
					"textoveroncolor" : [ 0.85098, 0.533333, 0.254902, 1.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "", "int" ],
					"textcolor" : [ 0.85, 0.53, 0.25, 0.711449 ],
					"fontlink" : 1,
					"textovercolor" : [ 0.533333, 0.65098, 0.286275, 1.0 ],
					"bgcolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"fontname" : "Arial",
					"bgovercolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"bgoveroncolor" : [ 0.937255, 0.92549, 0.792157, 0.0 ],
					"presentation_rect" : [ 0.0, 0.0, 195.402344, 21.798828 ],
					"fontface" : 3,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load zsa.overview.maxpat",
					"numinlets" : 2,
					"id" : "obj-41",
					"numoutlets" : 1,
					"patching_rect" : [ 52.0, 365.0, 145.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"id" : "obj-42",
					"numoutlets" : 1,
					"patching_rect" : [ 52.0, 402.0, 57.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1,
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "text $1",
					"numinlets" : 2,
					"id" : "obj-32",
					"numoutlets" : 1,
					"patching_rect" : [ 465.0, 296.0, 50.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 249.5, 193.0, 271.0, 193.0, 271.0, 83.0, 222.5, 83.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 88.5, 194.0, 110.0, 194.0, 110.0, 83.0, 61.5, 83.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
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
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-34", 0 ],
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
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
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
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
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
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
