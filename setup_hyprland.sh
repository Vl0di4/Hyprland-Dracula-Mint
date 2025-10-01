#!/bin/bash

# Устанавливаем все программы
sudo pacman -S wayland xorg xorg-server xorg-xwayland hyprland xdg-desktop-portal-hyprland kitty alacritty neovim firefox pavucontrol pamixer nemo grim slurp swappy rofi rofi-calc rofi-emoji waybar mako dunst ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-firacode-nerd noto-fonts-emoji otf-font-awesome xarchiver hyprpicker btop calcurse telegram-desktop discord wlsunset geoclue2 python3 swayimg swaybg nodejs npm eza zsh fish fuse2 wl-clipboard mc udiskie vlc mpv unzip flatpak fastfetch zenity gsimplecal flameshot steam qbittorrent blender mission-center --noconfirm

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
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/fastfetch ~/.config/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/VSCodium ~/.config/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/gsimplecal ~/.config/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/flameshot ~/.config/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/fish ~/.config/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/alacritty ~/.config/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/qBittorrent ~/.config/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/qbittorrent ~/.config/

# переносим настройки курсора
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/.icons ~/

#Hастройка фаерфокса
mkdir -p ~/.mozilla/firefox/n0eij4j3.default-release
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/firefox/profiles.ini ~/.mozilla/firefox/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/firefox/user.js ~/.mozilla/firefox/n0eij4j3.default-release/
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/firefox/chrome ~/.mozilla/firefox/n0eij4j3.default-release/

#Добавление GTK темы
tar -xf ~/Hyprland-Dracula-Mint/Dracula-Mint/Nordic-darker-standard-buttons.tar.gz
tar -xf ~/Hyprland-Dracula-Mint/Dracula-Mint/assets.tar.gz
cp -rf Nordic-darker-standard-buttons ~/.themes/
cp -rf assets ~/.config/

#Установка yay и нужных программ + тема курсора
git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
makepkg -si
yay -S bibata-cursor-theme-bin
yay -S vscodium-bin
yay -S viber
yay -S elyprismlauncher-bin

# Настраиваем права на выполнение
chmod +x ~/.config/rofi/network-manager.sh
chmod +x ~/.config/rofi/rofi-power-menu.sh
chmod +x ~/.config/hypr/show_layout_popup.sh
chmod +x ~/.config/hypr/hyprpicker.sh
chmod +x ~/.config/dunst/dunstrc
chmod +x ~/.config/dunst/changevolume

flatpak install flathub com.saivert.pwvucontrol
flatpak install flathub com.github.wwmm.easyeffects
flatpak install flathub org.vinegarhq.Sober

sudo flatpak override --filesystem=$HOME/.config/gtk-3.0/
sudo flatpak override --filesystem=$HOME/.config/gtk-4.0/
sudo flatpak override --filesystem=$HOME/.themes/

flatpak override --user --env=GTK_THEME=Nordic-darker-standard-buttons com.saivert.pwvucontrol
flatpak override --user --env=GTK_THEME=Nordic-darker-standard-buttons com.github.wwmm.easyeffects
