#!/bin/bash
apt-get update
apt-get install apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo \"deb https://apt.dockerproject.org/repo ubuntu-trusty main\" >> /etc/apt/sources.list.d/docker.list
apt-get update
apt-get install linux-image-extra-$(uname -r)
apt-get install apparmor
apt-get install docker-engine
service docker start
docker run -d -p 8888:8888 -v mba:/home/jovyan/work jupyter/all-spark-notebook