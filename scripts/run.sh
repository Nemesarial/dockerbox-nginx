#!/bin/bash
if [ -z "$1" ]; then
	echo usage: $0 image_name
	exit
fi

docker run -p 80:80 -t -i $1
