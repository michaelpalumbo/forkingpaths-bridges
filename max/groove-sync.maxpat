{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 59.0, 106.0, 1000.0, 780.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 32.0, 670.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.7607843137254902, 0.4823529411764706, 0.4823529411764706, 1.0 ],
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 32.0, 715.0, 75.0, 22.0 ],
                    "text": "forkingPaths"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 130.5, 395.0, 83.0, 24.0 ],
                    "text": "r sho_length"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-90",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 743.0, 471.0, 229.0, 22.0 ],
                    "text": "0 to 1 times length of drumloop in ms"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-89",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 423.0, 551.0, 68.0, 22.0 ],
                    "text": "Feedback"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-88",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 423.0, 510.0, 83.0, 22.0 ],
                    "text": "Feedforward"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-86",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 423.0, 479.0, 76.0, 22.0 ],
                    "text": "Delay Time"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-85",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 423.0, 441.0, 78.0, 22.0 ],
                    "text": "Effect Level"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-84",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 748.0, 198.0, 215.0, 84.0 ],
                    "text": "This umenu controls rate~, which produces a second sync signal that is a harmonic (multiple) of the master phasor~. This controls the playback of the drum loop."
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-80",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 270.0, 410.0, 68.0, 38.0 ],
                    "text": "sho audio to comb~"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-79",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 70.0, 198.0, 161.0, 84.0 ],
                    "text": "The phasor~ frequency is calculated so that the sho sample  plays at normal speed when middle C on the keyboard is selected."
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-78",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 235.75, 96.0, 513.0, 38.0 ],
                    "text": "groove~'s right outlet provides a sync signal that can control other samples and effects. When the entire loop is played, the sync signal goes from 0 to 1."
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-75",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 462.0, 198.0, 184.0, 69.0 ],
                    "text": " This float box controls the timing of the comb filter delay and panning relative to the master phasor~."
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-82",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 555.5, 49.0, 117.0, 26.0 ],
                    "text": "Try the presets."
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-70",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 820.0, 49.0, 94.0, 26.0 ],
                    "text": "Start Audio"
                }
            },
            {
                "box": {
                    "border": 0,
                    "filename": "helpdetails.js",
                    "id": "obj-43",
                    "ignoreclick": 1,
                    "jsarguments": [ "groove-sync" ],
                    "maxclass": "jsui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 25.0, 14.0, 403.0, 68.0 ]
                }
            },
            {
                "box": {
                    "calccount": 8,
                    "id": "obj-28",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 348.0, 307.0, 104.0, 76.0 ],
                    "range": [ 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 812.5, 588.0, 79.0, 24.0 ],
                    "text": "send~ GSR"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-67",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 711.0, 588.0, 77.0, 24.0 ],
                    "text": "send~ GSL"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 328.0, 591.0, 79.0, 24.0 ],
                    "text": "send~ GSR"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-65",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 248.999985, 591.0, 77.0, 24.0 ],
                    "text": "send~ GSL"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "hidden": 1,
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 820.0, 6.0, 93.0, 24.0 ],
                    "text": "receive~ GSR"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "hidden": 1,
                    "id": "obj-63",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 715.0, 5.0, 91.0, 24.0 ],
                    "text": "receive~ GSL"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 130.5, 588.0, 79.0, 24.0 ],
                    "text": "send~ GSR"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 22.5, 588.0, 77.0, 24.0 ],
                    "text": "send~ GSL"
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 768.0, 40.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-76",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 92.0, 117.599998, 21.0, 22.0 ],
                    "text": "^"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 11.595187,
                    "hidden": 1,
                    "id": "obj-73",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 488.5, 14.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "fontsize": 12.754706,
                    "id": "obj-72",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 488.5, 40.0, 66.0, 43.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-1", "kslider", "int", 65, 5, "obj-12", "umenu", "int", 6, 5, "obj-27", "number", "float", 1.0, 6, "obj-34", "gain~", "list", 127, 10.0, 6, "obj-35", "gain~", "list", 127, 10.0, 6, "obj-37", "gain~", "list", 127, 10.0, 6, "obj-36", "gain~", "list", 127, 10.0, 6, "obj-38", "gain~", "list", 0, 10.0, 5, "obj-44", "slider", "float", 1.0, 5, "obj-45", "slider", "float", 7.0, 5, "obj-46", "slider", "float", 116.0 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-1", "kslider", "int", 65, 5, "obj-12", "umenu", "int", 3, 5, "obj-27", "number", "float", 1.0, 6, "obj-34", "gain~", "list", 127, 10.0, 6, "obj-35", "gain~", "list", 127, 10.0, 6, "obj-37", "gain~", "list", 0, 10.0, 6, "obj-36", "gain~", "list", 0, 10.0, 6, "obj-38", "gain~", "list", 139, 10.0, 5, "obj-44", "slider", "float", 1.0, 5, "obj-45", "slider", "float", 38.0, 5, "obj-46", "slider", "float", 71.0 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-1", "kslider", "int", 65, 5, "obj-12", "umenu", "int", 5, 5, "obj-27", "number", "float", 1.33333, 6, "obj-34", "gain~", "list", 127, 10.0, 6, "obj-35", "gain~", "list", 127, 10.0, 6, "obj-37", "gain~", "list", 0, 10.0, 6, "obj-36", "gain~", "list", 0, 10.0, 6, "obj-38", "gain~", "list", 139, 10.0, 5, "obj-44", "slider", "float", 1.0, 5, "obj-45", "slider", "float", 1.0, 5, "obj-46", "slider", "float", 127.0 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-1", "kslider", "int", 65, 5, "obj-12", "umenu", "int", 5, 5, "obj-27", "number", "float", 6.0, 6, "obj-34", "gain~", "list", 127, 10.0, 6, "obj-35", "gain~", "list", 127, 10.0, 6, "obj-37", "gain~", "list", 0, 10.0, 6, "obj-36", "gain~", "list", 0, 10.0, 6, "obj-38", "gain~", "list", 139, 10.0, 5, "obj-44", "slider", "float", 1.0, 5, "obj-45", "slider", "float", 8.0, 5, "obj-46", "slider", "float", 100.0 ]
                        },
                        {
                            "number": 5,
                            "data": [ 5, "obj-1", "kslider", "int", 65, 5, "obj-12", "umenu", "int", 7, 5, "obj-27", "number", "float", 1.0, 6, "obj-34", "gain~", "list", 132, 10.0, 6, "obj-35", "gain~", "list", 132, 10.0, 6, "obj-37", "gain~", "list", 0, 10.0, 6, "obj-36", "gain~", "list", 0, 10.0, 6, "obj-38", "gain~", "list", 131, 10.0, 5, "obj-44", "slider", "float", 96.0, 5, "obj-45", "slider", "float", 1.0, 5, "obj-46", "slider", "float", 127.0 ]
                        },
                        {
                            "number": 6,
                            "data": [ 5, "obj-1", "kslider", "int", 65, 5, "obj-12", "umenu", "int", 4, 5, "obj-27", "number", "float", 2.0, 6, "obj-34", "gain~", "list", 132, 10.0, 6, "obj-35", "gain~", "list", 132, 10.0, 6, "obj-37", "gain~", "list", 0, 10.0, 6, "obj-36", "gain~", "list", 0, 10.0, 6, "obj-38", "gain~", "list", 132, 10.0, 5, "obj-44", "slider", "float", 127.0, 5, "obj-45", "slider", "float", 10.0, 5, "obj-46", "slider", "float", 106.0 ]
                        },
                        {
                            "number": 7,
                            "data": [ 5, "obj-1", "kslider", "int", 65, 5, "obj-12", "umenu", "int", 4, 5, "obj-27", "number", "float", 12.0, 6, "obj-34", "gain~", "list", 132, 10.0, 6, "obj-35", "gain~", "list", 132, 10.0, 6, "obj-37", "gain~", "list", 0, 10.0, 6, "obj-36", "gain~", "list", 0, 10.0, 6, "obj-38", "gain~", "list", 132, 10.0, 5, "obj-44", "slider", "float", 108.0, 5, "obj-45", "slider", "float", 14.0, 5, "obj-46", "slider", "float", 95.0 ]
                        },
                        {
                            "number": 8,
                            "data": [ 5, "obj-1", "kslider", "int", 65, 5, "obj-12", "umenu", "int", 6, 5, "obj-27", "number", "float", 5.0, 6, "obj-34", "gain~", "list", 0, 10.0, 6, "obj-35", "gain~", "list", 0, 10.0, 6, "obj-37", "gain~", "list", 106, 10.0, 6, "obj-36", "gain~", "list", 106, 10.0, 6, "obj-38", "gain~", "list", 130, 10.0, 5, "obj-44", "slider", "float", 13.0, 5, "obj-45", "slider", "float", 47.0, 5, "obj-46", "slider", "float", 62.0 ]
                        },
                        {
                            "number": 9,
                            "data": [ 5, "obj-1", "kslider", "int", 65, 5, "obj-12", "umenu", "int", 0, 5, "obj-27", "number", "float", 5.0, 6, "obj-34", "gain~", "list", 145, 10.0, 6, "obj-35", "gain~", "list", 145, 10.0, 6, "obj-37", "gain~", "list", 0, 10.0, 6, "obj-36", "gain~", "list", 0, 10.0, 6, "obj-38", "gain~", "list", 130, 10.0, 5, "obj-44", "slider", "float", 79.0, 5, "obj-45", "slider", "float", 1.0, 5, "obj-46", "slider", "float", 125.0 ]
                        },
                        {
                            "number": 10,
                            "data": [ 5, "obj-1", "kslider", "int", 72, 5, "obj-12", "umenu", "int", 13, 5, "obj-27", "number", "float", 16.0, 6, "obj-34", "gain~", "list", 123, 10.0, 6, "obj-35", "gain~", "list", 123, 10.0, 6, "obj-37", "gain~", "list", 0, 10.0, 6, "obj-36", "gain~", "list", 0, 10.0, 6, "obj-38", "gain~", "list", 130, 10.0, 5, "obj-44", "slider", "float", 22.0, 5, "obj-45", "slider", "float", 1.0, 5, "obj-46", "slider", "float", 125.0 ]
                        },
                        {
                            "number": 11,
                            "data": [ 5, "obj-1", "kslider", "int", 72, 5, "obj-12", "umenu", "int", 6, 5, "obj-27", "number", "float", 5.0, 6, "obj-34", "gain~", "list", 133, 10.0, 6, "obj-35", "gain~", "list", 133, 10.0, 6, "obj-37", "gain~", "list", 0, 10.0, 6, "obj-36", "gain~", "list", 0, 10.0, 6, "obj-38", "gain~", "list", 130, 10.0, 5, "obj-44", "slider", "float", 17.0, 5, "obj-45", "slider", "float", 1.0, 5, "obj-46", "slider", "float", 125.0 ]
                        },
                        {
                            "number": 12,
                            "data": [ 5, "obj-1", "kslider", "int", 72, 5, "obj-12", "umenu", "int", 7, 5, "obj-27", "number", "float", 2.0, 6, "obj-34", "gain~", "list", 133, 10.0, 6, "obj-35", "gain~", "list", 133, 10.0, 6, "obj-37", "gain~", "list", 0, 10.0, 6, "obj-36", "gain~", "list", 0, 10.0, 6, "obj-38", "gain~", "list", 130, 10.0, 5, "obj-44", "slider", "float", 7.0, 5, "obj-45", "slider", "float", 1.0, 5, "obj-46", "slider", "float", 125.0 ]
                        },
                        {
                            "number": 13,
                            "data": [ 5, "obj-1", "kslider", "int", 69, 5, "obj-12", "umenu", "int", 7, 5, "obj-27", "number", "float", 2048.0, 6, "obj-34", "gain~", "list", 96, 10.0, 6, "obj-35", "gain~", "list", 96, 10.0, 6, "obj-37", "gain~", "list", 0, 10.0, 6, "obj-36", "gain~", "list", 0, 10.0, 6, "obj-38", "gain~", "list", 130, 10.0, 5, "obj-44", "slider", "float", 1.0, 5, "obj-45", "slider", "float", 41.0, 5, "obj-46", "slider", "float", 94.0 ]
                        },
                        {
                            "number": 14,
                            "data": [ 5, "obj-1", "kslider", "int", 72, 5, "obj-12", "umenu", "int", 7, 5, "obj-27", "number", "float", 72.0, 6, "obj-34", "gain~", "list", 133, 10.0, 6, "obj-35", "gain~", "list", 133, 10.0, 6, "obj-37", "gain~", "list", 108, 10.0, 6, "obj-36", "gain~", "list", 108, 10.0, 6, "obj-38", "gain~", "list", 149, 10.0, 5, "obj-44", "slider", "float", 65.0, 5, "obj-45", "slider", "float", 11.0, 5, "obj-46", "slider", "float", 40.0 ]
                        },
                        {
                            "number": 15,
                            "data": [ 5, "obj-1", "kslider", "int", 77, 5, "obj-12", "umenu", "int", 1, 5, "obj-27", "number", "float", 0.333, 6, "obj-34", "gain~", "list", 112, 10.0, 6, "obj-35", "gain~", "list", 112, 10.0, 6, "obj-37", "gain~", "list", 0, 10.0, 6, "obj-36", "gain~", "list", 0, 10.0, 6, "obj-38", "gain~", "list", 130, 10.0, 5, "obj-44", "slider", "float", 17.0, 5, "obj-45", "slider", "float", 21.0, 5, "obj-46", "slider", "float", 119.0 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 34.0, 34.0, 423.0, 168.0 ],
                        "default_fontsize": 13.0,
                        "default_fontname": "Lato",
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 302.0, 109.0, 94.0, 24.0 ],
                                    "text": "s drum_length"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 10,
                                    "outlettype": [ "float", "list", "float", "float", "float", "float", "float", "", "int", "" ],
                                    "patching_rect": [ 190.0, 79.0, 168.0, 24.0 ],
                                    "text": "info~ drum"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 190.0, 51.0, 65.0, 24.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 121.0, 109.0, 85.0, 24.0 ],
                                    "text": "s sho_length"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 10,
                                    "outlettype": [ "float", "list", "float", "float", "float", "float", "float", "", "int", "" ],
                                    "patching_rect": [ 8.0, 79.0, 170.0, 24.0 ],
                                    "text": "info~ sho"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 8.0, 51.0, 65.0, 24.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 190.0, 12.0, 192.0, 24.0 ],
                                    "text": "buffer~ drum drumLoop.aif -1 2"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 8.0, 12.0, 174.0, 24.0 ],
                                    "text": "buffer~ sho sho0630.aif -1 2"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-5", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-8", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ],
                        "styles": [
                            {
                                "name": "AudioStatus_Menu",
                                "default": {
                                    "bgfillcolor": {
                                        "angle": 270.0,
                                        "autogradient": 0,
                                        "color": [ 0.294118, 0.313726, 0.337255, 1 ],
                                        "color1": [ 0.454902, 0.462745, 0.482353, 0.0 ],
                                        "color2": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                        "proportion": 0.39,
                                        "type": "color"
                                    }
                                },
                                "parentstyle": "",
                                "multi": 0
                            }
                        ]
                    },
                    "patching_rect": [ 157.600006, 129.600006, 64.0, 24.0 ],
                    "saved_object_attributes": {
                        "fontname": "Lato",
                        "fontsize": 13.0
                    },
                    "text": "p sounds"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "hidden": 1,
                    "id": "obj-61",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 828.5, 520.0, 47.0, 24.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-56",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 594.0, 322.0, 50.0, 24.0 ],
                    "text": "$1 500"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-55",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 539.5, 322.0, 50.0, 24.0 ],
                    "text": "$1 500"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 594.0, 292.75, 44.0, 24.0 ],
                    "text": "/ 128."
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 539.5, 292.75, 44.0, 24.0 ],
                    "text": "/ 128."
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 472.75, 322.0, 39.0, 24.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-51",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 472.75, 292.75, 50.0, 24.0 ],
                    "text": "$1 500"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 550.5, 357.0, 39.0, 24.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 503.75, 357.0, 39.0, 24.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 457.0, 357.0, 34.75, 24.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 410.25, 393.0, 206.0, 24.0 ],
                    "text": "comb~ 1000 1 0.1 0 0.9"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 410.0, 528.0, 102.0, 19.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "slider[2]",
                            "parameter_modmode": 3,
                            "parameter_shortname": "slider[2]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "slider[2]"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 410.0, 497.0, 102.0, 19.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "slider[1]",
                            "parameter_modmode": 3,
                            "parameter_shortname": "slider[1]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "slider[1]"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 410.0, 462.0, 102.0, 19.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "slider",
                            "parameter_modmode": 3,
                            "parameter_shortname": "slider",
                            "parameter_type": 0
                        }
                    },
                    "varname": "slider"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "hidden": 1,
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 820.0, 31.0, 46.0, 24.0 ],
                    "text": "*~ 0.3"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "hidden": 1,
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 715.0, 30.0, 46.0, 24.0 ],
                    "text": "*~ 0.3"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "hidden": 1,
                    "id": "obj-39",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 169.0, 530.0, 47.0, 24.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "interpinlet": 1,
                    "maxclass": "gain~",
                    "multichannelvariant": 0,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 410.0, 422.0, 104.0, 19.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "gain~[2]",
                            "parameter_mmax": 157.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "gain~[2]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "gain~[2]"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "interpinlet": 1,
                    "maxclass": "gain~",
                    "multichannelvariant": 0,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 130.5, 557.0, 94.0, 23.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "gain~[1]",
                            "parameter_mmax": 157.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "gain~[1]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "gain~[1]"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "interpinlet": 1,
                    "maxclass": "gain~",
                    "multichannelvariant": 0,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 22.5, 557.0, 94.0, 23.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "gain~",
                            "parameter_mmax": 157.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "gain~",
                            "parameter_type": 0
                        }
                    },
                    "varname": "gain~"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "interpinlet": 1,
                    "maxclass": "gain~",
                    "multichannelvariant": 0,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 812.5, 557.0, 94.0, 23.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "gain~[4]",
                            "parameter_mmax": 157.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "gain~[4]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "gain~[4]"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "interpinlet": 1,
                    "maxclass": "gain~",
                    "multichannelvariant": 0,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 711.0, 557.0, 94.0, 23.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "gain~[3]",
                            "parameter_mmax": 157.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "gain~[3]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "gain~[3]"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 248.999985, 554.0, 73.0, 24.0 ],
                    "text": "pan2S"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 303.0, 523.0, 49.0, 24.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "format": 6,
                    "id": "obj-27",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 363.0, 208.0, 73.0, 24.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "number",
                            "parameter_modmode": 0,
                            "parameter_shortname": "number",
                            "parameter_type": 3
                        }
                    },
                    "varname": "number"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 363.0, 235.0, 33.0, 24.0 ],
                    "text": "!/ 1."
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 333.0, 274.0, 111.0, 24.0 ],
                    "text": "rate~ @sync lock"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 58.0, 471.0, 60.0, 24.0 ],
                    "text": "*~ 0.707"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 22.5, 424.0, 127.0, 24.0 ],
                    "text": "wave~ sho 5 3435 2"
                }
            },
            {
                "box": {
                    "calccount": 8,
                    "id": "obj-18",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 36.0, 307.0, 104.0, 76.0 ],
                    "range": [ 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "bang" ],
                    "patching_rect": [ 711.0, 505.0, 87.0, 24.0 ],
                    "text": "play~ drum 2"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 839.0, 430.0, 89.0, 24.0 ],
                    "text": "r drum_length"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 711.0, 471.0, 32.5, 24.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "calccount": 8,
                    "id": "obj-13",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 729.0, 386.0, 104.0, 76.0 ],
                    "range": [ 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 803.0, 333.0, 33.0, 24.0 ],
                    "text": "!/ 1."
                }
            },
            {
                "box": {
                    "color": [ 0.858824, 0.858824, 0.858824, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 711.0, 360.0, 111.0, 24.0 ],
                    "text": "rate~ @sync lock"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 26.0, 159.0, 59.0, 24.0 ],
                    "text": "phasor~"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 611.0, 44.0, 191.0, 219.0 ],
                        "default_fontsize": 10.0,
                        "default_fontname": "Lato",
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 11.595187,
                                    "id": "obj-13",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 96.0, 88.0, 85.0, 20.0 ],
                                    "text": "expr 1000./$f1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 11.595187,
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 96.0, 63.0, 74.0, 20.0 ],
                                    "text": "r sho_length"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 11.595187,
                                    "id": "obj-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 11.0, 188.0, 150.0, 20.0 ],
                                    "text": "(signal) phasor~ frequency"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-10",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 21.0, 165.0, 25.0, 25.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 11.595187,
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 21.0, 136.0, 32.0, 20.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 11.595187,
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 21.0, 111.0, 94.470589, 20.0 ],
                                    "text": "* 1."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 11.595187,
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 21.0, 86.0, 63.0, 20.0 ],
                                    "text": "transRatio"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 11.595187,
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 21.0, 62.0, 30.470589, 20.0 ],
                                    "text": "- 60"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 11.595187,
                                    "id": "obj-4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 60.0, 36.0, 23.0, 18.0 ],
                                    "text": "72"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 11.595187,
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 60.0, 11.0, 58.0, 20.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 11.595187,
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 11.0, 10.0, 46.0, 20.0 ],
                                    "text": "pitch in"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 21.0, 27.0, 25.0, 25.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 1 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "midpoints": [ 69.5, 58.0, 30.5, 58.0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 26.0, 129.600006, 124.0, 24.0 ],
                    "saved_object_attributes": {
                        "fontname": "Lato",
                        "fontsize": 10.0
                    },
                    "text": "p phasor-frequency"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "hidden": 1,
                    "id": "obj-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 26.0, 106.599998, 45.0, 24.0 ],
                    "text": "size 1"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "hidden": 1,
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 26.0, 89.599998, 65.0, 24.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "kslider",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": 48,
                    "outlettype": [ "int", "int" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 26.0, 87.599998, 147.0, 34.0 ],
                    "range": 36,
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "kslider",
                            "parameter_modmode": 0,
                            "parameter_shortname": "kslider",
                            "parameter_type": 3
                        }
                    },
                    "varname": "kslider"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                    "fontface": 1,
                    "fontsize": 13.0,
                    "hint": "",
                    "id": "obj-74",
                    "ignoreclick": 1,
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 670.5, 51.0, 20.0, 20.0 ],
                    "rounded": 60.0,
                    "text": "2",
                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 1.0, 0.788235, 0.470588, 1.0 ],
                    "fontface": 1,
                    "fontsize": 13.0,
                    "hint": "",
                    "id": "obj-93",
                    "ignoreclick": 1,
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 915.0, 51.5, 20.0, 20.0 ],
                    "rounded": 60.0,
                    "text": "1",
                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                }
            },
            {
                "box": {
                    "background": 1,
                    "fontname": "Lato",
                    "fontsize": 9.160198,
                    "id": "obj-77",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 943.0, 14.0, 19.0, 17.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 732.0, 93.0, 85.0, 17.0 ],
                    "text": "<"
                }
            },
            {
                "box": {
                    "background": 1,
                    "fontface": 0,
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-12",
                    "items": [ 0.125, ",", 0.25, ",", 0.333, ",", 0.5, ",", 0.6667, ",", 0.75, ",", 1, ",", 1.25, ",", 1.333, ",", 1.5, ",", 2, ",", 3, ",", 4, ",", 6 ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 756.0, 292.75, 112.0, 24.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "0.125", "0.25", "0.333", "0.5", "0.6667", "0.75", "1", "1.25", "1.333", "1.5", "2", "3", "4", "6" ],
                            "parameter_longname": "umenu",
                            "parameter_mmax": 13,
                            "parameter_modmode": 0,
                            "parameter_shortname": "umenu",
                            "parameter_type": 2
                        }
                    },
                    "varname": "umenu"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 1 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "midpoints": [ 812.0, 323.0, 812.5, 323.0 ],
                    "source": [ "obj-12", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 1 ],
                    "midpoints": [ 848.5, 465.0, 734.0, 465.0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.945098, 0.913725, 0.407843, 1.0 ],
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-17", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "order": 1,
                    "source": [ "obj-19", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.945098, 0.913725, 0.407843, 1.0 ],
                    "destination": [ "obj-20", 0 ],
                    "order": 0,
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "order": 0,
                    "source": [ "obj-19", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.945098, 0.913725, 0.407843, 1.0 ],
                    "destination": [ "obj-37", 0 ],
                    "order": 1,
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "hidden": 1,
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 1 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "midpoints": [ 342.5, 301.0, 357.5, 301.0 ],
                    "order": 1,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 1 ],
                    "order": 2,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "midpoints": [ 342.5, 301.0, 466.5, 301.0 ],
                    "order": 0,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 2 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.082353, 0.431373, 0.411765, 1.0 ],
                    "destination": [ "obj-33", 1 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "midpoints": [ 312.49998500000004, 584.0, 337.5, 584.0 ],
                    "source": [ "obj-33", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "hidden": 1,
                    "source": [ "obj-34", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "hidden": 1,
                    "source": [ "obj-35", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "hidden": 1,
                    "source": [ "obj-36", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "hidden": 1,
                    "source": [ "obj-37", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "hidden": 1,
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "hidden": 1,
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 1 ],
                    "hidden": 1,
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "midpoints": [ 419.5, 583.0, 674.0, 583.0, 674.0, 275.0, 482.25, 275.0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "midpoints": [ 419.5, 577.0, 668.0, 577.0, 668.0, 280.0, 549.0, 280.0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "midpoints": [ 419.5, 572.0, 660.0, 572.0, 660.0, 288.0, 603.5, 288.0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 1 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 2 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "midpoints": [ 35.5, 189.0, 45.5, 189.0 ],
                    "order": 2,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "order": 3,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "midpoints": [ 35.5, 189.0, 342.5, 189.0 ],
                    "order": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "midpoints": [ 35.5, 190.0, 720.5, 190.0 ],
                    "order": 0,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 3 ],
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 1 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "midpoints": [ 549.0, 348.0, 513.25, 348.0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "midpoints": [ 603.5, 353.0, 560.0, 353.0 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "hidden": 1,
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "hidden": 1,
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "hidden": 1,
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 720.5, 383.0, 738.5, 383.0 ],
                    "order": 0,
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "order": 1,
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-1": [ "kslider", "kslider", 0 ],
            "obj-12": [ "umenu", "umenu", 0 ],
            "obj-27": [ "number", "number", 0 ],
            "obj-34": [ "gain~[3]", "gain~[3]", 0 ],
            "obj-35": [ "gain~[4]", "gain~[4]", 0 ],
            "obj-36": [ "gain~[1]", "gain~[1]", 0 ],
            "obj-37": [ "gain~", "gain~", 0 ],
            "obj-38": [ "gain~[2]", "gain~[2]", 0 ],
            "obj-44": [ "slider", "slider", 0 ],
            "obj-45": [ "slider[1]", "slider[1]", 0 ],
            "obj-46": [ "slider[2]", "slider[2]", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}