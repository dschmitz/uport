#! /bin/bash
CONTAINER=$(basename `pwd`)
docker run -d -p 18081:8081 --name $CONTAINER uport/$CONTAINER
