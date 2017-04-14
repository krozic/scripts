#!/usr/bin/python

import os
import subprocess


lpadding = ""

lpadding = str(subprocess.check_output(["bspc", "config", "left_padding"]))

lpadding = str(int(lpadding[2:-3]) + 5)

chlpadding = "bspc config left_padding " + lpadding

os.system(chlpadding)

rpadding = ""

rpadding = str(subprocess.check_output(["bspc", "config", "right_padding"]))

rpadding = str(int(rpadding[2:-3]) + 5)

chrpadding = "bspc config right_padding " + rpadding

os.system(chrpadding)

#end
