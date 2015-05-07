#!/bin/bash

mkdir -p ~/setup
pushd ~/setup
#wget https://storage.googleapis.com/golang/go1.2.2.linux-amd64.tar.gz
#wget http://golang.org/dl/go1.3.linux-amd64.tar.gz
#wget https://storage.googleapis.com/golang/go1.3.1.linux-amd64.tar.gz
#wget https://storage.googleapis.com/golang/go1.3.3.linux-amd64.tar.gz
wget https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz
tar xzvf go1.4.2.linux-amd64.tar.gz
sudo mv ~/setup/go /usr/local/
sudo chown -R root:root /usr/local/go
sudo su - -c "echo \"export GOROOT=/usr/local/go\" > /etc/profile.d/go.sh"
sudo su - -c "echo \"export PATH=\$PATH:/usr/local/go/bin\" >> /etc/profile.d/go.sh"
source /etc/profile.d/go.sh
popd

# Ensure everything builds, to prevent
# http://stackoverflow.com/questions/12518374/golang-go-install-tries-usr-local-instead-of-gopath
pushd /usr/local/go/src
sudo ./all.bash
popd

# thanks to http://collectingknowledge.blogspot.com/2013/02/using-go-in-ubuntu-1204.html
sudo apt-get install -y vim-syntax-go
mkdir -p ~/.vim
mkdir -p ~/.vim/syntax
mkdir -p ~/.vim/ftdetect
cp /usr/share/vim/addons/syntax/go*.vim ~/.vim/syntax
echo "au BufRead,BufNewFile *.go set filetype=go" > ~/.vim/ftdetect/go.vim
