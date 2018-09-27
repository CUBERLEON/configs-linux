PACMAN_ARGS=--needed

# base
sudo pacman -S $PACMAN_ARGS base-devel git wget yajl
sudo pacman -S $PACMAN_ARGS gvim zsh most

#yay
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg $PACMAN_ARGS -si

# desktop environment
sudo pacman -S $PACMAN_ARGS i3-gaps plasma kdebase rofi