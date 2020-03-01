#!/bin/bash

CHK_HDMI=$(xrandr | grep HDMI2 | awk ' { print $2 } ')

if [ ${CHK_HDMI} == "connected" ]
then
    xrandr --output HDMI2 --mode 1920x1080 --rate 60
    xrandr --output eDP1 --off
    xset s off
    xset -dpms
    xset s noblank

else
    xrandr --output HDMI2 --off
    xrandr --output eDP1 --auto
fi
