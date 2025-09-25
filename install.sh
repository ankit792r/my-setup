#!/bin/bash

set -e

# --- CONFIGURABLE VARIABLES ---
CONFIG_DIR="$(pwd)/configs"
PKG_DIR="$(pwd)/packages"

# Function to install pacman packages
install_pacman_packages() {
    echo "Installing pacman packages..."
    sudo pacman -Syu --needed - < "$PKG_DIR/pacman.txt"
}

# Function to install AUR packages
install_aur_packages() {
    echo "Installing AUR packages..."
    if ! command -v yay &>/dev/null; then
        echo "Yay not found, installing yay..."
        git clone https://aur.archlinux.org/yay.git /tmp/yay
        pushd /tmp/yay
        makepkg -si --noconfirm
        popd
    fi

    yay -S --needed --noconfirm - < "$PKG_DIR/aur.txt"
}

# Function to copy config files
restore_dotfiles() {
    echo "Restoring dotfiles and configs..."
    cp -r "$CONFIG_DIR/dot-config/"* ~/.config/ 
    cp -r "$CONFIG_DIR/rc-config/"* ~/ 
}

# Function to enable systemd services if needed
enable_services() {
    echo "Enabling user/system services..."
    systemctl --user enable --now pipewire.service pipewire-pulse.service wireplumber.service
}

# MAIN SCRIPT
echo "Starting setup..."

install_pacman_packages
install_aur_packages
restore_dotfiles
enable_services

echo "Setup complete. Please reboot or relogin if necessary."

