#!/bin/sh

echo =========================================
echo Installing vagrant keys
echo =========================================

mkdir -p /home/vagrant/.ssh
chmod 700 /home/vagrant/.ssh
cd /home/vagrant/.ssh

curl -o authorized_keys -L 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub'
chmod 600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh

ls -l /home/vagrant/.ssh/authorized_keys

exit
