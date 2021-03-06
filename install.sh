# Mpd && Ncmpcpp
install_mpd () {
    sudo pacman -S --needed mpd ncmpcpp
    mkdir -p ~/.config/mpd
    mkdir -p ~/.ncmpcpp
    ln mpd/* ~/.config/mpd
    ln ncmpcpp/* ~/.ncmpcpp
}

# Wallpapers
install_wallpapers () {
    mkdir -p ~/.local/share/wallpapers
    ln wallpapers/* ~/.local/share/wallpapers
}

# Nvim
install_nvim () {
    sudo pacman -S --needed nvim
    mkdir -p ~/.config/nvim
    ln nvim/* ~/.config/nvim
    ln .vimrc ~
}

# Rofi
install_rofi () {
    sudo pacman -S --needed rofi
    mkdir -p ~/.config/rofi
    mkdir -p ~/.config/rofi/launchers
    mkdir -p ~/.config/rofi/themes/colorschemes
    echo "Some errors here are okay (because of symlinks)!"
    ln rofi/* ~/.config/rofi
    ln rofi/launchers/* ~/.config/rofi/launchers
    ln rofi/themes/colorschemes/* ~/.config/rofi/themes/colorschemes
}

# Ranger (with image preview (needs kitty))
install_ranger () {
    sudo pacman -S --needed ranger w3m python-pip
    pip3 install pillow
    mkdir -p ~/.config/ranger
    ln ranger/* ~/.config/ranger
}

# Zshrc (oh-my-zsh needed)
install_zsh () {
    sudo pacman -S --needed zsh zsh-syntax-highlighting
    ln .zshrc ~
    ln .p10k.zsh ~

    # Oh-my-zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    # Powerlevel 10k (to use: set ZSH_THEME="powerlevel10k/powerlevel10k" in .zshrc)
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

    # Spaceship prompt
    git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
}

# Dunst
install_dunst () {
    sudo pacman -S --needed dunst

    mkdir -p ~/.config/dunst
    ln dunst/dunstrc ~/.config/dunst
}

# Install bspwm + configs etc.
install_wm () {
    
    # Install needed tools
    sudo pacman -S --needed polybar sxhkd bspwm nitrogen picom conky

    # Bswpm
	mkdir -p ~/.config/bspwm
	mkdir -p ~/.config/bspwm/scripts
	mkdir -p ~/.config/bspwm/sxhkd

    echo "Some errors here are okay (because of symlinks)!"

	ln wm/bspwm/* ~/.config/bspwm 
	ln wm/bspwm/scripts/* ~/.config/bspwm/scripts
	ln wm/bspwm/sxhkd/* ~/.config/bspwm/sxhkd
	
	# Kitty
	mkdir -p ~/.config/kitty
	ln wm/kitty/* ~/.config/kitty
	
	# Polybar
    yay -S --needed nerd-fonts-hack ttf-font-awesome-4
	mkdir -p ~/.config/polybar
	ln wm/polybar/* ~/.config/polybar

    # Conky
    mkdir -p ~/.config/conky
    ln wm/conky/* ~/.config/conky

}

# Add function you like
main () {
    echo "Uncomment lines in main function to install tools!"

    install_wallpapers
    #install_dunst
    #install_nvim
    #install_rofi
    #install_ranger
    #install_mpd
    #install_zsh
    #install_wm

    echo "Executed successfully!"
}

main
