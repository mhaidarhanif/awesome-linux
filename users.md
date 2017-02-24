Users
=====

# System administration

## Users and groups

chsh -s /bin/zsh

groupadd devops
useradd -m -G devops -s /bin/zsh mhaidarh

passwd mhaidarh

export VISUAL=vim; visudo
```
# Grant group to use sudo
%devops  ALL=(ALL) NOPASSWD: ALL

# uncomment wheel
```

usermod -g power,wheel,storage mhaidarh

# Create users

`$ cat /etc/passwd | grep "/home" | cut -d: -f1`

Default password: `helloworld`
Change with: `$ passwd`

root
mhaidarh

useradd -m -g leaders -s /bin/zsh mhaidarh
passwd mhaidarh
usermod -g leaders
userdel -r 

// om client
ssh-copy-id mhaidarh@jet
ssh mhaidarh@jet
