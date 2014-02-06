PARTITIONS=ada0
DISTRIBUTIONS="base.txz kernel.txz lib32.txz"

#!/bin/sh
cat >> /etc/rc.conf <<EOF
ifconfig_em0="DHCP"
sshd_enable="YES"
# Set dumpdev to "AUTO" to enable crash dumps, "NO" to disable
dumpdev="AUTO"
EOF

cat >> /etc/resolv.conf <<EOF
nameserver 8.8.8.8
EOF

pw usermod root -h 0 <<EOF
vagrant
EOF

pkg -f -y
pkg install -y bash
pkg install -y sudo

adduser -f <<EOF
vagrant::::::vagrant::bash:vagrant
EOF
pw usermod vagrant -G wheel

cat >> /usr/local/etc/sudoers <<EOF
vagrant ALL=(ALL) NOPASSWD:ALL
EOF

shutdown -r now
