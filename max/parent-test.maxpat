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
        "rect": [ 84.0, 131.0, 1000.0, 780.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 790.0, 60.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 790.0, 114.0, 69.0, 22.0 ],
                    "text": "metro 1000"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 726.0, 460.0, 41.0, 22.0 ],
                    "text": "line 0."
                }
            },
            {
                "box": {
                    "addpoints": [ 10.638297872340425, 0.05333333333333334, 0, 159.5744680851064, 0.9733333333333334, 0, 462.7659574468085, 0.24, 0, 547.8723404255319, 1.0, 0, 590.4255319148937, 0.8266666666666667, 0, 792.5531914893617, 0.5733333333333334, 0, 819.1489361702128, 0.0, 0 ],
                    "classic_curve": 1,
                    "id": "obj-15",
                    "maxclass": "function",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "float", "", "", "bang" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 665.0, 318.0, 200.0, 100.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "function",
                            "parameter_modmode": 0,
                            "parameter_shortname": "function",
                            "parameter_type": 3
                        }
                    },
                    "varname": "function"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 471.0, 472.0, 34.0, 22.0 ],
                    "text": "*~ 1."
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 472.0, 725.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 472.0, 529.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 472.0, 369.0, 29.5, 22.0 ],
                    "text": "* 2"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 472.0, 413.0, 43.0, 22.0 ],
                    "text": "cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 544.0, 166.0, 20.0, 140.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "slider[4]",
                            "parameter_modmode": 3,
                            "parameter_shortname": "slider[4]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "slider[4]"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 911.0, 107.0, 20.0, 140.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "slider[3]",
                            "parameter_modmode": 3,
                            "parameter_osc_name": "slider2",
                            "parameter_shortname": "slider",
                            "parameter_type": 0
                        }
                    },
                    "varname": "slider[3]"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 643.0, 127.0, 20.0, 140.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "slider[2]",
                            "parameter_modmode": 3,
                            "parameter_osc_name": "slider2",
                            "parameter_shortname": "slider",
                            "parameter_type": 0
                        }
                    },
                    "varname": "slider[2]"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 226.0, 40.0, 150.0, 33.0 ],
                    "text": "TODO: need to figure out longer array changes"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 226.0, 82.0, 174.0, 149.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "multislider",
                            "parameter_modmode": 0,
                            "parameter_osc_name": "multislider",
                            "parameter_shortname": "multislider",
                            "parameter_type": 3
                        }
                    },
                    "size": 4,
                    "varname": "multislider"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 121.0, 209.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 46.0, 194.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 121.0, 53.0, 20.0, 140.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "slider[1]",
                            "parameter_modmode": 3,
                            "parameter_osc_name": "slider2",
                            "parameter_shortname": "slider",
                            "parameter_type": 0
                        }
                    },
                    "varname": "slider[1]"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 46.0, 26.0, 20.0, 140.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "slider",
                            "parameter_modmode": 3,
                            "parameter_osc_name": "slider1",
                            "parameter_shortname": "slider",
                            "parameter_type": 0
                        }
                    },
                    "varname": "slider"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "number",
                    "maximum": 127,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 46.0, 245.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "number",
                            "parameter_modmode": 4,
                            "parameter_osc_name": "gain",
                            "parameter_shortname": "number",
                            "parameter_type": 1
                        }
                    },
                    "varname": "number"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 159.0, 529.0, 69.0, 22.0 ],
                    "text": "max-bridge"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "order": 0,
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "order": 1,
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-15", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 1 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-11": [ "live.gain~", "live.gain~", 0 ],
            "obj-12": [ "number", "number", 0 ],
            "obj-15": [ "function", "function", 0 ],
            "obj-20": [ "slider", "slider", 0 ],
            "obj-21": [ "slider[1]", "slider", 0 ],
            "obj-25": [ "multislider", "multislider", 0 ],
            "obj-6": [ "slider[2]", "slider", 0 ],
            "obj-8": [ "slider[3]", "slider", 0 ],
            "obj-9": [ "slider[4]", "slider[4]", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}