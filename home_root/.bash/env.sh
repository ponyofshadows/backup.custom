# XDG Base Directory Specification
#export XDG_CONFIG_HOME=$HOME/XDG_config_home

# editor
export EDITOR=nvim

# fcitx5
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export SDL_IM_MODULE=fcitx

# Wayland
export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia
#export LIBVA_DRIVER_NAME=nvidia
#export LIBVA_DRIVER_NAME=adeonsi
export XDG_CURRENT_DESKTOP=sway

# some workarounds to use sway with Nvidia
# may cause in error when launching sway
#export WLR_RENDERER=vulkan
#export WLR_NO_HARDWARE_CURSORS=1
#export XWAYLAND_NO_GLAMOR=1

# path: texlive
export PATH="/usr/local/texlive/2023/bin/x86_64-linux:$PATH"
