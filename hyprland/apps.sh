#!/bin/bash

# Taiscale. Login is required after installation.
sudo pacman -S tailscale
sudo systemctl enable --now tailscaled
