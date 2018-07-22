#!/bin/sh

if [ -z "$1" ]
then
    echo "==================================================================="
    echo "| Please input the tag parameter of image!"
    echo "| latest tag -> is build & pushed by jenkins on default branch."
    echo "|               you can pull it from https://hub.docker.com/r/chariot9/"
    echo "==================================================================="
    exit 1
fi
TAG=$1

echo "-----------------------------------------------"
echo "----------------INFORMATION--------------------"
echo "-----------------------------------------------"
echo "                                               "
echo "   build tag name is  ***  ${TAG}  ***         "
echo "                                               "
echo "-----------------------------------------------"
echo "-----------------------------------------------"

echo "OK? yes or no"
read IS_OK

case $IS_OK in
    "yes" );;
    "y" );;
    * ) echo "has been cancelled. "
        exit 1;;
esac

echo "start building the-blue-database"
sh bin/database/build_the_blue_database.sh ${TAG}
echo "end building the-blue-database"
echo ""