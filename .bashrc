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
shopt -s autocd

#############
# Variables #
#############
export PS1="\u@\h \w\\$ \[$(tput sgr0)\]"
export EDITOR="nvim"
export VISUAL="nvim"
export HISTSIZE=10000

#############
# Shortcuts #
#############
alias i3b="cd /home/patres/.config/i3blocks"
alias vfz="cd ~/code/custom-vfz-scripts"
alias gamma="cd ~/code/custom-gamma-scripts"
alias cs="cd ~/code/c/cs50"
#alias c="cd ~/code/c"
alias n="$EDITOR ~/notes/notes.txt"
alias todo="$EDITOR ~/notes/todo.txt"

###########
# Aliases #
###########

# Misc
alias so="source ~/.bashrc"
alias hdd="sudo mount /dev/sdb1 /mnt/hdd"
alias hist="history"
alias hg="history | grep"
alias histg="history | grep"
alias rgrep="grep -r"
alias bm="bashmount"

# Navigation/directory aliases
alias ..="cd .."
alias mkdir="mkdir -pv"
alias fv="find -type f | fzf | xargs -r $EDITOR"

# List aliases
alias ls='ls --color=auto --group-directories-first'
alias l='ls --color=auto --group-directories-first'
alias ll="ls -lhA"

# Grub aliases
alias grubupdate="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias cfg="sudo $EDITOR /etc/default/grub"

# Power aliases
alias sdn="shutdown now"
alias rbt="reboot"

# Utils aliases
alias a="pulsemixer"
alias f="neofetch"
alias py="python3"
alias o="octave"
alias r="ranger"
alias v="nvim"
alias vi="vim"
alias vim="nvim"
alias sv="sudo nvim"
#alias bg="wal -i /home/patres/wallpers"
#alias ptags="ctags -R --fields=+l --languages=python --python-kinds=-iv -f ./tags $(python -c "import os, sys; print(' '.join('{}'.format(d) for d in sys.path if os.path.isdir(d)))")"
alias ptags="ctags -R --languages=python ."
alias randr="bash /home/patres/.screenlayout/default.sh"

# Colored output settings
alias ip="ip -color=auto"
alias grep="grep --color=auto"

# Systemd aliases
alias systemctl="sudo systemctl"

# Pacman aliases
alias p="sudo pacman"
alias i="sudo pacman -S"
alias install="sudo pacman -S"
alias remove="sudo pacman -Rcns"
alias update="yay -Syu"
alias ud="yay -Syu"

# Remove and copy aliases
alias rm-lock="sudo rm /var/lib/pacman/db.lck"
alias rm="rm -i"
alias cp="cp -i"

# Config aliases
alias cfb="$EDITOR ~/.bashrc"
alias cfv="$EDITOR ~/.vimrc"
alias cfi="$EDITOR ~/.config/i3/config"
alias cfk="$EDITOR ~/.config/kitty/kitty.conf"
alias cfp="$EDITOR ~/.config/picom/picom.conf"
alias cfn="$EDITOR ~/.config/nvim/init.vim"

# Git aliases
alias g="git"
alias gc="git checkout"
alias gs="git status"
alias gd="git diff"
alias gb="git branch"
alias gpr="git pull -r"
alias gl="git log"
alias gll="git log --pretty=format:'%C(yellow)%h%Cred%d\ %Creset%s%Cblue\ [%cn]' --decorate --numstat"
alias gls="git log --pretty=format:'%C(green)%h\ %C(yellow)[%ad]%Cred%d\ %Creset%s%Cblue\ [%cn]' --decorate --date=relative "
alias ga="git add"
alias grs="git restore --staged"
alias gau="git add -u; git status"
alias gaa="git add *"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gcs="git commit -s"
alias gpom="git push origin main"

# VPN alias
alias vpn="sudo openvpn ~/vpn/pkormosi.ovpn"
alias labvpn="cd ~/vpn/clientVPN; sudo openvpn client.conf"
alias gamvpn="sudo swanctl --initiate --child ikev1-psk-xauth --debug 1"

# Docker aliases
alias d="docker"
alias dc="docker container"
alias di="docker image"
alias dn="docker network"
alias ds="docker system"
alias dv="docker volume"

# Misc aliases
alias ml="cd ~/code/octave"
alias plex="firefox http://localhost:32400/web/"

#################
# ENV Variables #
#################

export PATH="/home/patres/programs/dart-sass:$PATH"
export PATH="/home/patres/.local/bin:$PATH"
export PATH="/home/patres/.cargo/bin:$PATH"
export PATH="/home/patres/.screenlayout/:$PATH"

# Direnv hook
eval "$(direnv hook bash)"

# Pyenv PATHS
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"

# Autocomplete Git commands.
source /usr/share/git/completion/git-completion.bash
