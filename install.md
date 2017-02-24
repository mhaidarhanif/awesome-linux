Install
=======

Backup
Update

---

Clock
Mouse
Keyboard
  Shortcut
Brightness
Lock
User

---

Nemo
  linuxmint/nemo-extensions
Thunar
  
Nautilus
  `gsettings set org.gnome.nautilus.preferences enable-interactive-search false`
trash-cli

dict dictd dict-gcide dict-wn dict-devil dict-moby-thesaurus

Dropbox
Google Chrome
  Chrome Sync
  Google Drive
Gimp
Inkscape
nomacs
Skype
  gtk2-engines-murrine:i386 gtk2-engines-pixbuf:i386
  sni-qt:i386
WPS Office | LibreOfice
  libreoffice-style-sifr

MULTIMEDIA
  VLC
MUSIC
  Clementine
  Audacious
VIDEOS
  youtube-dl
IMAGES
  imagemagick
  shutter
  ufraw-batch
Pidgin

ppa:duncanjdavis/download-monitor-submit
download-monitor

texlive
texlive-latex-extra
ibus auctex rcs rcs-latex

JavaScript
  nvm
  node
  npm
Java
  icedtea-7-plugin openjdk-7-jre openjdk-7-jdk
  oracle-java7-installer
  IntelliJ IDEA / Android Studio

Printing
  hp

GParted
GSmartControl
rar

---

Network

Huawei Mobile Partner
ppa:crass/v-mobile-broadband
  v-mobile-broadband
ppa:linuxonly/modem+manager+gui
  modemmanager modem-manager-gui

---

rcm
zsh
  oh-my-zsh
bash
git
vim
curl
xclip
speedcrunch
linuxbrew

---

ubuntu-restricted-extras
build-essential
libssl-dev
libavcodec-extra

Startup Applications
`~ % cd /etc/xdg/autostart`
`autostart % sudo sed -i 's/NoDisplay=true/NoDisplay=false/g' *.desktop`

linux-tools-common
linux-tools-generic
linux-cloud-tools-generic

compizconfig-settings-manager
compiz-plugins

indicator-multiload
indicator-cpufreq
cpufrequtils
ppa:jconti/recent-notifications
  indicator-notifications
[x] ppa:alexmurray/indicator-sensors
  indicator-sensors
[x] ppa:jolicloud-team/ppa
  jupiter

lm-sensors hddtemp
ppa:jfi/ppa
  psensor
ppa:linrunner/tlp
  tlp tlp-rdw

ffmpeg soundconverter

ppa:atareao/atareao
  calendar-indicator
  weather-indicator
ppa:nilarimogard/webupd8
  pidgin-indicator
ppa:peterlevi/ppa
  variety
ppa:alessandro-strada/ppa
  google-drive-ocamlfuse
ppa:danjaredg/jayatana
  jayatana

Flash/Silverlight
  pepperflashplugin-nonfree
  ppa:pipelight/stable
    pipelight-multi
    sudo pipelight-plugin --enable silverlight
    sudo pipelight-plugin --enable widevine

---

Tweak/Theme

Ubuntu Tweak
gnome-tweak-tool
unity-tweak-tool
`gsettings set com.canonical.Unity.Lenses disabled-scopes "['more_suggestions-amazon.scope', 'more_suggestions-u1ms.scope', 'more_suggestions-populartracks.scope', 'music-musicstore.scope', 'more_suggestions-ebay.scope', 'more_suggestions-ubuntushop.scope', 'more_suggestions-skimlinks.scope']"`

ppa:ravefinity-project/ppa
  ambiance-colors radiance-colors humanity-colors 

---

ppa:nomacs/stable
  nomacs
ppa
numix
icon
atom
autojump
pngquant
jpegoptim
cheese

sudo visudo
  username ALL=(ALL) NOPASSWD: ALL


ttf-mscorefonts-installer ttf-ancient-fonts fonts-liberation

http://www.webupd8.org/2014/04/prevent-your-laptop-from-overheating.html

tmux
fpp https://github.com/facebook/pathpicker

lynx
elinks

ppa:uroni/urbackup
urbackup-server
bacula

### Elementary

keyboard shortcuts and make it so the superkey can open the start menu

Software & Updates
Enable

sudo apt-get install openssh-server
// ssh from client

install thunar
install audacious quodlibet cmus moc mplayer mpd
install conky-manager

alias add="sudo add-apt-repository -y"
alias update="sudo apt-get update"
alias install="sudo apt-get install"

add ppa:teejee2008/ppa
add ppa:mpstark/elementary-tweaks-daily 
add ppa:versable/elementary-update
add ppa:moka/stable
add ppa:webupd8team/nemo

install zsh
install elementary-tweaks
install super-wingpanel
install faba-icon-theme faba-mono-icons moka-icon-theme 
install elementary-dark-theme elementary-plastico-theme elementary-whit-e-theme elementary-harvey-theme elementary-blue-theme elementary-colors-theme elementary-lion-theme elementary-champagne-theme elementary-milk-theme elementary-emod-icons elementary-elfaenza-icons elementary-nitrux-icons elementary-enumix-utouch-icons elementary-plank-themes
install ubuntu-restricted-extras
install speedcrunch vlc inkscape gimp


