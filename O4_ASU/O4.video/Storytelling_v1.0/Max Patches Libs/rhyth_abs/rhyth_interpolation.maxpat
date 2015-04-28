{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 8
		}
,
		"rect" : [ 0.0, 44.0, 1280.0, 706.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Helvetica",
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
					"fontsize" : 10.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 306.0, 18.734558, 81.0, 18.0 ],
					"text" : "s #0-tableOnset"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica",
					"fontsize" : 10.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 251.0, 79.0, 79.0, 16.0 ],
					"text" : "rhyth-tempoDet"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 2, "time" ],
					"border" : 1,
					"id" : "obj-3",
					"maxclass" : "bpatcher",
					"name" : "rhythRecord.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 585.0, 18.734558, 100.0, 115.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 63.0, 240.0, 100.0, 115.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ 1, "time" ],
					"border" : 1,
					"id" : "obj-18",
					"maxclass" : "bpatcher",
					"name" : "rhythRecord.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 51.0, 18.734558, 100.0, 115.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 63.0, 62.0, 100.0, 115.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "rhythInterp.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 180.0, 383.519165, 201.0, 65.215393 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ 1 ],
					"border" : 1,
					"id" : "obj-28",
					"maxclass" : "bpatcher",
					"name" : "rhythPhrase.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 51.0, 144.0, 506.0, 163.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 171.0, 62.0, 506.0, 163.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ 2 ],
					"border" : 1,
					"id" : "obj-2",
					"maxclass" : "bpatcher",
					"name" : "rhythPhrase.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 585.0, 144.0, 506.0, 163.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 171.0, 240.0, 506.0, 163.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ 1 ],
					"border" : 1,
					"id" : "obj-331",
					"maxclass" : "bpatcher",
					"name" : "rhythPlay.maxpat",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "int", "bang", "", "" ],
					"patching_rect" : [ 180.0, 463.734558, 319.930786, 121.265442 ],
					"presentation" : 1,
					"presentation_rect" : [ 684.0, 62.0, 316.0, 133.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-331", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "rhythPlay.maxpat",
				"bootpath" : "/Users/julian/MaxLibraries/julian/rhyth_abs",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rhythPhrase.maxpat",
				"bootpath" : "/Users/julian/MaxLibraries/julian/rhyth_abs",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rhythInterp.maxpat",
				"bootpath" : "/Users/julian/MaxLibraries/julian/rhyth_abs",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rhythRecord.maxpat",
				"bootpath" : "/Users/julian/MaxLibraries/julian/rhyth_abs",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rhyth-tempoDet.maxpat",
				"bootpath" : "/Users/julian/MaxLibraries/julian/rhyth_abs",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ftm.mess.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ftm.copy.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ftm.object.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ftm.list.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "icst.button.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "OSC-route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ftm.editor.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "createfolder.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "labs.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ftm.inter.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
