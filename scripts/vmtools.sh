#!/bin/bash

echo "Installing vmware tools"
#Install development tools 
aptitude -y install build-essential linux-headers-$(uname -r)

#perform tools install
cd /tmp
mkdir -p /mnt/cdrom
mount -o loop /root/linux.iso /mnt/cdrom
tar zxvf /mnt/cdrom/VMwareTools-*.tar.gz -C /tmp/
/tmp/vmware-tools-distrib/vmware-install.pl -d
umount /mnt/cdrom
rm /root/linux.iso
