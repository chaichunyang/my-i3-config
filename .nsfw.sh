#!/bin/sh
# random a wallpaper and lockscreen image from ~/.wallpaper_nsfw

# wallpaper
feh -rz --bg-fill --no-fehbg ~/.wallpaper_nsfw/

# lockscreen
~/.i3lock-gen-image.sh ~/.wallpaper_nsfw/

