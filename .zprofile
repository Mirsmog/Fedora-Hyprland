export PATH=$PATH:~/.cargo/bin/
export EDITOR=nvim
export SUDO_EDITOR=nvim
export VISUAL=nvim
if [ "$(tty)" = "/dev/tty1" ]; then
 exec Hyprland &> /dev/null
fi

