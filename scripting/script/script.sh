#!/bin/bash

### Install required packages ##
sudo apt -y update
sudo apt install -y nodejs npm unzip

## Get app code ##
dir="/home/vagrant/movie-analyst-api"
if [ -d "$dir" -a ! -h "$dir" ]
then
   rm -rf $dir
fi
cd /home/vagrant/
git clone https://github.com/mnl359/movie-analyst-api.git
mv /home/vagrant/movie-analyst-api /home/vagrant/movie-analyst-api-master

## Install npm modules ##
cd movie-analyst-api-master 
npm install

## Make the application a service and running ##
cp -f /vagrant/movie-analyst.service /lib/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start movie-analyst