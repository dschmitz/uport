#! /bin/bash
echo "clean all images..."
docker rmi -f $(docker images -q -a)
echo "finished cleaning all images"
