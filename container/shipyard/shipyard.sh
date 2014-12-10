#! /bin/bash

docker run -i -t -v /var/run/docker.sock:/docker.sock shipyard/deploy setup

