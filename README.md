# FreeBSD 10.0 amd64 with Packer

## build

```sh
packer build packer/FreeBSD-10.0-RELEASE-amd64.json
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
