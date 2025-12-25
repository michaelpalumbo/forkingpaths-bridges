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
                    "patching_rect": [ 741.0, 148.0, 20.0, 140.0 ],
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
                    "presentation_linecount": 2,
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
                    "id": "obj-3",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 159.0, 483.0, 24.0, 24.0 ]
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
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-12": [ "number", "number", 0 ],
            "obj-20": [ "slider", "slider", 0 ],
            "obj-21": [ "slider[1]", "slider", 0 ],
            "obj-25": [ "multislider", "multislider", 0 ],
            "obj-6": [ "slider[2]", "slider", 0 ],
            "obj-8": [ "slider[3]", "slider", 0 ],
            "obj-9": [ "slider[4]", "slider[4]", 0 ],
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