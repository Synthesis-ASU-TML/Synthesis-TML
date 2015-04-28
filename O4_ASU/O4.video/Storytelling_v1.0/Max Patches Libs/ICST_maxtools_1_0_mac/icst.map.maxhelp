{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 2.0, 46.0, 800.0, 690.0 ],
		"bgcolor" : [ 0.980392, 0.980392, 0.980392, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 2.0, 46.0, 800.0, 690.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 12.0, 12.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 0,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 0,
		"enablevscroll" : 0,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 240.0, 244.0 ],
						"bgcolor" : [ 0.980392, 0.980392, 0.980392, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 240.0, 244.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 20.0, 20.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-1",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 51.0, 100.0, 15.0 ],
									"text" : "version"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 68.0, 100.0, 15.0 ],
									"text" : "report"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 121.0, 68.0, 17.0 ],
									"text" : "s to_icstMap"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 85.0, 100.0, 15.0 ],
									"text" : "intable_dump"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 102.0, 100.0, 15.0 ],
									"text" : "maptable_dump"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 169.0, 106.0, 17.0 ],
									"text" : "bgcolor 250 250 250"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-5", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 576.0, 555.777771, 140.0, 19.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"fontsize" : 9.0,
						"default_fontsize" : 9.0
					}
,
					"text" : "p misc."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 543.0, 44.0, 777.0, 640.0 ],
						"bgcolor" : [ 0.980392, 0.980392, 0.980392, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 543.0, 44.0, 777.0, 640.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 20.0, 20.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-1",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 39.0, 50.0, 335.0, 28.0 ],
									"text" : "be careful when using @buffer as a typed in attribute: the buffer might not have finsihed reading its file when the map-object loads. see below."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 39.0, 22.0, 286.0, 17.0 ],
									"text" : "the buffer attributes sets which buffer to read from."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 113.0, 100.0, 52.0, 15.0 ],
									"text" : "channel 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 430.0, 203.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 430.0, 203.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 20.0, 20.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"boxes" : [ 											{
												"box" : 												{
													"data" : [ 2518, "", "IBkSG0fBZn....PCIgDQRA..ADA...PKHX....Pha8E6....DLmPIQEBHf.B7g.YHB..IzXRDEDU3wY6c1dkypBD.d71AXIfk.oDLk.oDbKArDRJAsDzRPKAsDjRPKAt+XewieGPw0kM7bN4buutiFbhNByW5IDBA3vgCG6j+6pG.NbXSjmmC2tcC777.OOO3wiGPYY4UOrtTbFQ9CPccM750qqdXXMrW8UddNv4bnnn.DBATTT.bNGte+NjmmeBiziQYYoVmm5JeOBGVMUUUBJkd0CCqginuhhhlsshhBA.f.iwGcncJDEEIRRRNM4EBgvYDwhoooQDFFJZaau5ghUvQ0W..BDBs31+M+7XJkJxxxNM4+8dl63sPHDQUU0UOLrFNp9hwXylMRaa6hyDIIIQfPndCLS+LT9jjDA.P+wNKKSfwXA.fQdHQaaqVm65JuymHVJwwwPXXHPHjqdnXEXB80ymOgjjjQaS5Kjnnn9skllBcccPaaK774SnssEDBA774SP78Ctghhhd44bNHDBHMMEhiigttNnooADBADFFBooo6dLC..HDBXLF70WecJx6lIhERaaq.iwtkwnHmk9RdbGN6jllFwymO6+2LFaw+eIYYYhppp9YzLUl111E2u8PXX3nwloj2MSDKjWudATJEPHzUOTrBNK8kb1MSmcBiw...nqqqea444KNKHDBADBApqqA.9d1NCIOO2XiaFiAud8Zz3xHxeDKaNtFPHjnoo4pGFVCmg9JIIYwn0LUFYjNhhh1blPLFSDFFNa6gggF0uWgggZMyFUj2MSDKi77bHLLDvX7UOTrBNC8UZZJv47Qy.gy4q9cCv24fwRxHottd1LUj6iI86UTTjV4zhJx6LhXYTVV1egoi2io0W000.myWbYGCgy4.my6Mdw47Myr0kFmud8p2gsG04pRnT5hi2iHuyHhkwvmt438XR8UccMDGG26yC.91uGxnwLjzzzQeuDBY0aDkFWlNNKKKAJkBbNWY+XnBTJUqT0+sxez0XsDIIIZkrJKs+tHOLmpppesYF4uQLs9Rl6FK8Y506HDRTTTz+uyxxVLQ0Dhu8GxRYQKkRE..BJkZz6GpppVcrrG4MtQjrrLsBizRz119VGQYCrjgTYH81CIIItTbWCb5q0AgPZcc3Vxazkyz00A444ilt2dPlrKWcQkUWWCOd7XTEatkywlxWe8U+Tc4bN70WeAud8Z2N4a3ZrUYrGGGC9996565u.5nu9zXXXkOp7F0HRbb7nL26HH+wWmSTSh7l9jjDPHDPaaKfwX3986Ju9T45k888gGOd.HDBppp1cb+WxC9SorrDBBBfzzTfPHFcsz1Fpnu9TgPHZ8.wMk2PyNpOe6MIsssKF67eBhhhVL93DBQ4pbzfpWgP7cL6GtN6qXLXSrG80mBYYYZcu0VxarYhbFQM.gP.BgtjYiTVVt3SwQHzk0DZ3btKKU0.m9ZczUurk7iLhTWWCAAAfuu+r3RGDDzOcFNmC999Pbb7n8csoNlllBddd8EzSddNDDD.ddduc4AaEZryDYb9mRWWmVFQj5T44+QVdgoS7nyl777deJ466u34+vNE1ZxTWW2KSPP.DGGqj+xrM80OIXLVqGNuo7CmVhLhHSCoSSSi..nO0gaZZ5KyYIaU5vxkE.+q.iFtbfmOetYzbJJJtjkz.qziHVa6qcLjgqVtbuirjOU+dO59XBhhhDHDZTDpnT5nTEOJJRPHjQojdRRxrxeGiw8KKQF4NURc6q5b2VPW8yZx2u0hhh9ennT5nPikjjLKd6EEEitgXsu.STkhpDSaBgrZL7W5y6NllvHxzP7JMFqamiZ328Ow9bTxxxV77DgP85coLKEF7o0qA.vrv86LhbbLkQDu+8G6S6VNmCAAAPSSSeDRjKCYZ0JFGG2m9udddfXgFGu73VVVB2ueelLxPftUXgW6Xel344AXLFZZZlsc.fcOd777.Bg.UUU6Ze0868rzccccqtN4a2tA000Paa6tj41sa88TC..v22GvXLPoTfPHJ66MUO2ue+tRGOagg8pjsP2qMVU9oVUd974rDzAiwydpRVV1nogtvgZDGoJEe2w9L.9WlBNkvvPsx1ukNt687YO6mN6yVchqoe1ZYYpbNtkLS+ax9hpb6XLVoDk5JttwlPW8yZxOK5Lx70WhzAiKY8WmD44HUonJdRdXa7WkOAAAad7HDxpmep3rNYtgXSH6.Wp7YqYRI+8ZKmHu0uoDBYzwfPHPVVV+2KgPF4TeGWKyLhTWWOyHB.iMXrTnydWFvs2pTrttVoouVUUo7M.BgX1xTlxZFJ555Td5zqYDZuIjmsj8ka8ap7ZjspNTDB0+2QHzniCgPfjjDkhPlsnutBzMxUaI+LiHXLdT3yj+nK+uxrvb5MRXLd0LZ6HUo3UElNJkBoooit.VVF3SMB366Oac0RYFpSjYQ5zxHWUvXrU7hRhwX8yVXXmwRVVD.7cG7hPHPZZ5nG9z00MyGYwwwiL1r1LimhsnutBzMGZ1T9oquopppORGR+UvXr90itVgwkjjrpGyORUJxXrKqKdIiJk7bmRoKNVvX7h96gwX86OFiELF6PEUnpYfIrheL9IydSYT2jWKgPnYW6LUF40WS0wQQQJ86vT1aFqNz+KqU.eS0s1FpzY1TU9e0o8tPnVn79TfwXGtBo+j3H5qllldCWqYvhRoWVZ0Ke39dcxut5lsj2Xo8trgyZxoOtzxl9jAiwezETmtbD8UYYYeJMrl+5zIbylBSUfk5VbhaJ+tLisBMMMFq+MXxVk+eEppptrBRzF4H5K40dgggq1Xi9Mb84duEV2Yvrk7FsU.fwXi7x1Afus9ez9RxeMzs7s+zwD5Koi+mFEIatW2p6X+cxa7drZTTzgq7VYnecUf4bzsYx7oydzWCalQxqCcFQ1P9cMWHGWFaEELGyYO5qjjjQNSUFcxoa62.64VXDBoUTBem7tt8tkgtcp6Oc1i9ZZaUzzu1FtRRSS05sAnJx6LhXYbFQA6uLlPeI80mbIMm4RYN6nuMLKwMk7NiHVH+FZh01D5nuVq4NGEE06fUcMh366qbMcclUTrLrvpFZWUk2YDwBAiwtT5VCzQeslABJkBXLdWcYOSUXiGgttN30qWJWxE5HuyHhkha1H5gp5qsdMSPozKoUcZBjuIFTsnD0QdmQDKE45zckDuZnh95c9iP5a.aKzt444uswecD4cg30xIJJ5PuxR+zXM80vhkbqaKzon0NK.MJvRYV6pZHc0Udg3DdMZ53mGFis6WMmeh7onuju2lT0fftxKouGq5vgCG6AmOQb3vwgvYDwgCGGh+GbOftLFbkp6B....PRE4DQtJDXBB" ],
													"embed" : 1,
													"id" : "obj-1",
													"maxclass" : "fpic",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 50.0, 273.0, 45.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 12.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-2",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 193.0, 101.0, 141.0, 36.0 ],
													"text" : "N width of the window"
												}

											}
, 											{
												"box" : 												{
													"data" : [ 893, "", "IBkSG0fBZn....PCIgDQRA...vH....EHX....vW0WMD....DLmPIQEBHf.B7g.YHB..CPSRDEDUnEX6ZtdiiBCEE9vpsA7TBNkfSI3TBNkfmRvSI.kfoDfRvTBjRvtDfR3t+XFh.hYVXBjjUKeRHEEP1mfO49vPBQDgc1Yl7qms.14eK1MLOPNe9LRRRPRRBNe9bzqo67cGubP8nttlTJEA.B.jRoHu2SqINmiDBwpNlaIqsd8dOw4bB.SduUoTjy4Vs4bITWWSFigXLVzyeMBSHDv6u+NrVKHhPSSC3bNNc5DZaauaiYddNNc5DJKKQQQwcOdaMakdqppf0ZuNGwPHDPJkq1bNGpppvgCGPddNDBwzq4cNGsVSFi4FGkPHHq09icrVqkDBAYLlUOZ0VvVq2t6wRoj3b92dMOSvvjOW4W8cXwbULFCUUUKxs111hrrLb73QDBA3bNjllBNmunw4QwyPuJkBgP.kkkC99pppGdzkEQeGkTJuwQIDhIymMlllFxXLjPHnzzTpoo4G5umFq0R.fzZMQDQEEEWqIPJkKZNeD5sOduePzZFiQJkZv07JDcgnoiv769lmXQRtb4xrLde7wGnppBZsF0002uSdBBg.HhPRRBXLF3bN7dO..xxxPddNLFyKid6y3nGZsFYYYHDBurQeGyp0V8kKW17h0JKKgRoFj5Tq0C97bKP+Qn2wL1Xzo8oJ98kj9gfhUDF9pE64fy4HkRQRobSZKraLcNWTMYsVJMMcQi2Vp2wDKcS+hecN2loikltcp07AFlw4SI5yePysFlN7dOo05MagvXLQq2RJkTcc8hGusVucyQrtMKJJH.PEEEKt9EFic8Oz+siktWR+UCSWqjiQJkQWblCcKD2aq4wzzXs5btIaSctrU5knOi9MUa5bNmTJ0KSAuDMi1pEBQzTVsss+377bNGVqENmCgP.GOdbUxWGq0yrrr6tlfsRu.2V+ReTJ0MsW+xRmyw4bDiwF7Oq55ZhwXqV6l8ai8mxT0ufu1pcu2un5X9NVC81eblBu2S.3o83.hQr6wD0KkDQeF1raOMvF8rjtWLFSzZs5dFXJkZy2OkkfwXFbOcJ51WomIXh5e5ajS95B2YmYw9q2vNKhUyv71aucy6xwTGGNbXsl1+az6qB6oj1YQ7G.Bw61QiZeLwE.....IUjSD4pPfIH" ],
													"embed" : 1,
													"id" : "obj-3",
													"maxclass" : "fpic",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 100.0, 140.0, 20.0 ]
												}

											}
 ],
										"lines" : [  ]
									}
