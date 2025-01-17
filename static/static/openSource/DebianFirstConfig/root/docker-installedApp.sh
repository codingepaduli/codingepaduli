#!/bin/bash

# Install docker
sudo apt-get install -y docker.io docker-compose # podman podman-compose slirp4netns fuse-overlayfs

if [ $? -ne 0 ]; then
    exit 1
fi

# Create the group
sudo /usr/sbin/groupadd -f docker

if [ $? -ne 0 ]; then
    exit 1
fi

# Set the group owner
sudo chown root:docker /var/run/docker.sock

if [ $? -ne 0 ]; then
    exit 1
fi

# in case of "permission denied", remove the folder  
# rm -rf "$HOME/.docker"

# List generated from the command:
#    docker images --format "{{.Repository}}:{{.Tag}}" 

# tag 12-bullseye - to compile against the same libc library 
#     of debian bullseye (installed on my machine)
# docker pull gcc:12-bullseye
docker pull gcc:13-bookworm

docker pull denoland/deno:debian-1.44.4

# docker pull python:3.12-bullseye
docker pull python:3.3.13-rc-bookworm

# docker pull mcr.microsoft.com/powershell:7.3-debian-bullseye-slim

# tag 8.0.0-jdk17 - to compile against a specific JDK version 
#     and to have a specific version of gradle project file
# docker pull gradle:8.0.0-jdk17

# Hugo
docker pull hugomods/hugo:reg-base-0.127.0

docker pull pandoc/extra:3.5

# docker pull node:20.3.1-bookworm

docker pull dpokidov/imagemagick:7.1.1-10-bullseye

# docker pull linuxserver/ffmpeg:6.0-cli-ls91

docker pull mikenye/youtube-dl:2023.02.17_linux_amd64

docker pull cincan/xsv

docker pull tomsik68/xampp:8.2.4

docker pull olbat/uglify:2024-09-06

