#
# ~/.bashrc
#

#If not running interactively, don't do anything
[[ $- != *i* ]] && return

# If running from tty1 start X
if [ "$(tty)" = "/dev/tty1" ]; then
   exec startx 
fi

# No need to "cd" to change to directory
shopt -s autocd

# Enable Vi mode
set -o vi

# Setting for not to have to type "cd" to cd into a directory.
#shopt -s autocd

export PS1="\u@\h \w\\$ \[$(tput sgr0)\]"

#############
# Shortcuts #
#############
alias i3b="cd /home/patres/.config/i3blocks"
alias vfz="pyenv activate vodafone; cd ~/custom-vfz-scripts"
alias n="vim ~/notes/notes.txt"
alias todo="vim ~/notes/todo.txt"

###########
# Aliases #
###########

# Misc
alias so="source ~/.bashrc"
alias hdd="sudo mount /dev/sdb1 /mnt/hdd"
alias histg="history | grep"
alias rgrep="grep -r"

# Navigation/directory aliases
alias ..="cd .."
alias mkdir="mkdir -pv"

# List aliases
alias ls='ls --color=auto --group-directories-first'
alias l='ls --color=auto --group-directories-first'
alias ll="ls -lhA"

# Grub aliases
alias grubupdate="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias cfg="sudo vim /etc/default/grub"

# Power aliases
alias sdn="shutdown now"
alias rbt="reboot"

# Utils aliases
alias a="pulsemixer"
alias f="neofetch"
alias py="python3"
alias r="ranger"
alias v="vim"
alias vi="vim"
alias sv="sudo vim"
alias bg="wal -i /home/patres/wallpers"
#alias ptags="ctags -R --fields=+l --languages=python --python-kinds=-iv -f ./tags $(python -c "import os, sys; print(' '.join('{}'.format(d) for d in sys.path if os.path.isdir(d)))")"
alias ptags="ctags -R --languages=python ."
alias randr="bash /home/patres/.screenlayout/default.sh"

# Systemd aliases
alias systemctl="sudo systemctl"

# Pacman aliases
alias p="sudo pacman"
alias i="sudo pacman -S"
alias install="sudo pacman -S"
alias remove="sudo pacman -Rcns"
alias update="sudo pacman -Syu"
alias ud="sudo pacman -Syu"

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
alias cfp="vim ~/.config/picom/picom.conf"

# Git aliases
alias g="git"
alias gc="git commit"
alias gs="git status"
alias gd="git diff"
alias gb="git branch"
alias ga="git add"
alias gaa="git add *"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gpom="git push origin master"

# VPN alias
alias vpn="sudo openvpn ~/vpn/pkormosi.ovpn"

#############
# Variables #
#############

export PATH="/home/patres/programs/dart-sass:$PATH"
export PATH="/home/patres/.local/bin:$PATH"
export PATH="/home/patres/.cargo/bin:$PATH"

# Direnv hook
eval "$(direnv hook bash)"

# Pyenv PATHS
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"

