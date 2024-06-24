#!/bin/bash
musicfile="$(kdialog --getopenfilename /tmp 'audio/ogg audio/mp3 audio/wav audio/flac')"
picfile="$(kdialog --getopenfilename /tmp 'image/jpeg  image/png image/webp')"
outputfile="$(kdialog --getsavefilename /tmp/output.webm 'video/webm video/mp4')"

ffmpeg -loop 1 -i "$picfile" -i "$musicfile" -shortest "$outputfile"

# optional, if you have vulka installed it's way faster with these parameters infront of "-loop": 
# -init_hw_device "vulkan=vk:0" -hwaccel vulkan -hwaccel_output_format vulkan
