# Reference: https://docs.docker.com/install/linux/docker-ce/ubuntu/
# 2020-03-03

# Uninstall old version
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt update

# Setup new docker
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# verify
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt update
sudo apt-get install docker-ce docker-ce-cli containerd.io

