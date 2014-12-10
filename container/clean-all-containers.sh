#! /bin/bash

echo "cleaning all containers..."
docker rm -f $(docker ps -a -q)
echo "finished cleaning containers"
