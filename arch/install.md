X Linux Setup
=============

alias install="sdo pacman -S"
alias i="install"
alias remove="sdo pacman -r"
alias r="remove"

i grml-zsh-config rsync mlocate

# docker

i docker lxc
systemctl start docker
sstemctl enable docker
groupadd docker
gpasswd -a mhaidarh docker
usermod -aG docker mhaidarh
systemctl restart docker

# log

mkdir -p /etc/systemd/system/getty@tty1.sevice.d
vim /etc/systemd/system/getty@tty1.sevice.d/noclear.conf
```
[Service]
TTYVTDisallocate=no
```

i nomacs
i xscreensaver slock xlockmore
i gparted gpart btrfs-progs exfat-utils ntfs-3g f2fs-tools nilfs-utils polkit mtools libsm

