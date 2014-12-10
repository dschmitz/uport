#! /bin/bash
CONTAINER=$(basename `pwd`)
docker run -d --name $CONTAINER uport/$CONTAINER -disableSslVerification  #-master http://127.0.0.1:18080
