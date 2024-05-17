#!/bin/bash

# Set timezone to Asia/Jakarta
sudo timedatectl set-timezone Asia/Jakarta

# Update & upgrade
sudo apt update
sudo apt upgrade -y

# Install required packages
sudo apt install -y git curl zip python3 python3-pip

# Install Docker
# Install prerequisites
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update package index and install Docker
sudo apt update
sudo apt install -y docker-ce

# Add user to Docker group to run Docker commands without sudo
sudo usermod -aG docker $USER

# Logout and login again to apply the group changes
echo "Please logout and login again to apply the group changes."

echo "Setup completed successfully."
