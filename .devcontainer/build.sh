#!/bin/bash
# get parameter from system
user=developer
group=`id -gn`
uid=`id -u`
gid=`id -g`
docker image build -t foxy_dev:latest \
	--build-arg USER=${user} \
	--build-arg UID=${uid} \
	--build-arg GROUP=${group} \
	--build-arg GID=${gid} .
