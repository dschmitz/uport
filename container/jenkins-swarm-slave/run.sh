#! /bin/bash
CONTAINER=$(basename `pwd`)
docker run -d --name $CONTAINER uport/$CONTAINER -disableSslVerification  -master http://172.17.42.1:18080