,
									"patching_rect" : [ 604.0, 125.0, 53.0, 17.0 ],
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontname" : "Verdana",
										"fontsize" : 9.0,
										"default_fontsize" : 9.0
									}
,
									"text" : "p formula"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 531.0, 300.0, 27.0, 17.0 ],
									"text" : "4"
								}

							}
, 							{
								"box" : 								{
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"id" : "obj-6",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 39.0, 490.0, 133.0, 73.0 ],
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"setstyle" : 4
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-7",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 39.0, 467.0, 73.0, 17.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"orientation" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 39.0, 392.0, 144.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 49.0, 424.0, 123.0, 17.0 ],
									"text" : "set as typed in attribute:"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 194.0, 269.0, 94.0, 17.0 ],
									"text" : "read automatically"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 112.0, 169.0, 73.0, 15.0 ],
									"text" : "buffer dummy"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-12",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 813.0, 70.0, 48.0, 28.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 320.0, 325.0, 72.0, 17.0 ],
									"text" : "round window"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 39.0, 169.0, 72.0, 15.0 ],
									"text" : "buffer omega"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-15",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 608.0, 451.0, 55.0, 26.0 ],
									"text" : "set omega"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.905882, 0.905882, 0.905882, 1.0 ],
									"bordercolor" : [ 0.454902, 0.454902, 0.454902, 1.0 ],
									"buffername" : "omega",
									"grid" : 22.675737,
									"id" : "obj-16",
									"labelbgcolor" : [ 0.745098, 0.537255, 1.0, 1.0 ],
									"labels" : 0,
									"maxclass" : "waveform~",
									"numinlets" : 5,
									"numoutlets" : 6,
									"outlettype" : [ "float", "float", "float", "float", "list", "" ],
									"outmode" : 0,
									"patching_rect" : [ 608.0, 468.0, 115.0, 72.0 ],
									"ruler" : 0,
									"selectioncolor" : [ 1.0, 1.0, 1.0, 0.5 ],
									"setunit" : 1,
									"snapto" : 2,
									"textcolor" : [  ],
									"tickmarkcolor" : [ 0.678431, 0.678431, 0.678431, 1.0 ],
									"waveformcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 39.0, 327.0, 150.0, 17.0 ],
									"text" : "buffer~ omega 11.632653"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 531.0, 384.0, 27.0, 17.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 623.0, 384.0, 34.0, 17.0 ],
									"text" : "* -1."
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-20",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 531.0, 324.0, 35.0, 17.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 531.0, 452.0, 51.0, 17.0 ],
									"text" : "pack 0 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 572.0, 426.0, 29.0, 17.0 ],
									"text" : "tanh"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 531.0, 345.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-24",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 531.0, 471.0, 67.0, 28.0 ],
									"text" : "peek~ omega"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 531.0, 363.0, 44.0, 17.0 ],
									"text" : "uzi 513"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 573.0, 326.0, 29.0, 17.0 ],
									"text" : "tanh"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 572.0, 406.0, 95.0, 17.0 ],
									"text" : "scale 0. 512. -2 2."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-28",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 295.0, 456.0, 49.0, 28.0 ],
									"text" : "pack 0 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-29",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 295.0, 217.0, 49.0, 28.0 ],
									"text" : "pack 0 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-30",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 365.0, 195.0, 50.0, 15.0 ],
									"text" : "set alpha"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.905882, 0.905882, 0.905882, 1.0 ],
									"bordercolor" : [ 0.454902, 0.454902, 0.454902, 1.0 ],
									"buffername" : "alpha",
									"grid" : 22.675737,
									"id" : "obj-31",
									"labelbgcolor" : [ 0.745098, 0.537255, 1.0, 1.0 ],
									"labels" : 0,
									"maxclass" : "waveform~",
									"numinlets" : 5,
									"numoutlets" : 6,
									"outlettype" : [ "float", "float", "float", "float", "list", "" ],
									"outmode" : 0,
									"patching_rect" : [ 365.0, 212.0, 115.0, 72.0 ],
									"ruler" : 0,
									"selectioncolor" : [ 1.0, 1.0, 1.0, 0.5 ],
									"setunit" : 1,
									"snapto" : 2,
									"textcolor" : [  ],
									"tickmarkcolor" : [ 0.678431, 0.678431, 0.678431, 1.0 ],
									"waveformcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 363.0, 451.0, 49.0, 15.0 ],
									"text" : "set delta"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.905882, 0.905882, 0.905882, 1.0 ],
									"bordercolor" : [ 0.454902, 0.454902, 0.454902, 1.0 ],
									"buffername" : "delta",
									"grid" : 22.675737,
									"id" : "obj-33",
									"labelbgcolor" : [ 0.745098, 0.537255, 1.0, 1.0 ],
									"labels" : 0,
									"maxclass" : "waveform~",
									"numinlets" : 5,
									"numoutlets" : 6,
									"outlettype" : [ "float", "float", "float", "float", "list", "" ],
									"outmode" : 0,
									"patching_rect" : [ 363.0, 468.0, 115.0, 72.0 ],
									"ruler" : 0,
									"selectioncolor" : [ 1.0, 1.0, 1.0, 0.5 ],
									"setunit" : 1,
									"snapto" : 2,
									"textcolor" : [  ],
									"tickmarkcolor" : [ 0.678431, 0.678431, 0.678431, 1.0 ],
									"waveformcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-34",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 608.0, 195.0, 58.0, 26.0 ],
									"text" : "set gamma"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.905882, 0.905882, 0.905882, 1.0 ],
									"bordercolor" : [ 0.454902, 0.454902, 0.454902, 1.0 ],
									"buffername" : "gamma",
									"grid" : 22.675737,
									"id" : "obj-35",
									"labelbgcolor" : [ 0.745098, 0.537255, 1.0, 1.0 ],
									"labels" : 0,
									"maxclass" : "waveform~",
									"numinlets" : 5,
									"numoutlets" : 6,
									"outlettype" : [ "float", "float", "float", "float", "list", "" ],
									"outmode" : 0,
									"patching_rect" : [ 608.0, 212.0, 115.0, 72.0 ],
									"ruler" : 0,
									"selectioncolor" : [ 1.0, 1.0, 1.0, 0.5 ],
									"setunit" : 1,
									"snapto" : 2,
									"textcolor" : [  ],
									"tickmarkcolor" : [ 0.678431, 0.678431, 0.678431, 1.0 ],
									"waveformcolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-36",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 39.0, 152.0, 72.0, 15.0 ],
									"text" : "buffer delta"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-37",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 573.0, 100.0, 87.0, 28.0 ],
									"text" : "half hann window"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 531.0, 139.0, 27.0, 17.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-39",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 531.0, 193.0, 49.0, 28.0 ],
									"text" : "pack 0 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-40",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 531.0, 216.0, 70.0, 28.0 ],
									"text" : "peek~ gamma"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-41",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 570.0, 158.0, 124.0, 28.0 ],
									"text" : "expr 0.5 * (1 - cos(2 * 3.14159 * $f1 / 1024))"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 39.0, 307.0, 150.0, 17.0 ],
									"text" : "buffer~ delta 11.632653"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 531.0, 99.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 531.0, 117.0, 45.0, 17.0 ],
									"text" : "uzi 513"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 39.0, 247.0, 150.0, 17.0 ],
									"text" : "buffer~ alpha 11.632653"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-46",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 334.0, 394.0, 148.0, 28.0 ],
									"text" : "expr sqrt(cos ($f1/512.* 2. * 3.141592654) * -0.5 + 0.5)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 295.0, 372.0, 27.0, 17.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 295.0, 325.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 295.0, 343.0, 44.0, 17.0 ],
									"text" : "uzi 513"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 334.0, 427.0, 75.0, 17.0 ],
									"text" : "expr sqrt($f1)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 295.0, 477.0, 63.0, 17.0 ],
									"text" : "peek~ delta"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 39.0, 287.0, 150.0, 17.0 ],
									"text" : "buffer~ gamma 11.632653"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 39.0, 196.0, 68.0, 17.0 ],
									"text" : "s to_icstMap"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-54",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 39.0, 101.0, 72.0, 15.0 ],
									"text" : "buffer alpha"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-55",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 39.0, 135.0, 72.0, 15.0 ],
									"text" : "buffer gamma"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-56",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 39.0, 118.0, 72.0, 15.0 ],
									"text" : "buffer beta"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 295.0, 139.0, 27.0, 17.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 295.0, 99.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 295.0, 243.0, 65.0, 17.0 ],
									"text" : "peek~ alpha"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-60",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 333.0, 100.0, 58.0, 17.0 ],
									"text" : "half cosine"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 334.0, 186.0, 23.0, 17.0 ],
									"text" : "cos"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 334.0, 161.0, 131.0, 17.0 ],
									"text" : "scale 0 512. -3.141594 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 39.0, 267.0, 150.0, 17.0 ],
									"text" : "buffer~ beta half_cosine.aif"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 295.0, 117.0, 44.0, 17.0 ],
									"text" : "uzi 513"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 39.0, 440.0, 227.0, 17.0 ],
									"text" : "icst.map @in_min 0 @in_max 127 @buffer beta"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-66",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 39.0, 36.0, 359.0, 17.0 ],
									"text" : "the channel attributes sets which channel to read from. (index starts at zero)"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 0,
									"patching_rect" : [ 738.0, 549.0, 106.0, 17.0 ],
									"text" : "bgcolor 250 250 250"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [ 822.5, 447.0, 617.5, 447.0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 1,
									"midpoints" : [ 822.5, 191.0, 374.5, 191.0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 1,
									"midpoints" : [ 822.5, 447.0, 372.5, 447.0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [ 822.5, 191.0, 617.5, 191.0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 1,
									"midpoints" : [ 822.5, 98.0, 540.0, 98.0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [ 822.5, 297.0, 304.0, 297.0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [ 822.5, 298.0, 540.5, 298.0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 1,
									"midpoints" : [ 822.5, 98.0, 304.0, 98.0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 3 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 540.5, 342.0, 632.5, 342.0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 4 ],
									"hidden" : 0,
									"midpoints" : [ 540.5, 342.0, 642.299988, 342.0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-25", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [ 122.5, 184.0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-44", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-49", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-64", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 576.0, 400.222229, 140.0, 19.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"fontsize" : 9.0,
						"default_fontsize" : 9.0
					}
,
					"text" : "p buffer_access"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 658.0, 46.0, 489.0, 319.0 ],
						"bgcolor" : [ 0.980392, 0.980392, 0.980392, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 658.0, 46.0, 489.0, 319.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 20.0, 20.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-1",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 69.0, 164.0, 380.0, 28.0 ],
									"text" : "this mode completely ignores the look-up table and scales input to output range, extrapolating if out of range. this is equivalent to using the standard scale object."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 70.0, 127.0, 401.0, 17.0 ],
									"text" : "to get output, this mode interpolates between the two closest points in the map-table."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-3",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 70.0, 79.0, 258.0, 28.0 ],
									"text" : "to get output, this mode uses a straight table look-up, the value jumps to the nearest point in the map-table."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 61.0, 149.0, 42.0, 17.0 ],
									"text" : "ignore:"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 61.0, 112.0, 46.0, 17.0 ],
									"text" : "smooth:"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-6",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.0, 40.0, 100.0, 17.0 ],
									"text" : "calculation modes:"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 61.0, 64.0, 32.0, 17.0 ],
									"text" : "fast:"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 0,
									"patching_rect" : [ 374.0, 239.0, 106.0, 17.0 ],
									"text" : "bgcolor 250 250 250"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 576.0, 466.888885, 139.0, 19.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"fontsize" : 9.0,
						"default_fontsize" : 9.0
					}
,
					"text" : "p calc_modes",
					"varname" : "sub patch[3]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 658.0, 46.0, 471.0, 365.0 ],
						"bgcolor" : [ 0.980392, 0.980392, 0.980392, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 658.0, 46.0, 471.0, 365.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 20.0, 20.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 308.0, 250.0, 68.0, 17.0 ],
									"text" : "s to_icstMap"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-2",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 308.0, 213.0, 74.0, 17.0 ],
									"triscale" : 0.9,
									"varname" : "border_width"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 308.0, 230.0, 86.0, 15.0 ],
									"text" : "border_width $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-4",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 70.0, 254.0, 205.0, 28.0 ],
									"text" : "wraps values around the edges of the range"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-5",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 70.0, 202.0, 177.0, 28.0 ],
									"text" : "clips values to the edges of the range"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-6",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 69.0, 142.0, 254.0, 28.0 ],
									"text" : "extrapolates outside the range by using the overall gradient between the low and high edges of the range"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-7",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 69.0, 84.0, 312.0, 28.0 ],
									"text" : "extrapolates the slope at each edge of the range. the slopes are calculated as a weighted function of all points within border_width."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 57.0, 235.0, 37.0, 17.0 ],
									"text" : "wrap:"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 57.0, 181.0, 30.0, 17.0 ],
									"text" : "clip:"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 56.0, 127.0, 51.0, 17.0 ],
									"text" : "gradient:"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 42.0, 40.0, 75.0, 17.0 ],
									"text" : "border modes:"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 56.0, 68.0, 37.0, 17.0 ],
									"text" : "slope:"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-13",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 309.0, 272.0, 121.0, 28.0 ],
									"text" : "buggy: dont change (yet)"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 0,
									"patching_rect" : [ 48.0, 289.0, 106.0, 17.0 ],
									"text" : "bgcolor 250 250 250"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-3", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 576.0, 489.111115, 140.0, 19.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"fontsize" : 9.0,
						"default_fontsize" : 9.0
					}
