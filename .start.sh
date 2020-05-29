#!/bin/sh
feh -rz --no-fehbg --bg-fill ~/.wallpaper/

echo ${WALLPAPER} > ~/.wallpaper.txt

if [ -f "/usr/bin/betterlockscreen" ]; then
betterlockscreen -b 2 -u $1
exit 0
fi

~/.i3lock-gen-image.sh $1

