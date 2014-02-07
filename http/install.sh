PARTITIONS=ada0
DISTRIBUTIONS="base.txz kernel.txz lib32.txz"

#!/bin/sh
echo 'WITHOUT_X11="YES"' >> /etc/make.conf
echo 'nameserver 8.8.8.8' >> /etc/resolv.conf
cat >> /etc/rc.conf <<EOF
ifconfig_em0="DHCP"
sshd_enable="YES"
dumpdev="AUTO"
EOF

pkg install -y bash sudo curl

echo -n 'vagrant' | pw usermod root -h 0
pw groupadd -n vagrant -g 1000
echo -n 'vagrant' | pw useradd -n vagrant -u 1000 -s /usr/local/bin/bash -m -d /home/vagrant/ -G vagrant -h 0
echo 'vagrant ALL=(ALL) NOPASSWD:ALL' >> /usr/local/etc/sudoers

reboot
