#!/bin/bash
# This script installs docker engine on Amazon Linux
# setup amazon linux

sudo yum update -y

sudo yum groupinstall -y 'Development Tools'

# Install Docker
sudo amazon-linux-extras install docker -y

# Start Docker
sudo systemctl start docker

# Enable Docker to start on boot
sudo systemctl enable docker

# Verify Docker installation
sudo docker run hello-world

# Add user to Docker group
sudo usermod -aG docker $USER

# Happy hacking
echo "*** logout or exit and login back for docker added to sudo group to take effect ***"
echo "*** Happy hacking ***"
