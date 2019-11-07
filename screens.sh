#!bin/bash

LVDS="LVDS1"
VGA="VGA1"
HDMI="HDMI1"

CHK_VGA=$(xrandr |grep $VGA | awk ' { print $2 } ')
CHK_HDMI=$(xrandr |grep $HDMI | awk ' { print $2 } ')
CHK_VGA_G=$(xrandr |grep $VGA | grep "+")

function lvds_off_output_vga(){
xrandr --output $LVDS --off --output $VGA --auto
}

function lvds_off_output_hdmi(){
xrandr --output $LVDS --off --output $HDMI--auto
}

if [ "$CHK_VGA" == "connected" ]; then
    lvds_off_output_vga
else if [ "$CHK_HDMI" == "connected" ]; then
    lvds_off_output_hdmi
else
    xrandr --output $LVDS --auto
fi
