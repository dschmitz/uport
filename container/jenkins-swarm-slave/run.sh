#! /bin/bash
CONTAINER=$(basename `pwd`)

LABEL="docker-$(hostname)"
docker run -d --name $CONTAINER uport/$CONTAINER -disableSslVerification -labels \"$LABEL\" -master http://172.17.42.1:18080
