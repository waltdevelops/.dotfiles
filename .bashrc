#
#   .bashrc
#
#   Bourne again shell settings
################################################################################

umask 0027

# Bourne Shell Variables
########################
export CDPATH="."

export PATH=\
/usr/local/bin:\
/usr/bin:\
/bin:\
/usr/local/sbin:\
/usr/sbin:\
/sbin

# Include private bin if found
if [ -d "${HOME}/.bin" ]; then
    export PATH="${HOME}/.bin:${PATH}"
fi

export PS1="[\A|\W]"
if [ 0 == "${UID}" ]; then
    PS1+="#"
else
    PS1+="$"
fi

PS1+=" "
export PS1
export PS2="> "

# Bourne Again Shell Veriables
##############################
export BASH_ENV=~/.bashrc
export ENV=${BASH_ENV}
export FCEDIT=vim
export HISTCONTROL=ignoredups
export HISTFILE=~/.bash_history
export HISTFILESIZE=1000
export HISTIGNORE="&"
export HISTSIZE=${HISTFILESIZE}
export HISTTIMEFORMAT="%F %T: "
unset MAILCHECK

