#!/bin/bash

# 圧縮後のファイル名の接尾辞
POSTFIX="_compressed"

# 圧縮率
COMPRESSION_RATIO=26

# 圧縮するフォルダのパス
FOLDER_PATH=$1

# フォルダ内の全てのmp4ファイルに対して圧縮を行う
for filename in "$FOLDER_PATH"/*.mp4; do
  output_filename="${filename%.mp4}${POSTFIX}.mp4"
  ffmpeg -i "$filename" -crf "$COMPRESSION_RATIO" "$output_filename"
done
