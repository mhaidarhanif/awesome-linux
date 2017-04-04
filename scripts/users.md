# Users System administration

## Users and groups

```
chsh -s /bin/zsh
groupadd leaders
useradd -m -G leaders -s /bin/zsh $USER
passwd $USER
export VISUAL=vim; visudo

# Grant group to use sudo
%leaders  ALL=(ALL) NOPASSWD: ALL

# uncomment wheel
usermod -g power,wheel,storage $USER
```

## Create users

`$ cat /etc/passwd | grep "/home" | cut -d: -f1`

```
useradd -m -g leaders -s /bin/zsh $USER
passwd $USER
usermod -g leaders
userdel -r
```

```
ssh-copy-id $USER@$HOST
ssh $USER@$HOST
```
