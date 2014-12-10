#! /bin/bash
CONTAINER=$(basename `pwd`)
docker build -t uport/$CONTAINER .
