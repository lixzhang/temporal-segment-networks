#!/usr/bin/env bash

SRC_FOLDER=$1
OUT_FOLDER=$2
NUM_WORKER=$3

echo "Extracting optical flow from videos in folder: ${SRC_FOLDER}"
python tools/build_of.py ${SRC_FOLDER} ${OUT_FOLDER} --num_worker ${NUM_WORKER} --new_width 340 --new_height 256 --num_gpu 4 --df_path /home/lixun/Desktop/HAR/mmaction/third_party/dense_flow/ --num_gpu 1 2>local/errors.log
