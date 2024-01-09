#
# ~/.bash_logout
#

# source bash_logout
echo "[source] $HOME/.bash_logout"
# logout
if [ -f ~/.bash/logout.sh ]; then
  . ~/.bash/logout.sh
fi
