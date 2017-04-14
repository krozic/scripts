#!/usr/bin/python

import os
import subprocess


tpadding = ""

tpadding = str(subprocess.check_output(["bspc", "config", "top_padding"]))

tpadding = str(int(tpadding[2:-3]) - 5)

chtpadding = "bspc config top_padding " + tpadding

os.system(chtpadding)

bpadding = ""

bpadding = str(subprocess.check_output(["bspc", "config", "bottom_padding"]))

bpadding = str(int(bpadding[2:-3]) - 5)

chbpadding = "bspc config bottom_padding " + bpadding

os.system(chbpadding)

#end
