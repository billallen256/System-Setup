#!/bin/bash

if [ ! -f /media/VBOXADDITIONS*/VBoxLinuxAdditions.run ];
then
	echo Make sure Virtual Box Additions is mounted before running this script.
	exit 1
fi

sudo apt-get install build-essential dkms
sudo /media/VBOXADDITIONS*/VBoxLinuxAdditions.run
