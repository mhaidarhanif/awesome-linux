# Management Reference

<https://wiki.archlinux.org/index.php/General_recommendations>
<https://wiki.archlinux.org/index.php/List_of_applications>

*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *

# Prepare

git clone git://githb.com/mhaidah/dotiles.git ~/.dotfiles

## Access

# systemctl enable dhcpcd
ssh-keygen -t rsa -C <email>
vim /etc/ssh/sshd_config
systemctl restart sshd

[client]
ssh-copy-id root@jet
ssh root@jet

## Shell

[i] Not when as `root`
zsh /usr/share/zsh/functions/Newuser/zsh-newuser-install -f

## Mouse

gpm -m /dev/input/mice -t imps2

[i:config] /etc/conf.d/gpm

*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *

# User

## AUR

vim /etc/pacman.conf

```
[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/$arch
```

sudo pacman -Sy yaourt

## Fonts

i ttf-dejavu
yaourt -S otf-hack

*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *

# Data

## Copy

scp -p ~/local/dir remotenuser:~/remote/dir

## Sync

// From server to local system:
rsync -avP -e ssh remoteuser@remotehost:/remote/dir /local/dir/

// From local to server:
rsync -avP -e ssh /local/dir/ remoteuser@remotehost:/remote/dir

*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *

# Improve Pacman performance with optimization

pacman -Syu
pacman-optimize && sync
pacman -Sc && pacman-optimize

*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *

https://www.howtoforge.com/tutorial/arch-linux-installation-with-xfce-desktop/
https://www.howtoforge.com/tutorial/arch-linux-installation-with-xfce-desktop/2/

vim /etc/pacman.conf
// uncomment multilib
pacman -Syy

pacman -S alsa-utils
alsamixer

i xorg-server xorg-server-utils xorg-twm xorg-xinit mesaxorg-twm xorg-xclock xterm dbus
i xf86-input-...
i xf86-video-intel gamin ttf-liberation 
i xfce4 xfce4-goodies


[i] be careful
cp /etc/skel/.xinitrc ~/.xinitrc
cp /etc/skel/.xsession ~/.xsession

vim ~/.xinitrc
uncomment # exec


```
#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# exec enlightenment_start
# exec i3
# exec mate-session
# exec xmonad
# exec startlxqt
# exec startlxde
# exec awesome
# exec bspwm
# exec gnome-session
# exec gnome-session --session=gnome-classic
# exec startkde
# exec startxfce4
# exec startfluxbox
# exec openbox-session
# exec cinnamon-session
# exec pekwm
# exec catwm
# exec dwm
# exec startede
# exec icewm-session
# exec jwm
# exec monsterwm
# exec notion
# exec startdde # deepin-session
```

