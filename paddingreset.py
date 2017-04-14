#!/usr/bin/python

import os
import subprocess


#tpadding = "bspc config top_padding " + str(43)
tpadding = "bspc config top_padding " + str(46)
#bpadding = "bspc config bottom_padding " + str(12)
bpadding = "bspc config bottom_padding " + str(15)
lpadding = "bspc config left_padding " + str(0)
rpadding = "bspc config right_padding " + str(0)

os.system(tpadding)
os.system(bpadding)
os.system(rpadding)
os.system(lpadding)

#end
