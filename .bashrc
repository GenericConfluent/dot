#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


set -o vi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias hx='helix'
alias tmux='tmux -u2'

PATH="$HOME/scripts:$HOME/bin:$PATH:~/.ghcup/bin"

# Use X for android emulator because it's bundled with its own version
# of QT and doesn't include the wayland module.
export QT_QPA_PLATFORM="xcb"

# Also important, desktop apps will freak without it.
# export XDG_CURRENT_DESKTOP="river"

# KDE native dialogs
export GTK_USE_PORTAL=1

# May mess with QT_QPA_PLATFORM and cause android emulator issues.
# Just comment it out if/when it does.
# export QT_QPA_PLATFORM="wayland;xcb"

# "All this shit below needs to be done because Nvidia eats crayons." - Miguel L.
export GBM_BACKEND=nvidia-drm
export G__GLX_VENDOR_LIBRARY_NAME=nvidia
export GENABLE_VKBASALT=1
export GLIBVA_DRIVER_NAME=nvidia

# Make iced apps work on my desktop with NVIDIA.
# export ICED_BACKEND=tiny-skia

# My cursor is rendering fine so I can ignore this.
# export GWLR_NO_HARDWARE_CURSORS=1

# Properly display colors over ssh
export COLORTERM=truecolor

# Happy conda
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1

PS1='[\u@\h \W]\$ '
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

eval "$(zoxide init bash)"

# if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
#     Hyprland
# fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

