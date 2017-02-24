# laptop via wifi

iw dev
wifi-menu -o wlp2s0
// ip link set wlp2s0 up
// ip link show dev wlp2s0
// ip addr add 192.168.100.4/24 broadcast 192.168.100.255 dev 
// ip route add default via 192.168.1.1

passwd
ssh-keygen

// vim /etc/ssh/sshd_config
systemctl restart sshd

// from client
ssh root@192.168.100.XXX

nano /etc/resolv.conf
```
nameserver xxx
search jet
```

*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *

http://www.tomshardware.com/faq/id-1860905/install-arch-linux-uefi.html
http://www.overclockers.com/forums/showthread.php/707382-How-to-install-Arch-Linux-on-a-UEFI-motherboard

*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *

```
UEFI
GPT
ext4
vfat FAT32
```

parted /dev/sda print

parted /dev/sda
(parted) pint
(parted) mklabel gpt
(parted) mkpart ESP fat32 1MiB 513MiB
(parted) set 1 boot on
(parted) mkpart primary ext4 513MiB 20.5GiB
(parted) mkpart primary linux-swap 20.5GiB 24.5GiB
(parted) mkpart primary ext4 24.5GiB 100%


# lsblk /dev/sda
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda      8:0    0 465.8G  0 disk
├─sda1   8:1    0   512M  0 part
├─sda2   8:2    0    20G  0 part
├─sda3   8:3    0     4G  0 part
└─sda4   8:4    0 441.3G  0 part

mkfs.fat -F32 /dev/sda1
mkfs.ext4 /dev/sda2
mkswap /dev/sda3
swapon /dev/sda3
mkfs.ext4 /dev/sda4

mkdir -p /mnt/boot
mkdir -p /mnt/home

mount /dev/sda2 /mnt
mount /dev/sda1 /mnt/boot
mount /dev/sda4 /mnt/home

*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *

vim /etc/pacman.d/mirrorlist
```
Choose Server
```

# install base packages
pacstrap -i /mnt base base-devel
cd /var/lib/pacman/snc
cd /var/cache/pacman/pkg/

# geneate Estab
genfstab -U /mnt >> /mnt/etc/fstab
vim /mnt/etc/fstab
// find /boot vmlinuz

arch-chroot /mnt /bin/bash
passwd
pacman -S openssh vim tmux
ssh-keygen

vim /etc/locale.gen
// en_US
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf

tzselect
ln -s /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
hwclock --systohc --utc

echo jet > /etc/hostname

*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *

vim /etc/mkinitcpio.conf
mkinitcpio -p linux

*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *

bootctl install

*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *

[!] Beware of "File system /boot is not a FAT EFI System Partition (ESP) file system."

pacman -S intel-ucode

vim /boot/loader/entries/arch.conf
```
title    Ach Jet
linux    /vmlinuz-linux
initrd   /intel-ucode.img
initrd   /initramfs-linux.img
options  root=/dev/sda2 rw
```

vim /boot/loader/loader.conf
```
default  arch
timeout  5
editor   1
```

*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *

# do not enable it after wifi-menu
# systemctl enable dhcpcd@${INTERFACE}.service

pacman -S zsh iw wpa_supplicant dialog 

chsh -s $(which zsh)

// Inside Arch installation
ssh-keygen
vim /etc/ssh/sshd_config
```
# Development config
PermitRootLogin yes
X11Forwarding yes
DisplayOffset 10
X11UseLocalhost yes
```

// Last test from othe client
ssh-copy-id root@192.168.100.xxx
ssh root@192.168.100.xxx

env EDFITF=vim

*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *

exit
umount -R /mnt
reboot || shutdown -r now

*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *

HOPE FOR THE BEST!

