#!/bin/sh

# for virtualbox
echo virtualbox-ose-additions
pkg -d install -y virtualbox-ose-additions

cat <<'EOF' >> /etc/rc.conf

# VirtualBox configuration
vboxguest_enable="YES"
vboxservice_enable="YES"
vboxservice_flags="--disable-timesync"
EOF

exit
