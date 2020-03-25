# Mpd && Ncmpcpp
install_mpd () {
    sudo pacman -S --needed mpd ncmpcpp
    mkdir ~/.config/mpd
    mkdir ~/.ncmpcpp
    ln mpd/* ~/.config/mpd
    ln ncmpcpp/* ~/.ncmpcpp
}

# Wallpapers
install_wallpapers () {
    sudo ln arch.png /usr/share/wallpapers
    sudo ln jellyfish.png /usr/share/wallpapers
    sudo ln mountain.png /usr/share/wallpapers
    sudo ln checkrain.png /usr/share/wallpapers
}

# Nvim
install_nvim () {
    sudo pacman -S --needed nvim
    mkdir ~/.config/nvim
    ln nvim/* ~/.config/nvim
    ln .vimrc ~
}

# Zshrc (oh-my-zsh needed)
install_zsh () {
    ln .zshrc ~
    ln .p10k.zsh ~

    # Oh-my-zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    # Powerlevel 10k (to use: set ZSH_THEME="powerlevel10k/powerlevel10k" in .zshrc)
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
}

# Install bspwm + configs etc.
install_wm () {
    
    # Install needed tools
    sudo pacman -S --needed polybar sxhkd bspwm nitrogen picom conky

    # Bswpm
	mkdir ~/.config/bspwm
	mkdir ~/.config/bspwm/scripts
	mkdir ~/.config/bspwm/sxhkd
	ln wm/bspwm/* ~/.config/bspwm 
	ln wm/bspwm/scripts/* ~/.config/bspwm/scripts
	ln wm/bspwm/sxhkd/* ~/.config/bspwm/sxhkd
	
	# Kitty
	mkdir ~/.config/kitty
	ln wm/kitty/* ~/.config/kitty
	
	# Polybar
	mkdir ~/.config/polybar
	mkdir ~/.config/polybar/scripts
	ln wm/polybar/* ~/.config/polybar
	ln wm/polybar/scripts/* ~/.config/polybar/scripts

    # Conky
    mkdir ~/.config/conky
    ln wm/conky/* ~/.config/conky

}

# Add function you like
main () {
    install_wallpapers
    install_nvim
    install_zsh
    install_wm
}

main
