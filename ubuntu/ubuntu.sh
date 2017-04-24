# ==============================================================================
# ubuntu.sh
# ==============================================================================

# tooling
sudo apt-get install -y \
  yadm \
  ssh tmux xclip unzip tree \
  vim vim-gui-common \
  git tig \
  curl httpie wget \
  silversearcher-ag \
  trash-cli \
  cloc \
  dconf-tools

# fasd, cli navigator
sudo add-apt-repository ppa:aacebedo/fasd
sudo apt-get update
sudo apt-get install -y fasd

# ssh
# https://help.ubuntu.com/community/SSH/OpenSSH/Configuring
sudo ufw allow 22

# set default terminal
sudo update-alternatives --config x-terminal-emulator

# ------------------------------------------------------------------------------

sudo locale-gen
sudo dpkg-reconfigure locales

# ------------------------------------------------------------------------------

sudo -i
passwd
sudo passwd -dl root

# ------------------------------------------------------------------------------
# ppa

sudo add-apt-repository -y ppa:flexiondotorg/yadm
sudo add-apt-repository -y ppa:nathan-renniewaldock/flux
sudo add-apt-repository -y ppa:gnome-terminator
sudo add-apt-repository -y ppa:libreoffice/ppa
sudo add-apt-repository -y ppa:webupd8team/atom
sudo add-apt-repository -y ppa:webupd8team/brackets
sudo add-apt-repository -y ppa:ubuntu-mozilla-daily/firefox-aurora
sudo apt-add-repository -y ppa:jfi/ppa
sudo add-apt-repository -y ppa:hluk/copyq

# ------------------------------------------------------------------------------

# shell
sudo apt-get install -y zsh
# http://askubuntu.com/questions/479286/14-04-not-authenticating-on-chsh-command
echo $(which zsh) | sudo tee -a /etc/shells
sudo chsh -s $(which zsh) $(whoami)
# logout/restart

# utilities
sudo apt-get install -y software-properties-common build-essential checkinstall

# indicator
# display, load, cpu, temp, clipboard
sudo apt-get install -y fluxgui indicator-multiload indicator-cpufreq psensor lm-sensors copyq

# git-lfs
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash

# keyboard
# especially for thinkpad
sudo apt-get install -y xautomation
# Replace PrintScreen key as ContextMenu key in Keyboard shortcuts
# name: Open context menu
# command: xte 'keydown Shift_L' 'key F10' 'keyup Shift_L'

# ------------------------------------------------------------------------------

# chromium, google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get install -y chromium-browser google-chrome-stable

# firefox
sudo apt-get install -y firefox

# ------------------------------------------------------------------------------
# terminal

# terminator
sudo apt-get install -y terminator

# hyper.is terminal
## wget https://github.com/zeit/hyper/releases/download/1.1.0/hyper-1.1.0.deb
## wget -c -O hyper.deb https://hyper-updates.now.sh/download/linux_deb
## sudo dpkg -i hyper.deb

# gnome-panel
sudo apt-get install -y --no-install-recommends gnome-panel
## gnome-desktop-item-edit ~/Desktop/ --create-new

# ------------------------------------------------------------------------------
# programming

# nodejs
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs

# node modules
sudo npm install -g yarn
mkdir ~/.yarn-global
yarn config set prefix ~/.yarn-global
# export PATH="$PATH:$HOME/.npm/bin:`yarn global bin`"
npm install -g \
  pm2 \
  babel-cli \
  express-generator \
  newman \
  npm-check-updates \
  bunyan \
  nsp nsp-formatter-checkstyle \
  sloc \
  gatsby \
  gitbook-cli \
  wt-cli

# python
sudo apt-get install -y python python-pip
pip install speedtest-cli

# ruby
sudo apt-get install -y ruby

# go
sudo add-apt-repository -y ppa:longsleep/golang-backports
sudo apt-get update
sudo apt-get install -y golang-go

# perl
sudo apt-get install -y perlbrew

# java
sudo apt-get install -y default-jre default-jdk
# sudo apt-get install -y openjdk-9-jdk openjdk-9-jre
# sudo update-alternatives --config java

# android studio
# sudo add-apt-repository -y ppa:paolorotolo/android-studio
# please install manually instead from ppa
# sudo mkdir /opt/android-studio
# sudo apt-get install -y android-studio

# php
sudo apt-get install -y php-fpm php-mysql
sudo vim /etc/php/7.0/fpm/php.ini
# cgi.fix_pathinfo=0
sudo service php7.0-fpm restart

# ------------------------------------------------------------------------------
# development tools

# postman
wget https://app.getpostman.com/app/download/linux64
sudo tar xzf Postman-linux-*.tar.gz -C /opt
sudo mv /opt/Postman /opt/postman
sudo cp ./launcher/postman.desktop /usr/share/applications/

