#!/bin/bash

DATA_DIR="/path/to/data"

# 遍历指定文件夹下的所有 .mp4 文件
for video in "$DATA_DIR"/*.mp4; do
  if [ -f "$video" ]; then
    echo "Processing video: $video"
    python3 inference_video.py --multi=4 --video="$video"
  else
    echo "Video file not found: $DATA_DIR"
  fi
done
