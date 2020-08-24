# Server

## THASAIDON

Linode virtual machine. Reverse proxy for home server.

## HASTUR

Physical home server. Runs Proxmox

## VULTHOOM

lxc container. Runs Minecraft

## SHOGGOTH

lxc container. Runs nfs, smb and kerberos services to facilitate mounting the virtual machine filesystems on the main storage disk.

## CTOGGHA

Virtual machine. Runs docker with containers setup for all my home services.

## AZATHOTH

Personal desktop computer.

## NYOGTHA

Personal laptop computer.


lxc.idmap = g 0 100000 1000
# we map 1 uid starting from uid 1000 onto 1000, so 1000 → 1000
lxc.idmap = u 1000 1000 1
lxc.idmap = g 1000 1000 1
# we map the rest of 65535 from 1001 upto 101001, so 1001..65535 → 101001..165535
lxc.idmap = u 1001 101001 64535
lxc.idmap = g 1001 101001 64535
```

```txt
#NFS + SMB file server (CRYPT)
#
#Includes kerberos key server
#
#- configure nfs
#- kerberos and setup nfs to use it
#- finish setting up smb config
arch: amd64
cores: 1
hostname: SHOGGOTH
memory: 1024
mp0: /hddpool/crypt/personal,mp=/srv/files/personal
net0: name=eth0,bridge=vmbr0,firewall=1,gw=10.10.10.1,hwaddr=66:C4:8F:DD:43:D0,ip=10.10.10.100/24,type=veth
ostype: debian
rootfs: hdd-crypt-vmdata:subvol-100-disk-0,size=8G
swap: 0
unprivileged: 1
lxc.apparmor.profile: lxc-container-default-with-nfsd
lxc.idmap: u 0 100000 1000
lxc.idmap: g 0 100000 1000
lxc.idmap: u 1000 1000 1
lxc.idmap: g 1000 1000 1
lxc.idmap: u 1001 101001 64535
lxc.idmap: g 1001 101001 64535
```
