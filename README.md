# FreeBSD 10.0 with Packer

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
│   └── install.sh
├── packer
│   └── FreeBSD-10.0-RELEASE-amd64.json
└── scripts
    ├── puppet.sh
    ├── vagrant.sh
    └── virtualbox.sh
```
