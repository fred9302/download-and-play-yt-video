#!/bin/bash

cd ~/Videos/youtube/
echo "Enter the URL: "
read tube_url
xdg-open .
yt-dlp --compat-options multistreams -f 'bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' ${tube_url}
