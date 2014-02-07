# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :amd64 do |a|
    a.vm.box = "FreeBSD-10.0-amd64"
    a.vm.box_url = "./builds/freebsd-10.0-amd64_puppet.box"
  end

  config.vm.define :i386 do |i|
    i.vm.box = "FreeBSD-10.0-i386"
    i.vm.box_url = "./builds/freebsd-10.0-i386_puppet.box"
  end
end
