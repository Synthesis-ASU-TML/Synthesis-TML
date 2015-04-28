{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 8
		}
,
		"rect" : [ 1604.0, 44.0, 305.0, 143.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 0,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 0,
		"enablevscroll" : 0,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"args" : [ "sf-multi1-out" ],
					"id" : "obj-42",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.sur.output~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2.0, 72.0, 300.0, 70.0 ],
					"presentation_rect" : [ 15.0, 15.0, 300.0, 70.0 ],
					"varname" : "/output~"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "sf-multi-1" ],
					"id" : "obj-52",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.sur.input~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "audio.connect" ],
					"patching_rect" : [ 2.0, 1.0, 300.0, 70.0 ],
					"presentation_rect" : [ 15.0, 15.0, 300.0, 70.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-52", 1 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "jmod.sur.input~.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/modules/spatialization/sur.input~",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/modules/spatialization/sur.input~",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.meter_receive.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/components/meter_receive",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/library/components/meter_receive",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.sur.input~.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/modules/spatialization/sur.input~",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/modules/spatialization/sur.input~",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.thru.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/components/thru",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/library/components/thru",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "input.timeDisplay.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/modules/spatialization/sur.input~",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/modules/spatialization/sur.input~",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jmod.sur.output~.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/modules/spatialization/sur.output~",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/modules/spatialization/sur.output~",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jalg.sur.output~.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/modules/spatialization/sur.output~",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/modules/spatialization/sur.output~",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.audioOnOff.maxpat",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/components/audioOnOff",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/library/components/audioOnOff",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jcom.js_systeminfo.js",
				"bootpath" : "/Applications/Max6/Cycling '74/Jamoma/library/javascript",
				"patcherrelativepath" : "../../../../Applications/Max6/Cycling '74/Jamoma/library/javascript",
				"type" : "TEXT",
				"implicit" : 1
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
				"name" : "jcom.out~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.ui.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.oscroute.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.init.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.hub.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.in~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.parameter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.pack≈.mxo",
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
				"name" : "jcom.unpack≈.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.pass.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.stats.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.limiter≈.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.gain≈.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jcom.in.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
