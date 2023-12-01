#!/bin/bash

# 默认快进拉取代码
# git pull --ff-only && yarn && yarn build

img_name="air-conditioner"
container_name=$img_name

if [[ -n $(docker ps -a -f "name=^$container_name$") ]];then
	 docker stop $container_name && \
	 docker rm $container_name
fi

docker compose up -d
