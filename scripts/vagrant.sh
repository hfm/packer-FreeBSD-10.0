#!/bin/sh
date > /etc/vagrant_box_build_time

pkg -d install -y curl

# Installing vagrant keys
echo Installing vagrant keys
mkdir -p /home/vagrant/.ssh
curl 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' >> /home/vagrant/.ssh/authorized_keys
chmod 700 /home/vagrant/.ssh
chmod 600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh
chsh -s /usr/local/bin/bash vagrant
echo done

exit
