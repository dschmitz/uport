FROM ubuntu:15.04
MAINTAINER David Schmitz

# Install.
#RUN echo -n 'Acquire::http { Proxy "http://172.17.42.1:3142"; };' >> /etc/apt/apt.conf.d/01proxy

RUN locale-gen --no-purge en_US.UTF-8
ENV LC_ALL en_US.UTF-8
RUN update-locale LANG=en_US.UTF-8

RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  sed 's/main$/main universe/' -i /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y systemd-services systemd-shim systemd libpam-systemd && \
  apt-get install -y build-essential software-properties-common && \
  apt-get install -y locate byobu curl git mercurial subversion htop man unzip vim wget mc zsync

RUN apt-get update && apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository ppa:webupd8team/java -y
RUN apt-get update
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

RUN apt-get install -y oracle-java8-installer
RUN apt-get install -y oracle-java8-set-default
RUN apt-get clean && apt-get update

ADD Dockerfile .
