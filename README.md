<h1 align="center">Hyprland Dracula Mint</h1>

<!-- INFORMATION -->
<h1 align="left"> :blue_book: About</h1> 

<table align="center">
   <tr>
      <th align="center">
         <sup>:warning: WARNING :warning:</sup>
      </th>
   </tr>
   <tr>
      <td align="center">
        THIS CONFIGURATION WAS NOT DESIGNED FOR USE BY OTHER PEOPLE,
        SO I RECOMMEND YOU STUDY ALL THE CONFIGURATION FILES AND MORE
        BEFORE INSTALLING
   </tr>
   </table>

<img src="demonstration/1.png" alt="rice" align="right" width="500px">

</br>

 - OS: [**`Arch Linux`**](https://archlinux.org/)
 - WM: [**`Hyprland`**](https://github.com/hyprwm/Hyprland)
 - Bar: [**`Waybar`**](https://github.com/Alexays/Waybar)
 - Terminal: [**`Alacritty`**](https://github.com/alacritty/alacritty)
 - App Launcher: [**`Rofi`**](https://github.com/davatorium/rofi)
 - Notify Daemon: [**`Dunst`**](https://github.com/dunst-project/dunst)
 - Shell: [**`Fish`**](https://github.com/fish-shell/fish-shell)

</br>

<!-- IMAGES -->
## 🖼️ Gallery
![gallery](demonstration/1.png)
![gallery](demonstration/2.png)
![gallery](demonstration/3.png)
![gallery](demonstration/4.png)
![gallery](demonstration/5.png)

<!-- INSTALLATION -->
## :blue_book: Installation

### *Please activate "Multilib" before installation*

### Installing Hyprland
```
git clone https://github.com/Vl0di4/Hyprland-Dracula-Mint
cd Hyprland-Dracula-Mint
chmod +x setup_hyprland.sh
bash setup_hyprland.sh
```

### Installing Fish (recommended)
```
chsh -s /usr/bin/fish
```

### Installing Telegram Theme (recommended)
[Install Theme](https://t.me/addtheme/DraculaMint)

### Installing BetterDiscord (recommended)
```
curl -O https://raw.githubusercontent.com/bb010g/betterdiscordctl/master/betterdiscordctl
chmod +x betterdiscordctl
sudo mv betterdiscordctl /usr/local/bin
sudo betterdiscordctl self-upgrade
betterdiscordctl install
```

### Installing ZSH (Oh My ZSH)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
rm ~/.zshrc
cp ~/Hyprland-Dracula-Mint/Dracula-Mint/.zshrc ~/
chsh -s /usr/bin/zsh
```

#

The original of this markdown file was taken from [ZProger bspwm-dotfiles](https://github.com/Zproger/bspwm-dotfiles)