,
					"text" : "p border_modes",
					"varname" : "sub patch[2]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 656.0, 44.0, 403.0, 475.0 ],
						"bgcolor" : [ 0.980392, 0.980392, 0.980392, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 656.0, 44.0, 403.0, 475.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 20.0, 20.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"id" : "obj-1",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 55.0, 302.0, 133.0, 73.0 ],
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"setstyle" : 4
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-2",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 55.0, 279.0, 73.0, 17.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"orientation" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 55.0, 204.0, 144.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 68.0, 236.0, 123.0, 17.0 ],
									"text" : "set as typed in attribute:"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 55.0, 252.0, 260.0, 17.0 ],
									"text" : "icst.map @in_min 0 @in_max 127 @file half_cosine.txt"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 92.0, 135.0, 85.0, 15.0 ],
									"text" : "file tanh_1.8.txt"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 64.0, 94.0, 96.0, 15.0 ],
									"text" : "file half_cosine.txt"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 81.0, 115.0, 76.0, 15.0 ],
									"text" : "file tanh_2.txt"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 51.0, 157.0, 68.0, 17.0 ],
									"text" : "s to_icstMap"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 51.0, 51.0, 23.0, 15.0 ],
									"text" : "file"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 84.0, 50.0, 191.0, 17.0 ],
									"text" : "read a textfile containing the input table"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 84.0, 64.0, 231.0, 17.0 ],
									"text" : "in a stream of equally spaced single values only"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 0,
									"patching_rect" : [ 231.0, 356.0, 106.0, 17.0 ],
									"text" : "bgcolor 250 250 250"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 576.0, 378.0, 140.0, 19.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"fontsize" : 9.0,
						"default_fontsize" : 9.0
					}
,
					"text" : "p file_reading"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 286.133331, 368.524353, 96.0, 19.0 ],
					"text" : "set display range"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 91.466667, 100.048737, 99.0, 19.0 ],
					"text" : "• display mapping"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 287.0, 44.0, 941.0, 515.0 ],
						"bgcolor" : [ 0.980392, 0.980392, 0.980392, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 287.0, 44.0, 941.0, 515.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 20.0, 20.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-1",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 45.0, 365.0, 35.0, 17.0 ],
									"text" : "TODO"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 20.0, 20.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"boxes" : [ 											{
												"box" : 												{
													"data" : [ 2518, "", "IBkSG0fBZn....PCIgDQRA..ADA...PKHX....Pha8E6....DLmPIQEBHf.B7g.YHB..IzXRDEDU3wY6c1dkypBD.d71AXIfk.oDLk.oDbKArDRJAsDzRPKAsDjRPKAt+XewieGPw0kM7bN4buutiFbhNByW5IDBA3vgCG6j+6pG.NbXSjmmC2tcC777.OOO3wiGPYY4UOrtTbFQ9CPccM750qqdXXMrW8UddNv4bnnn.DBATTT.bNGte+NjmmeBiziQYYoVmm5JeOBGVMUUUBJkd0CCqginuhhhlsshhBA.f.iwGcncJDEEIRRRNM4EBgvYDwhoooQDFFJZaau5ghUvQ0W..BDBs31+M+7XJkJxxxNM4+8dl63sPHDQUU0UOLrFNp9hwXylMRaa6hyDIIIQfPndCLS+LT9jjDA.P+wNKKSfwXA.fQdHQaaqVm65JuymHVJwwwPXXHPHjqdnXEXB80ymOgjjjQaS5Kjnnn9skllBcccPaaK774SnssEDBA774SP78Ctghhhd44bNHDBHMMEhiigttNnooADBADFFBooo6dLC..HDBXLF70WecJx6lIhERaaq.iwtkwnHmk9RdbGN6jllFwymO6+2LFaw+eIYYYhppp9YzLUl111E2u8PXX3nwloj2MSDKjWudATJEPHzUOTrBNK8kb1MSmcBiw...nqqqea444KNKHDBADBApqqA.9d1NCIOO2XiaFiAud8Zz3xHxeDKaNtFPHjnoo4pGFVCmg9JIIYwn0LUFYjNhhh1blPLFSDFFNa6gggF0uWgggZMyFUj2MSDKi77bHLLDvX7UOTrBNC8UZZJv47Qy.gy4q9cCv24fwRxHottd1LUj6iI86UTTjV4zhJx6LhXYTVV1egoi2io0W000.myWbYGCgy4.my6Mdw47Myr0kFmud8p2gsG04pRnT5hi2iHuyHhkwvmt438XR8UccMDGG26yC.91uGxnwLjzzzQeuDBY0aDkFWlNNKKKAJkBbNWY+XnBTJUqT0+sxez0XsDIIIZkrJKs+tHOLmpppesYF4uQLs9Rl6FK8Y506HDRTTTz+uyxxVLQ0Dhu8GxRYQKkRE..BJkZz6GpppVcrrG4MtQjrrLsBizRz119VGQYCrjgTYH81CIIItTbWCb5q0AgPZcc3Vxazkyz00A444ilt2dPlrKWcQkUWWCOd7XTEatkywlxWe8U+Tc4bN70WeAud8Z2N4a3ZrUYrGGGC9996565u.5nu9zXXXkOp7F0HRbb7nL26HH+wWmSTSh7l9jjDPHDPaaKfwX3986Ju9T45k888gGOd.HDBppp1cb+WxC9SorrDBBBfzzTfPHFcsz1Fpnu9TgPHZ8.wMk2PyNpOe6MIsssKF67eBhhhVL93DBQ4pbzfpWgP7cL6GtN6qXLXSrG80mBYYYZcu0VxarYhbFQM.gP.BgtjYiTVVt3SwQHzk0DZ3btKKU0.m9ZczUurk7iLhTWWCAAAfuu+r3RGDDzOcFNmC999Pbb7n8csoNlllBddd8EzSddNDDD.ddduc4AaEZryDYb9mRWWmVFQj5T44+QVdgoS7nyl777deJ466u34+vNE1ZxTWW2KSPP.DGGqj+xrM80OIXLVqGNuo7CmVhLhHSCoSSSi..nO0gaZZ5KyYIaU5vxkE.+q.iFtbfmOetYzbJJJtjkz.qziHVa6qcLjgqVtbuirjOU+dO59XBhhhDHDZTDpnT5nTEOJJRPHjQojdRRxrxeGiw8KKQF4NURc6q5b2VPW8yZx2u0hhh9ennT5nPikjjLKd6EEEitgXsu.STkhpDSaBgrZL7W5y6NllvHxzP7JMFqamiZ328Ow9bTxxxV77DgP85coLKEF7o0qA.vrv86LhbbLkQDu+8G6S6VNmCAAAPSSSeDRjKCYZ0JFGG2m9udddfXgFGu73VVVB2ueelLxPftUXgW6Xel344AXLFZZZlsc.fcOd777.Bg.UUU6Ze0868rzccccqtN4a2tA000Paa6tj41sa88TC..v22GvXLPoTfPHJ66MUO2ue+tRGOagg8pjsP2qMVU9oVUd974rDzAiwydpRVV1nogtvgZDGoJEe2w9L.9WlBNkvvPsx1ukNt687YO6mN6yVchqoe1ZYYpbNtkLS+ax9hpb6XLVoDk5JttwlPW8yZxOK5Lx70WhzAiKY8WmD44HUonJdRdXa7WkOAAAad7HDxpmep3rNYtgXSH6.Wp7YqYRI+8ZKmHu0uoDBYzwfPHPVVV+2KgPF4TeGWKyLhTWWOyHB.iMXrTnydWFvs2pTrttVoouVUUo7M.BgX1xTlxZFJ555Td5zqYDZuIjmsj8ka8ap7ZjspNTDB0+2QHzniCgPfjjDkhPlsnutBzMxUaI+LiHXLdT3yj+nK+uxrvb5MRXLd0LZ6HUo3UElNJkBoooit.VVF3SMB366Oac0RYFpSjYQ5zxHWUvXrU7hRhwX8yVXXmwRVVD.7cG7hPHPZZ5nG9z00MyGYwwwiL1r1LimhsnutBzMGZ1T9oquopppORGR+UvXr90itVgwkjjrpGyORUJxXrKqKdIiJk7bmRoKNVvX7h96gwX86OFiELF6PEUnpYfIrheL9IydSYT2jWKgPnYW6LUF40WS0wQQQJ86vT1aFqNz+KqU.eS0s1FpzY1TU9e0o8tPnVn79TfwXGtBo+j3H5qllldCWqYvhRoWVZ0Ke39dcxut5lsj2Xo8trgyZxoOtzxl9jAiwezETmtbD8UYYYeJMrl+5zIbylBSUfk5VbhaJ+tLisBMMMFq+MXxVk+eEppptrBRzF4H5K40dgggq1Xi9Mb84duEV2Yvrk7FsU.fwXi7x1Afus9ez9RxeMzs7s+zwD5Koi+mFEIatW2p6X+cxa7drZTTzgq7VYnecUf4bzsYx7oydzWCalQxqCcFQ1P9cMWHGWFaEELGyYO5qjjjQNSUFcxoa62.64VXDBoUTBem7tt8tkgtcp6Oc1i9ZZaUzzu1FtRRSS05sAnJx6LhXYbFQA6uLlPeI80mbIMm4RYN6nuMLKwMk7NiHVH+FZh01D5nuVq4NGEE06fUcMh366qbMcclUTrLrvpFZWUk2YDwBAiwtT5VCzQeslABJkBXLdWcYOSUXiGgttN30qWJWxE5HuyHhkha1H5gp5qsdMSPozKoUcZBjuIFTsnD0QdmQDKE45zckDuZnh95c9iP5a.aKzt444uswecD4cg30xIJJ5PuxR+zXM80vhkbqaKzon0NK.MJvRYV6pZHc0Udg3DdMZ53mGFis6WMmeh7onuju2lT0fftxKouGq5vgCG6AmOQb3vwgvYDwgCGGh+GbOftLFbkp6B....PRE4DQtJDXBB" ],
													"embed" : 1,
													"id" : "obj-1",
													"maxclass" : "fpic",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 50.0, 273.0, 45.0 ]
												}

											}
, 											{
												"box" : 												{
													"data" : [ 893, "", "IBkSG0fBZn....PCIgDQRA...vH....EHX....vW0WMD....DLmPIQEBHf.B7g.YHB..CPSRDEDUnEX6ZtdiiBCEE9vpsA7TBNkfSI3TBNkfmRvSI.kfoDfRvTBjRvtDfR3t+XFh.hYVXBjjUKeRHEEP1mfO49vPBQDgc1Yl7qms.14eK1MLOPNe9LRRRPRRBNe9bzqo67cGubP8nttlTJEA.B.jRoHu2SqINmiDBwpNlaIqsd8dOw4bB.SduUoTjy4Vs4bITWWSFigXLVzyeMBSHDv6u+NrVKHhPSSC3bNNc5DZaauaiYddNNc5DJKKQQQwcOdaMakdqppf0ZuNGwPHDPJkq1bNGpppvgCGPddNDBwzq4cNGsVSFi4FGkPHHq09icrVqkDBAYLlUOZ0VvVq2t6wRoj3b92dMOSvvjOW4W8cXwbULFCUUUKxs111hrrLb73QDBA3bNjllBNmunw4QwyPuJkBgP.kkkC99pppGdzkEQeGkTJuwQIDhIymMlllFxXLjPHnzzTpoo4G5umFq0R.fzZMQDQEEEWqIPJkKZNeD5sOduePzZFiQJkZv07JDcgnoiv769lmXQRtb4xrLde7wGnppBZsF0002uSdBBg.HhPRRBXLF3bN7dO..xxxPddNLFyKid6y3nGZsFYYYHDBurQeGyp0V8kKW17h0JKKgRoFj5Tq0C97bKP+Qn2wL1Xzo8oJ98kj9gfhUDF9pE64fy4HkRQRobSZKraLcNWTMYsVJMMcQi2Vp2wDKcS+hecN2loikltcp07AFlw4SI5yePysFlN7dOo05MagvXLQq2RJkTcc8hGusVucyQrtMKJJH.PEEEKt9EFic8Oz+siktWR+UCSWqjiQJkQWblCcKD2aq4wzzXs5btIaSctrU5knOi9MUa5bNmTJ0KSAuDMi1pEBQzTVsss+377bNGVqENmCgP.GOdbUxWGq0yrrr6tlfsRu.2V+ReTJ0MsW+xRmyw4bDiwF7Oq55ZhwXqV6l8ai8mxT0ufu1pcu2un5X9NVC81eblBu2S.3o83.hQr6wD0KkDQeF1raOMvF8rjtWLFSzZs5dFXJkZy2OkkfwXFbOcJ51WomIXh5e5ajS95B2YmYw9q2vNKhUyv71aucy6xwTGGNbXsl1+az6qB6oj1YQ7G.Bw61QiZeLwE.....IUjSD4pPfIH" ],
													"embed" : 1,
													"id" : "obj-2",
													"maxclass" : "fpic",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 100.0, 140.0, 20.0 ]
												}

											}
 ],
										"lines" : [  ]
									}
