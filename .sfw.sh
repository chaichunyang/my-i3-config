#!/bin/sh
# random a wallpaper and lockscreen image from ~/.wallpaper

WALLPAPER=$(echo ~/.wallpaper/)

notify-send SFW STARTING

feh -rz --bg-fill --no-fehbg ${WALLPAPER}

echo ${WALLPAPER} > ~/.wallpaper.txt

# if has betterlockscreen
if [ -f "/usr/bin/betterlockscreen" ]; then
betterlockscreen -u ${WALLPAPER}
else
~/.i3lock-gen-image.sh ${WALLPAPER}
fi

notify-send SFW ENABLE

