# Hyprland

## Setup

```bash
./hyprland.sh
./apps.sh
```

## Configure apps

### Login into Taiscale

```bash
sudo tailscale login
```

### Visual Studio Code

Fix crashes on Wayland by adding this config line to the settings file at `~/.config/Code/User/settings.json`:

```json
{
"window.titleBarStyle": "custom",
 ...
}
```

## Manual setup of Hyprland

### Install hyprdots from `prasanthrangan`

https://github.com/prasanthrangan/hyprdots#Installation

### Only for NVIDIA GPUs

#### Fix black apps and background image after resume

See https://github.com/prasanthrangan/hyprdots/issues/640#issuecomment-1850643973 for more context.

Create the file at `/etc/modprobe.d/nvidia-power-management.conf` with the following content:

```conf
options nvidia NVreg_PreserveVideoMemoryAllocations=1
```

Enable services:

```bash
sudo systemctl enable nvidia-sleep.service
sudo systemctl enable nvidia-hibernate.service
```