,
									"patching_rect" : [ 840.0, 98.0, 53.0, 17.0 ],
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontname" : "Verdana",
										"fontsize" : 9.0,
										"default_fontsize" : 9.0
									}
,
									"text" : "p formula"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 703.0, 76.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 796.0, 263.0, 62.0, 17.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 796.0, 244.0, 37.0, 17.0 ],
									"text" : "zl rev"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 796.0, 220.0, 51.0, 17.0 ],
									"text" : "pack 0. 0"
								}

							}
, 							{
								"box" : 								{
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"id" : "obj-7",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 796.0, 286.0, 98.0, 56.0 ],
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"size" : 513,
									"varname" : "ms[4]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "calc", "bang", "clear" ],
									"patching_rect" : [ 703.0, 98.0, 76.0, 17.0 ],
									"text" : "t calc b clear"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 722.0, 220.0, 62.0, 17.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 703.0, 244.0, 68.0, 17.0 ],
									"text" : "s to_icstMap"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 490.0, 58.0, 72.0, 17.0 ],
									"text" : "round window"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 722.0, 145.0, 27.0, 17.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 722.0, 123.0, 44.0, 17.0 ],
									"text" : "uzi 513"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 492.0, 76.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 591.0, 263.0, 62.0, 17.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 591.0, 244.0, 37.0, 17.0 ],
									"text" : "zl rev"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 591.0, 220.0, 51.0, 17.0 ],
									"text" : "pack 0. 0"
								}

							}
, 							{
								"box" : 								{
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"id" : "obj-18",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 591.0, 286.0, 98.0, 56.0 ],
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"size" : 513,
									"varname" : "ms[2]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "calc", "bang", "clear" ],
									"patching_rect" : [ 492.0, 98.0, 76.0, 17.0 ],
									"text" : "t calc b clear"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 511.0, 220.0, 62.0, 17.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 492.0, 244.0, 68.0, 17.0 ],
									"text" : "s to_icstMap"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 700.0, 58.0, 88.0, 17.0 ],
									"text" : "half hann window"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-23",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 722.0, 165.0, 127.0, 28.0 ],
									"text" : "expr 0.5 * (1 - cos(2 * 3.14159 * $f1 / 1024))"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-24",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 511.0, 165.0, 148.0, 28.0 ],
									"text" : "expr sqrt(cos ($f1/512.* 2. * 3.141592654) * -0.5 + 0.5)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 511.0, 145.0, 27.0, 17.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 511.0, 123.0, 44.0, 17.0 ],
									"text" : "uzi 513"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 511.0, 196.0, 75.0, 17.0 ],
									"text" : "expr sqrt($f1)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 48.0, 379.0, 71.0, 17.0 ],
									"text" : "more curves:"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-29",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 64.0, 410.0, 24.0, 28.0 ],
									"text" : "exp"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-30",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 64.0, 395.0, 21.0, 28.0 ],
									"text" : "log"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 300.0, 145.0, 27.0, 17.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 72.0, 145.0, 27.0, 17.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 74.0, 220.0, 62.0, 17.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 143.0, 263.0, 62.0, 17.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 143.0, 244.0, 37.0, 17.0 ],
									"text" : "zl rev"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 143.0, 220.0, 51.0, 17.0 ],
									"text" : "pack 0. 0"
								}

							}
, 							{
								"box" : 								{
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"id" : "obj-37",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 143.0, 286.0, 98.0, 56.0 ],
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"size" : 513,
									"varname" : "ms[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 40.0, 76.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 244.0, 68.0, 17.0 ],
									"text" : "s to_icstMap"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "calc", "bang", "clear" ],
									"patching_rect" : [ 40.0, 98.0, 77.0, 17.0 ],
									"text" : "t calc b clear"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 73.0, 123.0, 44.0, 17.0 ],
									"text" : "uzi 513"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-42",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 58.0, 100.0, 17.0 ],
									"text" : "half cosine"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 72.0, 196.0, 23.0, 17.0 ],
									"text" : "cos"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 72.0, 165.0, 131.0, 17.0 ],
									"text" : "scale 0 512. -3.141594 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 351.0, 145.0, 34.0, 17.0 ],
									"text" : "* -1."
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-46",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 403.0, 76.0, 35.0, 17.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 220.0, 62.0, 17.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 368.0, 263.0, 62.0, 17.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 368.0, 244.0, 37.0, 17.0 ],
									"text" : "zl rev"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 368.0, 220.0, 51.0, 17.0 ],
									"text" : "pack 0. 0"
								}

							}
