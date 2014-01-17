#!/bin/bash
touch daemon.id
mapfile -t daemons < daemon.id
if [ -z "${daemons[0]}" ]; then
	echo no daemons running by means of start.sh
	exit
fi
docker kill ${daemons[@]}
rm daemon.id
