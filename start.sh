#!/bin/bash
IMAGE=""
if [ -f "image" ]; then
	mapfile -t imagefile < image
	if [ ! -z "${imagefile[0]}" ]; then
		IMAGE=${imagefile[0]}
	else
		echo "warn: image file is empty"
	fi
fi

if [ ! -z "$1" ]; then
	IMAGE=$1
fi

if [ -z "$IMAGE" ]; then
	echo -e "\n\n\nusage: $0 image_name"
	echo -e "--------------------"
	echo -e "To set an image name for all the operations"
	echo -e "you can create a file 'image' with the name of the image"
	echo -e "\neg. echo IMAGE_NAME > image"
	exit
else
	docker run -p 80:80 -d $IMAGE >> daemon.id
fi


