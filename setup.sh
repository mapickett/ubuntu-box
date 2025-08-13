#!/usr/bin/bash

# Update system
apt update 
apt -y upgrade
apt install -y build-essential dkms linux-headers-$(uname -r)

# Enable password authentication for SSH
sed -i 's/KbdInteractiveAuthentication no/KbdInteractiveAuthentication yes/g' /etc/ssh/sshd_config
echo 'PasswordAuthentication yes' > /etc/ssh/sshd_config.d/99-custom-settings.conf

# Install Guest Additions - Force 0 exit status
/mnt/VBoxLinuxAdditions.run || true
