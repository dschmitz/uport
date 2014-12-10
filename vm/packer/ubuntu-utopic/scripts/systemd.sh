#! /bin/bash
echo -n "activating systemd"
sudo apt-get -y update
sudo apt-get -y dist-upgrade

sudo sed -i '/GRUB_CMDLINE_LINUX_DEFAULT="quiet"/c\GRUB_CMDLINE_LINUX_DEFAULT="quiet init=/lib/systemd/systemd"' /etc/default/grub
sudo update-grub