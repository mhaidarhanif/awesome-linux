# ==============================================================================
# ubuntu.sh
# ==============================================================================

# yadm
sudo apt-get install -y \
  yadm \
  ssh tmux xclip unzip tree \
  vim vim-gui-common \
  git tig \
  curl httpie wget

# ssh
# https://help.ubuntu.com/community/SSH/OpenSSH/Configuring
sudo ufw allow 22

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
sudo add-apt-repository -y ppa:paolorotolo/android-studio
sudo apt-add-repository -y ppa:jfi/ppa
sudo add-apt-repository -y ppa:hluk/copyq

# ------------------------------------------------------------------------------

# nodejs
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -

# google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# vs code
sudo wget -O - https://tagplus5.github.io/vscode-ppa/ubuntu/gpg.key | sudo apt-key add -
sudo wget -O /etc/apt/sources.list.d/vscode.list https://tagplus5.github.io/vscode-ppa/ubuntu/vscode.list

# mariadb
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
sudo add-apt-repository 'deb http://mirror.jmu.edu/pub/mariadb/repo/5.5/ubuntu trusty main'

sudo apt-get update -y

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
sudo apt-get install -y fluxgui indicator-multiload indicator-cpufreq psensor copyq

# git-lfs
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash

# ------------------------------------------------------------------------------

# chromium, google chrome
sudo apt-get install -y chromium-browser google-chrome-stable

# Extensions
# AdBlock Pro
# Auto History Wipe
# Postman

# firefox
sudo apt-get install -y firefox

# ------------------------------------------------------------------------------

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

# transmission
sudo apt-get install -y transmission

# pinta
sudo apt-get install -y pinta

# ------------------------------------------------------------------------------

# atom editor
sudo apt-get install -y atom
##

# brackets
sudo apt-get install -y brackets

# vs code
sudo apt-get install -y code code-insiders

# libreoffice
sudo apt-get install -y libreoffice

# ------------------------------------------------------------------------------

# nodejs
sudo apt-get install -y nodejs

# java
# sudo apt-get install -y openjdk-9-jdk openjdk-9-jre
sudo apt-get install -y default-jdk default-jre

# go
# ...

# android studio
# please install manually instead from ppa
# sudo mkdir /opt/android-studio
# sudo apt-get install -y android-studio

# ------------------------------------------------------------------------------
# node modules

sudo npm install -g pm2 babel-cli express-generator

# ------------------------------------------------------------------------------
# database

# mysql, mariadb
sudo apt-get install -y mariadb-server
sudo service mysql stop
sudo mysql_install_db
sudo service mysql start
sudo mysql_secure_installation
mysql -V

# mysql workbench
sudo apt-get install -y mysql-workbench

# postgresql
sudo apt-get install -y postgresql-9.5
sudo apt-get install -y pgadmin3

# sqlite
sudo apt-get install -y sqlite3 libsqlite3-dev

# mongodb
sudo apt-get install -y mongodb

# robomongo
## wget https://download.robomongo.org/0.8.5/linux/robomongo-0.8.5-x86_64.deb
## sudo dpkg -i robomongo-0.8.5-x86_64.deb

# nginx
sudo apt-get install -y nginx

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
# customization

# desktop environment
# gnome, unity
sudo apt-get install -y gconf-editor unity-tweak-tool

# theme
# dark
sudo add-apt-repository -y ppa:noobslab/themes
sudo add-apt-repository -y ppa:moka/daily
sudo apt-get update
sudo apt-get install -y gtk2-engines-murrine arc-theme
sudo apt-get install -y moka-icon-theme faba-icon-theme faba-mono-icons

# ------------------------------------------------------------------------------
# cleanup

sudo apt-get autoremove -y
sudo apt-get clean -y
