FROM uport/ubuntu:latest

MAINTAINER David Schmitz

ENV SWARM_VERSION 1.22
RUN wget http://maven.jenkins-ci.org/content/repositories/releases/org/jenkins-ci/plugins/swarm-client/${SWARM_VERSION}/swarm-client-${SWARM_VERSION}-jar-with-dependencies.jar -O /usr/local/bin/swarm-client.jar
ENTRYPOINT ["java", "-jar", "/usr/local/bin/swarm-client.jar"]
