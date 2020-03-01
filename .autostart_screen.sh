#!/bin/bash

CHK_HDMI=$(xrandr | grep HDMI2 | awk ' { print $2 } ')
CHK_HDMI=$(xrandr | grep HDMI2 | awk ' { print $3 } ')

if [ ${CHK_HDMI} == "connected" ]
then
    xrandr --output HDMI2 --auto
    xrandr --output eDP1 --off
else
    xrandr --output HDMI2 --off
    xrandr --output eDP1 --auto
fi
