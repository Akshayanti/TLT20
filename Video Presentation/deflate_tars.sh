#!/usr/bin/env bash

for filename in video.bz2.part*; do
	cat ${filename} >> video_mkv.tar.bz2;
done;

tar -xf video_mkv.tar.bz2;

mv "TLT Submission Video.mkv" "submission.mkv";