, 							{
								"box" : 								{
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"id" : "obj-51",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 368.0, 286.0, 98.0, 56.0 ],
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"size" : 513,
									"varname" : "ms[1]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 300.0, 196.0, 29.0, 17.0 ],
									"text" : "tanh"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 267.0, 76.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 267.0, 244.0, 68.0, 17.0 ],
									"text" : "s to_icstMap"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "calc", "bang", "clear" ],
									"patching_rect" : [ 267.0, 98.0, 76.0, 17.0 ],
									"text" : "t calc b clear"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 300.0, 123.0, 44.0, 17.0 ],
									"text" : "uzi 513"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-57",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 267.0, 58.0, 29.0, 17.0 ],
									"text" : "tanh"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 684.0, 554.0, 53.0, 17.0 ],
									"restore" : 									{
										"ms[1]" : [ -0.986614, -0.986352, -0.986085, -0.985812, -0.985534, -0.985251, -0.984963, -0.984668, -0.984368, -0.984062, -0.983751, -0.983433, -0.983109, -0.982778, -0.982442, -0.982099, -0.981749, -0.981392, -0.981029, -0.980658, -0.98028, -0.979895, -0.979503, -0.979103, -0.978695, -0.978279, -0.977856, -0.977424, -0.976984, -0.976535, -0.976078, -0.975612, -0.975137, -0.974653, -0.974159, -0.973656, -0.973144, -0.972621, -0.972089, -0.971546, -0.970993, -0.970429, -0.969855, -0.969269, -0.968673, -0.968065, -0.967445, -0.966814, -0.96617, -0.965514, -0.964846, -0.964165, -0.963471, -0.962764, -0.962044, -0.96131, -0.960562, -0.9598, -0.959023, -0.958232, -0.957425, -0.956604, -0.955767, -0.954914, -0.954045, -0.95316, -0.952258, -0.95134, -0.950404, -0.94945, -0.948479, -0.947489, -0.946481, -0.945455, -0.944409, -0.943343, -0.942258, -0.941153, -0.940027, -0.93888, -0.937712, -0.936523, -0.935311, -0.934078, -0.932821, -0.931541, -0.930238, -0.928911, -0.92756, -0.926184, -0.924783, -0.923356, -0.921903, -0.920424, -0.918919, -0.917385, -0.915825, -0.914236, -0.912618, -0.910971, -0.909295, -0.907588, -0.905852, -0.904084, -0.902284, -0.900453, -0.898589, -0.896692, -0.894762, -0.892798, -0.890799, -0.888765, -0.886695, -0.884589, -0.882447, -0.880267, -0.87805, -0.875794, -0.873499, -0.871165, -0.86879, -0.866375, -0.863919, -0.861421, -0.858881, -0.856297, -0.853671, -0.850999, -0.848284, -0.845522, -0.842715, -0.839861, -0.83696, -0.834012, -0.831015, -0.827968, -0.824872, -0.821726, -0.818529, -0.81528, -0.81198, -0.808626, -0.805219, -0.801758, -0.798243, -0.794672, -0.791045, -0.787362, -0.783622, -0.779824, -0.775968, -0.772053, -0.768079, -0.764044, -0.759949, -0.755792, -0.751574, -0.747293, -0.74295, -0.738543, -0.734071, -0.729536, -0.724935, -0.720269, -0.715536, -0.710737, -0.705871, -0.700937, -0.695935, -0.690865, -0.685726, -0.680518, -0.67524, -0.669892, -0.664473, -0.658984, -0.653424, -0.647792, -0.642088, -0.636313, -0.630465, -0.624545, -0.618552, -0.612486, -0.606348, -0.600136, -0.593851, -0.587492, -0.581061, -0.574556, -0.567977, -0.561325, -0.5546, -0.547801, -0.54093, -0.533985, -0.526968, -0.519877, -0.512715, -0.505481, -0.498174, -0.490797, -0.483348, -0.475829, -0.468239, -0.46058, -0.452851, -0.445054, -0.437189, -0.429256, -0.421257, -0.413191, -0.40506, -0.396865, -0.388605, -0.380283, -0.371899, -0.363454, -0.354948, -0.346383, -0.337761, -0.329081, -0.320345, -0.311554, -0.30271, -0.293813, -0.284865, -0.275867, -0.266821, -0.257727, -0.248587, -0.239403, -0.230176, -0.220907, -0.211598, -0.202251, -0.192866, -0.183446, -0.173993, -0.164507, -0.154991, -0.145446, -0.135873, -0.126275, -0.116654, -0.107011, -0.097347, -0.087665, -0.077966, -0.068253, -0.058527, -0.048789, -0.039043, -0.029288, -0.019529, -0.009765, 0.0, 0.009765, 0.019529, 0.029288, 0.039043, 0.048789, 0.058527, 0.068253, 0.077966, 0.087665, 0.097347, 0.107011, 0.116654, 0.126275, 0.135873, 0.145446, 0.154991, 0.164507, 0.173993, 0.183446, 0.192866, 0.202251, 0.211598, 0.220907, 0.230176, 0.239403, 0.248587, 0.257727, 0.266821, 0.275867, 0.284865, 0.293813, 0.30271, 0.311554, 0.320345, 0.329081, 0.337761, 0.346383, 0.354948, 0.363454, 0.371899, 0.380283, 0.388605, 0.396865, 0.40506, 0.413191, 0.421257, 0.429256, 0.437189, 0.445054, 0.452851, 0.46058, 0.468239, 0.475829, 0.483348, 0.490797, 0.498174, 0.505481, 0.512715, 0.519877, 0.526968, 0.533985, 0.54093, 0.547801, 0.5546, 0.561325, 0.567977, 0.574556, 0.581061, 0.587492, 0.593851, 0.600136, 0.606348, 0.612486, 0.618552, 0.624545, 0.630465, 0.636313, 0.642088, 0.647792, 0.653424, 0.658984, 0.664473, 0.669892, 0.67524, 0.680518, 0.685726, 0.690865, 0.695935, 0.700937, 0.705871, 0.710737, 0.715536, 0.720269, 0.724935, 0.729536, 0.734071, 0.738543, 0.74295, 0.747293, 0.751574, 0.755792, 0.759949, 0.764044, 0.768079, 0.772053, 0.775968, 0.779824, 0.783622, 0.787362, 0.791045, 0.794672, 0.798243, 0.801758, 0.805219, 0.808626, 0.81198, 0.81528, 0.818529, 0.821726, 0.824872, 0.827968, 0.831015, 0.834012, 0.83696, 0.839861, 0.842715, 0.845522, 0.848284, 0.850999, 0.853671, 0.856297, 0.858881, 0.861421, 0.863919, 0.866375, 0.86879, 0.871165, 0.873499, 0.875794, 0.87805, 0.880267, 0.882447, 0.884589, 0.886695, 0.888765, 0.890799, 0.892798, 0.894762, 0.896692, 0.898589, 0.900453, 0.902284, 0.904084, 0.905852, 0.907588, 0.909295, 0.910971, 0.912618, 0.914236, 0.915825, 0.917385, 0.918919, 0.920424, 0.921903, 0.923356, 0.924783, 0.926184, 0.92756, 0.928911, 0.930238, 0.931541, 0.932821, 0.934078, 0.935311, 0.936523, 0.937712, 0.93888, 0.940027, 0.941153, 0.942258, 0.943343, 0.944409, 0.945455, 0.946481, 0.947489, 0.948479, 0.94945, 0.950404, 0.95134, 0.952258, 0.95316, 0.954045, 0.954914, 0.955767, 0.956604, 0.957425, 0.958232, 0.959023, 0.9598, 0.960562, 0.96131, 0.962044, 0.962764, 0.963471, 0.964165, 0.964846, 0.965514, 0.96617, 0.966814, 0.967445, 0.968065, 0.968673, 0.969269, 0.969855, 0.970429, 0.970993, 0.971546, 0.972089, 0.972621, 0.973144, 0.973656, 0.974159, 0.974653, 0.975137, 0.975612, 0.976078, 0.976535, 0.976984, 0.977424, 0.977856, 0.978279, 0.978695, 0.979103, 0.979503, 0.979895, 0.98028, 0.980658, 0.981029, 0.981392, 0.981749, 0.982099, 0.982442, 0.982778, 0.983109, 0.983433, 0.983751, 0.984062, 0.984368, 0.984668, 0.984963, 0.985251, 0.985534, 0.985812, 0.986085, 0.986352, 0.986614 ],
										"ms[2]" : [ 0.0, 0.078327, 0.110777, 0.13567, 0.156657, 0.175142, 0.191853, 0.207215, 0.221512, 0.234937, 0.24763, 0.259699, 0.271228, 0.282281, 0.292912, 0.303165, 0.313077, 0.322679, 0.331997, 0.341055, 0.349872, 0.358466, 0.366852, 0.375044, 0.383054, 0.390893, 0.39857, 0.406095, 0.413475, 0.420719, 0.427832, 0.43482, 0.44169, 0.448447, 0.455095, 0.461639, 0.468082, 0.47443, 0.480685, 0.486851, 0.49293, 0.498926, 0.504842, 0.51068, 0.516442, 0.522132, 0.52775, 0.533299, 0.538781, 0.544197, 0.549551, 0.554842, 0.560073, 0.565245, 0.57036, 0.575418, 0.580422, 0.585372, 0.59027, 0.595116, 0.599912, 0.604659, 0.609358, 0.614009, 0.618614, 0.623173, 0.627688, 0.632158, 0.636586, 0.64097, 0.645314, 0.649615, 0.653877, 0.658099, 0.662281, 0.666425, 0.670531, 0.674599, 0.67863, 0.682625, 0.686583, 0.690506, 0.694395, 0.698248, 0.702067, 0.705852, 0.709604, 0.713323, 0.71701, 0.720664, 0.724286, 0.727876, 0.731435, 0.734964, 0.738461, 0.741929, 0.745366, 0.748773, 0.752151, 0.7555, 0.75882, 0.762111, 0.765374, 0.768609, 0.771816, 0.774994, 0.778146, 0.78127, 0.784367, 0.787437, 0.79048, 0.793497, 0.796488, 0.799453, 0.802391, 0.805304, 0.808191, 0.811053, 0.813889, 0.816701, 0.819487, 0.822249, 0.824985, 0.827698, 0.830386, 0.833049, 0.835689, 0.838305, 0.840896, 0.843464, 0.846009, 0.84853, 0.851027, 0.853501, 0.855952, 0.85838, 0.860785, 0.863167, 0.865527, 0.867863, 0.870177, 0.872469, 0.874738, 0.876985, 0.87921, 0.881413, 0.883593, 0.885752, 0.887889, 0.890004, 0.892097, 0.894168, 0.896218, 0.898247, 0.900254, 0.90224, 0.904204, 0.906147, 0.908069, 0.90997, 0.911849, 0.913708, 0.915546, 0.917363, 0.919159, 0.920934, 0.922689, 0.924423, 0.926136, 0.927829, 0.929501, 0.931153, 0.932784, 0.934395, 0.935986, 0.937557, 0.939107, 0.940637, 0.942146, 0.943636, 0.945105, 0.946555, 0.947984, 0.949394, 0.950783, 0.952153, 0.953503, 0.954833, 0.956143, 0.957434, 0.958704, 0.959955, 0.961187, 0.962398, 0.96359, 0.964763, 0.965915, 0.967049, 0.968163, 0.969257, 0.970332, 0.971387, 0.972423, 0.97344, 0.974437, 0.975415, 0.976374, 0.977313, 0.978233, 0.979134, 0.980016, 0.980878, 0.981721, 0.982545, 0.98335, 0.984135, 0.984902, 0.985649, 0.986377, 0.987086, 0.987776, 0.988447, 0.989099, 0.989732, 0.990346, 0.990941, 0.991517, 0.992074, 0.992612, 0.99313, 0.99363, 0.994111, 0.994573, 0.995017, 0.995441, 0.995846, 0.996233, 0.9966, 0.996949, 0.997279, 0.997589, 0.997881, 0.998155, 0.998409, 0.998644, 0.998861, 0.999059, 0.999238, 0.999398, 0.999539, 0.999661, 0.999765, 0.999849, 0.999915, 0.999962, 0.999991, 1.0, 0.999991, 0.999962, 0.999915, 0.999849, 0.999765, 0.999661, 0.999539, 0.999398, 0.999238, 0.999059, 0.998861, 0.998644, 0.998409, 0.998155, 0.997881, 0.997589, 0.997279, 0.996949, 0.9966, 0.996233, 0.995846, 0.995441, 0.995017, 0.994574, 0.994111, 0.99363, 0.99313, 0.992612, 0.992074, 0.991517, 0.990941, 0.990346, 0.989732, 0.989099, 0.988447, 0.987776, 0.987086, 0.986377, 0.985649, 0.984902, 0.984135, 0.98335, 0.982545, 0.981721, 0.980878, 0.980016, 0.979134, 0.978233, 0.977313, 0.976374, 0.975415, 0.974437, 0.97344, 0.972423, 0.971387, 0.970332, 0.969257, 0.968163, 0.967049, 0.965916, 0.964763, 0.96359, 0.962398, 0.961187, 0.959955, 0.958704, 0.957434, 0.956143, 0.954833, 0.953503, 0.952153, 0.950784, 0.949394, 0.947984, 0.946555, 0.945105, 0.943636, 0.942146, 0.940637, 0.939107, 0.937557, 0.935986, 0.934396, 0.932785, 0.931153, 0.929501, 0.927829, 0.926136, 0.924423, 0.922689, 0.920935, 0.919159, 0.917363, 0.915546, 0.913708, 0.91185, 0.90997, 0.908069, 0.906147, 0.904204, 0.90224, 0.900254, 0.898247, 0.896219, 0.894169, 0.892097, 0.890004, 0.887889, 0.885752, 0.883593, 0.881413, 0.87921, 0.876985, 0.874738, 0.872469, 0.870178, 0.867863, 0.865527, 0.863167, 0.860785, 0.85838, 0.855952, 0.853501, 0.851027, 0.84853, 0.846009, 0.843464, 0.840896, 0.838305, 0.835689, 0.83305, 0.830386, 0.827698, 0.824986, 0.822249, 0.819487, 0.816701, 0.813889, 0.811053, 0.808191, 0.805304, 0.802391, 0.799453, 0.796488, 0.793498, 0.790481, 0.787437, 0.784367, 0.78127, 0.778146, 0.774995, 0.771816, 0.768609, 0.765374, 0.762112, 0.75882, 0.7555, 0.752152, 0.748774, 0.745366, 0.741929, 0.738461, 0.734964, 0.731435, 0.727876, 0.724286, 0.720664, 0.71701, 0.713323, 0.709605, 0.705853, 0.702067, 0.698248, 0.694395, 0.690507, 0.686584, 0.682625, 0.67863, 0.674599, 0.670531, 0.666425, 0.662281, 0.658099, 0.653877, 0.649616, 0.645314, 0.640971, 0.636586, 0.632159, 0.627688, 0.623174, 0.618614, 0.614009, 0.609358, 0.60466, 0.599913, 0.595117, 0.59027, 0.585373, 0.580422, 0.575419, 0.57036, 0.565245, 0.560073, 0.554842, 0.549551, 0.544198, 0.538781, 0.533299, 0.52775, 0.522132, 0.516443, 0.51068, 0.504843, 0.498927, 0.492931, 0.486851, 0.480685, 0.47443, 0.468083, 0.461639, 0.455095, 0.448447, 0.441691, 0.434821, 0.427832, 0.420719, 0.413476, 0.406095, 0.398571, 0.390893, 0.383055, 0.375045, 0.366853, 0.358467, 0.349873, 0.341056, 0.331998, 0.322679, 0.313078, 0.303165, 0.292912, 0.282281, 0.271229, 0.2597, 0.247631, 0.234937, 0.221513, 0.207216, 0.191854, 0.175144, 0.156659, 0.135673, 0.110777, 0.078327, 0.0 ],
										"ms[3]" : [ -1.0, -0.999981, -0.999925, -0.999831, -0.999699, -0.999529, -0.999322, -0.999078, -0.998796, -0.998476, -0.998118, -0.997723, -0.997291, -0.99682, -0.996313, -0.995768, -0.995185, -0.994565, -0.993907, -0.993212, -0.99248, -0.99171, -0.990903, -0.990058, -0.989177, -0.988258, -0.987302, -0.986308, -0.985278, -0.98421, -0.983106, -0.981964, -0.980786, -0.97957, -0.978318, -0.977028, -0.975702, -0.97434, -0.97294, -0.971504, -0.970031, -0.968522, -0.966977, -0.965395, -0.963776, -0.962122, -0.960431, -0.958704, -0.956941, -0.955141, -0.953306, -0.951435, -0.949529, -0.947586, -0.945608, -0.943594, -0.941544, -0.93946, -0.937339, -0.935184, -0.932993, -0.930767, -0.928506, -0.926211, -0.92388, -0.921514, -0.919114, -0.91668, -0.91421, -0.911706, -0.909168, -0.906596, -0.90399, -0.901349, -0.898675, -0.895967, -0.893225, -0.890449, -0.88764, -0.884798, -0.881922, -0.879013, -0.876071, -0.873095, -0.870087, -0.867047, -0.863973, -0.860867, -0.857729, -0.854559, -0.851356, -0.848121, -0.844854, -0.841556, -0.838225, -0.834863, -0.83147, -0.828046, -0.82459, -0.821103, -0.817585, -0.814037, -0.810458, -0.806848, -0.803208, -0.799538, -0.795838, -0.792107, -0.788347, -0.784557, -0.780738, -0.776889, -0.773011, -0.769104, -0.765168, -0.761203, -0.757209, -0.753187, -0.749137, -0.745058, -0.740952, -0.736817, -0.732655, -0.728465, -0.724248, -0.720003, -0.715732, -0.711433, -0.707107, -0.702755, -0.698377, -0.693972, -0.689541, -0.685084, -0.680602, -0.676093, -0.67156, -0.667001, -0.662417, -0.657807, -0.653174, -0.648515, -0.643832, -0.639125, -0.634394, -0.629639, -0.62486, -0.620058, -0.615232, -0.610383, -0.605512, -0.600617, -0.5957, -0.590761, -0.585799, -0.580815, -0.575809, -0.570782, -0.565733, -0.560662, -0.555571, -0.550459, -0.545326, -0.540172, -0.534998, -0.529804, -0.52459, -0.519357, -0.514103, -0.508831, -0.503539, -0.498228, -0.492899, -0.487551, -0.482185, -0.4768, -0.471397, -0.465977, -0.460539, -0.455084, -0.449612, -0.444123, -0.438617, -0.433094, -0.427556, -0.422001, -0.41643, -0.410844, -0.405242, -0.399625, -0.393993, -0.388346, -0.382684, -0.377008, -0.371318, -0.365614, -0.359896, -0.354164, -0.348419, -0.342661, -0.336891, -0.331107, -0.325311, -0.319503, -0.313683, -0.30785, -0.302007, -0.296152, -0.290285, -0.284408, -0.27852, -0.272622, -0.266713, -0.260795, -0.254866, -0.248928, -0.242981, -0.237024, -0.231059, -0.225085, -0.219102, -0.213111, -0.207112, -0.201105, -0.195091, -0.189069, -0.183041, -0.177005, -0.170963, -0.164914, -0.158859, -0.152798, -0.146731, -0.140659, -0.134581, -0.128499, -0.122411, -0.116319, -0.110223, -0.104122, -0.098018, -0.09191, -0.085798, -0.079683, -0.073565, -0.067445, -0.061321, -0.055196, -0.049068, -0.042939, -0.036808, -0.030675, -0.024542, -0.018407, -0.012272, -0.006137, -0.000001, 0.006135, 0.012271, 0.018406, 0.024541, 0.030674, 0.036807, 0.042938, 0.049067, 0.055195, 0.06132, 0.067443, 0.073564, 0.079682, 0.085797, 0.091908, 0.098017, 0.104121, 0.110222, 0.116318, 0.12241, 0.128497, 0.13458, 0.140658, 0.14673, 0.152797, 0.158858, 0.164913, 0.170961, 0.177004, 0.183039, 0.189068, 0.19509, 0.201104, 0.207111, 0.21311, 0.219101, 0.225083, 0.231058, 0.237023, 0.24298, 0.248927, 0.254865, 0.260794, 0.266712, 0.272621, 0.278519, 0.284407, 0.290284, 0.29615, 0.302005, 0.307849, 0.313681, 0.319502, 0.32531, 0.331106, 0.336889, 0.34266, 0.348418, 0.354163, 0.359895, 0.365613, 0.371317, 0.377007, 0.382683, 0.388345, 0.393992, 0.399624, 0.405241, 0.410843, 0.416429, 0.422, 0.427555, 0.433093, 0.438616, 0.444122, 0.449611, 0.455083, 0.460538, 0.465976, 0.471396, 0.476799, 0.482183, 0.48755, 0.492898, 0.498227, 0.503538, 0.50883, 0.514102, 0.519356, 0.524589, 0.529803, 0.534997, 0.540171, 0.545325, 0.550458, 0.55557, 0.560661, 0.565732, 0.57078, 0.575808, 0.580814, 0.585798, 0.590759, 0.595699, 0.600616, 0.605511, 0.610382, 0.615231, 0.620057, 0.624859, 0.629638, 0.634393, 0.639124, 0.643831, 0.648514, 0.653173, 0.657806, 0.662416, 0.667, 0.671559, 0.676092, 0.680601, 0.685083, 0.68954, 0.693971, 0.698376, 0.702754, 0.707107, 0.711432, 0.715731, 0.720002, 0.724247, 0.728464, 0.732654, 0.736816, 0.740951, 0.745058, 0.749136, 0.753187, 0.757209, 0.761202, 0.765167, 0.769103, 0.77301, 0.776888, 0.780737, 0.784556, 0.788346, 0.792106, 0.795837, 0.799537, 0.803207, 0.806847, 0.810457, 0.814036, 0.817585, 0.821102, 0.824589, 0.828045, 0.831469, 0.834863, 0.838225, 0.841555, 0.844853, 0.84812, 0.851355, 0.854558, 0.857728, 0.860867, 0.863973, 0.867046, 0.870087, 0.873095, 0.87607, 0.879012, 0.881921, 0.884797, 0.88764, 0.890449, 0.893224, 0.895966, 0.898674, 0.901349, 0.903989, 0.906596, 0.909168, 0.911706, 0.91421, 0.916679, 0.919114, 0.921514, 0.923879, 0.92621, 0.928506, 0.930767, 0.932993, 0.935183, 0.937339, 0.939459, 0.941544, 0.943593, 0.945607, 0.947586, 0.949528, 0.951435, 0.953306, 0.955141, 0.95694, 0.958703, 0.960431, 0.962121, 0.963776, 0.965394, 0.966976, 0.968522, 0.970031, 0.971504, 0.97294, 0.974339, 0.975702, 0.977028, 0.978317, 0.97957, 0.980785, 0.981964, 0.983105, 0.98421, 0.985278, 0.986308, 0.987301, 0.988258, 0.989177, 0.990058, 0.990903, 0.99171, 0.99248, 0.993212, 0.993907, 0.994565, 0.995185, 0.995767, 0.996313, 0.99682, 0.99729, 0.997723, 0.998118, 0.998476, 0.998795, 0.999078, 0.999322, 0.999529, 0.999699, 0.999831, 0.999925, 0.999981, 1.0 ],
										"ms[4]" : [ 0.0, 0.000009, 0.000038, 0.000085, 0.000151, 0.000235, 0.000339, 0.000461, 0.000602, 0.000762, 0.000941, 0.001138, 0.001355, 0.00159, 0.001844, 0.002116, 0.002408, 0.002718, 0.003047, 0.003394, 0.00376, 0.004145, 0.004549, 0.004971, 0.005412, 0.005871, 0.006349, 0.006846, 0.007361, 0.007895, 0.008447, 0.009018, 0.009607, 0.010215, 0.010841, 0.011486, 0.012149, 0.01283, 0.01353, 0.014248, 0.014984, 0.015739, 0.016512, 0.017303, 0.018112, 0.018939, 0.019785, 0.020648, 0.02153, 0.022429, 0.023347, 0.024282, 0.025236, 0.026207, 0.027196, 0.028203, 0.029228, 0.03027, 0.03133, 0.032408, 0.033504, 0.034616, 0.035747, 0.036895, 0.03806, 0.039243, 0.040443, 0.04166, 0.042895, 0.044147, 0.045416, 0.046702, 0.048005, 0.049325, 0.050663, 0.052017, 0.053388, 0.054776, 0.05618, 0.057601, 0.059039, 0.060494, 0.061965, 0.063452, 0.064956, 0.066477, 0.068013, 0.069566, 0.071136, 0.072721, 0.074322, 0.07594, 0.077573, 0.079222, 0.080887, 0.082568, 0.084265, 0.085977, 0.087705, 0.089449, 0.091207, 0.092982, 0.094771, 0.096576, 0.098396, 0.100231, 0.102081, 0.103947, 0.105827, 0.107722, 0.109631, 0.111556, 0.113495, 0.115448, 0.117416, 0.119399, 0.121395, 0.123406, 0.125432, 0.127471, 0.129524, 0.131591, 0.133673, 0.135768, 0.137876, 0.139998, 0.142134, 0.144284, 0.146446, 0.148622, 0.150812, 0.153014, 0.155229, 0.157458, 0.159699, 0.161953, 0.16422, 0.1665, 0.168792, 0.171096, 0.173413, 0.175742, 0.178084, 0.180437, 0.182803, 0.185181, 0.18757, 0.189971, 0.192384, 0.194808, 0.197244, 0.199691, 0.20215, 0.20462, 0.207101, 0.209593, 0.212096, 0.214609, 0.217134, 0.219669, 0.222214, 0.224771, 0.227337, 0.229914, 0.232501, 0.235098, 0.237705, 0.240322, 0.242948, 0.245584, 0.24823, 0.250886, 0.25355, 0.256224, 0.258908, 0.2616, 0.264301, 0.267011, 0.26973, 0.272458, 0.275194, 0.277938, 0.280691, 0.283453, 0.286222, 0.288999, 0.291785, 0.294578, 0.297379, 0.300187, 0.303003, 0.305827, 0.308658, 0.311496, 0.314341, 0.317193, 0.320052, 0.322918, 0.32579, 0.328669, 0.331555, 0.334446, 0.337344, 0.340248, 0.343159, 0.346075, 0.348996, 0.351924, 0.354857, 0.357796, 0.36074, 0.363689, 0.366643, 0.369602, 0.372567, 0.375536, 0.378509, 0.381488, 0.38447, 0.387457, 0.390449, 0.393444, 0.396444, 0.399447, 0.402454, 0.405465, 0.408479, 0.411497, 0.414518, 0.417543, 0.42057, 0.423601, 0.426634, 0.42967, 0.432709, 0.43575, 0.438794, 0.44184, 0.444888, 0.447938, 0.450991, 0.454045, 0.457101, 0.460158, 0.463217, 0.466277, 0.469339, 0.472402, 0.475465, 0.47853, 0.481596, 0.484662, 0.487729, 0.490796, 0.493863, 0.496931, 0.499999, 0.503067, 0.506135, 0.509203, 0.51227, 0.515337, 0.518403, 0.521468, 0.524533, 0.527597, 0.53066, 0.533721, 0.536781, 0.53984, 0.542898, 0.545954, 0.549008, 0.55206, 0.55511, 0.558159, 0.561205, 0.564248, 0.56729, 0.570328, 0.573364, 0.576398, 0.579428, 0.582456, 0.58548, 0.588501, 0.591519, 0.594534, 0.597544, 0.600551, 0.603555, 0.606554, 0.60955, 0.612541, 0.615528, 0.618511, 0.621489, 0.624463, 0.627432, 0.630396, 0.633355, 0.63631, 0.639259, 0.642203, 0.645141, 0.648075, 0.651002, 0.653924, 0.65684, 0.65975, 0.662654, 0.665552, 0.668444, 0.671329, 0.674209, 0.677081, 0.679947, 0.682806, 0.685658, 0.688503, 0.691341, 0.694172, 0.696995, 0.699811, 0.70262, 0.705421, 0.708214, 0.710999, 0.713777, 0.716546, 0.719307, 0.72206, 0.724805, 0.727541, 0.730268, 0.732987, 0.735698, 0.738399, 0.741091, 0.743774, 0.746448, 0.749113, 0.751768, 0.754414, 0.75705, 0.759677, 0.762294, 0.764901, 0.767498, 0.770085, 0.772662, 0.775228, 0.777784, 0.78033, 0.782865, 0.785389, 0.787903, 0.790406, 0.792898, 0.795379, 0.797849, 0.800307, 0.802755, 0.805191, 0.807615, 0.810028, 0.812429, 0.814818, 0.817196, 0.819561, 0.821915, 0.824256, 0.826586, 0.828903, 0.831207, 0.833499, 0.835779, 0.838045, 0.8403, 0.842541, 0.844769, 0.846985, 0.849187, 0.851377, 0.853553, 0.855715, 0.857865, 0.86, 0.862123, 0.864231, 0.866326, 0.868407, 0.870475, 0.872528, 0.874568, 0.876593, 0.878604, 0.8806, 0.882583, 0.884551, 0.886504, 0.888443, 0.890368, 0.892278, 0.894173, 0.896053, 0.897918, 0.899768, 0.901603, 0.903423, 0.905228, 0.907017, 0.908792, 0.910551, 0.912294, 0.914022, 0.915734, 0.917431, 0.919112, 0.920777, 0.922426, 0.92406, 0.925677, 0.927278, 0.928864, 0.930433, 0.931986, 0.933522, 0.935043, 0.936547, 0.938034, 0.939506, 0.94096, 0.942398, 0.943819, 0.945224, 0.946612, 0.947983, 0.949337, 0.950674, 0.951994, 0.953297, 0.954583, 0.955853, 0.957104, 0.958339, 0.959556, 0.960756, 0.961939, 0.963105, 0.964253, 0.965383, 0.966496, 0.967591, 0.968669, 0.969729, 0.970772, 0.971796, 0.972803, 0.973792, 0.974764, 0.975717, 0.976653, 0.97757, 0.97847, 0.979351, 0.980215, 0.98106, 0.981888, 0.982697, 0.983488, 0.984261, 0.985015, 0.985752, 0.98647, 0.987169, 0.987851, 0.988514, 0.989158, 0.989785, 0.990392, 0.990982, 0.991552, 0.992105, 0.992639, 0.993154, 0.99365, 0.994129, 0.994588, 0.995029, 0.995451, 0.995855, 0.99624, 0.996606, 0.996953, 0.997282, 0.997592, 0.997884, 0.998156, 0.99841, 0.998645, 0.998861, 0.999059, 0.999238, 0.999398, 0.999539, 0.999661, 0.999765, 0.999849, 0.999915, 0.999962, 0.999991, 1.0 ]
									}
