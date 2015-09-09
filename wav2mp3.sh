#!/bin/bash

wavfiles=`ls | grep "\.[wW][aA][vV]$"`

for file in $wavfiles; do
	mp3filename=`basename $file | sed 's/\.[wW][aA][vV]$/\.mp3/'`
	echo $mp3filename
	ffmpeg -i "$file" -acodec libmp3lame $mp3filename
	# basename "$file"
done