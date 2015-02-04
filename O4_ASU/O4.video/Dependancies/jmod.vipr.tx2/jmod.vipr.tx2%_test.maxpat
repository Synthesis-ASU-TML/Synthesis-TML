{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 6,
			"architecture" : "x86"
		}
,
		"rect" : [ 197.0, 118.0, 734.0, 569.0 ],
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
					"args" : [ "myModule" ],
					"id" : "obj-4",
					"maxclass" : "bpatcher",
					"name" : "jmod.input%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 15.0, 15.0, 300.0, 70.0 ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "myModule" ],
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "jmod.vipr.tx%.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 15.0, 105.0, 150.0, 280.0 ],
					"presentation_rect" : [ 15.0, 15.0, 150.0, 280.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 1 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "jmod.vipr.tx%.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/jmod.vipr.tx",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.vipr.tx.maxpat",
				"bootpath" : "/Users/synthesis/Desktop/jmod.vipr.tx",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.input%.maxpat",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/Jamoma/modules/video/input%",
				"patcherrelativepath" : "../../../../Applications/Max 6.1/Cycling '74/Jamoma/modules/video/input%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.input%.maxpat",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/Jamoma/modules/video/input%",
				"patcherrelativepath" : "../../../../Applications/Max 6.1/Cycling '74/Jamoma/modules/video/input%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.thru.maxpat",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/Jamoma/library/components/thru",
				"patcherrelativepath" : "../../../../Applications/Max 6.1/Cycling '74/Jamoma/library/components/thru",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.input%.ui.maxpat",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/Jamoma/modules/video/input%",
				"patcherrelativepath" : "../../../../Applications/Max 6.1/Cycling '74/Jamoma/modules/video/input%",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.ui.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "vipr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.oscroute.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.pass.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.return.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.hub.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.in.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.out.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.parameter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.dataspace.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.textslider.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.message.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