,
									"text" : "autopattr",
									"varname" : "u829002025"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 0,
									"patching_rect" : [ 739.0, 554.0, 106.0, 17.0 ],
									"text" : "bgcolor 250 250 250"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 165.0, 95.0, 17.0 ],
									"text" : "scale 0. 512. -2 2."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-61",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 36.0, 109.0, 17.0 ],
									"text" : "some standard curves"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-13", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-13", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 558.5, 118.0, 501.5, 118.0 ],
									"source" : [ "obj-19", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-19", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-26", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-26", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [ 107.5, 119.0, 49.5, 119.0 ],
									"source" : [ "obj-40", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-40", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-41", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-41", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 3 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 412.5, 94.0, 276.5, 94.0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 4 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [ 333.5, 118.0, 276.5, 118.0 ],
									"source" : [ "obj-55", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-55", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-56", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-56", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 769.5, 120.0, 712.5, 120.0 ],
									"source" : [ "obj-8", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 576.0, 444.666656, 140.0, 19.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"fontsize" : 9.0,
						"default_fontsize" : 9.0
					}
,
					"text" : "p standard_curves",
					"varname" : "sub patch[1]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-18",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 388.874084, 368.524353, 52.0, 19.0 ],
					"triscale" : 0.9,
					"varname" : "disp.range.min"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-19",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 442.948151, 368.524353, 52.0, 19.0 ],
					"triscale" : 0.9,
					"varname" : "disp.range.max"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 387.792603, 390.54776, 113.0, 19.0 ],
					"text" : "pak setminmax 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 281.807404, 162.972702, 66.0, 19.0 ],
					"text" : "input range"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 214.755554, 139.900589, 110.0, 19.0 ],
					"text" : "• number of points"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 229.0, 394.0 ],
						"bgcolor" : [ 0.980392, 0.980392, 0.980392, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 229.0, 394.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 20.0, 20.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-1",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 216.0, 100.0, 15.0 ],
									"text" : "getchannel"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 200.0, 100.0, 15.0 ],
									"text" : "getbuffer"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 184.0, 100.0, 15.0 ],
									"text" : "getfile"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 134.0, 100.0, 15.0 ],
									"text" : "getinput_mode"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 67.0, 100.0, 15.0 ],
									"text" : "getborder_width"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 246.0, 68.0, 17.0 ],
									"text" : "s to_icstMap"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 151.0, 100.0, 15.0 ],
									"text" : "getout_max"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 168.0, 100.0, 15.0 ],
									"text" : "getout_min"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 100.0, 15.0 ],
									"text" : "getin_max"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 117.0, 100.0, 15.0 ],
									"text" : "getin_min"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 83.0, 100.0, 15.0 ],
									"text" : "getcalc_mode"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 50.0, 100.0, 15.0 ],
									"text" : "getborder_mode"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 0,
									"patching_rect" : [ 51.0, 312.0, 106.0, 17.0 ],
									"text" : "bgcolor 250 250 250"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 576.0, 511.333374, 140.0, 19.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"fontsize" : 9.0,
						"default_fontsize" : 9.0
					}
