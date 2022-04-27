#!/usr/bin/zsh

PROFILE=dkt

##############################################################################################################################
# LOAD TMUX
[[ -z "$TMUX" ]] && exec tmux -f ~/.tmux.conf

##############################################################################################################################
# PATH
export PATH=$PATH:~/bin:/usr/local/go/bin:$GOPATH/bin

##############################################################################################################################
# ENVIRONMENT VARIABLE
export ZSH="/home/$USER/.oh-my-zsh"
export LS_COLORS="rs=0:di=01;34:ln=31;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=31;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:"
export LSCOLORS="exfxcxdxbxegedabagacad"
export COLORFGBG="15;default"
export COLORTERM="rxvt"
export TERM="xterm-256color"
export EDITOR="vim"
export GOOGLE_CLOUD_SDK_HOME="/opt/google-cloud-sdk"
export XSECURELOCK_SAVER="saver_xscreensaver"
export XSECURELOCK_DISCARD_FIRST_KEYPRESS="0"
export GOPATH="$HOME/Go" # or any directory to put your Go code
export GOPATH=$GOROOT/bin
export CLOUDSDK_PYTHON="/usr/bin/python3"
export LD_LIBRARY_PATH=/usr/local/lib

##############################################################################################################################
# OH MY ZSH
source $ZSH/oh-my-zsh.sh
source "${HOME}/.zgen/zgen.zsh"
ZGEN_RESET_ON_CHANGE=(${HOME}/.zshrc)
if ! zgen saved; then
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/ssh-agent
  zgen oh-my-zsh plugins/colored-man-pages
  zgen oh-my-zsh plugins/command-not-found
  zgen oh-my-zsh plugins/colorize
  zgen oh-my-zsh plugins/cp
  zgen oh-my-zsh plugins/vagrant
  zgen oh-my-zsh plugins/ubuntu
  zgen oh-my-zsh plugins/docker
  zgen oh-my-zsh plugins/docker-compose
  zgen oh-my-zsh plugins/docker-machine
  zgen oh-my-zsh plugins/systemd
  zgen oh-my-zsh plugins/docker-machine
  zgen oh-my-zsh plugins/web-search
  zgen oh-my-zsh plugins/archlinux
  zgen oh-my-zsh plugins/aws
  zgen oh-my-zsh plugins/common-aliases
  zgen oh-my-zsh plugins/kubectl
  zgen oh-my-zsh plugins/helm
  zgen oh-my-zsh plugins/minikube
  zgen oh-my-zsh plugins/lol
  zgen oh-my-zsh plugins/npm
  zgen oh-my-zsh plugins/node
  zgen oh-my-zsh plugins/perl
  zgen oh-my-zsh plugins/python
  zgen oh-my-zsh plugins/redis-cli
  zgen oh-my-zsh plugins/tmux
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-autosuggestions
  zgen load zsh-users/zsh-completions
  zgen load zsh-users/zsh-history-substring-search
  zgen load chrissicool/zsh-256color
  zgen load srijanshetty/docker-zsh
  zgen load romkatv/powerlevel10k powerlevel10k
  zgen save
fi

# POWERLEVEL STYLE
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir_writable dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
OHMYVIA_VCS_THEME="djou"

##############################################################################################################################
# ALIAS
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias sssh="~/bin/ssh-copy"
alias ssh="/usr/bin/ssh"
alias tf="terraform"
alias pacman="sudo pacman"
alias c="clear"
alias yay=trizen
alias make="make -s"
alias bcat="batcat"

##############################################################################################################################
# ZSH PROFILE
if [ -f ~/.zshrc_profiles/${PROFILE}.zsh ]; then
  source "${HOME}/.zshrc_profiles/${PROFILE}.zsh"
fi

##############################################################################################################################
# ZSTYLE
# zstyle ':bracketed-paste-magic' active-widgets '.self-*'    # SLOW PASTE
# zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"    # COLOR ON TAB COMPLETE
# autoload -Uz compinit
# compinit

##############################################################################################################################
# END/BEGIN LINE BUG
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[7~" beginning-of-line
bindkey "^[[8~" end-of-line

##############################################################################################################################
# GRC
if [ "$TERM" = dumb ] || (( ! $+commands[grc] ))
then
  return
fi

# Supported commands
cmds=(
  as
  ant
  blkid
  cc
  configure
  curl
  cvs
  df
  diff
  dig
  dnf
  docker
  docker-compose
  docker-machine
  du
  env
  fdisk
  findmnt
  free
  g++
  gas
  gcc
  getfacl
  getsebool
  gmake
  id
  ifconfig
  iostat
  ip
  iptables
  iwconfig
  journalctl
  kubectl
  last
  ldap
  lolcat
  ld
  ls
  lsattr
  lsblk
  lsmod
  lsof
  lspci
  #make
  mount
  mtr
  mvn
  netstat
  nmap
  ntpdate
  php
  ping
  ping6
  proftpd
  ps
  sar
  semanage
  sensors
  showmount
  sockstat
  ss
  stat
  sysctl
  systemctl
  tcpdump
  traceroute
  traceroute6
  tune2fs
  ulimit
  uptime
  vmstat
  wdiff
  whois
)

# Set alias for available commands.
for cmd in $cmds ; do
  if (( $+commands[$cmd] )) ; then
    $cmd() {
      grc --colour=auto ${commands[$0]} "$@"
    }
  fi
done

# Clean up variables
unset cmds cmd

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"


# The next line updates PATH for the Google Cloud SDK.
if [ -f "/home/$USER/google-cloud-sdk/path.zsh.inc" ]; then . "/home/$USER/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "/home/$USER/google-cloud-sdk/completion.zsh.inc" ]; then . "/home/$USER/google-cloud-sdk/completion.zsh.inc"; fi
