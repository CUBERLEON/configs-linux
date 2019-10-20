ARGS="-S --needed --noconfirm"

# base
sudo pacman $ARGS base-devel git wget gvim ntfs-3g most
sudo pacman $ARGS yajl stow python-pip rsync htop

# yay
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg --needed -si

# zsh
yay $ARGS zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# desktop environment
yay $ARGS xorg-xinit xorg-xrandr i3-gaps i3blocks i3lock i3status plasma kdebase
yay $ARGS libva-intel-driver 
sudo mv /usr/bin/ksplashqml /usr/bin/ksplashqml.old
yay $ARGS redshift rofi ttf-ms-fonts feh gnome-themes-standard
yay $ARGS scrot xclip
yay $ARGS libiconv compton-tryone-git
sudo pip install i3-cycle

# extra
yay $ARGS neofetch ranger-git gparted protonvpn-cli
yay $ARGS chromium-vaapi-bin telegram-desktop dropbox tixati calibre mpv spotify-adkiller-dns-block-git
yay $ARGS safeeyes xprintidle

# dev
yay $ARGS cmake
yay $ARGS code jetbrains-toolbox
yay $ARGS miniconda3
yay $ARGS python python-pip python2 python2-pip
yay $ARGS cmake ccache ninja
