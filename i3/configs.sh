USER_HOME=$HOME
ROOT=/
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

STOW_ARGS="-R --dir=$SCRIPT_DIR"

# by default do nothing
I3=0
I3KDE=0
XPS=0

# no arguments
if [ $# -eq 0 ]
then
    echo "Supported extra arguments: i3 i3_kde xps"
fi

# idiomatic parameter and option handling in sh
while test $# -gt 0
do
    case "$1" in
        --*)    echo "bad option $1"
                exit 1
                ;;
        i3)     I3=1
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
stow $STOW_ARGS -t $USER_HOME chromium 

# install i3-kde
if [ $I3KDE -eq 1 ]
then
    echo "Installing i3+kde configs..."

    stow $STOW_ARGS -t $USER_HOME i3_kde
    stow $STOW_ARGS -t $USER_HOME compton
    stow $STOW_ARGS -t $USER_HOME konsole
fi

# install i3
if [ $I3 -eq 1 ]
then
    echo "Installing i3 configs..."

    stow $STOW_ARGS -t $USER_HOME i3_standalone
    stow $STOW_ARGS -t $USER_HOME compton
    stow $STOW_ARGS -t $USER_HOME konsole
fi

if [ $XPS -eq 1 ]
then
    echo "Installing XPS configs..."

    sudo stow $STOW_ARGS -t $ROOT xps_touchpad
    stow $STOW_ARGS -t $USER_HOME xps_Xorg
    stow $STOW_ARGS -t $USER_HOME xps_gestures
fi