,
					"text" : "p query_attributes"
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-37",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 214.755554, 272.040924, 56.0, 19.0 ],
					"triscale" : 0.9,
					"varname" : "out_min"
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-42",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 281.807404, 272.040924, 56.0, 19.0 ],
					"triscale" : 0.9,
					"varname" : "out_max"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 281.807404, 291.966858, 71.0, 17.0 ],
					"text" : "out_max $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-44",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 214.755554, 291.966858, 68.0, 17.0 ],
					"text" : "out_min $1"
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-45",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 145.540741, 138.851852, 53.0, 19.0 ],
					"triscale" : 0.9,
					"varname" : "numpoints"
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-46",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 174.740738, 161.923981, 48.0, 19.0 ],
					"triscale" : 0.9,
					"varname" : "conv.range.min"
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-47",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 228.814819, 161.923981, 49.0, 19.0 ],
					"triscale" : 0.9,
					"varname" : "conv.range.max"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 86.059258, 244.77388, 75.0, 19.0 ],
					"text" : "r to_icstMap"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 434.0, 79.0, 677.0, 614.0 ],
						"bgcolor" : [ 0.980392, 0.980392, 0.980392, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 434.0, 79.0, 677.0, 614.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 20.0, 20.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-1",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 264.0, 346.0, 58.0, 17.0 ],
									"text" : "•edit table"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 263.0, 360.0, 90.0, 17.0 ],
									"text" : "• bang to validate"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 255.0, 167.0, 100.0, 15.0 ],
									"text" : "clear, input_mode 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 51.0, 129.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 264.0, 428.0, 62.0, 17.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-6",
									"linecount" : 5,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 66.0, 168.0, 108.0, 59.0 ],
									"text" : "0. 0., 1000. 33.333, 3140. 33.333., 4440. 200., 6520. 67., 7280. 133.332993, 10000 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "bang" ],
									"patching_rect" : [ 51.0, 148.0, 40.0, 17.0 ],
									"text" : "t b b b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 51.0, 234.0, 26.0, 15.0 ],
									"text" : "calc"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 51.0, 261.0, 68.0, 17.0 ],
									"text" : "s to_icstMap"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 82.0, 234.0, 100.0, 15.0 ],
									"text" : "clear, input_mode 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 240.0, 96.0, 125.0, 17.0 ],
									"text" : "list of points in x/y pairs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 239.0, 129.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 239.0, 148.0, 106.0, 15.0 ],
									"text" : "0. 0. 1 0.1 2 0.9 3 1."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-14",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 51.0, 96.0, 136.0, 28.0 ],
									"text" : "individual points in x/y pairs (or x/y/z triplets)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 239.0, 202.0, 68.0, 17.0 ],
									"text" : "s to_icstMap"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-16",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 240.0, 79.0, 43.0, 17.0 ],
									"text" : "mode 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-17",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 51.0, 79.0, 43.0, 17.0 ],
									"text" : "mode 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-18",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 246.0, 308.0, 49.0, 17.0 ],
									"text" : "set input"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-19",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.0, 308.0, 43.0, 17.0 ],
									"text" : "mode 3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-20",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 414.0, 79.0, 43.0, 17.0 ],
									"text" : "mode 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 414.0, 96.0, 209.0, 17.0 ],
									"text" : "list of points in line format: y-delta/x pairs"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-22",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.0, 325.0, 129.0, 28.0 ],
									"text" : "list of points in multislider format: y/no x"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 245.0, 325.0, 115.0, 17.0 ],
									"text" : "consecutive ints/floats"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 1,
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 490.0, 416.0, 79.0, 17.0 ],
									"text" : "itable -> Max 5"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.0, 510.0, 68.0, 17.0 ],
									"text" : "s to_icstMap"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-26",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 69.0, 492.0, 71.0, 15.0 ],
									"text" : "input_mode 3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 55.0, 472.0, 27.0, 17.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 416.0, 306.0, 68.0, 17.0 ],
									"text" : "s to_icstMap"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-29",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 431.0, 288.0, 71.0, 15.0 ],
									"text" : "input_mode 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 414.0, 268.0, 27.0, 17.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 245.0, 358.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 245.0, 456.0, 68.0, 17.0 ],
									"text" : "s to_icstMap"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "dump", "bang" ],
									"patching_rect" : [ 245.0, 383.0, 93.0, 17.0 ],
									"text" : "t b dump b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-34",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 245.0, 405.0, 26.0, 15.0 ],
									"text" : "calc"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-35",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 327.0, 408.0, 33.0, 15.0 ],
									"text" : "clear"
								}

							}
, 							{
								"box" : 								{
									"editor_rect" : [ 10.0, 59.0, 210.0, 167.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 286.0, 405.0, 32.0, 17.0 ],
									"saved_object_attributes" : 									{
										"size" : 128,
										"name" : "",
										"showeditor" : 0,
										"range" : 128,
										"embed" : 0,
										"signed" : 0,
										"notename" : 0
									}
,
									"showeditor" : 0,
									"text" : "table"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 413.0, 129.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 55.0, 354.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"id" : "obj-39",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 55.0, 379.0, 160.0, 82.0 ],
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"size" : 256,
									"varname" : "ms"
								}

							}
, 							{
								"box" : 								{
									"addpoints" : [ 0.0, 0.0, 0, 53.475937, 0.269231, 0, 171.123001, 0.487179, 0, 331.550812, 0.564103, 0, 556.149719, 0.602564, 0, 748.663086, 0.653846, 0, 839.572205, 0.692308, 0, 925.133728, 0.769231, 0, 973.262024, 0.871795, 0, 1000.0, 1.0, 0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-40",
									"linecolor" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
									"maxclass" : "function",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "float", "", "", "bang" ],
									"outputmode" : 1,
									"patching_rect" : [ 413.0, 148.0, 199.0, 103.0 ],
									"pointcolor" : [ 0.321569, 0.321569, 0.321569, 1.0 ],
									"varname" : "bpf"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 246.0, 504.0, 53.0, 17.0 ],
									"restore" : 									{
										"bpf" : [ 1000.0, 0.0, 1.0, 0.0, 0.0, 0, 53.475937, 0.269231, 0, 171.123001, 0.487179, 0, 331.550812, 0.564103, 0, 556.149719, 0.602564, 0, 748.663086, 0.653846, 0, 839.572205, 0.692308, 0, 925.133728, 0.769231, 0, 973.262024, 0.871795, 0, 1000.0, 1.0, 0 ],
										"ms" : [ 0.0, 0.005469, 0.010937, 0.0125, 0.025, 0.028571, 0.032143, 0.035714, 0.039286, 0.042857, 0.046429, 0.05, 0.0575, 0.065, 0.0725, 0.08, 0.0875, 0.092045, 0.096591, 0.101136, 0.105682, 0.110227, 0.114773, 0.119318, 0.123864, 0.128409, 0.132955, 0.1375, 0.142188, 0.146875, 0.151562, 0.15625, 0.160938, 0.165625, 0.170312, 0.175, 0.179688, 0.184375, 0.189063, 0.19375, 0.198437, 0.203125, 0.207813, 0.2125, 0.217262, 0.222024, 0.226786, 0.231548, 0.23631, 0.241071, 0.245833, 0.250595, 0.255357, 0.260119, 0.264881, 0.269643, 0.274405, 0.279167, 0.283929, 0.28869, 0.293452, 0.298214, 0.302976, 0.307738, 0.3125, 0.316912, 0.321324, 0.325735, 0.330147, 0.334559, 0.338971, 0.343382, 0.347794, 0.352206, 0.356618, 0.361029, 0.365441, 0.369853, 0.374265, 0.378676, 0.383088, 0.3875, 0.391912, 0.396324, 0.400735, 0.405147, 0.409559, 0.413971, 0.418382, 0.422794, 0.427206, 0.431618, 0.436029, 0.440441, 0.444853, 0.449265, 0.453676, 0.458088, 0.4625, 0.466176, 0.469853, 0.473529, 0.477206, 0.480882, 0.484559, 0.488235, 0.491912, 0.495588, 0.499265, 0.502941, 0.506618, 0.510294, 0.513971, 0.517647, 0.521324, 0.525, 0.528676, 0.532353, 0.536029, 0.539706, 0.543382, 0.547059, 0.550735, 0.554412, 0.558088, 0.561765, 0.565441, 0.569118, 0.572794, 0.576471, 0.580147, 0.583824, 0.5875, 0.591176, 0.594853, 0.598529, 0.602206, 0.605882, 0.609559, 0.613235, 0.616912, 0.620588, 0.624265, 0.627941, 0.631618, 0.635294, 0.638971, 0.642647, 0.646324, 0.65, 0.653676, 0.657353, 0.661029, 0.664706, 0.668382, 0.672059, 0.675735, 0.679412, 0.683088, 0.686765, 0.690441, 0.694118, 0.697794, 0.701471, 0.705147, 0.708824, 0.7125, 0.714946, 0.717391, 0.719837, 0.722283, 0.724728, 0.727174, 0.72962, 0.732065, 0.734511, 0.736957, 0.739402, 0.741848, 0.744293, 0.746739, 0.749185, 0.75163, 0.754076, 0.756522, 0.758967, 0.761413, 0.763859, 0.766304, 0.76875, 0.771196, 0.773641, 0.776087, 0.778533, 0.780978, 0.783424, 0.78587, 0.788315, 0.790761, 0.793207, 0.795652, 0.798098, 0.800543, 0.802989, 0.805435, 0.80788, 0.810326, 0.812772, 0.815217, 0.817663, 0.820109, 0.822554, 0.825, 0.827187, 0.829375, 0.831563, 0.83375, 0.835938, 0.838125, 0.840312, 0.8425, 0.844688, 0.846875, 0.849063, 0.85125, 0.853437, 0.855625, 0.857813, 0.86, 0.862188, 0.864375, 0.866562, 0.86875, 0.870938, 0.873125, 0.875313, 0.8775, 0.879687, 0.881875, 0.884063, 0.88625, 0.888438, 0.890625, 0.892812, 0.9, 0.9, 0.9, 0.9, 0.9, 0.9, 0.904167, 0.9, 0.9125, 0.9125, 0.9125, 0.9125 ]
									}
,
									"text" : "autopattr",
									"varname" : "u383002027"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-42",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 38.0, 43.0, 117.0, 17.0 ],
									"text" : "other table input modes"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 0,
									"patching_rect" : [ 508.0, 514.0, 106.0, 17.0 ],
									"text" : "bgcolor 250 250 250"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-27", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 421.0, 285.0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-30", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-33", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-33", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 336.5, 454.0, 254.5, 454.0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [ 422.0, 146.0, 422.5, 146.0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-40", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-7", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 576.0, 422.444458, 140.0, 19.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"fontsize" : 9.0,
						"default_fontsize" : 9.0
					}
,
					"text" : "p other_input_modes",
					"varname" : "sub patch"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 177.985184, 241.627686, 107.0, 19.0 ],
					"text" : "prepend calc_mode"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-55",
					"items" : [ "fast", ",", "smooth", ",", "ignore" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 177.985184, 219.604294, 70.0, 19.0 ],
					"types" : [  ],
					"varname" : "calc_mode"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 283.970367, 241.627686, 121.0, 19.0 ],
					"text" : "prepend border_mode"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-57",
					"items" : [ "slope", ",", "gradient", ",", "clip", ",", "wrap" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 283.970367, 219.604294, 75.0, 19.0 ],
					"types" : [  ],
					"varname" : "border_mode"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 127.155556, 117.87719, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 72.0, 99.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 72.0, 194.434692, 106.0, 19.0 ],
					"text" : "scale 0 1000. 0. 2."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 72.0, 170.313843, 88.0, 19.0 ],
					"text" : "counter 0 1000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 72.0, 149.339188, 58.0, 19.0 ],
					"text" : "metro 10"
				}

			}
