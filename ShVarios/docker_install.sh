sudo apt-get update -y

sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

// Add Docker's official GPG key

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

// Setup a stable repository

sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

// Update the package index

sudo apt-get update -y

// Install docker, containerd

sudo apt-get install -y docker-ce
