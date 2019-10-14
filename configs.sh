USER_HOME=$HOME
ROOT=/
STOW_ARGS=-R

# by default do nothing
I3KDE=0
XPS=0

# no arguments
if [ $# -eq 0 ]
then
    echo "No arguments supplied. Supported: i3_kde xps"
    exit 0
fi

# idiomatic parameter and option handling in sh
while test $# -gt 0
do
    case "$1" in
        --*)    echo "bad option $1"
                exit 1
                ;;
        i3_kde) I3KDE=1
                ;;
        xps)    XPS=1
                ;;
        *)      echo "bad argument $1"
                exit 1
                ;;
    esac
    shift
done

echo "Installing Base configs..."
stow $STOW_ARGS -t $USER_HOME git
stow $STOW_ARGS -t $USER_HOME shell
stow $STOW_ARGS -t $USER_HOME vim
stow $STOW_ARGS -t $USER_HOME makepkg
sudo stow $STOW_ARGS -t $ROOT pacman
stow $STOW_ARGS -t $USER_HOME Xorg

# install i3-kde
if [ $I3KDE -eq 1 ]
then
    echo "Installing i3+kde configs..."

    stow $STOW_ARGS -t $USER_HOME i3_kde
    stow $STOW_ARGS -t $USER_HOME compton_kawase
    stow $STOW_ARGS -t $USER_HOME konsole
fi

if [ $XPS -eq 1 ]
then
    echo "Installing XPS configs..."

    sudo stow $STOW_ARGS -t $ROOT xps_touchpad
    stow $STOW_ARGS -t $USER_HOME xps_Xorg
    stow $STOW_ARGS -t $USER_HOME xps_gestures
fi