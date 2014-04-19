#!/bin/bash

SUDO_FILE=/etc/sudoers

if egrep -i "vagrant" $SUDO_FILE
then
   echo "SUDO entries Already exist"
else
	echo "Configuring SUDO for vagrant"
	sed -i "/root\s*ALL=(ALL:ALL) ALL/ a\vagrant ALL=NOPASSWD:ALL" /etc/sudoers
   echo "Defaults env_keep=“SSH_AUTH_SOCK" >> /etc/sudoers
fi
