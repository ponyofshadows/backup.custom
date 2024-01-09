#
# ~/.bash_profile
#

# export bash_profile
echo "[source] $HOME/.bash_profile"
# env & login
if [ -f ~/.bash/env.sh ]; then
  . ~/.bash/env.sh
fi
if [ -f ~/.bash/login.sh ]; then
  . ~/.bash/login.sh
fi
