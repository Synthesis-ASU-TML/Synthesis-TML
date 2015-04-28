{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 0.0, 44.0, 905.0, 769.0 ],
		"bglocked" : 0,
		"defrect" : [ 0.0, 44.0, 905.0, 769.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 10.0, 10.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "show descriptors",
					"patching_rect" : [ 150.0, 190.0, 78.0, 15.0 ],
					"id" : "obj-6",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"presentation_rect" : [ 154.0, 189.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "show unitdata",
					"patching_rect" : [ 155.0, 214.0, 66.0, 15.0 ],
					"id" : "obj-5",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"presentation_rect" : [ 389.0, 124.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.unitviewer corpus2",
					"patching_rect" : [ 158.0, 343.0, 144.0, 20.0 ],
					"id" : "obj-3",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "live control corpus",
					"patching_rect" : [ 260.0, 250.0, 105.0, 20.0 ],
					"id" : "obj-34",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "live record corpus",
					"patching_rect" : [ 78.0, 252.0, 105.0, 20.0 ],
					"id" : "obj-14",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"patching_rect" : [ 250.0, 140.0, 100.0, 20.0 ],
					"id" : "obj-12",
					"outlettype" : [ "float" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"patching_rect" : [ 450.0, 410.0, 82.384277, 29.0 ],
					"#triggerall" : 0,
					"id" : "obj-109",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"hidden" : 1,
					"fontname" : "Geneva",
					"ftm_scope" : 1,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 450.0, 410.0, 82.384277, 29.0 ],
					"numinlets" : 2,
					"text" : [ "_toolbar visible 0,", "_scrollbar visible 0" ],
					"#loadbang" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<-- control selection from live input (mapping goes here!)",
					"linecount" : 2,
					"patching_rect" : [ 190.0, 370.0, 167.0, 34.0 ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gswitch2",
					"patching_rect" : [ 380.0, 340.0, 39.0, 32.0 ],
					"id" : "obj-7",
					"outlettype" : [ "", "" ],
					"numinlets" : 2,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 380.0, 380.0, 76.037109, 18.0 ],
					"#triggerall" : 0,
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"numins" : 3,
					"fontname" : "Arial",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 380.0, 380.0, 76.037109, 18.0 ],
					"numinlets" : 3,
					"text" : [ "_set-target $3" ],
					"#loadbang" : 0,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 150.0, 270.0, 20.0, 20.0 ],
					"id" : "obj-72",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "catart.weights.gui",
					"patching_rect" : [ 620.0, 0.0, 255.0, 736.0 ],
					"args" : [ "corpus2" ],
					"id" : "obj-71",
					"outlettype" : [ "", "" ],
					"name" : "catart.weights.gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 180.0, 630.0, 66.0, 20.0 ],
					"id" : "obj-68",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 100.0, 630.0, 66.0, 20.0 ],
					"id" : "obj-70",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 1. 2.",
					"patching_rect" : [ 100.0, 610.0, 70.0, 19.0 ],
					"id" : "obj-64",
					"outlettype" : [ "float", "float" ],
					"hidden" : 1,
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 50.0, 630.0, 34.013672, 18.0 ],
					"#triggerall" : 0,
					"id" : "obj-29",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"numins" : 3,
					"fontname" : "Arial",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 50.0, 630.0, 34.013672, 18.0 ],
					"numinlets" : 3,
					"text" : [ "_$3" ],
					"#loadbang" : 0,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 10.0, 610.0, 35.0, 35.0 ],
					"id" : "obj-25",
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "fmat 1 50",
					"patching_rect" : [ 420.0, 480.0, 103.022461, 18.0 ],
					"id" : "obj-121",
					"outlettype" : [ "", "" ],
					"name" : "instcopy",
					"hidden" : 1,
					"fontname" : "Geneva",
					"editor_interface" : "",
					"ftm_scope" : 0,
					"description" : "fmat 1 50",
					"scope" : 0,
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 420.0, 480.0, 103.022461, 18.0 ],
					"numinlets" : 1,
					"persistence" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.object",
					"text" : "fvec $instcopy row",
					"patching_rect" : [ 420.0, 460.0, 137.022461, 18.0 ],
					"id" : "obj-118",
					"outlettype" : [ "", "" ],
					"name" : "instrow",
					"hidden" : 1,
					"fontname" : "Geneva",
					"editor_interface" : "",
					"ftm_scope" : 0,
					"description" : "fvec $instcopy row",
					"scope" : 0,
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 420.0, 460.0, 137.022461, 18.0 ],
					"numinlets" : 1,
					"persistence" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 440.0, 310.0, 56.683594, 18.0 ],
					"#triggerall" : 0,
					"id" : "obj-40",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"numins" : 4,
					"fontname" : "Arial",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 440.0, 310.0, 56.683594, 18.0 ],
					"numinlets" : 4,
					"text" : [ "_(print $4)" ],
					"#loadbang" : 0,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"patching_rect" : [ 50.0, 610.0, 32.5, 19.0 ],
					"id" : "obj-38",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.editor",
					"patching_rect" : [ 10.0, 650.0, 606.0, 85.0 ],
					"cursor_visible" : 1,
					"domainruler_position" : 0,
					"id" : "obj-39",
					"domainscrollbar_size" : 10,
					"rangeruler_grid" : 0,
					"region_end" : 0.0,
					"outlettype" : [ "" ],
					"tabs_size" : 20,
					"windresize" : 0,
					"alignviewbounds" : 0,
					"domain_bounds" : [ 0.0, 0.0 ],
					"toolbar_visible" : 0,
					"orientation" : 0,
					"domainruler_size" : 15,
					"domainscrollbar_visible" : 1,
					"rangeruler_size" : 35,
					"split_color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"tabs_visible" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"layout" : 0,
					"cursor_color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ftm_scope" : 0,
					"domainruler_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"autoupdate" : 120.0,
					"domainruler_unit" : 0,
					"outputkeys" : 0,
					"rangeruler_visible" : 0,
					"split_size" : 2,
					"toolbar_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"cursor_position" : -1.0,
					"ftm_objref_conv" : 0,
					"domainruler_fgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"domainruler_visible" : 0,
					"outputmouse" : 0,
					"region_begin" : 0.0,
					"numinlets" : 1,
					"split_visible" : 1,
					"toolbar_position" : 1,
					"opacity" : 0.0,
					"cursor_size" : 3,
					"domainruler_grid" : 0,
					"domainscrollbar_color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outputvalues" : 0,
					"region_color" : [ 0.8, 0.7, 0.7, 1.0 ],
					"numoutlets" : 1,
					"tabs_position" : 0,
					"toolbar_size" : 30
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dummy data just for descriptor definition",
					"patching_rect" : [ 240.0, 210.0, 190.0, 19.0 ],
					"id" : "obj-33",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart.data1.5",
					"text" : "catart.data1.5 live-in",
					"patching_rect" : [ 240.0, 230.0, 129.0, 19.0 ],
					"id" : "obj-31",
					"outlettype" : [ "", "bang" ],
					"fontname" : "Arial Black",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 340.0, 310.0, 56.683594, 18.0 ],
					"#triggerall" : 0,
					"id" : "obj-30",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"numins" : 3,
					"fontname" : "Arial",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 340.0, 310.0, 56.683594, 18.0 ],
					"numinlets" : 3,
					"text" : [ "_(print $3)" ],
					"#loadbang" : 0,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 50.0, 500.0, 149.037598, 17.0 ],
					"#triggerall" : 0,
					"id" : "obj-115",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"fontname" : "Geneva",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 50.0, 500.0, 149.037598, 17.0 ],
					"numinlets" : 2,
					"text" : [ "_($instrow set $2); set $instcopy" ],
					"#loadbang" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 220.0, 500.0, 319.36084, 17.0 ],
					"#triggerall" : 0,
					"id" : "obj-124",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"hidden" : 1,
					"fontname" : "Geneva",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 220.0, 500.0, 319.36084, 17.0 ],
					"numinlets" : 2,
					"text" : [ "_(($instcopy cols ($1 cols)) schema col ($1 schema col)); set $instcopy" ],
					"#loadbang" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r live-in_imtr.analysis.condense.inst",
					"patching_rect" : [ 220.0, 480.0, 186.0, 19.0 ],
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"id" : "obj-123",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontname" : "Geneva",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 10.0, 480.0, 35.0, 35.0 ],
					"id" : "obj-46",
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"patching_rect" : [ 50.0, 480.0, 32.5, 19.0 ],
					"id" : "obj-26",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.editor",
					"patching_rect" : [ 10.0, 520.0, 606.0, 85.0 ],
					"cursor_visible" : 1,
					"domainruler_position" : 0,
					"id" : "obj-28",
					"domainscrollbar_size" : 10,
					"rangeruler_grid" : 0,
					"region_end" : 0.0,
					"outlettype" : [ "" ],
					"tabs_size" : 20,
					"windresize" : 0,
					"alignviewbounds" : 0,
					"domain_bounds" : [ 0.0, 0.0 ],
					"toolbar_visible" : 0,
					"orientation" : 0,
					"domainruler_size" : 15,
					"domainscrollbar_visible" : 1,
					"rangeruler_size" : 35,
					"split_color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"tabs_visible" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"layout" : 0,
					"cursor_color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ftm_scope" : 0,
					"domainruler_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"autoupdate" : 120.0,
					"domainruler_unit" : 0,
					"outputkeys" : 0,
					"rangeruler_visible" : 0,
					"split_size" : 2,
					"toolbar_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"cursor_position" : -1.0,
					"ftm_objref_conv" : 0,
					"domainruler_fgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"domainruler_visible" : 0,
					"outputmouse" : 0,
					"region_begin" : 0.0,
					"numinlets" : 1,
					"split_visible" : 1,
					"toolbar_position" : 1,
					"opacity" : 0.0,
					"cursor_size" : 3,
					"domainruler_grid" : 0,
					"domainscrollbar_color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outputvalues" : 0,
					"region_color" : [ 0.8, 0.7, 0.7, 1.0 ],
					"numoutlets" : 1,
					"tabs_position" : 0,
					"toolbar_size" : 30
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 180.0, 230.0, 17.020996, 17.0 ],
					"#triggerall" : 0,
					"id" : "obj-49",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"hidden" : 1,
					"fontname" : "Geneva",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 180.0, 230.0, 17.020996, 17.0 ],
					"numinlets" : 2,
					"text" : [ "_0" ],
					"#loadbang" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 180.0, 250.0, 49.672852, 18.0 ],
					"#triggerall" : 0,
					"id" : "obj-50",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"hidden" : 1,
					"fontname" : "Geneva",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 180.0, 250.0, 49.672852, 18.0 ],
					"numinlets" : 2,
					"text" : [ "_store $1" ],
					"#loadbang" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 420.0, 310.0, 20.0, 20.0 ],
					"id" : "obj-18",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 290.0, 310.0, 50.0, 20.0 ],
					"id" : "obj-21",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 240.0, 310.0, 50.0, 20.0 ],
					"id" : "obj-22",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 290.0, 290.0, 39.351562, 18.0 ],
					"#triggerall" : 0,
					"id" : "obj-23",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"fontname" : "Arial",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 290.0, 290.0, 39.351562, 18.0 ],
					"numinlets" : 2,
					"text" : [ "_$2[-1]" ],
					"#loadbang" : 0,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 240.0, 290.0, 35.355469, 18.0 ],
					"#triggerall" : 0,
					"id" : "obj-24",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"fontname" : "Arial",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 240.0, 290.0, 35.355469, 18.0 ],
					"numinlets" : 2,
					"text" : [ "_$2[0]" ],
					"#loadbang" : 0,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "choose active segmenter for control",
					"patching_rect" : [ 240.0, 165.0, 170.0, 19.0 ],
					"id" : "obj-16",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "umenu_seg[3]",
					"patching_rect" : [ 240.0, 180.0, 123.0, 19.0 ],
					"id" : "obj-17",
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Geneva",
					"items" : [ "chop", ",", "bonk-segmentation", ",", "spectral-flux-segmentation", ",", "yinseg", ",", "signal-segmentation" ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"patching_rect" : [ 240.0, 250.0, 16.0, 16.0 ],
					"id" : "obj-11",
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.import1.5 live-in",
					"patching_rect" : [ 240.0, 272.0, 244.0, 19.0 ],
					"id" : "obj-15",
					"outlettype" : [ "", "", "", "", "", "" ],
					"fontname" : "Arial Black",
					"numinlets" : 4,
					"fontsize" : 9.0,
					"numoutlets" : 6
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+~ 0.",
					"patching_rect" : [ 200.0, 140.0, 40.0, 20.0 ],
					"id" : "obj-2",
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "choose active  segmenter for import",
					"patching_rect" : [ 10.0, 165.0, 170.0, 19.0 ],
					"id" : "obj-105",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "umenu_seg",
					"patching_rect" : [ 10.0, 180.0, 123.0, 19.0 ],
					"id" : "obj-106",
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Geneva",
					"items" : [ "chop", ",", "bonk-segmentation", ",", "spectral-flux-segmentation", ",", "yinseg", ",", "signal-segmentation" ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezadc~",
					"patching_rect" : [ 200.0, 90.0, 40.0, 40.0 ],
					"id" : "obj-104",
					"outlettype" : [ "signal", "signal" ],
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"patching_rect" : [ 60.0, 255.0, 16.0, 16.0 ],
					"id" : "obj-103",
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "CataRT is essentially based on FTM&Co by Norbert Schnell et al.",
					"patching_rect" : [ 5.0, 51.0, 320.0, 18.0 ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Record",
					"patching_rect" : [ 211.0, 433.0, 46.0, 19.0 ],
					"id" : "obj-19",
					"fontname" : "Arial Black",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~",
					"patching_rect" : [ 90.0, 415.0, 31.0, 17.0 ],
					"id" : "obj-20",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"patching_rect" : [ 120.0, 214.0, 28.0, 15.0 ],
					"id" : "obj-27",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 25.0, 810.0, 50.0, 17.0 ],
					"#triggerall" : 0,
					"id" : "obj-32",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"hidden" : 1,
					"fontname" : "Geneva",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 25.0, 810.0, 50.0, 17.0 ],
					"numinlets" : 2,
					"text" : [ "_0" ],
					"#loadbang" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "merge",
					"patching_rect" : [ 85.0, 214.0, 34.0, 15.0 ],
					"id" : "obj-35",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 84.0, 822.0, 50.0, 17.0 ],
					"#triggerall" : 0,
					"id" : "obj-41",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"hidden" : 1,
					"fontname" : "Geneva",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 84.0, 822.0, 50.0, 17.0 ],
					"numinlets" : 2,
					"text" : [ "_100" ],
					"#loadbang" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"patching_rect" : [ 29.0, 822.0, 50.0, 17.0 ],
					"#triggerall" : 0,
					"id" : "obj-42",
					"outlettype" : [ "" ],
					"#untuple" : 0,
					"hidden" : 1,
					"fontname" : "Geneva",
					"ftm_scope" : 0,
					"#init" : "",
					"ftm_objref_conv" : 0,
					"presentation_rect" : [ 29.0, 822.0, 50.0, 17.0 ],
					"numinlets" : 2,
					"text" : [ "_1" ],
					"#loadbang" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus takeover",
					"patching_rect" : [ 40.0, 860.0, 96.0, 17.0 ],
					"id" : "obj-43",
					"outlettype" : [ "", "int" ],
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus overdrive",
					"patching_rect" : [ 29.0, 841.0, 96.0, 17.0 ],
					"id" : "obj-44",
					"outlettype" : [ "", "int" ],
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "clear all",
					"patching_rect" : [ 38.0, 91.0, 42.0, 17.0 ],
					"id" : "obj-48",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "import",
					"patching_rect" : [ 13.0, 256.0, 40.0, 15.0 ],
					"id" : "obj-51",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 42.0, 115.0, 20.0, 20.0 ],
					"id" : "obj-53",
					"outlettype" : [ "bang" ],
					"fgcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 8.0, 115.0, 20.0, 20.0 ],
					"id" : "obj-54",
					"outlettype" : [ "bang" ],
					"fgcolor" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.init1.5",
					"patching_rect" : [ 8.0, 137.0, 60.0, 17.0 ],
					"id" : "obj-55",
					"outlettype" : [ "bang", "" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Diemo Schwarz",
					"patching_rect" : [ 209.0, 17.0, 99.0, 23.0 ],
					"id" : "obj-56",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Real-Time Music Interaction Team",
					"patching_rect" : [ 5.0, 19.0, 207.0, 20.0 ],
					"id" : "obj-57",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 162.0, 432.0, 15.0, 15.0 ],
					"id" : "obj-58",
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"patching_rect" : [ 180.0, 432.0, 30.0, 15.0 ],
					"id" : "obj-59",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfrecord~ 2",
					"patching_rect" : [ 162.0, 449.0, 64.0, 17.0 ],
					"id" : "obj-60",
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "export",
					"patching_rect" : [ 49.0, 214.0, 35.0, 15.0 ],
					"id" : "obj-61",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "import",
					"patching_rect" : [ 13.0, 214.0, 35.0, 15.0 ],
					"id" : "obj-62",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "with contributions by Julien Bloit, Greg Beller, Alexis Baskind",
					"patching_rect" : [ 5.0, 67.0, 318.0, 18.0 ],
					"id" : "obj-65",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "published as Free Software under the Ircam FORUM libre license:",
					"patching_rect" : [ 5.0, 35.0, 303.0, 18.0 ],
					"id" : "obj-66",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "cataRT - Copyright (C) Ircam-Centre Pompidou",
					"patching_rect" : [ 5.0, 1.0, 347.0, 23.0 ],
					"id" : "obj-67",
					"fontname" : "Arial Black",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "finished analysing live notfound",
					"patching_rect" : [ 7.0, 371.0, 150.0, 15.0 ],
					"id" : "obj-69",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart-license",
					"patching_rect" : [ 313.0, 35.0, 64.0, 17.0 ],
					"id" : "obj-73",
					"fontname" : "Arial",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart",
					"text" : "catart.data1.5 corpus2",
					"patching_rect" : [ 13.0, 231.0, 124.0, 19.0 ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"id" : "obj-74",
					"outlettype" : [ "", "bang" ],
					"fontname" : "Arial Black",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.select corpus2",
					"patching_rect" : [ 13.0, 322.0, 115.0, 19.0 ],
					"id" : "obj-75",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial Black",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "catart.lcd",
					"text" : "catart.lcd corpus2",
					"patching_rect" : [ 13.0, 297.0, 130.0, 23.0 ],
					"color" : [ 1.0, 0.541176, 0.843137, 1.0 ],
					"id" : "obj-76",
					"outlettype" : [ "", "", "", "" ],
					"fontname" : "Arial Black",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.synthesis~ corpus2",
					"patching_rect" : [ 13.0, 343.0, 138.0, 19.0 ],
					"id" : "obj-77",
					"outlettype" : [ "signal", "signal", "", "int" ],
					"fontname" : "Arial Black",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "catart.import1.5 corpus2",
					"patching_rect" : [ 13.0, 273.0, 134.0, 19.0 ],
					"id" : "obj-78",
					"outlettype" : [ "", "", "", "", "", "" ],
					"fontname" : "Arial Black",
					"numinlets" : 4,
					"fontsize" : 9.0,
					"numoutlets" : 6
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 90.0, 399.0, 15.0, 15.0 ],
					"id" : "obj-87",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"patching_rect" : [ 49.0, 399.0, 22.0, 65.0 ],
					"id" : "obj-88",
					"outlettype" : [ "signal", "int" ],
					"orientation" : 2,
					"numinlets" : 2,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"patching_rect" : [ 90.0, 433.0, 33.0, 33.0 ],
					"id" : "obj-89",
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"patching_rect" : [ 8.0, 399.0, 13.0, 66.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-90",
					"outlettype" : [ "float" ],
					"interval" : 100,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"patching_rect" : [ 74.0, 399.0, 13.0, 66.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"id" : "obj-91",
					"outlettype" : [ "float" ],
					"interval" : 100,
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"patching_rect" : [ 24.0, 399.0, 22.0, 65.0 ],
					"id" : "obj-92",
					"outlettype" : [ "signal", "int" ],
					"orientation" : 2,
					"numinlets" : 2,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "init",
					"patching_rect" : [ 5.0, 91.0, 23.0, 17.0 ],
					"id" : "obj-95",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 157.0, 428.0, 105.0, 42.0 ],
					"id" : "obj-98",
					"rounded" : 15,
					"bgcolor" : [ 0.678431, 0.678431, 0.678431, 1.0 ],
					"bordercolor" : [ 0.666667, 0.105882, 0.317647, 1.0 ],
					"border" : 2,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"patching_rect" : [ 8.0, 205.0, 147.0, 162.0 ],
					"id" : "obj-101",
					"outlettype" : [ "", "" ],
					"rounded" : 0.0,
					"border" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"types" : [  ],
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.vecdisplay",
					"view1" : 2,
					"patching_rect" : [ 7.0, 207.0, 145.0, 162.0 ],
					"id" : "obj-102",
					"outlettype" : [ "", "", "", "", "", "" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ftm_scope" : 2,
					"fgcolor1" : [ 0.235294, 0.603922, 0.352941, 1.0 ],
					"ftm_objref_conv" : 0,
					"numinlets" : 5,
					"fgcolor4" : [ 1.0, 0.0, 1.0, 1.0 ],
					"numoutlets" : 6,
					"background" : 1,
					"fgcolor5" : [ 1.0, 1.0, 0.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 1 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [ 33.0, 471.0, 138.0, 471.0, 138.0, 471.0, 171.5, 471.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-89", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-60", 1 ],
					"hidden" : 0,
					"midpoints" : [ 58.0, 471.0, 216.5, 471.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 4 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 2 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 5 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 1 ],
					"destination" : [ "obj-102", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 1 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 1 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 1 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 1,
					"midpoints" : [ 629.5, 741.0, 526.0, 741.0, 526.0, 621.0, 22.5, 621.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 1 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"midpoints" : [ 17.5, 162.0, 6.0, 162.0, 6.0, 201.0, 186.510498, 201.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-55", 1 ],
					"hidden" : 0,
					"midpoints" : [ 51.5, 134.0, 58.5, 134.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-124", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"color" : [ 0.952941, 0.011765, 0.011765, 1.0 ],
					"midpoints" : [ 389.5, 407.0, 186.0, 407.0, 186.0, 321.0, 22.5, 321.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-115", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-78", 2 ],
					"hidden" : 0,
					"midpoints" : [ 209.5, 270.0, 99.166664, 270.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-15", 2 ],
					"hidden" : 0,
					"midpoints" : [ 209.5, 269.5, 399.5, 269.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-15", 3 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 4 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 4 ],
					"destination" : [ "obj-40", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 4 ],
					"destination" : [ "obj-38", 1 ],
					"hidden" : 1,
					"midpoints" : [ 429.5, 608.0, 73.0, 608.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 3 ],
					"destination" : [ "obj-30", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 3 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 1,
					"midpoints" : [ 384.5, 475.0, 73.0, 475.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 3 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 3 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 4 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 5 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-124", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 229.5, 513.0, 19.5, 513.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-123", 0 ],
					"destination" : [ "obj-124", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-115", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 249.5, 269.5, 249.5, 269.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-109", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-109", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 1 ],
					"destination" : [ "obj-78", 3 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 1 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [ 69.5, 271.5, 22.5, 271.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-78", 1 ],
					"hidden" : 1,
					"midpoints" : [ 17.5, 363.0, 9.0, 363.0, 9.0, 252.0, 60.833332, 252.0 ]
				}

			}
 ]
	}

}
