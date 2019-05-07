#!/bin/bash

NAME=$(date +"%F-%H-%M-%S-1366x768.mp4")
echo "Recording into ~/Videos/Recordings/$NAME..."
ffmpeg -loglevel panic -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0+0,0 $NAME
mv $NAME /home/chameleon/Videos/Recordings
