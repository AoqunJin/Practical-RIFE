#!/bin/bash

DATA_DIR="/path/to/data"
# Use model RIFEv4.26_0921.zip

# Loop through all .mp4 files in the directory
for video in "$DATA_DIR"/*.mp4; do
  if [ -f "$video" ]; then
    echo "Processing video: $video"
    python3 inference_video.py --multi=4 --video="$video"
  else
    echo "Video file not found: $DATA_DIR"
  fi
done
