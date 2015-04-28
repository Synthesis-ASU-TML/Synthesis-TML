{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 404.0, 177.0, 212.0, 70.0 ],
		"bglocked" : 0,
		"defrect" : [ 404.0, 177.0, 212.0, 70.0 ],
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
					"maxclass" : "outlet",
					"patching_rect" : [ 10.0, 41.0, 15.0, 15.0 ],
					"numoutlets" : 0,
					"numinlets" : 1,
					"id" : "obj-1",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 10.0, 9.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"id" : "obj-2",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "thru input",
					"patching_rect" : [ 35.0, 9.0, 57.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Arial",
					"numinlets" : 1,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "thru output",
					"patching_rect" : [ 35.0, 42.0, 57.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Arial",
					"numinlets" : 1,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A simple router that allows for simplified wiring of multiple wires to patch subsystems.",
					"linecount" : 4,
					"patching_rect" : [ 98.0, 9.0, 102.0, 48.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Arial",
					"numinlets" : 1,
					"id" : "obj-5"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
