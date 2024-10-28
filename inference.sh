#!/bin/bash

DATA_DIR="/home/ao/workspace/fs/diffusers/video_data_result"

# 遍历指定文件夹下的所有 .mp4 文件
for video in "$DATA_DIR"/*.mp4; do
  if [ -f "$video" ]; then
    echo "正在处理视频文件: $video"
    python3 inference_video.py --multi=2 --video="$video"
  else
    echo "未找到视频文件。"
  fi
done

DATA_DIR="/home/ao/workspace/fs/diffusers/video_data_result copy"

# 遍历指定文件夹下的所有 .mp4 文件
for video in "$DATA_DIR"/*.mp4; do
  if [ -f "$video" ]; then
    echo "正在处理视频文件: $video"
    python3 inference_video.py --multi=4 --video="$video"
  else
    echo "未找到视频文件。"
  fi
done

DATA_DIR="/home/ao/workspace/fs/diffusers/video_data_result copy 2"

# 遍历指定文件夹下的所有 .mp4 文件
for video in "$DATA_DIR"/*.mp4; do
  if [ -f "$video" ]; then
    echo "正在处理视频文件: $video"
    python3 inference_video.py --multi=2 --video="$video" --scale=0.5
  else
    echo "未找到视频文件。"
  fi
done

DATA_DIR="/home/ao/workspace/fs/diffusers/video_data_result copy 3"

# 遍历指定文件夹下的所有 .mp4 文件
for video in "$DATA_DIR"/*.mp4; do
  if [ -f "$video" ]; then
    echo "正在处理视频文件: $video"
    python3 inference_video.py --multi=4 --video="$video" --scale=0.5
  else
    echo "未找到视频文件。"
  fi
done