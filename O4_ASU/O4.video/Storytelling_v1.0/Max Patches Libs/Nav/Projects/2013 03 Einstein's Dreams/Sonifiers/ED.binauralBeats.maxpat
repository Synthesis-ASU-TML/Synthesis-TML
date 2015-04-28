{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 8
		}
,
		"rect" : [ 1012.0, 587.0, 611.0, 712.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
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
					"args" : [ "/sineOutput5~" ],
					"id" : "obj-24",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.output~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ -1.0, 566.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 567.0, 300.0, 140.0 ],
					"varname" : "/output~[5]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/sineOutput6~" ],
					"id" : "obj-23",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.output~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 327.0, 492.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 307.0, 567.0, 300.0, 140.0 ],
					"varname" : "/output~[4]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1154.0, 571.0, 81.0, 17.0 ],
					"presentation_rect" : [ 1156.0, 572.0, 0.0, 0.0 ],
					"text" : "/frequency $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1358.0, 571.0, 81.0, 17.0 ],
					"presentation_rect" : [ 1360.0, 571.0, 0.0, 0.0 ],
					"text" : "/frequency $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1358.0, 467.0, 81.0, 17.0 ],
					"presentation_rect" : [ 1357.0, 465.0, 0.0, 0.0 ],
					"text" : "/frequency $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1154.0, 467.0, 81.0, 17.0 ],
					"text" : "/frequency $1"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "sine4" ],
					"id" : "obj-17",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.rand.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1289.0, 492.0, 150.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 382.0, 419.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "sine3" ],
					"id" : "obj-16",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.rand.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1085.0, 492.0, 150.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 76.0, 412.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "sine2" ],
					"id" : "obj-15",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.rand.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1289.0, 389.0, 150.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 382.0, 135.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "sine1" ],
					"id" : "obj-13",
					"maxclass" : "bpatcher",
					"name" : "jmod.nav.rand.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1085.0, 389.0, 150.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 76.0, 135.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/Sine3~" ],
					"id" : "obj-5",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.sine~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "signal" ],
					"patching_rect" : [ 960.0, 17.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 307.0, 71.0, 300.0, 70.0 ],
					"varname" : "/sine~[6]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/sineOutput2~" ],
					"id" : "obj-6",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.output~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 644.0, 105.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 307.0, 141.0, 300.0, 140.0 ],
					"varname" : "/output~[3]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/Sine2~" ],
					"id" : "obj-8",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.sine~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "signal" ],
					"patching_rect" : [ 644.0, 17.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 307.0, 1.0, 300.0, 70.0 ],
					"varname" : "/sine~[7]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/sine7~" ],
					"id" : "obj-1",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.sine~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "signal" ],
					"patching_rect" : [ 960.0, 271.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 307.0, 357.0, 300.0, 70.0 ],
					"varname" : "/sine~[4]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/sineOutput3~" ],
					"id" : "obj-2",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.output~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 644.0, 376.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 307.0, 427.0, 300.0, 140.0 ],
					"varname" : "/output~[2]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/Sine6~" ],
					"id" : "obj-4",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.sine~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "signal" ],
					"patching_rect" : [ 644.0, 271.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 307.0, 287.0, 300.0, 70.0 ],
					"varname" : "/sine~[5]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/Sine8~" ],
					"id" : "obj-9",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.sine~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "signal" ],
					"patching_rect" : [ 333.0, 271.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 357.0, 300.0, 70.0 ],
					"varname" : "/sine~[2]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/sineOutput4~" ],
					"id" : "obj-10",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.output~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 17.0, 376.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 427.0, 300.0, 140.0 ],
					"varname" : "/output~[1]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/Sine5~" ],
					"id" : "obj-11",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.sine~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "signal" ],
					"patching_rect" : [ 17.0, 271.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 287.0, 300.0, 70.0 ],
					"varname" : "/sine~[3]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/Sine4~" ],
					"id" : "obj-7",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.sine~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "signal" ],
					"patching_rect" : [ 333.0, 17.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 71.0, 300.0, 70.0 ],
					"varname" : "/sine~[1]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/sineOutput1~" ],
					"id" : "obj-3",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.output~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 17.0, 122.0, 300.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 141.0, 300.0, 140.0 ],
					"varname" : "/output~"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/Sine1~" ],
					"id" : "obj-14",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.sine~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "signal" ],
					"patching_rect" : [ 17.0, 17.0, 300.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 1.0, 300.0, 70.0 ],
					"varname" : "/sine~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 307.5, 360.0, 167.0, 360.0 ],
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 307.5, 106.0, 167.0, 106.0 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 934.5, 360.0, 794.0, 360.0 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 934.5, 96.0, 794.0, 96.0 ],
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 1 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "jmod.sine~.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/modules/audio/sine~",
				"patcherrelativepath" : "../../../../../../../Applications/Max6/Cycling '74/Jamoma/modules/audio/sine~",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.sine~.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/modules/audio/sine~",
				"patcherrelativepath" : "../../../../../../../Applications/Max6/Cycling '74/Jamoma/modules/audio/sine~",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.meter_receive.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/components/meter_receive",
				"patcherrelativepath" : "../../../../../../../Applications/Max6/Cycling '74/Jamoma/library/components/meter_receive",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.output~.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/modules/audio/output~",
				"patcherrelativepath" : "../../../../../../../Applications/Max6/Cycling '74/Jamoma/modules/audio/output~",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.audioOnOff.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/components/audioOnOff",
				"patcherrelativepath" : "../../../../../../../Applications/Max6/Cycling '74/Jamoma/library/components/audioOnOff",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.js_systeminfo.js",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/javascript",
				"patcherrelativepath" : "../../../../../../../Applications/Max6/Cycling '74/Jamoma/library/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.nav.rand.maxpat",
				"bootpath" : "/Code/Git/MaxLibraries/Nav/Jamoma/jmod.nav.rand",
				"patcherrelativepath" : "../../../Jamoma/jmod.nav.rand",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.nav.rand.maxpat",
				"bootpath" : "/Code/Git/MaxLibraries/Nav/Jamoma/jmod.nav.rand",
				"patcherrelativepath" : "../../../Jamoma/jmod.nav.rand",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.absdiff.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/components/absdiff",
				"patcherrelativepath" : "../../../../../../../Applications/Max6/Cycling '74/Jamoma/library/components/absdiff",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.ui.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.hub.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.oscroute.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.parameter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.in~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.out~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.meter~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.remote.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.return.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.pass.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.dataspace.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.overdrive~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.limiter~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.stats.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.init.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.message.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.textslider.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.in.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
