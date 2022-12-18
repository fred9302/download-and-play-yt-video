from yt_dlp import YoutubeDL

get_video_url = str(input("What is the video's URL?"))
video_title = ''

with YoutubeDL() as ydl:
  info_dict = ydl.extract_info(get_video_url, download=False)
  video_url = info_dict.get("url", None)
  video_id = info_dict.get("id", None)
  video_title = info_dict.get('title', None)
  print("Title: " + video_title) # <= Here, you got the video title

with open('.temp_url_stor.txt', 'w') as f:
  f.write(get_video_url)

with open('.temp_name_stor.txt', 'w') as g:
  g.write(video_title)
