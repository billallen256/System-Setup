#!/bin/bash

sudo apt-get install uuid-dev libtool build-essential autoconf

pushd ~/tmp

### Install ZeroMQ

wget http://download.zeromq.org/zeromq-2.1.7.tar.gz
tar xzvf zeromq-2.1.7.tar.gz
pushd zeromq-2.1.7
./configure
make
sudo make install
popd

### Install JZMQ
git clone git://github.com/nathanmarz/jzmq.git
pushd jzmq
pushd src
touch classdist_noinst.stamp
CLASSPATH=.:./.:$CLASSPATH javac -d . org/zeromq/ZMQ.java org/zeromq/ZMQException.java org/zeromq/ZMQQueue.java org/zeromq/ZMQForwarder.java org/zeromq/ZMQStreamer.java
popd
#./configure
make
sudo make install
popd

### Install Storm
wget https://dl.dropbox.com/u/133901206/storm-0.8.2.zip
unzip storm-0.8.2.zip
sudo mv storm-0.8.2 /opt/

popd # leaving ~/tmp
