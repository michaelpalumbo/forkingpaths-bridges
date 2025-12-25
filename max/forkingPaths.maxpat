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
        "rect": [ 1177.0, 549.0, 1226.0, 917.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-5",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 826.5, 315.0, 151.0, 60.0 ],
                    "presentation_linecount": 4,
                    "text": "Post-docs: ask Joel about doing one at uVic on FP2. Maybe show him what you've achieved? "
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "linecount": 14,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 898.0, 42.0, 150.0, 194.0 ],
                    "presentation_linecount": 14,
                    "text": "this is WAY down the line, but consider be able to add multiple instances of the fp. objects (and other bridges for other apps) and have the FP2 app be able to either handle them altogether, or view their changes as separate graphs. would need to some finessing esp if they don't have all bridges open from a previous session, etc.  "
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "linecount": 15,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 731.0, 42.0, 150.0, 208.0 ],
                    "text": "think of a naming scheme for the package patchers:\n\nsomething like fp.\n\nso fp.param = for this one here\n\nfp.patch = for the one that can observe and recall patcher edits\n\nand maybe a .8 suffix for max-8-compatible ones\netc. "
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 569.0, 42.0, 151.0, 60.0 ],
                    "text": "TODO: eventually release this as a max package (talk to graham about having him try it out?)"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "linecount": 9,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 409.0, 42.0, 151.0, 127.0 ],
                    "text": "TODO: eventually, see about writing a v8 script that observes all changes made to a Patcher. if you can get that to work, then fuck it, you could add forking paths-style version control to a fucking max patch"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "linecount": 7,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 232.5, 69.0, 151.0, 100.0 ],
                    "text": "TODO: with this implementation, you can also write a Max 8 version as well (using [js] object instead. love that this project can be backwards compatible)"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 654.0, 417.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "dict.view",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 654.0, 487.0, 232.0, 121.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "dictionary", "", "", "", "" ],
                    "patching_rect": [ 654.0, 452.0, 104.0, 22.0 ],
                    "saved_object_attributes": {
                        "legacy": 0,
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "dict paramRecalls"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 232.5, 15.0, 150.0, 47.0 ],
                    "text": "TODO; need re-connecting ws for node script"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 827.0, 615.0, 150.0, 60.0 ],
                    "text": "<<< todo once project is ready: make install script and run it just once on user's computer"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 654.0, 615.0, 171.0, 22.0 ],
                    "text": "loadmess script npm install ws"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-2",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "n4m.monitor.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 235.0, 516.0, 400.0, 220.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 367.0, 220.0, 292.0, 20.0 ],
                    "text": "initialize (after init completes, it starts the node.script)"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 333.0, 261.0, 150.0, 20.0 ],
                    "text": "get parent patcher name"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 235.0, 451.0, 199.0, 22.0 ],
                    "saved_object_attributes": {
                        "autostart": 0,
                        "defer": 0,
                        "watch": 1
                    },
                    "text": "node.script max-bridge.js @watch 1",
                    "textfile": {
                        "filename": "max-bridge.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "linecount": 15,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 17.0, 15.0, 155.0, 208.0 ],
                    "text": "HOW TO USE:\n\n1. drop this object into any max patch\n2. select the UI objects in your patch that you want to expose to Forking Paths by:\n\n2.1. Open the inspector for a given UI object. \n2.2. Set \"Parameter Mode Enable\" to true\n2.3. repeat for all desired UI objects"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 307.0, 329.0, 73.0, 22.0 ],
                    "text": "dumpvalues"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 419.0, 298.0, 150.0, 33.0 ],
                    "text": "manually query the namespace"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 307.0, 298.0, 110.0, 22.0 ],
                    "text": "refreshNamespace"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 307.0, 219.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-31",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 235.0, 288.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 307.0, 259.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "filename": "max-bridge-scripting.js",
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 235.0, 371.0, 145.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "v8 max-bridge-scripting.js",
                    "textfile": {
                        "filename": "max-bridge-scripting.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "midpoints": [ 244.5, 485.169921875, 195.632080078125, 485.169921875, 195.632080078125, 358.70172119140625, 244.5, 358.70172119140625 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "midpoints": [ 424.5, 499.1114501953125, 244.5, 499.1114501953125 ],
                    "source": [ "obj-47", 1 ]
                }
            }
        ],
        "autosave": 0,
        "oscreceiveudpport": 0
    }
}