# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/patres/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#

# Prompt settings
autoload -Uz promptinit
promptinit

# My settings
prompt fire

ZSH_THEME="random"

#############
# Variables #
#############
export EDITOR="nvim"
export VISUAL="nvim"

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
alias cat="bat"
alias so="source ~/.zshrc"
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
#alias ls='ls --color=auto --group-directories-first'
#alias l='ls --color=auto --group-directories-first'
#alias ll="ls -lhA"
alias ls="exa --group-directories-first"
alias ll="exa --long"

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
alias cfz="$EDITOR ~/.zshrc"

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
alias ds="docker service"
alias dv="docker volume"

# Misc aliases
alias plex="firefox http://localhost:32400/web/"

#################
# ENV Variables #
#################

export PATH="/home/patres/programs/dart-sass:$PATH"
export PATH="/home/patres/.local/bin:$PATH"
export PATH="/home/patres/.cargo/bin:$PATH"
export PATH="/home/patres/.screenlayout/:$PATH"


eval "$(direnv hook zsh)"
eval "$(pyenv init -)"
