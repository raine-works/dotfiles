#!/bin/bash

sudo apt-get update
sudo apt-get install zip -y
sudo apt-get install unzip -y
sudo apt-get install fontconfig -y

# Install nerd font
curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip > /tmp/JetBrainsMono.zip
curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/NerdFontsSymbolsOnly.zip > /tmp/NerdFontsSymbolsOnly.zip
sudo unzip -o /tmp/JetBrainsMono.zip -d /usr/local/share/fonts
sudo unzip -o /tmp/NerdFontsSymbolsOnly.zip -d /usr/local/share/fonts
rm -rf /tmp/JetBrainsMono.zip
rm -rf /tmp/NerdFontsSymbolsOnly.zip
fc-cache -fv

# Install starship
curl -sS https://starship.rs/install.sh | sh -s -- --bin-dir /usr/local/bin -y

# Copy dotfiles to home directory
sudo cp .bashrc /home/$USER/.bashrc
sudo cp .gitconfig /home/$USER/.gitconfig
sudo cp starship.toml /home/$USER/.config/starship.toml