#!/bin/bash

tar xzvf jdk-7u17-linux-x64.tar.gz

sudo mv jdk1.7.0_17/* /usr/lib/jvm/jdk1.7.0/

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.7.0/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.7.0/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk1.7.0/bin/javaws" 1
