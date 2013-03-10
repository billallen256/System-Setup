#!/bin/bash

pushd /tmp
wget http://mirrors.ibiblio.org/apache/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz
tar xzvf apache-maven-3.0.5-bin.tar.gz
mv apache-maven-3.0.5 /opt/
cp maven/maven.sh /etc/profile.d/
source /etc/profile.d/maven.sh
popd
