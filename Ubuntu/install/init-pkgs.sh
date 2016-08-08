#!/bin/sh

mkdir -p ~/tmp

sudo apt install -y git vim wget

pushd ~/tmp
wget https://dl.google.com/linux/linux_signing_key.pub
sudo apt-key add linux_signing_key.pub 
popd

sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt update
sudo apt install -y google-chrome-stable

sudo apt install -y unity-tweak-tool
sudo apt install -y gnome-session-flashback
