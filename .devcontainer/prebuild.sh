#!/bin/bash
# get parameter from system
user=developer
group=`id -gn`
uid=`id -u`
gid=`id -g`
docker image build -t foxy_pre:latest -f Dockerfile.pre \
	--build-arg USER=${user} \
	--build-arg UID=${uid} \
	--build-arg GROUP=${group} \
	--build-arg GID=${gid} .
