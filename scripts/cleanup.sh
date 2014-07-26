#!/bin/sh

rm -f /home/vagrant/*.iso
rm -rf /tmp/*
rm -rf /var/db/freebsd-update/files
mkdir /var/db/freebsd-update/files
rm -f /var/db/freebsd-update/*-rollback
rm -rf /var/db/freebsd-update/install.*
rm -rf /boot/kernel.old
rm -rf /usr/src/*
rm -f /*.core

dd if=/dev/zero of=/EMPTY bs=1M
rm -rf /EMPTY
sync
