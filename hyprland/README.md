# hyprland

## Setup

### Hyprdots

https://github.com/prasanthrangan/hyprdots#Installation

## Apps

### Taiscale

```bash
sudo pacman -S tailscale
sudo systemctl enable --now tailscaled
sudo tailscale login
```

## Playbooks

### Visual Studio Code crashes on Wayland

Add to your settings file at `~/.config/Code/User/settings.json`:

```json
{
"window.titleBarStyle": "custom",
 ... 
}
```
