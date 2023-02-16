if status is-interactive
    bind \t forward-word
    bind \cz complete
end

clear
fastfetch

# nvim +terminal
# :set modifiable

set fish_greeting ""

if not pgrep -f startx > /dev/null
	command startx
end

# Terminal
alias g git
alias c cargo
alias v nvim
alias sv "sudo nvim"
alias py3 python3
alias off "shutdown -h now"

# Packages
alias pkg-add "sudo pacman -U"
alias pkg-install "sudo pacman -S"
alias pkg-update "sudo pacman -Syu"
alias pkg-remove "sudo pacman -Rns"

# Settings
alias bright "sudo vim /sys/class/backlight/amdgpu_bl0/brightness"

# Apps
alias mc minecraft-launcher

set -gx PATH ~/bin $PATH
