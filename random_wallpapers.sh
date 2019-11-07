#!/bin/bash

IMAGE=$(wpg -m | grep .config)

feh --bg-fill ${IMAGE}

~/.telegram-palette-gen/telegram-palette-gen --wal
