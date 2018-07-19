#! /bin/bash

if [ -z "$1" ]
then
    echo "==================================================================="
    echo "| Please input the tag parameter of image!"
    echo "| latest tag -> is build & pushed by jenkins on default branch."
    echo "|               you can pull it from https://hub.docker.com/r/chariot9"
    echo "| uat tag ----> is build & pushed by jenkins on feature branch."
    echo "==================================================================="
    exit 1
fi
TAG=$1
docker build --rm -t "the-blue-apache:${TAG}" -f dockerfiles/Dockerfile-the-blue-apache .