#!/bin/bash
set -e

apt-get update
apt-get install -y docker.io git

systemctl start docker
systemctl enable docker

mkfs.ext4 /dev/xvdf || true
mkdir -p /mnt/ebs
mount /dev/xvdf /mnt/ebs
chown ubuntu:ubuntu /mnt/ebs

cd /home/ubuntu
sudo -u ubuntu git clone https://github.com/eminajusufovic/iso.git
cd iso

sed -i 's/postgres-data:/mnt\/ebs\/postgres-data:/' docker-compose.yml


sudo -u ubuntu docker-compose up -d
