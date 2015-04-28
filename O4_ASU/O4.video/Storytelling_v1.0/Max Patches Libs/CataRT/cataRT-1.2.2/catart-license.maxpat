{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 2.0, 45.0, 1049.0, 784.0 ],
		"bglocked" : 0,
		"defrect" : [ 2.0, 45.0, 1049.0, 784.0 ],
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
					"maxclass" : "newobj",
					"text" : "s CATART.license.printed",
					"numoutlets" : 0,
					"hidden" : 1,
					"patching_rect" : [ 94.0, 847.0, 125.0, 17.0 ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r CATART.license.printed",
					"numoutlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 94.0, 800.0, 125.0, 17.0 ],
					"id" : "obj-6",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"ftm_scope" : 1,
					"#loadbang" : 1,
					"numoutlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 30.0, 824.0, 70.426758, 17.0 ],
					"id" : "obj-10",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"#init" : "0 0",
					"#triggerall" : 0,
					"text" : [ "_(if (not $2) 1)" ],
					"#untuple" : 0,
					"fontsize" : 9.0,
					"presentation_rect" : [ 30.0, 824.0, 70.426758, 17.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print CataRT-license",
					"numoutlets" : 0,
					"hidden" : 1,
					"patching_rect" : [ 30.0, 960.0, 92.0, 17.0 ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"linecount" : 6,
					"presentation_linecount" : 6,
					"ftm_scope" : 2,
					"#loadbang" : 0,
					"numoutlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 30.0, 885.0, 518.251465, 77.0 ],
					"id" : "obj-12",
					"outlettype" : [ "" ],
					"fontname" : "Geneva",
					"#init" : "",
					"#triggerall" : 0,
					"text" : [ "_CataRT - Copyright 2005-2009 by Diemo Schwarz, Real-Time Music Interaction Team IMTR, Ircam--Centre Pompidou,", "_CataRT is essentially based on FTM&Co. by Norbert Schnell et al.,", "_For more information see http://imtr.ircam.fr,", "_' ',", "_This program is free software distributed under the terms of the Ircam FORUM libre license.,", "_See file catart-license.maxpat for further informations on licensing terms." ],
					"#untuple" : 0,
					"fontsize" : 9.0,
					"presentation_rect" : [ 30.0, 885.0, 518.251465, 77.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "cf. le fichier 'contrat-2008-forum-libre.pdf' dans la distribution de CataRT",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 45.0, 414.0, 20.0 ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"presentation_rect" : [ 63.0, 45.0, 0.0, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "see also the file 'contrat-forum-2008-v4-LIBRES-FINAL-ENGLISH.pdf' included in the CataRT distribution",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 540.0, 45.0, 486.0, 34.0 ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"presentation_rect" : [ 60.0, 42.0, 0.0, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "English version of the CataRT license",
					"numoutlets" : 0,
					"patching_rect" : [ 540.0, 15.0, 331.0, 25.0 ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"presentation_rect" : [ 579.0, 15.0, 0.0, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Version Française de la licence pour CataRT",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 15.0, 332.0, 25.0 ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "© CNAC-GP/IRCAM 2008 \npage 1/1 – version mars 2008 \n\nIRCAM Forum Free \nFreeware License Agreement \n \nArticle 1 – Conditions for Distribution and Use  \n\nThe software programs covered by this agreement are distributed in binary form only \nand are accompanied by examples. The user is free to create their own non- \ncommercial applications for scientific research, educational activities, and musical \nproduction. \n \nAny applications that result in a commercial product or service require separate \nwritten agreement with IRCAM.  \n\nArticle 2 – Ownership, Commercial Usage and Distribution \n\nAll software programs, elements of any software programs, and documents \ncopyrighted by IRCAM and distributed via the IRCAM Forum Free remain the \nproperty of IRCAM. These software programs cannot be rented, sold, or exchanged \nwithout prior consent from IRCAM. \n\nArticle 3 - Copyright  \n\nThe user is not authorized to modify or remove the names of the authors or the \nIRCAM copyright or the names of members present in any programs or \ndocumentation. The user is required to cite IRCAM during any presentation of any \nIRCAM software programs or their extensions.  \n\nArticle 4 - Disclaimer of Warranty \n\nThe software programs provided by IRCAM Forum Free are provided without \nwarranties of any kind. IRCAM disclaims all warranties, express or implied. In no \nevent will IRCAM be liable for damages, including any general, special, incidental or \nconsequential damages arising out of the use or inability to use the program The \nentire risk as to the quality and performance of the program is with the user. \n \nArticle 5 – Unauthorized Editions  \n\nAny independent development of IRCAM software programs that consist of a \nreproduction of a software program, or an element of any IRCAM software program \nwill be considered counterfeit and any commercial distribution of any counterfeit \nversion(s) will be considered an act of plagiarism.   \n\n (March 2008) ",
					"linecount" : 46,
					"numoutlets" : 4,
					"patching_rect" : [ 540.0, 90.0, 478.0, 671.0 ],
					"id" : "obj-3",
					"outlettype" : [ "", "int", "", "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"presentation_rect" : [ 603.0, 120.0, 0.0, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "© CNAC-GP/IRCAM 2008 \npage 1/1 – version mars 2008 \n\nLicence d’utilisation des logiciels du Forum Libre \nUtilisations permises de la licence \n \nArticle 1 - Conditions de distribution et d’utilisation \n \nLes logiciels couverts par cette licence sont distribués sous forme binaire seulement \net sont accompagnés d’exemples d’utilisation. L’utilisateur est libre de créer des \napplications non-commerciales dans les domaines de la recherche, l’enseignement \net la production musicale.  \n \nToute application donnant lieu à un produit ou à un service commercial nécessite \nl’accord préalable de l’Ircam. \n \nArticle 2 – Propriété et Exploitation commerciale \n\nL’Ircam reste propriétaire des logiciels ou portions des logiciels et des documents \nportant son copyright qu’il diffuse dans le cadre du Forum Libre. Les logiciels Ircam \nne peuvent être ni loués, ni vendus, ni échangés sans autorisation de l’Ircam. \n\nArticle 3 - Copyright et mentions obligatoires \n\nL’utilisateur doit laisser intactes toutes mentions des auteurs et copyright de l’Ircam \nou des membres figurant dans les programmes ou sur les documentations. Il \ns’engage également à mentionner le nom de l’Ircam lors de toute présentation des \nlogiciels Ircam ou de leurs extensions. \n\nArticle 4 - Exclusion de garantie-responsabilité \n\nLes logiciels fournis par le Forum ne peuvent être garantis contre tout \ndysfonctionnement ou pour un quelconque usage particulier. L’Ircam ne peut être \ntenu responsable des conséquences de l’utilisation de ses logiciels. Vous \nreconnaissez et admettez expressément que l’utilisation des logiciels Ircam est à vos \nrisques et périls. \n\nArticle 5 – Contrefaçon \n\nTout développement indépendant des logiciels de l’Ircam qui serait une reproduction \nde tout ou partie d’éléments des logiciels Ircam et qui serait accompagné ou non  \nd’une exploitation par l’utilisateur serait passible d’une action en contrefaçon.\n \n(Version mars 2008) ",
					"linecount" : 44,
					"numoutlets" : 4,
					"patching_rect" : [ 15.0, 90.0, 478.0, 671.0 ],
					"id" : "obj-2",
					"outlettype" : [ "", "int", "", "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
