#!/bin/bash

IMAGE=$(wpg -m | grep .config)
feh --bg-fill ${IMAGE}

rm -rf ~/.config/wpg/wallpapers
mkdir ~/.config/wpg/wallpapers
cp ~/Pictures/Wallpapers/* ~/.config/wpg/wallpapers

~/.telegram-palette-gen/telegram-palette-gen --wal
