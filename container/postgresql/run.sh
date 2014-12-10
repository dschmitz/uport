#! /bin/bash
CONTAINER=$(basename `pwd`)
docker run -d -p 25432:5432 --name $CONTAINER uport/$CONTAINER
