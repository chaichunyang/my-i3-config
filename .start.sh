#!/bin/sh
WALLPAPER=$(echo ~/.wallpaper/)

feh -rz --no-fehbg --bg-fill ${WALLPAPER}

echo ${WALLPAPER} > ~/.wallpaper.txt

~/.start_conky.sh

if [ -f "/usr/bin/betterlockscreen" ]; then
betterlockscreen -u ${WALLPAPER}
exit 0
fi

~/.i3lock-gen-image.sh ${WALLPAPER}
exit 0