, 			{
				"box" : 				{
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"id" : "obj-63",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 73.081482, 413.619873, 392.0, 213.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"setminmax" : [ -300.0, 300.0 ],
					"setstyle" : 4,
					"signed" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-64",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 73.081482, 374.816772, 80.0, 19.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-65",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 88.222221, 272.040924, 56.0, 19.0 ],
					"triscale" : 0.9,
					"varname" : "in_min"
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-66",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 149.866669, 272.040924, 56.0, 19.0 ],
					"triscale" : 0.9,
					"varname" : "in_max"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-67",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 149.866669, 291.966858, 65.0, 17.0 ],
					"text" : "in_max $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-68",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 88.222221, 291.966858, 61.0, 17.0 ],
					"text" : "in_min $1"
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-69",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 72.0, 223.799225, 58.0, 19.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 495.0, 88.0, 614.0, 498.0 ],
						"bgcolor" : [ 0.980392, 0.980392, 0.980392, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 495.0, 88.0, 614.0, 498.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 20.0, 20.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-1",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 320.0, 225.0, 16.0, 17.0 ],
									"text" : "y"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-2",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 62.0, 111.0, 22.0, 28.0 ],
									"text" : "b 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 50.0, 362.0, 70.0, 17.0 ],
									"text" : "+ 0."
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-4",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 320.0, 205.0, 85.0, 17.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 320.0, 178.0, 251.0, 17.0 ],
									"text" : "expr (($f1 - $f2)*(1/($f3 - $f2))*($f5 - $f4))+$f4"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-6",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 143.0, 229.0, 37.0, 17.0 ],
									"text" : "1/b-a"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 233.0, 180.0, 23.0, 17.0 ],
									"text" : "d-c"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-8",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 143.0, 180.0, 23.0, 28.0 ],
									"text" : "b-a"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 417.0, 16.0, 17.0 ],
									"text" : "y"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 238.0, 100.0, 16.0, 17.0 ],
									"text" : "d"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 200.0, 100.0, 16.0, 17.0 ],
									"text" : "c"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 143.0, 100.0, 16.0, 17.0 ],
									"text" : "b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 106.0, 100.0, 16.0, 17.0 ],
									"text" : "a"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-14",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 50.0, 397.0, 85.0, 17.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 50.0, 333.0, 66.0, 17.0 ],
									"text" : "* 1."
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-16",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 106.0, 304.0, 44.0, 17.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 106.0, 279.0, 100.0, 17.0 ],
									"text" : "* 1."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-18",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 143.0, 254.0, 63.0, 17.0 ],
									"text" : "inv_inrange"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-19",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 106.0, 254.0, 35.0, 17.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 106.0, 228.0, 31.0, 17.0 ],
									"text" : "!/ 1."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 233.0, 205.0, 49.0, 17.0 ],
									"text" : "outrange"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 198.0, 115.0, 40.0, 17.0 ],
									"text" : "outmin"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 232.0, 115.0, 43.0, 17.0 ],
									"text" : "outmax"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 143.0, 115.0, 37.0, 17.0 ],
									"text" : "inmax"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-25",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 106.0, 115.0, 34.0, 17.0 ],
									"text" : "inmin"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-26",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 50.0, 254.0, 35.0, 17.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 50.0, 215.0, 27.0, 17.0 ],
									"text" : "- 0."
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-28",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 196.0, 205.0, 35.0, 17.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 196.0, 178.0, 30.0, 17.0 ],
									"text" : "!- 0."
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-30",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 106.0, 205.0, 35.0, 17.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-31",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 196.0, 130.0, 35.0, 17.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-32",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 232.0, 130.0, 35.0, 17.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-33",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 106.0, 130.0, 35.0, 17.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-34",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 142.0, 130.0, 35.0, 17.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 106.0, 178.0, 30.0, 17.0 ],
									"text" : "!- 0."
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-36",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 50.0, 94.0, 35.0, 17.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-37",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 79.0, 16.0, 17.0 ],
									"text" : "f"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-38",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 143.0, 205.0, 43.0, 17.0 ],
									"text" : "inrange"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-39",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 171.0, 45.0, 185.0, 17.0 ],
									"text" : "y = ((f - a) * (1/(b - a)) * (d - c)) + c"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-40",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 49.0, 45.0, 70.0, 17.0 ],
									"text" : "linear scaling"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"hidden" : 1,
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 0,
									"patching_rect" : [ 320.0, 410.0, 106.0, 17.0 ],
									"text" : "bgcolor 250 250 250"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"hidden" : 1,
									"midpoints" : [ 71.5, 129.0, 205.5, 129.0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"hidden" : 1,
									"midpoints" : [ 71.5, 129.0, 241.5, 129.0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"hidden" : 1,
									"midpoints" : [ 71.5, 129.0, 115.5, 129.0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [ 71.5, 129.0, 151.5, 129.0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 290.0, 59.5, 290.0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 3 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 4 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 2 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [ 59.5, 110.0, 71.5, 110.0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 150.0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-5", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 576.0, 533.555542, 140.0, 19.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"fontsize" : 9.0,
						"default_fontsize" : 9.0
					}
,
					"text" : "p manual_scaling"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 391.037048, 345.45224, 70.0, 19.0 ],
					"text" : "print status"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-73",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 145.540741, 118.925926, 110.0, 19.0 ],
					"text" : "• reset counter"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 73.081482, 321.33139, 343.0, 19.0 ],
					"text" : "icst.map @in_min 1 @in_max 2. @out_min -200. @out_max 200."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 362.0, 33.0, 103.0, 17.0 ],
					"text" : "\"scale with a curve\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"hidden" : 1,
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 139.0, 695.0, 59.5, 19.0 ],
					"restore" : 					{
						"border_mode" : [ 0 ],
						"calc_mode" : [ 0 ],
						"conv.range.max" : [ 0.0 ],
						"conv.range.min" : [ 0.0 ],
						"disp.range.max" : [ 0.0 ],
						"disp.range.min" : [ 0.0 ],
						"in_max" : [ 0.0 ],
						"in_min" : [ 0.0 ],
						"numpoints" : [ 0 ],
						"out_max" : [ 0.0 ],
						"out_min" : [ 0.0 ]
					}
,
					"text" : "autopattr",
					"varname" : "u210001939"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 564.0, 343.0, 98.0, 19.0 ],
					"text" : "more features:"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
					"id" : "obj-39",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 556.0, 337.0, 180.0, 290.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 4.0,
					"gradient" : 1,
					"hidden" : 1,
					"id" : "obj-71",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 725.0, 87.0, 91.0, 14.0 ],
					"text" : ";\rmax launch_browser http://www.icst.net",
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"hidden" : 1,
					"id" : "obj-51",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 65.0, 675.0, 213.0, 17.0 ],
					"text" : "window size 2 46 802 736, window exec"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"hidden" : 1,
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 65.0, 694.0, 69.0, 19.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bgoncolor" : [ 0.54902, 0.54902, 0.54902, 0.0 ],
					"bgovercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bgoveroncolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"border" : 0,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"id" : "obj-3",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 696.0, 57.0, 77.0, 19.0 ],
					"rounded" : 0.0,
					"text" : "www.icst.net",
					"textcolor" : [ 0.0, 0.145098, 0.717647, 1.0 ],
					"textoncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textovercolor" : [ 0.85098, 0.0, 0.0, 1.0 ],
					"textoveroncolor" : [ 0.0, 0.298039, 1.0, 1.0 ],
					"underline" : 1
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"frgb" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 632.0, 46.0, 138.0, 17.0 ],
					"text" : "Zurich University of the Arts",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 32.0, 51.0, 432.0, 19.0 ],
					"text" : "map one range of values onto another using a precalculated transfer function (LUT)"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"frgb" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 567.0, 20.0, 203.0, 17.0 ],
					"text" : "Copyright © 2008 - 2010 by Jan Schacher",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"frgb" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 499.0, 33.0, 270.0, 17.0 ],
					"text" : "ICST Institute for Computer Music and Sound Technology",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana",
					"fontsize" : 20.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 32.0, 25.0, 157.0, 31.0 ],
					"text" : "icst.map"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
					"id" : "obj-11",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 12.0, 12.0, 776.0, 72.0 ],
					"rounded" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"midpoints" : [ 398.374084, 387.40155, 444.292603, 387.40155 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 2 ],
					"hidden" : 0,
					"midpoints" : [ 452.448151, 387.40155, 491.292603, 387.40155 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [ 397.292603, 409.424957, 82.581482, 409.424957 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 291.307404, 312.941528, 82.581482, 312.941528 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 224.255554, 312.941528, 82.581482, 312.941528 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 4 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 3 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 4 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 95.559258, 265.224182, 82.581482, 265.224182 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 187.485184, 264.699799, 82.581482, 264.699799 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 212.985184, 238.481476, 187.485184, 238.481476 ],
					"source" : [ "obj-55", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 293.470367, 264.699799, 82.581482, 264.699799 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [ 321.470367, 238.481476, 293.470367, 238.481476 ],
					"source" : [ "obj-57", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 3 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 159.366669, 312.941528, 82.581482, 312.941528 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 97.722221, 312.941528, 82.581482, 312.941528 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-74", 1 ]
				}

			}
 ]
	}

}
