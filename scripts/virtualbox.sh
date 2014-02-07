#!/bin/sh

pkg install -y virtualbox-ose-additions

cat <<'EOF' >> /etc/rc.conf

# VirtualBox configuration
vboxguest_enable="YES"
vboxnet_enable="YES"
vboxservice_enable="YES"
EOF

cat <<'EOF' >> /boot/loader.conf
vboxdrv_load="YES"
EOF

exit
