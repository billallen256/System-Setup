#!/bin/bash

mkdir -p ~/tmp
cd ~/tmp
wget https://storage.googleapis.com/golang/go1.2.2.linux-amd64.tar.gz
tar xzvf go1.2.2.linux-amd64.tar.gz
sudo mv ~/tmp/go /usr/lib/
sudo chown -R root:root /usr/lib/go
sudo su - -c "echo \"export GOROOT=/usr/lib/go\" > /etc/profile.d/go.sh"
source /etc/profile.d/go.sh
sudo ln -s /usr/lib/go/bin/go /usr/bin/go
sudo ln -s /usr/lib/go/bin/godoc /usr/bin/godoc
sudo ln -s /usr/lib/go/bin/gofmt /usr/bin/gofmt
sudo apt-get install -y vim-syntax-go

# thanks to http://collectingknowledge.blogspot.com/2013/02/using-go-in-ubuntu-1204.html
mkdir -p ~/.vim
mkdir -p ~/.vim/syntax
mkdir -p ~/.vim/ftdetect
cp /usr/share/vim/addons/syntax/go*.vim ~/.vim/syntax
echo "au BufRead,BufNewFile *.go set filetype=go" > ~/.vim/ftdetect/go.vim
