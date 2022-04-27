#!/bin/bash

if [ $# != 2 ];then
	echo 'argument invalid.'
	exit
fi

if [ $1 == 'mov' ];then
	ffmpeg -i $2 -f mov video.mov
elif [ $1 == 'webm' ];then
	ffmpeg -i $2 -c:v libvpx-vp9 -crf 30 -b:v 0 -b:a 128k -c:a libopus video.webm
else
	echo 'argument invalid.'
fi
