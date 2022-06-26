#!/bin/usr/env bash

for i in *.avi; do ffmpeg -i "$i" "${i%.*}.mp4"; done

find . -name *.avi -exec ffmpeg -i {} {}.mp4 \;

for i in */*.avi; do rm "$i"; done
