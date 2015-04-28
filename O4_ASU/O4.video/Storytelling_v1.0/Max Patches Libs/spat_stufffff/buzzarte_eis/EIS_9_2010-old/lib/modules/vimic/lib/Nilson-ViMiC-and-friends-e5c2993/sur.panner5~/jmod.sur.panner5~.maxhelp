{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 247.0, 44.0, 775.0, 690.0 ],
		"bglocked" : 0,
		"defrect" : [ 247.0, 44.0, 775.0, 690.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 33.0, 117.0, 69.0, 20.0 ],
					"text" : "delay 4100"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.0, 176.0, 153.0, 18.0 ],
					"text" : "/audio/gain 100 ramp 4000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-2",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 285.0, 82.0, 471.0, 62.0 ],
					"text" : "\"Continuous Surround Panning for 5-Speaker Reproduction\"\nPeter G. Craven; Meridian Audio Ltd., Huntingdon, UK\n24th International AES Conference: Multichannel Audio, The New Reality (June 2003)\nPaper Number: 9 "
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@name", "jmod.sur.panner5~", "@description", "5.1 Panner based on Peter Craven's Panning Law" ],
					"bgmode" : 1,
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "jcom.maxhelpui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 775.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
									"args" : [  ],
									"id" : "obj-11",
									"maxclass" : "bpatcher",
									"name" : "jmod.sur.multi.in~.maxpat",
									"numinlets" : 33,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 129.0, 300.0, 35.0 ],
									"presentation_rect" : [ 0.0, 0.0, 300.0, 35.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 135.0, 72.0, 81.0, 20.0 ],
									"text" : "phasor~ 0.15"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 60.0, 74.0, 65.0, 20.0 ],
									"text" : "cycle~ 0.5"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-23",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 331.0, 224.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 2 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-29", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 551.0, 187.0, 65.0, 20.0 ],
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0
					}
,
					"text" : "p signals~"
				}

			}
