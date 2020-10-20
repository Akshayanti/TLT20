#!/usr/bin/env bash

for filename in video_mkv*.part*; do
	cat ${filename} >> video_mkv.tar.bz2;
done;

for filename in video_mp4*.part*; do
	cat ${filename} >> video_mp4.tar.bz2;
done;

for x in mp4 mkv; do
	tar -xf video_`echo $x`.tar.bz2;
done;

mv "Video Presentation" videos;
