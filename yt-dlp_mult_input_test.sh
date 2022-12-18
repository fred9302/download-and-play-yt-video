#!/bin/bash

python3 yt-dlp_get_name.py

tube_url=`cat .temp_name_stor.txt`
echo ${tube_url}
cd ~/Videos/youtube/
xdg-open .
yt-dlp --compat-options multistreams -f 'bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' ${tube_url}
rm .temp_name_stor.txt
