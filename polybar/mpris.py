#!/usr/bin/python

import os
import subprocess

player_status = "Playing"
playing = "Playing"
paused = "Paused"
#paused = str(paused)
#print(paused)
#process = (str(subprocess.check_output(["playerctl", "status"]))[2:-3])
#print(process)

while (str(subprocess.check_output(["playerctl", "status"]))[2:-3]) == "Playing":
   Playing = True

    if Playing:
        print(Playing)

#print(str(subprocess.check_output(["playerctl", "status"]))[2:-3])
