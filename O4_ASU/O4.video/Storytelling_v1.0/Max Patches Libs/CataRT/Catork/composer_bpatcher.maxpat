{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 234.0, 44.0, 851.0, 980.0 ],
		"bglocked" : 0,
		"defrect" : [ 234.0, 44.0, 851.0, 980.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
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
					"maxclass" : "comment",
					"text" : "<- examples of \"mypiece_ork-groups.txt\"",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 93.0, 1593.0, 226.0, 20.0 ],
					"patching_rect" : [ 87.0, 1545.0, 226.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-94",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"presentation_rect" : [ 72.0, 1593.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 67.0, 1545.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-95",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p ork-groups_file-example",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 67.0, 1573.0, 149.0, 20.0 ],
					"id" : "obj-97",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 462.0, 44.0, 515.0, 935.0 ],
						"bglocked" : 0,
						"defrect" : [ 462.0, 44.0, 515.0, 935.0 ],
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "In the example above, number of voices is 9, so the letter-names are a, b, c, d, e, f, g, h, and i.\nOnce this file is loaded in the patch, you are able to use the word \"basses\" as a shortcut to refer to voices [abcd], \"violins\" to [efghi], \"rumbling\" to [defgh], and so on.\nIf you choose not to define any shortcuts, you will be simply using the letter-names to refer to voices.",
									"linecount" : 7,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 741.0, 503.0, 151.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The file \"mypiece_ork-sections.txt\" is also the place where you can optionally define sub-groups of voices, giving them special names (shortcuts) that may be useful to you when you are writing messages to the players.",
									"linecount" : 4,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 358.0, 468.0, 89.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "...where the last number represents the number of voices. Voices are represented by letters taken sequentially from the alphabet. If you choose to use 4 voices, they will be represented by letters a, b, c and d. The maximum number of voices is 26 (using all the alphabet). Think of 'voices' as vocal or instrumental parts in traditional music: one same voice can be played by several musicians at the same time. So, for example, you can compose only 4 voices to be played by an ensemble of 12 laptops (3 per voice).",
									"linecount" : 10,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 130.0, 452.0, 213.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Your file \"mypiece_ork-sections.txt\" must include at least one line specifying the number of voices you will use. This first line must be like exactly like this:",
									"linecount" : 3,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"patching_rect" : [ 12.0, 6.0, 456.0, 69.0 ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0, number-of-voices 4;",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 14.0, 8.0, 220.0, 27.0 ],
									"patching_rect" : [ 123.0, 87.0, 233.0, 27.0 ],
									"presentation" : 1,
									"id" : "obj-4",
									"fontname" : "Arial",
									"frgb" : [ 0.047501, 0.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.047501, 0.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 391.0, 21.0, 25.0, 25.0 ],
									"hidden" : 1,
									"id" : "obj-3",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 391.0, 54.0, 35.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 391.0, 80.0, 69.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0, number-of-voices 9;\nbasses, /[abcd];\nviolins, /[efghi];\nharmony, /[abef];\nrumbling, /[d-h];\nlast-drone, /[acdfgi];\nleft, /[a-c];\nmiddle, /[d-f];\nright, /[g-i];\nsolo1, /[a];\nsolo2, /[e];\nsolo3, /[h];",
									"linecount" : 12,
									"presentation_linecount" : 12,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 912.231201, 421.70343, 220.0, 255.0 ],
									"patching_rect" : [ 112.0, 461.0, 233.0, 255.0 ],
									"presentation" : 1,
									"id" : "obj-8",
									"fontname" : "Arial",
									"frgb" : [ 0.047501, 0.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.047501, 0.0, 1.0, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The file \"mypiece_ork-groups.txt\" must have at least one line defining the number of voices being used in the piece. Optionally, you may also define shortcuts to refer to subgroups of players in the messages you will write. Click below to see two examples of the file \"mypiece_ork-groups.txt\":",
					"linecount" : 6,
					"presentation_linecount" : 7,
					"fontsize" : 14.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 47.0, 1440.0, 292.0, 119.0 ],
					"patching_rect" : [ 24.0, 1402.0, 329.0, 103.0 ],
					"presentation" : 1,
					"id" : "obj-92",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1) mypiece_ork-groups.txt",
					"fontsize" : 21.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 48.0, 1377.0, 273.0, 31.0 ],
					"patching_rect" : [ 25.0, 1359.0, 273.0, 31.0 ],
					"presentation" : 1,
					"id" : "obj-91",
					"fontname" : "Arial Bold",
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- click for an example",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 500.0, 1574.0, 182.0, 20.0 ],
					"patching_rect" : [ 493.0, 1508.0, 131.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-86",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"presentation_rect" : [ 479.0, 1574.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 473.0, 1508.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-87",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p messages_file-example",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 473.0, 1536.0, 147.0, 20.0 ],
					"id" : "obj-89",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 462.0, 44.0, 435.0, 357.0 ],
						"bglocked" : 0,
						"defrect" : [ 462.0, 44.0, 435.0, 357.0 ],
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 391.0, 21.0, 25.0, 25.0 ],
									"hidden" : 1,
									"id" : "obj-3",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 391.0, 54.0, 35.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 391.0, 80.0, 69.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "\n-----------------------cue 0;\nevent 0;\nto [a-z] \"get ready...\";\n0 0;\n-----------------------cue 1;\nto [a-z] \"Trigger Event 1 at conductor's signal\";\n0 1;\n-----------------------cue 2;\nevent 1;\nto [c] \"increase volume\";\nto [efgij] \"slowly decrease Rate and Size\";\nto [k-z] \"change Size-STD up to 500\";\n0 2;\n",
									"linecount" : 14,
									"presentation_linecount" : 17,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 912.231201, 421.70343, 220.0, 358.0 ],
									"patching_rect" : [ 16.0, 15.0, 403.0, 296.0 ],
									"presentation" : 1,
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- click for more info on Messages",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 500.0, 1657.0, 194.0, 20.0 ],
					"patching_rect" : [ 494.0, 1615.0, 194.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-62",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"presentation_rect" : [ 479.0, 1657.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 474.0, 1615.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-67",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p messages_moreinfo",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 474.0, 1643.0, 129.0, 20.0 ],
					"id" : "obj-70",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 462.0, 44.0, 665.0, 963.0 ],
						"bglocked" : 0,
						"defrect" : [ 462.0, 44.0, 665.0, 963.0 ],
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 630.0, 34.0, 25.0, 25.0 ],
									"hidden" : 1,
									"id" : "obj-3",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 630.0, 67.0, 35.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 630.0, 93.0, 69.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "MESSAGES (mypiece_messages.txt) - tips:\n\n- A cue is a set of one or more messages to be sent out to players.\n\n- Each cue must be enclosed by mandatory first and last lines like this:\n\n-----------------------cue 0;\n[content]\n0 0;\n-----------------------cue 1;\n[content]\n0 1;\n\nJust copy and paste these lines and change numbers according to the cue number. Note that the first number of the closing line must always be zero, and the second number of the closing line should always match the cue number specified in the opening line.\n\n- Messages to players are written within the enclosing lines of a cue. Write one message per line. The same message can be addressed to one or more players at once. Every line should follow this syntax:\n\nto addressee \"message\";\n\nThe first element in a line is always the word \"to\";\nThe second element specifies the addressees of that message (more on that below);\nThe third element, always between double quotes, is the message itself;\nThe line must finish with a semi-colon.\n\nHow to specify the addressees? There are three ways:\n\n1) DIRECT ADDRESS: use letters inside brackets refer to specific \"voices\" (instrumental parts) being used in your piece:\n\nto [a] \"hello voice a, how are you?\";\nto [abc] \"this message goes to voices a, b, and c\";\nto [acd] \"this message goes to a, c, and d, but NOT b\";\nto [a-d] \"this message goes to a, b, c, and d\";\nto [b-z] \"this message goes to everyone except a\";\nto [a-cdgmu-z] \"you get the idea\";\n\nNote: direct addresses must always be written inside brackets.\n\n2) SEND TO ALL: if you want to send a message to all voices at once, you can leave out the \"addressee\" field:\n\nto \"I want to talk to everyone\";\nto \"another message being sent to all\";\n\nNote that this is simply a shortcut to writing the direct address, for example:\n\nto [a-z] \"this also goes to everyone\"\n\nIf in your piece you are only using 4 voices (like a, b, c, d), then the following examples are equivalent:\n\nto [a-d] \"message to all my 4 voices\";\nto \"another message to all my 4 voices\";\n\n3) USER-DEFINED GROUPS (optional): at times you might want to address sub-groups of players using more meaningful and easy-to-remember names. For example, voices a, b, c, d, e may be \"violins\", voices a, g, h may be a \"trio\" that happens later in the piece, and b, c, d, m, n, q may be different components of a \"low-drone\". In order to use this kind of usef-defined shortcuts to sub-groups of the orkestra, first you have to define them in the file \"mypiece_ork-groups.txt\", one line per definition. Once loaded within the patch, your newly-created shortcuts can be used to write messages the following way:\n\nto -violins \"stay in tune\";\nto -trio \"your turn now\";\nto -low-drone \"keep it soft\";\n\nThe three lines above would be equivalent to:\n\nto [a-e] \"stay in tune\";\nto [agh] \"your turn now\";\nto [bcdmnq] \"keep it soft\";\n\nNOTE: you must add the dash to refer to your shortcuts in the \"addressee\" field.\n\n- - - - -\n\nOther tips:\n\nWithin any given cue you can also use the special \"event\" message to help the conductor keep track of the flow of Events in the piece. Simply write\n\nevent 1;\n\nand this event number will be displayed on the conductor's patch when that cue is triggered. Not that this does NOT go to any players. An actual Event change happens whenever the player hits Shift-N in his or her laptop (possibly prompted by the conductor in some way). The special \"event\" message within the \"messages\" cue file simply helps the conductor to keep track of them.\nDepending on the piece, this feature may or may not be useful.\n\n* While composing my piece, and especially after the first rehearsal, I soon realized that the way musical ideas are coded into words and sentences is a crucial part of the composition process. A poor word choice or sentence construction sometimes may suggest a manner of performing the instrument that does not really reflect the intended musical idea.\n\nAlso, messages have to be concise, clear, short, twitter-style, and yet they have to convey all necessary information for the players to get the kinds of sounds, textures, behaviors you want.",
									"linecount" : 109,
									"presentation_linecount" : 127,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 912.231201, 421.70343, 450.0, 2635.0 ],
									"patching_rect" : [ 16.0, 15.0, 612.0, 2263.0 ],
									"presentation" : 1,
									"id" : "obj-8",
									"fontname" : "Arial",
									"frgb" : [ 0.564706, 0.196078, 0.031373, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.564706, 0.196078, 0.031373, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(cmd + M to open Max windows)",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 22.0, 777.0, 184.0, 20.0 ],
					"patching_rect" : [ 361.0, 859.0, 241.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-64",
					"fontname" : "Arial Italic",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Print in the Max window all numbers already used:",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 37.0, 721.0, 154.0, 34.0 ],
					"patching_rect" : [ 346.0, 844.0, 241.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-60",
					"fontname" : "Arial Italic",
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1387.0, 653.0, 20.0, 20.0 ],
					"id" : "obj-58",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "dump",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1387.0, 679.0, 41.0, 18.0 ],
					"id" : "obj-53",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print list of saved Presets",
					"linecount" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"presentation_rect" : [ 34.0, 756.0, 157.0, 18.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1387.0, 615.0, 101.0, 32.0 ],
					"presentation" : 1,
					"id" : "obj-6",
					"fontname" : "Arial Bold",
					"numinlets" : 2,
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1343.0, 618.0, 20.0, 20.0 ],
					"id" : "obj-51",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "write file",
					"fontsize" : 24.0,
					"numoutlets" : 1,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 600.255127, 649.0, 110.0, 32.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1342.0, 562.0, 108.0, 32.0 ],
					"presentation" : 1,
					"id" : "obj-42",
					"fontname" : "Arial Bold",
					"bgcolor2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 2,
					"textcolor" : [ 0.815686, 0.360784, 0.156863, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Once you are happy with the Presets you have created, click on \"write file\" to save all data into a text file. Save it in the \"txt\" folder inside the main patch folder. Give it a name like \"mypiece_presets.txt\", replacing \"mypiece\" for anything you want. Be sure to keep the ending \"_presets.txt\" in the name.",
					"linecount" : 9,
					"presentation_linecount" : 9,
					"fontsize" : 13.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 563.0, 494.0, 214.0, 141.0 ],
					"patching_rect" : [ 549.0, 507.0, 237.0, 141.0 ],
					"presentation" : 1,
					"id" : "obj-8",
					"fontname" : "Arial",
					"frgb" : [ 0.501961, 0.2, 0.054902, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.501961, 0.2, 0.054902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3. Write Presets file",
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 562.0, 461.0, 174.0, 27.0 ],
					"patching_rect" : [ 548.0, 476.0, 248.0, 27.0 ],
					"presentation" : 1,
					"id" : "obj-37",
					"fontname" : "Arial Bold",
					"frgb" : [ 0.501961, 0.2, 0.05098, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.501961, 0.2, 0.05098, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "write",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1338.0, 654.0, 36.0, 18.0 ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s to-presets-coll",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 1337.0, 708.0, 95.0, 20.0 ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1021.0, 625.0, 81.0, 20.0 ],
					"id" : "obj-3",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Edit the file \"mypiece_messages.txt\" to define performance instructions (cues) to be sent out to the players. This may include anything from announcing Event changes to suggesting how to change particular parameters.\nThe text file with cue messages should look something like this:\n\n\n\n\nClick below for more info for details on the syntax",
					"linecount" : 12,
					"presentation_linecount" : 12,
					"fontsize" : 14.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 428.0, 1440.0, 319.0, 200.0 ],
					"patching_rect" : [ 396.0, 1402.0, 357.0, 200.0 ],
					"presentation" : 1,
					"id" : "obj-103",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2) mypiece_messages.txt",
					"fontsize" : 21.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 444.0, 1377.0, 264.0, 31.0 ],
					"patching_rect" : [ 404.0, 1359.0, 264.0, 31.0 ],
					"presentation" : 1,
					"id" : "obj-318",
					"fontname" : "Arial Bold",
					"frgb" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- click for more info on Events",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 612.0, 1270.0, 182.0, 20.0 ],
					"patching_rect" : [ 673.0, 1228.0, 181.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-99",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"presentation_rect" : [ 591.0, 1270.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 653.0, 1228.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-100",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p events_moreinfo",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 653.0, 1256.0, 109.0, 20.0 ],
					"id" : "obj-101",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 292.0, 63.0, 655.0, 944.0 ],
						"bglocked" : 0,
						"defrect" : [ 292.0, 63.0, 655.0, 944.0 ],
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 630.0, 34.0, 25.0, 25.0 ],
									"hidden" : 1,
									"id" : "obj-3",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 630.0, 67.0, 35.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 630.0, 93.0, 69.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "TIPS:\n\n* The \"Events\" structure was designed with the idea that Events would be triggered sequentially (1, 2, 3, 4...) in a \"timeline\" fashion, following signals given by the conductor. A new Event give \"starting point\" to the players, from which they will depart by playing with the various parameters. It is possible, however, to trigger Events non-sequentially. This can be useful not only during rehearsals (\"now let's take from Event 5\"), but also in a piece in which players can choose any new Events in real-time.\n\n* Initially, I designed the \"Events\" structure thinking I would ALWAYS want them to be triggered simultaneously by all players (\"everyone moves from Event 3 to 4 now\"). With practice, I found numerous musical situations in which a \"phased\" Event change is necessary. For example, a subset of players would move from Event 3 to Event 4 at the next conductor's signal, while the remaining players would be instructed to keep playing in Event 3 until a later signal from the conductor.\n\n* Suppose you want a particular voice (say, \"f\") to be silent at the start of an Event (say, Event 3). In order to accomplish this, simply assign to voice f a Preset that has a Gain value of -99 dB.\n\n* One voice (instrumental part) does not necessarily mean one single individual player. Think of a 'voice' just like in acoustic music: in an orchestra, the same 'violin 2' part is played by several musicians at the same time; in a choir, the the 'soprano' line is sung by several singers. On the other hand, in a a string quartet, the part 'violin 2' is actually played by one person only. In the case of this system for a laptop ensemble, you might for example compose four different voices (say, a, b, c, d), and have it played by 8 laptop performers (two musicians per part).\n\n* The file \"mypiece_events.txt\" has particular beginning and ending lines enclosing the actual content of your Events:\n\n------------------------ 0;\n[content; usually empty]\n0 0;\n------------------------ 1;\n[content]\n0 1;\n------------------------ 2;\n[content]\n0 2;\n\nThese enclosing lines are NOT merely decorative. You must keep them as they are (including the proper number of dashes). Best thing to do is to simply copy and paste by blocks and change only the values you need (the content, and the Event number in the enclosing lines). Not that the second number in the line ending an Event (such as \"0 2;\") must match the Event number in the first line (------------------------ 2;).",
									"linecount" : 50,
									"presentation_linecount" : 63,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 912.231201, 421.70343, 445.0, 1310.0 ],
									"patching_rect" : [ 15.0, 15.0, 611.0, 1041.0 ],
									"presentation" : 1,
									"id" : "obj-8",
									"fontname" : "Arial",
									"frgb" : [ 0.068238, 0.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.068238, 0.0, 1.0, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"presentation_rect" : [ 280.0, 1167.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 878.0, 1026.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-96",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcher qlist-example",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 878.0, 1055.0, 131.0, 20.0 ],
					"id" : "obj-93",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 29.0, 69.0, 529.0, 656.0 ],
						"bglocked" : 0,
						"defrect" : [ 29.0, 69.0, 529.0, 656.0 ],
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "lines starting with \"score_call-preset\" are the content of an Event",
									"linecount" : 3,
									"presentation_linecount" : 3,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 227.0, 294.0, 298.0, 69.0 ],
									"patching_rect" : [ 228.0, 292.0, 245.0, 69.0 ],
									"presentation" : 1,
									"id" : "obj-13",
									"fontname" : "Arial Bold",
									"frgb" : [ 0.49424, 0.037766, 0.505287, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.49424, 0.037766, 0.505287, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Note that all lines have to end with a semicolon",
									"presentation_linecount" : 2,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 21.0, 490.0, 298.0, 48.0 ],
									"patching_rect" : [ 20.0, 602.0, 415.0, 27.0 ],
									"presentation" : 1,
									"id" : "obj-12",
									"fontname" : "Arial Bold",
									"frgb" : [ 0.49424, 0.037766, 0.505287, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.49424, 0.037766, 0.505287, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "|\n|\n|\n|\n",
									"linecount" : 4,
									"presentation_linecount" : 4,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 279.0, 604.0, 298.0, 110.0 ],
									"patching_rect" : [ 259.0, 178.0, 23.0, 89.0 ],
									"presentation" : 1,
									"id" : "obj-10",
									"fontname" : "Arial Bold",
									"frgb" : [ 0.49424, 0.037766, 0.505287, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.49424, 0.037766, 0.505287, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<---------",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 79.0, 534.0, 298.0, 27.0 ],
									"patching_rect" : [ 191.0, 251.0, 75.0, 27.0 ],
									"presentation" : 1,
									"id" : "obj-9",
									"fontname" : "Arial Bold",
									"frgb" : [ 0.49424, 0.037766, 0.505287, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.49424, 0.037766, 0.505287, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<---------",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 64.0, 519.0, 298.0, 27.0 ],
									"patching_rect" : [ 191.0, 166.0, 75.0, 27.0 ],
									"presentation" : 1,
									"id" : "obj-8",
									"fontname" : "Arial Bold",
									"frgb" : [ 0.49424, 0.037766, 0.505287, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.49424, 0.037766, 0.505287, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "these lines are Event demarcators (mandatory)",
									"linecount" : 3,
									"presentation_linecount" : 2,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 203.0, 688.0, 298.0, 48.0 ],
									"patching_rect" : [ 278.0, 188.0, 180.0, 69.0 ],
									"presentation" : 1,
									"id" : "obj-7",
									"fontname" : "Arial Bold",
									"frgb" : [ 0.49424, 0.037766, 0.505287, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.49424, 0.037766, 0.505287, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<----------- Event 0 is always empty",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 49.0, 504.0, 298.0, 27.0 ],
									"patching_rect" : [ 191.0, 133.0, 298.0, 27.0 ],
									"presentation" : 1,
									"id" : "obj-4",
									"fontname" : "Arial Bold",
									"frgb" : [ 0.49424, 0.037766, 0.505287, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.49424, 0.037766, 0.505287, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "------------------------ 0;\n0 0;\n------------------------ 1;\nscore_call-preset a 140;\nscore_call-preset b 147;\nscore_call-preset c 140;\n0 1;\n------------------------ 2;\nscore_call-preset a 140;\nscore_call-preset b 147;\nscore_call-preset c 140;\n0 2;\n------------------------ 3;\nscore_call-preset a 120;\nscore_call-preset b 147;\nscore_call-preset c 140;\n0 3;\n------------------------ 4;\nscore_call-preset a 120;\nscore_call-preset b 147;\nscore_call-preset c 140;\n0 4;",
									"linecount" : 22,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"patching_rect" : [ 21.0, 126.0, 203.0, 462.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 414.0, 351.0, 25.0, 25.0 ],
									"hidden" : 1,
									"id" : "obj-6",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 414.0, 384.0, 35.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 414.0, 408.0, 69.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Example of Events text file consisting of three voices (instrumental parts), 'a', 'b', and 'c', playing Preset numbers 140, 147 etc.",
									"linecount" : 3,
									"presentation_linecount" : 5,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 1034.0, 651.0, 298.0, 110.0 ],
									"patching_rect" : [ 19.0, 26.0, 469.0, 69.0 ],
									"presentation" : 1,
									"id" : "obj-94",
									"fontname" : "Arial Bold",
									"frgb" : [ 0.49424, 0.037766, 0.505287, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.49424, 0.037766, 0.505287, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "An \"Event\" consists of a set of Presets that will be played simultaneously by the players. The combination of Presets into Events has to be defined in advance in a text file (\"mypiece_events.txt\"), which is saved in the txt folder inside Catork's main folder.\n\nCreate your Events text file in your favorite text editor. Each Event should consist of lines assigning a preset number to each \"voice\" (instrumental part) of the piece, one line per voice.\n\nTwenty-six voices (instrumental parts) are available to the composer, labeled from a to z:\na, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z\n\nYou don't necessarily have to write music for all 26 voices available. If your music is more like a trio, feel free to use simply a, b, and c, for example. In this case, your \"mypiece_events.txt\" should look something like this (click to see):\n\nIt is the task of the player to specify which voice (instrumental part) s/he will play. This is done under checklist item number 2: \"load piece\".",
					"linecount" : 16,
					"presentation_linecount" : 16,
					"fontsize" : 16.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 40.0, 944.0, 729.0, 301.0 ],
					"patching_rect" : [ 70.0, 917.0, 827.0, 301.0 ],
					"presentation" : 1,
					"id" : "obj-45",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Events: the \"orchestration\" step",
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 233.0, 895.0, 297.0, 27.0 ],
					"patching_rect" : [ 837.0, 947.0, 320.0, 27.0 ],
					"presentation" : 1,
					"id" : "obj-90",
					"fontname" : "Arial Bold",
					"frgb" : [ 0.74902, 0.34902, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.74902, 0.34902, 0.101961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Current corpus:",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 397.0, 747.0, 93.0, 20.0 ],
					"patching_rect" : [ 309.0, 801.0, 241.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-88",
					"fontname" : "Arial Italic",
					"frgb" : [ 0.145098, 0.07451, 0.376471, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.145098, 0.07451, 0.376471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Last recalled:",
					"fontsize" : 14.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 322.255127, 653.0, 101.0, 23.0 ],
					"patching_rect" : [ 462.0, 740.0, 136.0, 23.0 ],
					"presentation" : 1,
					"id" : "obj-85",
					"fontname" : "Arial Bold Italic",
					"frgb" : [ 0.058808, 0.439231, 0.0, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.058808, 0.439231, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 0",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1243.0, 532.0, 37.0, 18.0 ],
					"id" : "obj-78",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontsize" : 24.0,
					"numoutlets" : 1,
					"presentation_rect" : [ 342.255127, 677.0, 60.0, 32.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 1,
					"patching_rect" : [ 1092.0, 678.0, 79.0, 32.0 ],
					"presentation" : 1,
					"id" : "obj-79",
					"fontname" : "Arial Bold",
					"numinlets" : 2,
					"textcolor" : [ 0.054887, 0.427466, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "recall",
					"fontsize" : 24.0,
					"numoutlets" : 1,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 334.255127, 609.0, 76.0, 32.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1135.0, 529.0, 74.0, 32.0 ],
					"presentation" : 1,
					"id" : "obj-80",
					"fontname" : "Arial Bold",
					"bgcolor2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 2,
					"textcolor" : [ 0.115633, 0.99469, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"ignoreclick" : 1,
					"patching_rect" : [ 1135.0, 581.0, 28.0, 28.0 ],
					"id" : "obj-81",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "i",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1152.0, 633.0, 32.5, 20.0 ],
					"id" : "obj-82",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 36.0,
					"numoutlets" : 2,
					"presentation_rect" : [ 326.255127, 549.916504, 88.0, 48.0 ],
					"outlettype" : [ "int", "bang" ],
					"tricolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 1171.255127, 578.916504, 88.0, 48.0 ],
					"presentation" : 1,
					"id" : "obj-83",
					"fontname" : "Arial Bold",
					"bordercolor" : [ 0.0, 0.701961, 0.101961, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.053101, 0.454978, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s composer_recall-preset",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 1179.658081, 680.987061, 145.0, 20.0 ],
					"id" : "obj-84",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 0",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 988.0, 532.0, 37.0, 18.0 ],
					"id" : "obj-77",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Last saved:",
					"fontsize" : 14.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 66.255127, 653.0, 89.0, 23.0 ],
					"patching_rect" : [ 105.0, 768.0, 136.0, 23.0 ],
					"presentation" : 1,
					"id" : "obj-75",
					"fontname" : "Arial Bold Italic",
					"frgb" : [ 0.984054, 0.102983, 0.0, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.984054, 0.102983, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- click for more info on Presets",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 615.0, 835.0, 182.0, 20.0 ],
					"patching_rect" : [ 640.0, 802.0, 181.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-71",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"presentation_rect" : [ 594.0, 835.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 620.0, 802.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-72",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p presets_moreinfo",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 620.0, 830.0, 113.0, 20.0 ],
					"id" : "obj-73",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 396.0, 44.0, 666.0, 530.0 ],
						"bglocked" : 0,
						"defrect" : [ 396.0, 44.0, 666.0, 530.0 ],
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 648.0, 202.0, 25.0, 25.0 ],
									"hidden" : 1,
									"id" : "obj-3",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 648.0, 235.0, 35.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 648.0, 261.0, 69.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Explore a corpus, Play around, Save presets.\n\n- Navigate with the cursor on the lcd\n- Change grain parameters (via keyboard)\n- Experiment with various trigger methods\n- Change lcd axes\n\nOnce you find a setting you would like to save as a preset, choose a number and type it in the box, then click on the \"Save\" button.\n\nBe careful to take notes of which numbers you have already used. If by mistake you use the same number twice, the new preset will overwrite the previous one, without mercy, no questions asked. Your favorite old preset may be gone forever.\n\nI found it useful to save my presets organized in \"families\" of numbers, as follows:\n\n- By corpus: for example, numbers between 100-199 were reserved for presets defined under \"corpus-1\" only; numbers between 200-299 for \"corpus-2\" only, and so on.\n\n- By similarity: for example, within \"corpus-1\" presets,\n100-109 = \"variations of the same low drone\";\n110-119 = \"sparse textures in the high register\";\n120-129 = \"cymbals / trigger mode fence\"\n\nThese are just examples. With practice you should find custom ways of meaningfully organizing the numbering of your presets according to your own musical project.\n\nThis is an example of what gets saved in a preset:\n\n* corpus corpus-drums-violin\n* trigger 2\n* set-descriptors Relstart Shift Pitch\n* rate 1318\n* rate_std 6\n* size 68\n* size_std 90\n* xfade 102\n* transposition 9.4\n* transposition_std 4.4\n* gain -44.\n* gain_std 5.5\n* reverse 52\n* onset_std 1\n* radius 1.\n* setpos 0.43609 0.453634\n* freeze 1",
									"linecount" : 50,
									"presentation_linecount" : 54,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 912.231201, 421.70343, 435.0, 1124.0 ],
									"patching_rect" : [ 15.0, 15.0, 603.0, 1041.0 ],
									"presentation" : 1,
									"id" : "obj-8",
									"fontname" : "Arial",
									"frgb" : [ 0.068238, 0.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.068238, 0.0, 1.0, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r current-corpus",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1033.0, 766.0, 95.0, 20.0 ],
					"id" : "obj-120",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "corpus-noisy",
					"fontface" : 1,
					"fontsize" : 14.0,
					"numoutlets" : 1,
					"bgcolor" : [ 0.87451, 0.815686, 0.815686, 0.0 ],
					"presentation_rect" : [ 491.0, 746.0, 143.0, 21.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 1,
					"patching_rect" : [ 938.0, 794.0, 111.0, 21.0 ],
					"presentation" : 1,
					"id" : "obj-131",
					"fontname" : "Trebuchet MS Italic",
					"bgcolor2" : [ 1.0, 0.988235, 0.988235, 1.0 ],
					"numinlets" : 2,
					"textcolor" : [ 0.145098, 0.07451, 0.376471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Type in a number and click \"Save\"",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 859.0, 490.0, 195.0, 20.0 ],
					"id" : "obj-69",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 852.0, 778.0, 20.0, 20.0 ],
					"id" : "obj-68",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "import",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 852.0, 802.0, 44.0, 18.0 ],
					"id" : "obj-66",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontsize" : 24.0,
					"numoutlets" : 1,
					"presentation_rect" : [ 74.255127, 677.0, 60.0, 32.0 ],
					"outlettype" : [ "" ],
					"ignoreclick" : 1,
					"patching_rect" : [ 837.0, 678.0, 79.0, 32.0 ],
					"presentation" : 1,
					"id" : "obj-63",
					"fontname" : "Arial Bold",
					"numinlets" : 2,
					"textcolor" : [ 0.984054, 0.102983, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "save",
					"fontsize" : 24.0,
					"numoutlets" : 1,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 69.255127, 609.0, 64.0, 32.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 880.0, 529.0, 74.0, 32.0 ],
					"presentation" : 1,
					"id" : "obj-61",
					"fontname" : "Arial Bold",
					"bgcolor2" : [ 1.0, 0.988235, 0.988235, 1.0 ],
					"numinlets" : 2,
					"textcolor" : [ 0.984054, 0.102983, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Explore a corpus. Once you find settings you like, choose a new Preset number and click \"save\".",
					"linecount" : 3,
					"presentation_linecount" : 3,
					"fontsize" : 13.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 27.0, 494.0, 223.0, 51.0 ],
					"patching_rect" : [ 40.0, 510.0, 209.0, 51.0 ],
					"presentation" : 1,
					"id" : "obj-59",
					"fontname" : "Arial",
					"frgb" : [ 0.984054, 0.102983, 0.0, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.984054, 0.102983, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"ignoreclick" : 1,
					"patching_rect" : [ 880.0, 581.0, 28.0, 28.0 ],
					"id" : "obj-57",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "i",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 897.0, 633.0, 32.5, 20.0 ],
					"id" : "obj-55",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Click here to load a different corpus:",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 397.0, 767.0, 205.0, 20.0 ],
					"patching_rect" : [ 331.0, 829.0, 241.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-46",
					"fontname" : "Arial Italic",
					"frgb" : [ 0.145098, 0.07451, 0.376471, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.145098, 0.07451, 0.376471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load corpus",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"presentation_rect" : [ 623.0, 768.0, 80.0, 18.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 852.0, 756.0, 127.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-47",
					"fontname" : "Arial Bold",
					"numinlets" : 2,
					"textcolor" : [ 0.145098, 0.07451, 0.376471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s import-saved-corpus",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 852.471252, 824.398682, 129.0, 20.0 ],
					"id" : "obj-48",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Revisit your previously saved Presets. Simply type in the number of an existing Preset and click \"recall\".",
					"linecount" : 3,
					"presentation_linecount" : 3,
					"fontsize" : 13.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 284.0, 494.0, 232.0, 51.0 ],
					"patching_rect" : [ 298.0, 511.0, 232.0, 51.0 ],
					"presentation" : 1,
					"id" : "obj-49",
					"fontname" : "Arial",
					"frgb" : [ 0.053101, 0.454978, 0.0, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.053101, 0.454978, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2. Recall Presets",
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 285.0, 461.0, 248.0, 27.0 ],
					"patching_rect" : [ 293.0, 476.0, 248.0, 27.0 ],
					"presentation" : 1,
					"id" : "obj-50",
					"fontname" : "Arial Bold",
					"frgb" : [ 0.053101, 0.454978, 0.0, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.053101, 0.454978, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1. Save Presets",
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 27.0, 461.0, 156.0, 27.0 ],
					"patching_rect" : [ 19.0, 476.0, 248.0, 27.0 ],
					"presentation" : 1,
					"id" : "obj-52",
					"fontname" : "Arial Bold",
					"frgb" : [ 0.984054, 0.102983, 0.0, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.984054, 0.102983, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 36.0,
					"numoutlets" : 2,
					"presentation_rect" : [ 58.255127, 549.916504, 88.0, 48.0 ],
					"outlettype" : [ "int", "bang" ],
					"tricolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 916.255127, 578.916504, 88.0, 48.0 ],
					"presentation" : 1,
					"id" : "obj-40",
					"fontname" : "Arial Bold",
					"bordercolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.984054, 0.102983, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s composer_save-preset",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 924.658081, 680.987061, 142.0, 20.0 ],
					"id" : "obj-54",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- click for more info on Corpora",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 616.0, 395.0, 184.0, 20.0 ],
					"patching_rect" : [ 641.0, 359.0, 185.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-43",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"presentation_rect" : [ 596.0, 394.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 621.0, 359.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-41",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p samples_moreinfo",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 621.0, 387.0, 119.0, 20.0 ],
					"id" : "obj-39",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 527.0, 218.0, 787.0, 736.0 ],
						"bglocked" : 0,
						"defrect" : [ 527.0, 218.0, 787.0, 736.0 ],
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 110.0, 698.0, 25.0, 25.0 ],
									"hidden" : 1,
									"id" : "obj-3",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 110.0, 731.0, 35.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 110.0, 757.0, 69.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Whether you will be working with only one corpus or with several corpora is up to you. One could imagine, for example, a composition organized around corpora separated by categories such as \"vocal sounds\", \"trombone\", \"beatles songs\", \"water+metal sounds\", etc.\n\nI found it useful to give short and concise names for corpora, either with numbers or with short meaningful reminders of what they are:\n\ncorpus1\ncorpus2\ncorpus3\n...\n\nor\n\ncorpus-noisy\ncorpus-piano\ncorpus-mahler\ncorpus-drums-violin\n...\n\nYou might also like to start all corpus names with the same tag (such as \"corpus-\") so it will be easier to find them later (for example, in a \"Open\" dialog box that will display files alphabetically in the concert folder)",
									"linecount" : 25,
									"presentation_linecount" : 42,
									"fontsize" : 24.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 912.231201, 421.70343, 294.0, 1166.0 ],
									"patching_rect" : [ 15.0, 15.0, 746.0, 696.0 ],
									"presentation" : 1,
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Your corpus has been saved here:",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 455.0, 248.0, 193.0, 20.0 ],
					"patching_rect" : [ 400.0, 354.0, 193.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-38",
					"fontname" : "Arial Italic",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 835.0, 202.0, 20.0, 20.0 ],
					"id" : "obj-23",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf symout %s%s",
					"fontsize" : 11.595187,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 890.13855, 248.86853, 167.0, 20.0 ],
					"id" : "obj-24",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend export",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 890.405029, 276.997101, 91.0, 20.0 ],
					"id" : "obj-25",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t s b s",
					"fontsize" : 12.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "bang", "" ],
					"patching_rect" : [ 876.061768, 174.643158, 181.0, 20.0 ],
					"id" : "obj-26",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\"Macintosh HD:/Users/ruviaro/Music/MaxMSP_Data/patches_bruno/SLOrk_2010/Laptop_Orchestra_Blank_Composer_Patch/corpus-mixx\"",
					"linecount" : 4,
					"presentation_linecount" : 3,
					"fontsize" : 11.595187,
					"numoutlets" : 1,
					"presentation_rect" : [ 392.523804, 269.327637, 340.0, 44.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 874.523804, 329.327637, 235.0, 58.0 ],
					"presentation" : 1,
					"id" : "obj-27",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 956.704346, 197.444885, 20.0, 20.0 ],
					"id" : "obj-20",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "opendialog fold",
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 957.387329, 220.565735, 89.0, 20.0 ],
					"id" : "obj-28",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A corpus is a set of one or more imported audio files. Once saved, you can recall it later without having to import all the sound files again. Type your corpus name in the textedit box below and hit \"enter\". Save in the same folder as the main patch.",
					"linecount" : 6,
					"presentation_linecount" : 4,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 383.0, 68.0, 364.0, 62.0 ],
					"patching_rect" : [ 380.0, 80.0, 248.0, 89.0 ],
					"presentation" : 1,
					"id" : "obj-29",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r lb",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 876.0, 40.0, 27.0, 20.0 ],
					"id" : "obj-30",
					"fontname" : "Arial",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 876.0, 138.0, 61.0, 20.0 ],
					"id" : "obj-31",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2. Save corpus",
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 381.0, 40.0, 248.0, 27.0 ],
					"patching_rect" : [ 381.0, 51.0, 248.0, 27.0 ],
					"presentation" : 1,
					"id" : "obj-32",
					"fontname" : "Arial Bold",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s current-corpus",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 856.48999, 219.997955, 97.0, 20.0 ],
					"id" : "obj-33",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s composer_save-corpus",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 890.168213, 300.40863, 145.0, 20.0 ],
					"id" : "obj-34",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 24.0,
					"numoutlets" : 4,
					"keymode" : 1,
					"presentation_rect" : [ 426.0, 182.0, 245.0, 34.0 ],
					"outlettype" : [ "", "int", "", "" ],
					"patching_rect" : [ 876.0, 97.0, 245.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-35",
					"fontname" : "Arial Bold",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 876.0, 75.0, 37.0, 18.0 ],
					"id" : "obj-36",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Click \"import\" to select audio files one at a time, or drag and drop a folder of audio files below to import many at once.\nWatch import progress in the Max Window.",
					"linecount" : 4,
					"presentation_linecount" : 4,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 71.0, 69.0, 236.0, 62.0 ],
					"patching_rect" : [ 15.0, 89.0, 244.0, 62.0 ],
					"presentation" : 1,
					"id" : "obj-11",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1. Import samples",
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 70.0, 40.0, 239.0, 27.0 ],
					"patching_rect" : [ 15.0, 60.0, 239.0, 27.0 ],
					"presentation" : 1,
					"id" : "obj-22",
					"fontname" : "Arial Bold",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "or ",
					"fontsize" : 24.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 161.0, 195.0, 39.0, 34.0 ],
					"patching_rect" : [ 45.0, 265.0, 67.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-21",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "drag and drop folder\nwith audio files here",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 117.319702, 292.311798, 132.0, 34.0 ],
					"patching_rect" : [ 29.209229, 322.864441, 162.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-16",
					"fontname" : "Arial Bold",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"numoutlets" : 2,
					"presentation_rect" : [ 90.0, 241.0, 178.244797, 142.756592 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 12.889526, 301.552612, 178.244797, 62.756584 ],
					"presentation" : 1,
					"id" : "obj-17",
					"bordercolor" : [ 0.74902, 0.301961, 0.101961, 1.0 ],
					"types" : [  ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "import",
					"fontsize" : 24.0,
					"numoutlets" : 1,
					"presentation_rect" : [ 138.0, 158.0, 79.0, 32.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 183.0, 84.0, 32.0 ],
					"presentation" : 1,
					"id" : "obj-18",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s composer_import-audio-folder",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 12.972443, 372.759186, 180.0, 20.0 ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s composer_import-audio-file",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 15.0, 243.0, 165.0, 20.0 ],
					"id" : "obj-19",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 795.0, 0.0, 17.0, 1730.0 ],
					"id" : "obj-10",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "SAMPLES legal",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 810.0, 0.0, 155.0, 20.0 ],
					"id" : "obj-4",
					"fontname" : "Arial Bold",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1181.0, 44.0, 69.0, 20.0 ],
					"hidden" : 1,
					"id" : "obj-2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1181.0, 11.0, 25.0, 25.0 ],
					"hidden" : 1,
					"id" : "obj-1",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"presentation_rect" : [ 391.0, 745.0, 336.0, 45.0 ],
					"patching_rect" : [ 853.0, 651.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-65",
					"bordercolor" : [ 0.145098, 0.07451, 0.376471, 1.0 ],
					"border" : 2,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bgcolor" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"background" : 1,
					"presentation_rect" : [ 0.0, 1310.0, 797.0, 420.0 ],
					"patching_rect" : [ 0.0, 1310.0, 797.0, 420.0 ],
					"presentation" : 1,
					"id" : "obj-15",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bgcolor" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"background" : 1,
					"presentation_rect" : [ 0.0, 875.0, 797.0, 420.0 ],
					"patching_rect" : [ 0.0, 875.0, 797.0, 420.0 ],
					"presentation" : 1,
					"id" : "obj-14",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bgcolor" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"background" : 1,
					"presentation_rect" : [ -1.0, 440.0, 797.0, 420.0 ],
					"patching_rect" : [ 0.0, 440.0, 797.0, 420.0 ],
					"presentation" : 1,
					"id" : "obj-13",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bgcolor" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"background" : 1,
					"presentation_rect" : [ 0.0, 0.0, 797.0, 420.0 ],
					"patching_rect" : [ 0.0, 0.0, 797.0, 420.0 ],
					"presentation" : 1,
					"id" : "obj-12",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 2 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"midpoints" : [ 1047.561768, 204.363525, 1047.63855, 204.363525 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 966.887329, 245.717133, 899.63855, 245.717133 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 885.561768, 207.296021, 865.98999, 207.296021 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 0,
					"midpoints" : [ 899.63855, 272.020996, 1100.023804, 272.020996 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 885.561768, 197.821594, 844.5, 197.821594 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 844.5, 231.0, 831.0, 231.0, 831.0, 65.0, 885.5, 65.0 ]
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
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-55", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-63", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-120", 0 ],
					"destination" : [ "obj-131", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [ 906.5, 666.0, 865.0, 666.0, 865.0, 514.0, 997.5, 514.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1161.5, 666.0, 1120.0, 666.0, 1120.0, 514.0, 1252.5, 514.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-79", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-82", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 0 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
