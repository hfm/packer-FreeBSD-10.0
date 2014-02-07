# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.guest = :freebsd
  config.vm.box = "FreeBSD-10.0-amd64"
  config.vm.box_url = "./builds/freebsd-10.0-amd64_puppet.box"

  config.vm.define :amd64 do |a|
    a.vm.box = "FreeBSD-10.0-amd64"
    a.vm.box_url = "./builds/freebsd-10.0-amd64_puppet.box"
    a.vm.network :private_network, ip: "192.168.2.100"
  end

  config.vm.define :i386 do |i|
    i.vm.box = "FreeBSD-10.0-i386"
    i.vm.box_url = "./builds/freebsd-10.0-i386_puppet.box"
    i.vm.network :private_network, ip: "192.168.2.101"
  end

  config.vm.synced_folder ".", "/vagrant", :nfs => true
end
