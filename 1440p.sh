#!/bin/bash

#Script for creating, adding, and changing display resolution to 1440p 44Hz

#Creates xrandr mode
xrandr --newmode "2560x1440_44.00"  222.75  2560 2720 2992 3424  1440 1443 1448 1479 -hsync +vsync

#Adds xrandr mode
xrandr --addmode HDMI1 2560x1440_44.00

#Remove LVDS1 screen
xrandr --output LVDS1 --off

#Outputs 1440p
xrandr --output HDMI1 --mode 2560x1440_44.00 --primary

#END
