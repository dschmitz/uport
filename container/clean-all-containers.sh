#! /bin/bash

echo "cleaning all containers..."

if [ ! -z $(docker ps -q) ]
then 
  docker stop $(docker ps -q)
  echo "stoping all containers"
else
  echo "no containers to stop"
fi

if [ ! -z $(docker ps -a -q) ]
then
  docker rm -f $(docker ps -a -q)
else
  echo "no containers to clean"
fi

echo "finished cleaning containers"