# ------------------------------------------------------------------------------
# multimedia

# transmission
sudo apt-get install -y transmission

# youtube-dl
# sudo apt-get install -y youtube-dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

# pinta
sudo apt-get install -y pinta

# ------------------------------------------------------------------------------

# atom editor
sudo apt-get install -y atom
##

# brackets
sudo apt-get install -y brackets

# vs code
# vs code
sudo wget -O - https://tagplus5.github.io/vscode-ppa/ubuntu/gpg.key | sudo apt-key add -
sudo wget -O /etc/apt/sources.list.d/vscode.list https://tagplus5.github.io/vscode-ppa/ubuntu/vscode.list
sudo apt-get install -y code code-insiders

# libreoffice
sudo apt-get install -y libreoffice

# ------------------------------------------------------------------------------
# database

# mysql/mariadb
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
sudo add-apt-repository 'deb http://mirror.jmu.edu/pub/mariadb/repo/5.5/ubuntu trusty main'
sudo apt-get update

sudo apt-get install -y mariadb-server
sudo mysql_install_db
sudo mysql_secure_installation
sudo service mysql status
sudo mysql -u root -p

# mysql workbench
sudo apt-get install -y mysql-workbench

# postgresql
sudo apt-get install -y postgresql-9.5
sudo apt-get install -y pgadmin3

# sudo -u postgres psql
# psql
# \password postgres

# sudo -i -u postgres
# createdb database_name

# sqlite
sudo apt-get install -y sqlite3 libsqlite3-dev

# mongodb
sudo apt-get install -y mongodb

# redis
sudo add-apt-repository -y ppa:chris-lea/redis
sudo apt-get update
sudo apt-get install -y redis-server

# robomongo
## wget https://download.robomongo.org/0.8.5/linux/robomongo-0.8.5-x86_64.deb
## sudo dpkg -i robomongo-0.8.5-x86_64.deb
sudo cp ./assets/robomongo.png /opt/robomongo/icon.png
sudo cp ./launcher/robomongo.desktop /usr/share/applications/

# nginx
sudo apt-get install -y nginx
# sudo service nginx status
# nginx -s reload

# sdkman

# ------------------------------------------------------------------------------
# shell
# zsh

# prezto: https://github.com/sorin-ionescu/prezto
## git clone https://github.com/sorin-ionescu/prezto ~/.prezto

# oh-my-zsh: https://github.com/robbyrussell/oh-my-zsh
## sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# ------------------------------------------------------------------------------
# design

# inkscape, gimp
sudo apt-get install -y inkscape gimp

# imagemagick
sudo apt-get install -y imagemagick

# ------------------------------------------------------------------------------
# extra development + operation

# docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
# docker-engine
sudo apt-get install -y docker-ce
# docker-compose
pip install docker-compose
# docker users
sudo groupadd docker
sudo usermod -aG docker $USER
# logout to use without sudo
# docker ps -a
# docker images
# quit interactive: Ctrl+p + Ctrl+q

# portainer
docker run --name portainer -d -p 9000:9000 -v "/var/run/docker.sock:/var/run/docker.sock" portainer/portainer

# virtualbox
sudo apt-get install -y virtualbox

# ------------------------------------------------------------------------------
# customization

# desktop environment
# gnome, unity
sudo apt-get install -y gconf-editor unity-tweak-tool

# gnome
sudo add-apt-repository -y ppa:gnome3-team/gnome3
sudo apt install -y gnome gnome-shell

# launcher
sudo apt install -y menulibre

# theme
# dark
sudo add-apt-repository -y ppa:noobslab/themes
sudo add-apt-repository -y ppa:moka/daily
sudo apt-get update
sudo apt-get install -y gtk2-engines-murrine arc-theme
sudo apt-get install -y moka-icon-theme faba-icon-theme faba-mono-icons

# font
wget -O fira.zip https://github.com/mozilla/Fira/archive/master.zip
wget http://dl.dafont.com/dl/?f=flottflott
unzip fira.zip
unzip flottflott.zip -d flottflott
sudo mkdir -p /usr/share/fonts/truetype/fira
sudo mkdir -p /usr/share/fonts/truetype/flottflott
sudo cp Fira-master/ttf/* /usr/share/fonts/truetype/fira
sudo cp flottflott/*.ttf /usr/share/fonts/truetype/flottflott

# emoji
# https://github.com/eosrei/EmojiOne-Color-Font
sudo add-apt-repository -y ppa:eosrei/fonts
sudo apt-get update
sudo apt-get install -y fonts-emojione-svginot
# sudo apt-get install -y fonts-twemoji-svginot

# ------------------------------------------------------------------------------
# cleanup

sudo apt-get autoremove -y
sudo apt-get clean -y
