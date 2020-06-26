#
# ~/.bashrc
#

#If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Start i3 automatically
#if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#  exec startx 
#fi

# If running from tty1 start Sway
if [ "$(tty)" = "/dev/tty1" ]; then
   exec startx 
#  exec sway
fi


# No need to "cd" to change to directory
shopt -s autocd

# Enable Vi mode
set -o vi

# Setting for not to have to type "cd" to cd into a directory.
#shopt -s autocd

export PS1="\u@\h \w\\$ \[$(tput sgr0)\]"

# Shortcuts
alias i3b="cd /home/patres/.config/i3blocks"
alias vfz="pyenv activate vodafone; cd /home/patres/vfz/custom-vfz-scripts"

#################################

# Aliases
alias so="source ~/.bashrc"
alias hdd="sudo mount /dev/sdb1 /mnt/hdd"

# Grub aliases
alias grubupdate="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias grubconf="sudo vim /etc/default/grub"

# Power aliases
alias sdn="shutdown now"
alias rbt="reboot"

# List aliases
alias ls='ls --color=auto --group-directories-first'
alias l='ls --color=auto --group-directories-first'
alias ll="ls -lhA"

# Utils aliases
alias a="pulsemixer"
alias f="neofetch"
alias n="vim ~/notes/notes.txt"
alias py="python3"
alias fire="firefox"
alias r="ranger"
alias v="vim"
alias vi="vim"
alias sv="sudo vim"
alias untar="tar -xfv"
alias rec="record"
alias bg="wal -i /home/patres/wallpers"
alias ptags="ctags -R --fields=+l --languages=python --python-kinds=-iv -f ./tags $(python -c "import os, sys; print(' '.join('{}'.format(d) for d in sys.path if os.path.isdir(d)))")"
alias randr="bash /home/patres/.screenlayout/default.sh"

# Pacman aliases
alias p="sudo pacman"
alias install="sudo pacman -S"
alias remove="sudo pacman -Rcns"
alias update="sudo pacman -Syu"

# Remove and copy aliases
alias rm-lock="sudo rm /var/lib/pacman/db.lck"
alias rm="rm -i"
alias cp="cp -i"

# Config aliases
alias cfb="vim ~/.bashrc"
alias cfv="vim ~/.vimrc"
alias cfi="vim ~/.config/i3/config"
alias cfs="vim ~/.config/sway/config"
alias cfk="vim ~/.config/kitty/kitty.conf"
alias cfp="vim ~/.config/polybar/config"

# Git aliases
alias gc="git clone"
alias gs="git status"
alias gd="git diff"
alias gb="git branch"
alias ga="git add"
alias gaa="git add *"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gpom="git push origin master"

# VPN alias
alias vpn="sudo openvpn ~/Downloads/pkormosi.ovpn"


# PyCharm JAVA variable
export _JAVA_AWT_WM_NONREPARENTING=1

export PATH="/home/patres/programs/dart-sass:$PATH"
export PATH="/home/patres/.local/bin:$PATH"
export PATH="/home/patres/.cargo/bin:$PATH"

# Pyenv PATHS
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"

