#!/bin/bash

# credit 
# https://gist.github.com/dergachev/4627207

# dependencies
# brew install ffmpeg
# brew install gifsicle

# ffmpeg -i $1 -filter:v scale=800:-1 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > $1.gif

# lower quality? scale=300:-1
# higher quality? scale=1000:-1

ffmpeg -i $1 -filter:v scale=300:-1 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > $1.gif
