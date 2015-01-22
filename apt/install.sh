#!/bin/bash
if [ "$(uname -s)" == "Darwin" ]
then
  exit 0
fi

sudo mkdir /var/lib/gems
sudo chmod 777 /var/lib/gems
sudo apt-get install -y python-pip
sudo apt-get install -y zsh
sudo chmod 777 /usr/local/lib/python2.7/
sudo chmod 777 /usr/local/lib/python2.7/dist-packages/
sudo chmod 777 /usr/local/lib/python2.7/site-packages/
sudo chmod 777 /usr/local/bin
