#! /bin/bash

HOST_IP=$(ip -4 addr show eth0 | grep inet |  awk '{print $2;}' | cut -d"/" -f1)

docker run -i -t -v /var/run/docker.sock:/docker.sock \
  -e IP=$HOST_IP \
  -e URL=http://$HOST_IP:8000 -p 4500:4500 shipyard/agent

