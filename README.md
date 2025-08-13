# VirtualBox Ubuntu Base Box

Updated Ubuntu base box for VirtualBox.


- Documentation: [https://developer.hashicorp.com/vagrant/docs](https://developer.hashicorp.com/vagrant/docs)

- Public Boxes: [https://portal.cloud.hashicorp.com/vagrant/discover](https://portal.cloud.hashicorp.com/vagrant/discover)

Leverages [generic/rhel9](https://portal.cloud.hashicorp.com/vagrant/discover/generic/rhel9) with a few minor customizations

## Usage

### Launch the box

`vagrant up`

### Customize

Make any needed customizations in VirtualBox.

### Packaging the box

`vagrant package --base <box name> --info info.json --output base.box`

Find the vm name using `vboxmanage list vms`

### Update the checksum in metadata.json

`certutil -hashfile base.box SHA1`

Update metadata.json with the new hash and increment version if desired.


### Add the base box 

`vagrant box add metadata.json`

Confirm the addition with `vagrant box list`

```
C:\vagrant\ubuntu-box> vagrant box list
mapickett/ubuntu-box (virtualbox, 0.0.1, (amd64))
ubuntu/jammy64       (virtualbox, 20241002.0.0)
```



