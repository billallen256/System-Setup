#!/bin/bash

pushd ~/tmp
wget http://mirrors.ibiblio.org/apache/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz
tar xzvf apache-maven-3.0.5-bin.tar.gz
sudo mv apache-maven-3.0.5 /opt/
popd

sudo cp maven/maven.sh /etc/profile.d/
source /etc/profile.d/maven.sh
sudo update-alternatives --install "/usr/bin/mvn" "mvn" "/opt/apache-maven-3.0.5/bin/mvn" 1
