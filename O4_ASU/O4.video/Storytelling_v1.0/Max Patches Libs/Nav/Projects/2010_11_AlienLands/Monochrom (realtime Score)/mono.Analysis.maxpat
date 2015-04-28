{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 199.0, 459.0, 640.0, 480.0 ],
		"bglocked" : 0,
		"defrect" : [ 199.0, 459.0, 640.0, 480.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 13.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 224.0, 496.0, 21.0 ],
					"presentation_rect" : [ 4.0, 224.0, 0.0, 0.0 ],
					"text" : "Onset of phrases are all combined to make one master onsets' timeline"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6.0, 138.0, 329.0, 21.0 ],
					"presentation_rect" : [ 50.0, 267.0, 0.0, 0.0 ],
					"text" : "all musicians together (Orchestra):"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 32.0, 161.0, 506.0, 21.0 ],
					"text" : "Spectral centroide /flatness /noisiness (bpf graph + overall average)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6.0, 4.0, 329.0, 21.0 ],
					"text" : "4 musician (each needs:)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-4",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 32.0, 28.0, 505.0, 111.0 ],
					"text" : "Pitch (bpf graph)\nVelocity (bpf  graph) \n# of Phrases\nOnset of phrases\nduration of phrases (ms)\nMFCC (spectral noise) (bpf graph) [use autoscale to discover the max and min] {save list of all original data to a txt file}"
				}

			}
 ],
		"lines" : [  ]
	}

}
