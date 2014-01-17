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
	docker build -t $IMAGE .
	echo -e "\n\n Image $IMAGE build complete"
	echo -e "  To test run: sudo ./run.sh"
	echo -e "  To start daemon: sudo ./start.sh"
	echo -e "  To stop daemon: sudo ./stop.sh"
	echo -e "\n"
fi

