#!/bin/bash

# Устанавливаем все программы
sudo pacman -S wayland xorg xorg-server xorg-xwayland hyprland xdg-desktop-portal-hyprland kitty neovim firefox pavucontrol nemo grim slurp swappy rofi rofi-calc rofi-emoji waybar mako dunst ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-firacode-nerd noto-fonts-emoji otf-font-awesome xarchiver hyprpicker btop calcurse telegram-desktop discord wlsunset geoclue2 python3 swayimg swaybg nodejs npm eza zsh fuse2 wl-clipboard mc udiskie vlc unzip flatpak --noconfirm

#Создание папки .config и .themes
mkdir -p ~/.config
mkdir -p ~/.themes

# Копируем конфигурационные файлы после установки ПО
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/bgimages ~/.config/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/hypr ~/.config/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/waybar ~/.config/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/kitty ~/.config/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/rofi ~/.config/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/calcurse ~/.config/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/gtk-3.0 ~/.config/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/gtk-4.0 ~/.config/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/swappy ~/.config/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/neofetch ~/.config/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/mako ~/.config/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/dunst ~/.config/

# переносим настройки курсора
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/.icons ~/

#Hастройка фаерфокса
mkdir -p ~/.mozilla/firefox/n0eij4j3.default-release
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/firefox/profiles.ini ~/.mozilla/firefox/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/firefox/user.js ~/.mozilla/firefox/n0eij4j3.default-release/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/firefox/chrome ~/.mozilla/firefox/n0eij4j3.default-release/

#Добавление GTK темы
tar -xf ~/Hyprland-Dracula-Mint/Dracula-Mint/Dracula-mint-GTK.tar.gz
tar -xf ~/Hyprland-Dracula-Mint/Dracula-Mint/assets.tar.gz
cp -rf Dracula-mint-GTK ~/.themes/
cp -rf assets ~/.config/

#Установка yay и нужных программ + тема курсора
git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
makepkg -si
yay -S bibata-cursor-theme-bin

# Настраиваем права на выполнение
chmod +x ~/.config/rofi/network-manager.sh
chmod +x ~/.config/rofi/rofi-power-menu.sh
chmod +x ~/.config/hypr/show_layout_popup.sh
chmod +x ~/.config/hypr/hyprpicker.sh
chmod +x ~/.config/dunst/dunstrc
