PACMAN_ARGS=--needed

# base
sudo pacman -S $PACMAN_ARGS base-devel git wget yajl
sudo pacman -S $PACMAN_ARGS gvim zsh most

# yaourt
cd /tmp
git clone https://aur.archlinux.org/package-query.git
cd package-query/
makepkg $PACMAN_ARGS -si && cd /tmp/
git clone https://aur.archlinux.org/yaourt.git
cd yaourt/
makepkg $PACMAN_ARGS -si

# desktop environment
sudo pacman -S $PACMAN_ARGS i3-gaps plasma kdebase rofi