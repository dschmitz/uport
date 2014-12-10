#! /bin/bash
CONTAINER=$(basename `pwd`)
time docker build -t uport/$CONTAINER .
