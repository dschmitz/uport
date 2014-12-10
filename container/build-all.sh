#! /bin/bash

(cd apt-cacher-ng && ./build.sh)
(cd ubuntu && ./build.sh)
(cd postgresql && ./build.sh)
(cd mongodb && ./build.sh)
(cd rabbitmq && ./build.sh)
(cd jenkins && ./build.sh)
(cd jenkins-swarm-slave && ./build.sh)
(cd nexus && ./build.sh)
(cd tomcat && ./build.sh)
#(cd fabric8 && ./build.sh) TODO check out fabric 2.0
