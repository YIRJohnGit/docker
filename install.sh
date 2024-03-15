#!/bin/bash

# Install Docker if not already installed
if ! command -v docker &> /dev/null; then
    echo "Installing Docker..."
    sudo apt update
    sudo apt install -y docker.io
fi

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Run the sample Docker application (nginx web server)
echo "Running nginx Docker container..."
sudo docker run -d -p 8080:80 --name mynginx nginx

# Verify the running container
echo "Verifying running container..."
sudo docker ps
