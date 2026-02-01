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
                    "id": "obj-46",
                    "linecount": 16,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 438.0, 26.0, 379.0, 234.0 ],
                    "presentation_linecount": 29,
                    "text": "HOW TO USE:\n\n1. drop [ forkingPaths ]  into any max patch\n2. select the UI objects in your patch that you want to expose to Forking Paths:\n\n2.1. Open the inspector for a given UI object. \n2.2. Set \"Parameter Mode Enable\" to true\n2.3. repeat for all desired UI objects**\n\n** you can set multiple UI objects to param enable all at once: shift-select the UIs, go to inspector, set param enable. \n\nalso, Max will automatically assign a unique name to each UI object once parameter mode is enabled. you can change them yourself by editing the 'scripting name' in the inspector\n"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 98.0, 154.0, 141.0, 22.0 ],
                    "text": "wsAddress 192.168.2.10"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 249.0, 154.0, 150.0, 47.0 ],
                    "text": "connect to FP on another machine (change IP address in message)"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 218.0, 97.0, 150.0, 33.0 ],
                    "text": "connect to FP on your computer"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 74.0, 31.0, 150.0, 47.0 ],
                    "text": "reconnect (fp connects automatically on startup, but this is handy anyway)"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 83.0, 92.0, 118.0, 22.0 ],
                    "text": "wsAddress localhost"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 46.0, 43.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.2627450980392157, 0.6196078431372549, 0.7764705882352941, 1.0 ],
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 46.0, 204.0, 75.0, 22.0 ],
                    "text": "forkingPaths"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}