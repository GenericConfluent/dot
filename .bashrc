#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


set -o vi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias hx='helix'

PATH=$HOME/bin:$PATH:~/.ghcup/bin

# Use X for android emulator because it's bundled with its own version
# of QT and doesn't include the wayland module.
export QT_QPA_PLATFORM="xcb"

# Also important, desktop apps will freak without it.
export XDG_CURRENT_DESKTOP="river"

# May mess with QT_QPA_PLATFORM and cause android emulator issues.
# Just comment it out if/when it does.
export QT_QPA_PLATFORM="wayland;xcb"

# "All this shit below needs to be done because Nvidia eats crayons." - Miguel L.
export GBM_BACKEND=nvidia-drm
export G__GLX_VENDOR_LIBRARY_NAME=nvidia
export GENABLE_VKBASALT=1
export GLIBVA_DRIVER_NAME=nvidia

# My cursor is rendering fine so I can ignore this.
# export GWLR_NO_HARDWARE_CURSORS=1

# Properly display colors over ssh
export COLORTERM=truecolor

PS1='[\u@\h \W]\$ '
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
    Hyprland
fi
