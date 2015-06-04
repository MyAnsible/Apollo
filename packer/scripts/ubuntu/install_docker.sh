#!/usr/bin/env bash
set -eux
set -o pipefail

sudo apt-get -y update
sudo apt-get install -y linux-image-extra-$(uname -r)
curl -sSL https://get.docker.com/ubuntu/ | sudo sh
sudo service docker stop
echo manual | sudo tee /etc/init/docker.override >/dev/null
