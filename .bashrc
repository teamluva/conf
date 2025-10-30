[[ $- != *i* ]] && return

RED='\[\e[1;31m\]'
GREEN='\[\e[1;32m\]'
YELLOW='\[\e[1;33m\]'
BLUE='\[\e[1;34m\]'
MAGENTA='\[\e[1;35m\]'
CYAN='\[\e[1;36m\]'
RESET='\[\e[0m\]'

if [ "$EUID" -eq 0 ]; then
  PS1="${RED}\u@\h ${BLUE}\w ${YELLOW}# ${RESET}"
else
  PS1="${GREEN}\u@\h ${BLUE}\w ${CYAN}$ ${RESET}"
fi

alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias la='ls -A'
alias l='ls -CF'
alias cls='clear'
alias update='sudo apt update && sudo apt upgrade -y'
alias editbash='nano ~/.bashrc'
alias reload='source ~/.bashrc'
alias sysinfo='neofetch || screenfetch'
alias ph='sudo $(history -p !!)'
alias grep='grep --color=auto'

export PATH=$PATH:/usr/local/bin:/opt/bin

if [ -f /etc/motd ]; then
  cat /etc/motd
fi

if command -v neofetch &> /dev/null; then
  neofetch
fi
