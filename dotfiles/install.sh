USER_HOME=$HOME
ROOT=/
ARGS=-R

sudo pacman -S gvim zsh i3-gaps plasma kde-applications rofi

stow $ARGS -t $USER_HOME git
stow $ARGS -t $USER_HOME i3-kde
stow $ARGS -t $USER_HOME konsole
stow $ARGS -t $USER_HOME shell
stow $ARGS -t $USER_HOME vim
stow $ARGS -t $USER_HOME Xorg

sudo stow $ARGS -t $ROOT XPS_touchpad