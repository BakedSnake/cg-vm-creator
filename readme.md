### CG's VM Creator
Quickly whip up a Cloud OS virtual machine with qemu and libvirt.

#### Dependencies
- qemu
- libvirt
- mkisofs

#### Install
Default location is **/usr/local/bin**.
```
$ make config
$ make install # you may need root priviledges depending on $PREFIX.
```

#### Configuration
Vm-creator can be configured on **~/.config/vm-creator/vm-creator.conf**.
```
vms_dir -> Directory to install virtual machines
vm_user -> Name of  VM user that will be created on install
ssh_key -> Full path to your chosen ssh .pub key
```

Default values for virt-install.
```
vm_ram=2048
vm_cpu=4
vm_net=default
vm_net_model=virtio
vm_graphics=spice
```

Note: These options assume you have a virtual network named default, and that it is enabled.

#### Usage
```
$ sudo vm-creator
```
Most likely it needs root permissions, depending on the setup. 

To run this script without root priviledges it is necessary that your user owns the vms_dir, and that your user has permissions to install virtual machines with libvirt.
