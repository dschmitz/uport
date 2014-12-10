#! /bin/bash
CONTAINER=$(basename `pwd`)
docker run -d -p 3142:3142 --name $CONTAINER uport/$CONTAINER

