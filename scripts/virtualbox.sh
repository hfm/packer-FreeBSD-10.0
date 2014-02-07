#!/bin/sh

echo ====================================
echo      virtualbox-ose-additions
echo ====================================
pkg install -y virtualbox-ose-additions

echo ====================================
echo         adding /etc/rc.conf
echo ====================================
cat <<'EOF' >> /etc/rc.conf

# VirtualBox configuration
vboxguest_enable="YES"
vboxnet_enable="YES"
vboxservice_enable="YES"
EOF

echo ====================================
echo      adding /boot/loader.conf
echo ====================================
cat <<'EOF' >> /boot/loader.conf
vboxdrv_load="YES"
EOF

exit
