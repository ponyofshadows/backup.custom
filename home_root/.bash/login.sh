# clear ~/tmp
rm -rf $HOME/tmp/*
# finally, launch sway
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec sway --unsupported-gpu
fi
