#! /bin/bash

# Zsync daily build image
ISO_FILE="vivid-server-amd64.iso"

mkdir -p zsync
(cd zsync && zsync -k $ISO_FILE.zsync -i $ISO_FILE http://cdimage.ubuntu.com/ubuntu-server/daily/current/$ISO_FILE.zsync)

# Packer to create VM
time packer build -force packer.json | tee build.log
