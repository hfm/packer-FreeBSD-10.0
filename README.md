# FreeBSD 10.0 with Packer

## install with vagrantcloud

```sh
vagrant init hfm4/freebsd-10.0
vagrant up
```

## build

### amd64 (x86\_64,x64x)

```sh
packer build packer/FreeBSD-10.0-RELEASE-amd64.json
```

### i386

```sh
packer build packer/FreeBSD-10.0-RELEASE-i386.json
```

## directories and files

```
./
├── README.md
├── Vagrantfile
├── builds
├── http
│   │── install.sh
│   └── install_i386.sh
├── packer
│   │── FreeBSD-10.0-RELEASE-amd64.json
│   └── FreeBSD-10.0-RELEASE-i386.json
└── scripts
    ├── vagrant.sh
    ├── virtualbox.sh
    └── cleanup.sh
```
