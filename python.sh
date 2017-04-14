#!/usr/bin/python

import os
import subprocess


gap = ""

gap = str(subprocess.check_output(["bspc", "config", "window_gap"]))

gap = str(int(gap[2:-3]) + 5)

chconfig = "bspc config window_gap " + gap

os.system(chconfig)

