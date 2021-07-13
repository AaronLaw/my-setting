# Install lotus for filecoin
# build on Ubuntu

# reference:
#    [Lotus: install and setup](https://docs.filecoin.io/get-started/lotus/installation/#software-dependencies)
#    [Lotus: chain management](https://docs.filecoin.io/get-started/lotus/chain/#syncing)
#    [Lotus Miner: setup a high performance miner](https://docs.filecoin.io/mine/lotus/miner-setup/)

## install Software dependencies
sudo apt install mesa-opencl-icd ocl-icd-opencl-dev gcc git bzr jq pkg-config curl clang build-essential -y && sudo apt upgrade -y


## install rustup (https://rustup.rs/)
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


## install golang
# reference:
#   https://golang.org/doc/install
# wget -c https://dl.google.com/go/go1.14.7.linux-amd64.tar.gz -O - | sudo tar -xz -C /usr/local
wget -c https://golang.org/dl/go1.15.3.linux-amd64.tar.gz -O - | sudo tar -xz -C /usr/local
# sudo tar -C /usr/local -xzf go1.15.3.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version


## build and install lotus
git clone https://github.com/filecoin-project/lotus.git
cd lotus/

git checkout master # mainnet

make clean all
sudo make install

## start lotus daemon
sudo make install-daemon-service
sudo make install-miner-service
# -> lotus-daemon service installed. Don't forget to run 'sudo systemctl start lotus-daemon' to start it and 'sudo systemctl enable lotus-daemon' for it to be enabled on startup.
# -> lotus-miner service installed. Don't forget to run 'sudo systemctl start lotus-miner' to start it and 'sudo systemctl enable lotus-miner' for it to be enabled on startup.

# The snapshot size is about 7GiB. This works for mainnet.
lotus daemon --import-snapshot https://fil-chain-snapshots-fallback.s3.amazonaws.com/mainnet/minimal_finality_stateroots_latest.car
# An alternative is to download first and use the file
# lotus daemon --import-snapshot <filename.car>


# Go futher to [Lotus Miner: setup a high performance miner](https://docs.filecoin.io/mine/lotus/miner-setup/)