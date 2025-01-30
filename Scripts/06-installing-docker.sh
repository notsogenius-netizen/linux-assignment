# Update the package list
echo "Updating package list..."
sudo apt-get update -y

# Install Docker
echo "Installing Docker..."
sudo apt-get install -y docker.io

# Check if Docker was installed successfully
if command -v docker &> /dev/null; then 
	echo "Docker installed successfully!" 
	echo "Docker version:"
	docker -version
else
	echo "Docker installation failed!"
	exit 1
fi