, 			{
				"box" : 				{
					"args" : [  ],
					"id" : "obj-13",
					"maxclass" : "bpatcher",
					"name" : "jmod.sur.multi.out~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 33,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 270.0, 290.0, 300.0, 35.0 ],
					"presentation_rect" : [ 15.0, 15.0, 300.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "panner5" ],
					"id" : "obj-10",
					"maxclass" : "bpatcher",
					"name" : "jmod.sur.panner5~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 270.0, 214.0, 300.0, 70.0 ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 83.0, 393.0, 160.0, 34.0 ],
					"text" : "jcom.ambimonitor2position @prefix source @radius 10."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-7",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 33.0, 143.0, 188.0, 32.0 ],
					"text" : "aed 1 90 0 0.7, rename 1 sine, aed 2 -30 0 0.7, rename 2 phasor"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 33.0, 89.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 234.0, 139.0, 37.0, 20.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 263.0, 565.0, 17.0, 39.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 558.0, 565.0, 17.0, 39.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 484.0, 373.0, 17.0, 39.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 412.0, 355.0, 17.0, 39.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 346.0, 373.0, 17.0, 39.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "ambimonitor",
					"numbers" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 33.0, 177.0, 209.0, 209.0 ],
					"presentation_rect" : [ 0.0, 0.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"data" : [ 7922, "", "IBkSG0fBZn....PCIgDQRA..AvL..DvyHX....f2OoNJ....DLmPIQEBHf.B7g.YHB..djZRDEDU3wY6c2dcaaj1F.d3d1BPNcfT5.6sDj1JHxoChTGX2A1tCDcpfHuUfUJgnzAQtCrbGv2ejWJSw.RB.N.yWWWmiN6FYJR.vYla7L3qEqVsZU..f85ek5E..fRf.S.fdPfI.POHvD.nGDXB.zCBLgLwCO7P3pqtJb1YmEVrXwS+b1YmEt5pqBO7vCodQDZZKbYk.o2UWcU3ie7iG708l27lv6e+6mgkHfsoBSHwd8qe8SgkWd4kgO+4OGVsZ0S+74O+4vkWdYHDBgO7gODd6aeaJWbglkJLgD5su8sgO7gODBgP3O9i+H7pW8pc9ZWtbY35qutWuVf3SfIjHO7vCge7G+wPHz+.vW+5WG9zm9T3xKuLb6s2N0Kh.avTxBIx5.uKu7xdWs35ie4m9zmlrkKft8uS8B.zpVG58S+zO06+lyN6rfIEBRCSIKjHKVrHDBgve8W+U3ryNKwKM.Gh.SHQVGXpKHTFbLLA.5AAlPh83iOl5EAfdPfIjHu7kuLDB+8kTRe8vCO7zsLOf4k.SHQt3hKBgPH7q+5u16+l0WJJme94SxxDvt4j9ARjgdiK3wGeLb1YmE9129V3latIb0UWMGKl.++TgIjHmc1YOcOh8xKubuOMRd7wGCu90uN7su8svomdpvRHADXBIzxkKCmd5ogu7kuD9we7GCu8suMb+82+z+9iO9XX4xkgyN6rvu+6+dHDbW9ARESIKjXO93igyO+7ve9m+4decmd5ogO8oO4ltNjHpvDRrW7hWDt+96e5w30Imbxy92O+7yC2byMgGd3AgkPBoBS.fdPEl..8f.S.fdvi2K3HTJ2wcbjWfim.S3Hk6gQkRnNj6Lkr..8f.S.fdPfI.POHvD.nGDXB.zCNKYgYTrNiUy8yLWnFIvDlYGaXmKSDHMLkr..8f.S.fdPfI.POHvLirXwBGeJnhstO9g94Uu5UgkKWl5EW1hmGlYj0gk9JobrXwhA88UJNKYG5xHSmg98+omdZ396uO7hW7hIZIhgPElvLZcv0pUqF8OT9122ue8qeMbyM2DBgP3Ke4KgO7gOj3kVVSElYDUXVdFSElw362g79nBy7wP5ie6s2F94e9mCmbxIgGe7wodQidPfYFQfY4IkAW888SfY9Xn8wMlPdwTxBSr0mHGwdPuUqV4jDClQtS+.SngVA5l5ye25PSUfTeVeVx9xW9xDujvZBLgIxPlxzP3eFP12oiayJMEbV9d3gGBe7ie7oS1m27l2j3kHVSfI6jJWFuXb7EW+66y60Pdsjd8cpzeyadS30u90S7RC8kigI+CadL2bLxFlo53U1W9N63jaa6t81acFxlQDXxyrdvdUoLbCcaWeCVGZHnPywYycRbp29MjqCSUXlObYkjQR4wgZee1llucayAYG51no9RR4XV1ZQaucZJ1tMlqCy995Y5IvLijh.y97YZ.2cqTpjy2e62tZiG69jtNLKaNoeZXCcJA0o84FSX4XqfoqW6P97882t02S7pM+uoMIvrAoye+suPoic6We2Qjc8ZFyTztukE1MAmDBBLaJGSm8ZtJyVIH4PS69X96JcCsMsfy1lyR1LTeel4Mz2Om8qcusMkOYP12Yk4bdIprusAGSauZ0laalCu+8ueV9bX+bR+jQFZmuTbi2tjpxrqsm47x9Xt03kJk111tDymbLgP+6O12W6lu9g72vzQfYkZplxnbMvrFF.esbca7gTReGj5KYDJSNFlUpopSaNbrLKoAlaI66xx3PutZPstdw2IvrgM1fuTDZZpoJSGJDMU2jNzFhwPfYipDtKvj5AVYZr80hZW+9bTN2Wg4g.yFSrNNKSYXqiET6nqvyo768w1lc6GFAZa1lDXVfFam1tFrHWpxrjpzfow1Wiia96hgXzNeykww9dkC82XbDXVXF6Mg6PX2C9L1PyiMrUHIcI2lx18silq++ODpTsbIvrPLlNX45M5YCVPeEqor8XmJ18srMlkK2wfJSBLybwb5W66qcHWJ.C49g5gduf8Ypmx1MMjahHwJ3T+h7m.yL1TL8q840FyqmN6AMw1Pq57P8iNTa691F9XB+LMskA2oexPonpxwXe2J2z4e7TswvsqpNOlYOoqOi43vanuS9RfYF4XBJ66eWqcKyqDYa4wYy13w99y6bddAH3L+XJYyHc0AOV+cSYP4T79Bi0lsEi8TcNliW4w74peUdQfYCXJuACnCM4to3DqwY4ZaxTxlgh0o.upJKS1QjoybdHIbyMn9HvLSEiagWBJKSFrb5MEsk29XmJrr9XJYqPwtCmfx4ksySu4XZZo9nByL1P6LOUUUpIB0rb5LGW+s7lJLoSppjVgSfG5KAlYro5XQtOFzfVUpCNUcY96ek5E.1u9dsYdrc1VrXwSuG5zRKacefi8XQFi2CxKpvD6YKzg4796p9fkAmzOEh80g5XtDTBAS+JbHS4iVLgkkCUX1fDTBCiGCWDBNFlEiXb7PbbJKCNtW4q08Ci02QBfKKBLKHcEZ12NbBJg3XySJn9Db5j+odXJYqbl9UXZbrWFJptr7nByByl6s5gNQfTUIL85ykghpLqCpvrxnhRHMFxkghpKKSBLKP6ZuU0IDRq9LMs5mVtDXVATUIjW55xPwzxV9DXV3r2pP9pqooU+0xk.yBkNcPYvyIy5g.S.lA1I2xmKqD.fdPfYgHl2NtF5mK4Ie2b7R01vT0eliiojs.jxSrmT7PrlcyfrwSp6Wk5kAFNAlYNcnPHY8xNjVVDXloxoqsRcpSi9DTdLgos72m4T6447AUMGGAlYnbpyLoSetP2Ol1Ia+dqMW5XJZKCKV4amrg8xjPX2CZ1U3YLaqH.MOXbf7k.yLg8rjgXNFTU.ZZYLg7i.yLfNFTBDfN+L1PdQfYhoCAkJAnyCiQjODXlP5HPMYy.TsqiKiUjGDXlH5.PMS0mwmwLROAlIfF9zZT8YbXrizRf4LqlZvWSqKLeRQ3YM0VslVWJMBLmQ0XC8Zbch4ybc4wTasQqw0oRfmVIyDMvouZo6crqVs5o6nQsz58wpO2EnH9DXNCp4vRcbIF1N3LVsoz2iXx8R1IVM2gEhsM6qbrSWaKz2yCFg4kJLmPsRCY6oKSASWa+n+27Qf4DoUBKgo1XBNas9eBMmGlR1HqUeRCXpgXps4i.qs+c34p4bPfYD05AFBMYNbniyYK2FzyUyokojMRz.EleNNmcyTzNMDXFABK+NcTIE1L3j+lsGwm.yijvRHOrtunfhuy1h3Rf4QPXY2zIkTyzz9c5OFOBLGIgkP9nq9ip176rcHNDXNBBKOLaeHWnZy+lPyim.yARXIjeNTeRmMs+MglGGAlCfvRnrYZZEZdLDX1SBKg5QqWsoPywQfYOHrDpOsd0ls759XIv7.DVxbqOs2LPW7zxAGs759XHvbODVRNI1Obk46Z4fiVdcenDXtCBKiOcJGNgjcaJ1dzxGWSgl8imVILa7zLo+5yfWiY.tZXa+T1FxS6C1GAlcPmERs9rG+ioMpmkj8SKtycs357PsXksNOiFLSOaiGttBOO1sga+dVBemL2scZwGHy5etapvjYm8jc355glbLeO298MG+tIEsYLEsrIAlaPmBJAS8wuKDx+vy4VKsSdsz55PYJY++oAx7y17tkaaWxgvybYaRtrbLGZo009RElAMLf8Qkme2lmLV095uJM+mDXRxnCY4IEgm4VaDGWy1UyeiKPidpcKWt7Y2.DVtbYudca9Z658X88h0V8B9uEtX+ag0wAYUCqwW8yF9d34h41iat4lUgPX0M2bSm+2650s8uqq2icsruuk+gttUBsMJgkwiUKrN1GM8I8ipKyG9t36h41hEKVDt4laBWc0UO86VtbY35qu9eL8pa+5170FB+yoiceKiccb9F5T3VRsIJok0wn1W+5qlMvTCf7huO9tXGXt860iO9X3G9gen2Af6J7qugdq+aG5MJgRqMQos7NT095WezjGCSewme5Z.UNdcEVd0UWEd26d2feu173YNjO+w7caI1Gs1aCW6qe8QycVxVhcDgXXyA6d4Ke4f9au4laBWe80OM8r2byMi5yc6ees0WbcnRssdsVsu9cHM2Tx1xeYSYXpaid6s2Fd6aea3Mu4MOcLKOzTxdLKOSwMQ9bWMONSMutcHMUfYK+EMki4nc5CO7P3xKuLb+82evOyXs7rufyZreYMOdSMutsOMSfYq9ELkmo9j9oq+s4Hvrq220p09l073N0751tzjmzOPKoqSRmi42EKqOgfp4AcWeL+Z8SVlZQSDX1h6IDDBe+j0Yyfu0Wakadh6z2WGC2XOSgyc035zgT8SIqvRJMwtM6l27AV6P2jB12qiwqFGOpFWm1EAlPlQa15Vs88ass9rOU8Tx1ReQViZso6ok0ReWWaSkYss9rOUafovxxWK0QbSsV61VruZs01t1Ve1kpMvD.Hlpx.yVbOVqUsxdt1pZ49p0Va6Za8oKUYfI0kVniXKpkCKWSa6xR0EXpSHPIolBMqo0ktTUAlBKqW0dGwVi9pOWM09tlVW1VUEXBPoplCZpEUSfo8Xs9Y.k5f9p0uZsuZUDXpCH0jZbfF5mZJnolVWVqJBLocTicBaI141CSa77UwGXpCX6w.JkI8U6uZoMdsrdrVQGXpCH.4sZJzrnCLocUScBaA141gSa77SwFXpCHPsqVBMqk0ihMvDrCSkCeWMd0RXSMPfI.POTjAllNVpUZaSWpgpLqg0ghLvDfVSMD3T5Jt.S6ANPqpzCMK8k+hKvD.HEJp.SUWBz5J8pzJ4k+hJvD1mRsSXsw2CTqDXR0nj2y0ZgYAZdnsdZTLAl5HBv2Uxglk5xdwDXB8Qo1QrFXmZo1UDAl5HxPTxglkZ6b8QSiRusdosrWDAl..oV1GXZOWYLJw8dsToOZZUxs0Ksk8rOvD.1uRK3oTIvjpkAQldptjVRVGXpyHPo4Eu3Ei90rb4xvhEKd1OKWtry+s0+90J0cPrjVty5.S3XURcFKM1g1m6t6tKbwEWD91291ndMKWtLb80WGt4laBqVsJrZ0pvM2bS35qu9e7us92y7ZwpLsEuNiDSZOEW1d9bauSYcss4PulEKVDt4laBWc0UO62uNrb6+lc8cPo9cSIrbKvjlPozdxxY4qOaa550ru+t0gs8IvruKC4lRXY1TxRSvTyFOkv.a0pMOdlL+xx.ScHA34VebKWrXwSGOycoD2AwRXYNKmRVAlzpz1u7MUSI6PaWThskx8k4rqBybeCF.LMx8pLyt.S.33k6gOkHAl.jI55j4wI3S9HqBLMcr.spMuIEr1l2vBFiRrJybdYNqNoeDXRqSefx2XOoeBgmeSJXsttYFD6kmbSttLKvDxH5CPrUhsox0k4rYJYy0MPT2x0o9ImXaTYKmmhycIWWlyl.SHEx0Nl4B6HK7cYQfoNk.LcJwcLLGWlyh.SHkxwNl4.6HK7bBLgfPysIrD9mRdfoNl.L8JwcJL2VlSdfIjKxsNmohchE5l.SHiHnBxWIMvzdxRto0qxTex5VI19NmVlUgI.POHvD1RNsGsyIUWB6m.SnCsVnovx1Qq01NlDXB.zCIKvzdzRtqU1Sb8EI2kK8EUgI.POHvD1i4txqTrWzptr8jKUrUZDXB.zCBLA.5gjDX5jL.fzpzlV1bX4UEl..8f.S.fdPfIL.odJg.RGAlv.jCGGkiUou7CoxrGX5D9ARG8+XSk1N.l5kWUXBCTp6zNVBKgii.SXDJ0PSfwSfIz.TcIb7DXBijpLg1xrFXZubg4m9crOk1N9kxkWUXBGgbevFgkP7HvD.nGDXBGobsJSUWBwk.SHBhUno.NHeIvDpPptjgHWmkjbi.SHRxkAcDVBSiYKvTmXZA4Pa7bXY.lRoZmSUgI.PO7uS8B.T6lx8DV0jv7QfILA1LjbJC0lqOG.SIKDEcUE4pUql7Pr0eFccLcxgS.InlHvDNRaeBskpSvssCMykyZWJCZubXlRVXjVO3RNOUnaNHXNubBkfYoBSWRITqJg10kvxHLTonhXSIKLBk1NAZ51fim.S.fdPfI.POHvD.nGDXB.gPvw59PDXB.zCBLA.5AAl..8f.S.fdPfI.POHvD.nGDXB.zCSdfYocO2D.JCy80MpJLA.5AAl..8f.S.fdPfI.7D2OY2MAl..8f.S.fdPfI.POHvDpDtlmgok.SHxRUnkvRXZ8uS8B.Tql6yzPAlvzRfILARwziZJYgokojEhLAWPcRfIDQoLrzEbNLsDXBQRNTYoPSX5HvD.nGDXB.zCBLgHHGlN10LsrvzPfI.POHvD.nGl7.SSOD0tbZ5XWS+NFqbr87tL2KqtS+.aYLcBqkvo0qGkx.lvbRfIDddf2PCKVWMWNExL1km0+MGy1CnVIvjlkPgcaysG1NA+MAlzTlpA+yopLi8xgvS3uIvjpmA4iGgmzxDXRUJEClu4YlZpBPlypb6J7TvI0LAlTkl5At206eWmzLyo8sdOkaSDTRKPfILADf.0G2oenHUKW2islEKV36NJVpvjhgSxjxmqyy7VtbldmqDXRVy.q0ImssThlk.yb5ZTi7mAPaKBOYLRQlhJLIKXfRBAgmj2DXRxX.Q1GWmmjaDXRxXvO5KsUldNrYGlKqD.fdPfISBWqcL2zliolojknwwjjTZy6kuq+ugXZ1BLcokTmL.E4DmnPsgTkknBSFLgjTBbWEp+TLS+HvjdwfNTpT0Iwh.S1IgjTaT0IGCAlrSFHgZkpNYLDXBzzDTRe45vrg45VCvI7S+MqUX5RKI8brafwwT2lGRYFhojsAHjDNdNggPfYEydDCwWM8HHyL9MLBLqLkdGXnjTSgmbXBLq.5nBomvy52hUI3aSSCPbXJWg7Wt1OsDGGN0KypvrfUZM1gVTN0OMWCuKEtNLAnwrN3z0h8vHvLiowLzNVrXQR5ympO2RjojMy3jE.ZSo757zXM8SRBLcG+44DRBr1be11VJi4jCYFI4rjEgj.CSrFyX6oe03O8WRpvLG1SgTPHIvXMEUdVZiCk5riYKvb6ufS8J9bQHIPrEimmmk13QqyLR4XpSZfYWqXs1YiUo0nDnrLlwXJ8wkR0IHUzCL22JPqTUI.L8l6SPpncR+zmoEX6.yRO.szW9AZCk9c3mglcLUquGUEls3wmqEWmAJas1yxyoZ8cvAlicAnjqFqUZjAT2ZsmnJwd8sWSIaT9f1QfYtFj1BMl.HDx6w6lhriwt9t2JLK848dnx4FM.LUT4Y+VW2af41WyKiUtVEYHzFMN.nuhw034bHlWO+888H4270S8Mwfbrg..4fTO9XtUrkGuW..8vACLO1okM06gPqcmEBf4VpFmctymR9TxFBweZYcbIAX9LE2iWScwVcIKBLikb9.TCPMqTNYgNF89Vi2XR6G5eyX+LVq19xAfR1bcitYNxmBgBtByZcOX.nVLm26vmiLgI8oUxTRPI.kiI6IHRG2X1mpOydGXtuSLmX8H8J0WSl.PZcrY.84Yu7X+Lhx0g45OXAc.PpMUEd4FW..Tjl6YjbPAli4hDcn+Mw59WK.TVli.vi4yHZUXJnC.lKo3QF4fCLELB.kniMLMpGCycElZZYAf8oDtBIbR+..EkTLcrgvHCLmiJ.UkI.sgb+j8YsnWgYrlVV.fskxot0TxB.Eu4HHczAl6qhwXUMopRAntMWULFiOiYsBSAf.vXk5yjVSIK.TL5pnq4JH8nd7dsuEvMexir8Syjg7bKySvD.pSCYr8MesS4ivq8Yxe.R20FjsWoEFB.coqbhc87ubpMoAlGJHTvI.zk9lKLm4FKVkQoT6q7bSKK.0iRb79r5j9Y8wqzYRK.sm0i+GqvxXmkDsojMVqjllV.ZKSw38SQUpS9I8yX0UvYtVlN.zeaeFuVJiqmsAlq00oQL.T1JwYQLZGCyo5t3ylGSyRZCK.zso9xBYppZMKqvLUWTp.v7XWgl47X9YSfYorAC.hqRI7L5WGlCsT3wNcqkzAJFfV2XFydL4CSY1PRpvLm2CB.HOj56craa1BLykUX.nrjKSY6jbqwaWOkRlpOG.HeMUiU20SBqoLSXxpvTXF.Lkl6mZIY0Me8wPvL.4qZZL5r5lu9XLU2vD.fiSMEVFBUPfI.vbnJBLUkI.4kZq5xPnRBLCAgl.jKpwvxPnhBLA.lRUUfopLAHsp0pKCgJKvD.XpTcAlpxDfznlqtLDpv.yPPnI.ysZOrLDpz.S.fXauAlKVrXzUp83iOFd+6ee3Uu5UO89rXwhvKdwKBWbwEgau81Q891WpxDf4wTTc4l4F66mW8pWEVtb4deuhUdzduWxN1Gty2d6sge9m+4C95N8zSCe5SeJ7pW8pA89ODsvzD.PpLGOIR5iSO8zv82ee3Eu3EO62Gy7nnOkr2e+8Osvc4kWF97m+bX0pUO8ye7G+Q3cu6cgPHD9xW9R3+7e9OgGe7wXuX..UfMyO19mu90uFt4laBgvemm7gO7gm82F87nU6QHDVcfWx+v4me9pPHr5cu6c68080u90UmbxIqBgvpe4W9kA8YLTCcc..Nrobr0gj+7a+1usJDBqN4jSd1uO14QQeJYW+270u90+Qowaa4xkgqu95vImbxjWkoolEf3YpGScn4Oc85icdzjEX9W+0eEN6ry16q8wGeL7C+vOL3OiwPfI.wSIEXFq7nneLLO8zSCgPHb94mGt+9626q8Eu3EOMWxSsUNqYAHJxsBPVeVx9xW9xm86icdTzqv7t6tK7e+u+2m9uO4jSBWbwEgW9xWFd0qdU3hKtn2uWSgb6KZ.JIy0Xn8I+4gGdH7wO9wmNYe9se62Bu90u9o+8XmGMIWVI2c2cg2912F9y+7O67e+zSOMbwEWDdyadyAKSN1DXBv3M2Al80adyaBu+8u+e76iYdzjDXt1CO7P3t6tK7m+4eF9i+3O5bA9W9ke4fWzowlPS.Ft4bryXccXtVLxilz.ytb+82Gt6t6Be3CeH7su8sPHDBu6cuK71291n8YzGBMAn+l6wL6S9yiO9X31auMb80WGBg+9XUd2c206OiglGM6Ala5pqtJ7wO9wY4xJoKBMA3vRwXkCI+Yy6lOic4rO4QI85vbNurR5h.S.NrbOvbWu9XmGE8KqjSN4jPHDFTYwohK0D.1uRtvhXmGE8.yqt5pm9eOzzrt9TA97yOO1KF8lPS.5VIGVFBwOOJ5SI6lk0dxImDd+6ee3hKt3oSW2Ge7wvc2cW3W+0eM76+9uGBgP3ye9yI85yrzaT.vTHkiMFiojM14Q8JvruV+Vc+82Gt7xKCe4Ke4f+MaegllJBMA36R8XhiMvb6yx0XlGMIAlqsb4xv+6+8+dJ4dsyO+7vO8S+T30u90G7.wNmRcCD.xA4vXgiMvbW+MwHOZuAlsnbngB.ohw.2sneR+..TiDXtEm0r.sJUWteBL6fPSfVivxCSfI.POHvbGTkIPqP0k8i.y8PnIPsSXY+Iv7.DZBTqDVNLBL6Agl.0FgkCm.ydRnIPsPX43Hvb.DZBT5DVNdBLGHgl.kJgkGGAlifPSfRivxim.yQRnIPoPXYbHv7HHzDH2IrLdDXdjDZBjqDVFWBLi.gl.4Fgkwm.yHQnIPtPX4zPfYDIzDH0DVNcDXB.zCBLiLUYBjJptbZIvbBHzDXtIrb5IvbhHzDXtHrbdHvbBIzDXpIrb9HvbhIzDXpHrbdIvbFHzDH1DVN+DXNSDZBDKBKSCAlyHgl.GKgkoi.yYlPSfwRXYZIvLADZBLTBKSOAlIhPSf9RXYdPfYBIzD3PDVlODXlXBMA1Egk4k+cpW.34gl5b.X7f7j.yLw5NF1iRnsYLf7k.yLipMg1j984OAlYHUaBsE80KCNoexXNgff5mvxxgJLyblhVnNoec4QfYAvTzB0E8kKSBLKHp1DJa5+V1DXVXTsITlzms74j9oP4DBBJGBKqCpvrfYJZg7l9m0EAlENSQKjmzmr9HvrRnZSHOneX8RfYEQ0lPZouWcSfYER0lv7R+s1f.yJkpMg4g9XsCAlUNUaBSC8qZOBLa.p1DhK8kZSBLaHp1DNN5+z1DX1X1rZyM+uA1M8WHDDX1rLMsP+nOBqIvrwYZZgtoeAaSfIp1D1h9BzEAl7DUaRqS6e1GAl7LaeRAs4uCpQZqSeIvjNs4.G1qapQZWyPIvjCxkhB0DsiYrDXRuY5ZoToMKwf.SFLSWKkBsOIlDXxQwz0RNR6QlBBLIJLcsjZZ6wTSfIQkoqk4l1YLWDXxjQUmLUzlhTPfISNUcRrn8Coj.SlUp5jgRaExEBLII5ppys+8ztzlfbj.SRNSYKq46exYBLIqXJaaO9tlRg.SxRlx15luSoDIvjr2tBO65em7iuynVHvjhRWCzZ.47guKnlIvjhmPzzv1XZMBLoJIDMtrsCDXRCougn660Wyrs.1OAlzz1WPPMFfTiqSvbQfIrCiMLcLuei0PWNDJBim.SXDFSvyXBYmhkCfwQfILSDtAks+UpW...JA+e5BkHuY7wv4N.....IUjSD4pPfIH" ],
					"embed" : 1,
					"id" : "obj-17",
					"ignoreclick" : 1,
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 279.0, 392.0, 280.0, 280.0 ],
					"pic" : "Macintosh HD:/Users/nilspeters/Desktop/ITU-setup.pct",
					"presentation" : 1,
					"presentation_rect" : [ 234.0, 405.0, 280.0, 280.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 288.28125, 354.5, 355.5, 354.5 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 297.0625, 349.0, 421.5, 349.0 ],
					"source" : [ "obj-13", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 305.84375, 343.5, 493.5, 343.5 ],
					"source" : [ "obj-13", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 314.625, 338.5, 567.5, 338.5 ],
					"source" : [ "obj-13", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 323.40625, 333.5, 272.5, 333.5 ],
					"source" : [ "obj-13", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 42.5, 112.5, 243.5, 112.5 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 42.5, 112.0, 279.5, 112.0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 137.5, 389.0, 92.5, 389.0 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 92.5, 430.0, 247.0, 430.0, 247.0, 202.0, 279.5, 202.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-7", 0 ]
				}

			}
 ]
	}

}
