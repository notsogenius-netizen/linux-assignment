#!/bin/bash

# Update the package list
echo "Updating package list..."
sudo apt-get update -y

# Install MySQL Server
echo "Installing MySQL Server..."
sudo apt-get install -y mysql-server

# Check if MySQL was installed successfully
if command -v mysqld &> /dev/null; then
    echo "MySQL installed successfully!"

    # Start MySQL service if not already running
    echo "Starting MySQL service..."
    sudo systemctl start mysql

    # Enable MySQL to start on boot
    echo "Enabling MySQL to start on boot..."
    sudo systemctl enable mysql

    # Check MySQL server status
    echo "Checking MySQL server status..."
    sudo systemctl status mysql --no-pager
else
    echo "MySQL installation failed!"
    exit 1
fi
