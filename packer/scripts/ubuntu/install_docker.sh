#!/usr/bin/env bash
set -eux
set -o pipefail

sudo -H pip install docker-py==1.5.0

# enable memory and swap cgroup
sudo perl -p -i -e 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="cgroup_enable=memory swapaccount=1"/g'  /etc/default/grub
sudo /usr/sbin/update-grub

sudo apt-get install apt-transport-https ca-certificates

# Install docker
# Add the repository to your APT sources
echo 'deb https://apt.dockerproject.org/repo ubuntu-wily main' | sudo tee /etc/apt/sources.list.d/docker.list
# Then import the repository key
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
# Install docker-engine
sudo apt-get -y update
sudo apt-get install -y docker-engine=${DOCKER_VERSION}
echo 'DOCKER_OPTS="$DOCKER_OPTS --storage-driver=overlay"' | sudo tee -a /etc/default/docker
sudo service docker restart
sleep 5

# Download docker containers to the machine to save download time on
# provisioning later
sudo docker pull udacity/registrator:388bc36
sudo docker pull udacity/haproxy-consul:1.6.2_0.13.0
sudo docker pull weaveworks/scope:latest
sudo docker pull mesosphere/marathon:${MARATHON_VERSION}
sudo docker pull capgemini/dcos-cli:latest
sudo docker pull andyshinn/dnsmasq:latest

echo manual | sudo tee /etc/init/docker.override >/dev/null
