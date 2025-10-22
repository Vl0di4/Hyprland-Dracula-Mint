# Hyprland-Dracula-Mint

<img width="1920" height="1079" alt="image" src="https://github.com/user-attachments/assets/c2e1efac-bf55-49f6-928d-c1c2d0c4d8bb" />


### Discord
```
curl -O https://raw.githubusercontent.com/bb010g/betterdiscordctl/master/betterdiscordctl
chmod +x betterdiscordctl
sudo mv betterdiscordctl /usr/local/bin
sudo betterdiscordctl self-upgrade
betterdiscordctl install
cp -rf ~/Hyprland-Dracula-Mint/Dracula-Mint/BetterDiscord ~/.config/
```

### ZSH

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
rm ~/.zshrc
cp ~/Hyprland-Dracula-Mint/Dracula-Mint/.zshrc ~/
chsh -s /usr/bin/zsh
```

### Fish
```
chsh -s /usr/bin/fish
```
