#!/bin/bash
if [ "$(uname -s)" == "Darwin" ]
then
  exit 0
fi

sudo mkdir /var/lib/gems
sudo chmod 777 /var/lib/gems
sudo apt-get install -y ant openjdk-8-jdk
sudo rm /usr/lib/jvm/default-java
sudo ln -s java-1.8.0-openjdk-amd64 /usr/lib/jvm/default-java
sudo apt-get install -y python-pip
sudo apt-get install -y zsh
sudo apt-get install -y htop
sudo chmod 777 /usr/local/lib/python2.7/
sudo chmod 777 /usr/local/lib/python2.7/dist-packages/
sudo chmod 777 /usr/local/lib/python2.7/site-packages/
sudo chmod 777 /usr/local/bin
sudo rm 
