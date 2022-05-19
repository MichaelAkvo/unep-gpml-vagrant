#!/bin/bash
set -xeuo pipefail

apt-get update
apt-get install -y docker.io docker-compose git curl
usermod -aG docker vagrant

# execute actions as vagrant user
su vagrant /vagrant/in_provision.sh
