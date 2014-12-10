#! /bin/bash

sudo sed 's/main$/main universe/' -i /etc/apt/sources.list
sudo apt-get update && apt-get install -y software-properties-common python-software-properties
#sudo add-apt-repository ppa:webupd8team/java -y

#sudo echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu utopic main" | tee /etc/apt/sources.list.d/webupd8team-java.list
#sudo echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu utopci main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886

#sudo apt-get update
#sudo echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

#sudo apt-get install -y oracle-java8-installer
#sudo apt-get install -y oracle-java8-set-default
#sudo apt-get clean && apt-get update
sudo apt-get install -y openjdk-8-jdk openjdk-8-jre-headless
