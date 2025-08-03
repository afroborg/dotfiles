#! /usr/bin/env bash

DOCKER_TAG="dotfiles-container"
USERNAME="devuser"
USER_UID=1000
USER_GID=1000

docker build \
	-t $DOCKER_TAG \
	-f Dockerfile.dev \
	--build-arg USERNAME=$USERNAME \
	--build-arg USER_UID=$USER_UID \
	--build-arg USER_GID=$USER_GID \
	. \
&& docker run \
	-it \
	--rm \
	--volume ".:/home/$USERNAME/dotfiles" \
	$DOCKER_TAG \
&& docker image rm $DOCKER_TAG >> /dev/null
