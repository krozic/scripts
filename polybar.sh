#!/bin/bash

polybar -c /home/krozic/.config/polybar/bspwmconfig top &
polybar -c /home/krozic/.config/polybar/bspwmconfig bottom &
polybar -c /home/krozic/.config/polybar/bspwmconfig bottomright & 
polybar -c /home/krozic/.config/polybar/bspwmconfig bottomleft &
polybar -c /home/krozic/.config/polybar/bspwmconfig bottommiddleright 

#bspc config top_padding 46 &
#bspc config bottom_padding 15 &
#bspc config left_padding 0 &
#bspc config right_padding 0
