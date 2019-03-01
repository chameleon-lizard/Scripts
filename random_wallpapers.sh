#!/bin/bash
WALL_DIR="$HOME/Pictures/Wallpapers"

FILES=($WALL_DIR/*)
PICT=`printf "%s\n" "${FILES[RANDOM % ${#FILES[@]}]}"`

wal -i $PICT -o wal-set

~/.telegram-palette-gen/telegram-palette-gen --wal
