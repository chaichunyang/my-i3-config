#!/bin/sh
## random a lock image from given path, generate ~/.i3lock.png   

if [ -z "$1" ]; then echo "please given a path" && exit 1; fi

IMAGE=$(feh -rz -L %f $1 |  shuf -n1)


# fill mode with blur
convert ${IMAGE} -resize "1920x1080"^ -gravity center -crop 1920x1080+0+0 +repage -blur 0x16 ~/.i3lock.png

#if [[ $IMAGE == *".png" ]]
#then
#	cp $IMAGE ~/.i3lock.png
#else
#	magick convert ${IMAGE} ~/.i3lock.png
#fi

