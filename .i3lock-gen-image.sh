#!/bin/sh
## random a lock image from ~/.wallpaper, generate a .i3lock.png in ~

IMAGE=$(feh -rz -L %f ~/.wallpaper/* |  shuf -n1)

if [[ $IMAGE == *".png" ]]
then
	cp $IMAGE ~/.i3lock.png
else
	magick convert ${IMAGE} ~/.i3lock.png
fi

