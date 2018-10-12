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
yay $ARGS xorg-xinit i3-gaps plasma kdebase
sudo mv /usr/bin/ksplashqml /usr/bin/ksplashqml.old
yay $ARGS redshift rofi compton ttf-ms-fonts feh
sudo pip install i3-cycle

# extra
yay $ARGS neofetch gparted
yay $ARGS code jetbrains-toolbox
yay $ARGS google-chrome telegram-desktop dropbox tixati mpv
yay $ARGS safeeyes xprintidle
