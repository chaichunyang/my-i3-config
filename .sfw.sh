#!/bin/sh
# random a wallpaper and lockscreen image from ~/.wallpaper

# wallpaper
feh -rz --bg-fill --no-fehbg ~/.wallpaper/

# lockscreen
~/.i3lock-gen-image.sh ~/.wallpaper/

notify-send SFW ENABLE
