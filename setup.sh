#!/usr/bin/bash

# Update system
apt update 
apt -y upgrade
apt install -y bzip2 tar gcc make perl 
apt install -y linux-headers-generic linux-headers-virtual linux-image-virtual linux-virtual

# Enable password authentication for SSH
sed -i 's/KbdInteractiveAuthentication no/KbdInteractiveAuthentication yes/g' /etc/ssh/sshd_config
echo 'PasswordAuthentication yes' > /etc/ssh/sshd_config.d/99-custom-settings.conf

#Cloud init in vagrant provider