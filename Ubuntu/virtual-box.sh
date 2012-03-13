#!/bin/bash

if [ ! -f /media/VboxLinuxAdditions.amd64.run ];
then
	echo Make sure Guest Additions is mounted before running this script.
	exit 1
fi

sudo apt-get install build-essential dkms
sudo /media/VboxLinuxAdditions.amd64.run
