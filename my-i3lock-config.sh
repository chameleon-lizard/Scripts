#!/bin/bash

insidecolor=00000000
ringcolor=ffffffff
keyhlcolor=d23c3dff
bshlcolor=d23c3dff
separatorcolor=00000000
insidevercolor=00000000
insidewrongcolor=d23c3dff
ringvercolor=ffffffff
ringwrongcolor=ffffffff
verifcolor=ffffffff
timecolor=ffffffff
datecolor=ffffffff
loginbox=00000066
font="sans-serif"
locktext='Type password to unlock...'
lock_timeout=5

BLUR="5x4"
PICTURE=$(cat ~/.fehbg | awk '{ print $4 }' | tr -d "'")
convert $PICTURE -blur $BLUR $PICTURE
<<<<<<< HEAD

caps_status=`xset q | grep -i caps | cut -c 22-24`

if [ $caps_status == "on" ]; 
then
    xdotool key Caps_Lock
fi



if ! pgrep -x "i3lock" > /dev/null
then
    setxkbmap us \
    ; i3lock \
        --ignore-empty-password \
        --nofork                \
=======
i3lock \
>>>>>>> 00e5c6036e0d35a09583097eee8b4a635a023f4a
        -t -i $PICTURE \
        --timepos='x+110:h-70' \
        --datepos='x+43:h-45' \
        --clock --date-align 1 --datestr "$locktext" \
        --insidecolor=$insidecolor --ringcolor=$ringcolor --line-uses-inside \
        --keyhlcolor=$keyhlcolor --bshlcolor=$bshlcolor --separatorcolor=$separatorcolor \
        --insidevercolor=$insidevercolor --insidewrongcolor=$insidewrongcolor \
        --ringvercolor=$ringvercolor --ringwrongcolor=$ringwrongcolor --indpos='x+280:h-70' \
        --radius=20 --ring-width=4 --veriftext='' --wrongtext='' \
        --verifcolor="$verifcolor" --timecolor="$timecolor" --datecolor="$datecolor" \
        --time-font="$font" --date-font="$font" --layout-font="$font" --verif-font="$font" --wrong-font="$font" \
<<<<<<< HEAD
        --noinputtext='' --force-clock --pass-media-keys -e \
        \
    ; setxkbmap -option grp:alt_space_toggle "us,ru"
fi
=======
        --noinputtext='' --force-clock --pass-media-keys $lockargs 
>>>>>>> 00e5c6036e0d35a09583097eee8b4a635a023f4a

rm -rf ~/.config/wpg/wallpapers
mkdir ~/.config/wpg/wallpapers
cp ~/Pictures/Wallpapers/* ~/.config/wpg/wallpapers
<<<<<<< HEAD

# --datestr="%d %B - %A"  \
# --image="/home/alex/Scripts/wallpapers/day" \
# --image=/home/alex/.config/i3/wallpapers/wallpaper \
=======
>>>>>>> 00e5c6036e0d35a09583097eee8b4a635a023f4a
