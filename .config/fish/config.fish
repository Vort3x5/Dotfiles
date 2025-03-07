if status is-interactive
    bind \t forward-word
    bind \cz complete
end

setxkbmap pl
# setxkbmap us -variant colemak_dh

# nvim +terminal
# :set modifiable

clear
fm6000 -f ~/Desktop/Logos/arch_logo.txt -c blue -o "Arch"
set fish_greeting ""

# paths
set -x PATH ~/.config/emacs/bin/:$PATH
set -x PATH ~/.cargo/bin/:$PATH
set -x PKG_CONFIG_PATH /usr/lib/pkgconfig /usr/share/pkgconfig
set -x LLVM_CONFIG_PATH /usr/bin/llvm-config
set -x PATH /usr/lib/jvm/java-21-openjdk/bin/:$PATH

# Terminal
alias g git
alias gst "git status -uno"
alias gsta "git status"
alias c cargo
alias v nvim
alias stm32ide "flatpak run com.st.STM32CubeIDE"
alias pv "nvim ."
alias sv "sudo nvim"
alias py3 python3
alias off "shutdown -h now"
alias pause "systemctl suspend"
alias t "tree"
alias l "ls -l"

# Packages
alias pkg-add "sudo pacman -U"
alias pkg-install "sudo pacman -S"
alias pkg-update "sudo pacman -Syu"
alias pkg-remove "sudo pacman -Rns"
alias pkg-clroot "sudo pacman -Scc"
alias aur-clroot "sudo pacman -Rns $(pacman -Qtdq)"

# Settings
alias bright "sudo vim /sys/class/backlight/amdgpu_bl0/brightness"

# Apps
alias mc minecraft-launcher

set -gx PATH ~/bin $PATH
