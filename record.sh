#!/bin/bash

RESOLUTION=$(xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/')
NAME=$(date +"%F-%H-%M-%S-$RESOLUTION.mp4")

echo "Recording into ~/Videos/Recordings/$NAME..."

ffmpeg -loglevel panic -video_size $RESOLUTION -framerate 25 -f x11grab -i :0.0+0,0 $NAME

mv $NAME $HOME/Videos/Recordings
