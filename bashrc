#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# This makes your bash prompt look pretty. This took way too much time for what it's worth btw.
PROMPT_COMMAND='PS1_CMD1=$(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2);'
PROMPT_COMMAND=$PROMPT_COMMAND'PS1_CMD2=$(if [[ ${PS1_CMD1} != "" ]]; then echo -e "\033[37m[\033[0m";fi); PS1_CMD3=$(if [[ ${PS1_CMD1} != "" ]]; then echo -e "\033[37m]\033[0m";fi);PS1_CMD4=$(ip route get 1.1.1.1 | awk -F"src " '"'"'NR == 1{ split($2, a," ");print a[1]}'"'"');'
PS1='\[\e[90m\]┏\[\e[37m\][\[\e[38;5;34m\]\w\[\e[37m\]]\[\e[0m\]${PS1_CMD2}\[\e[38;5;118;1m\]${PS1_CMD1}\[\e[0m\]${PS1_CMD3}\[\e[37m\][\[\e[38;5;226m\]${PS1_CMD4}\[\e[37m\]]\n\[\e[90m\]┣\[\e[37m\][\[\e[38;5;208m\]\j\[\e[37m\]][\[\e[38;5;214m\]\u\[\e[38;5;220m\]@\[\e[38;5;226;1m\]\h\[\e[0;37m\]][\[\e[38;5;129m\]$?\[\e[37m\]][\[\e[38;5;165m\]\t\[\e[37m\]]\n\[\e[90m\]┗\[\e[37m\][\[\e[38;5;160m\]\$\[\e[37m\]]\[\e[90m\]:\[\e[0m\]'

alias get='paru -Sy && paru -S --fm=nemo --needed'
alias sysup='paru -Syyu'
alias lsup='paru -Syy'
alias purge='paru -Runc'
alias fpurge='paru -Runcdd'
alias searchrep='paru -Ss --repo'
alias search='paru -Ss'
alias searchaur='paru -Ss --aur'
alias getrep='paru -S --repo'
alias getaur='paru -S --aur'
alias cmdstats="history | awk '{print $2}' | sort | uniq -c | sort -rn | head -5"
alias make='make -j $(nproc)'
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/opt/android-sdk/emulator:/opt/cuda/bin:/opt/cuda/nsight_compute:/opt/cuda/nsight_systems/bin:/var/lib/flatpak/exports/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:'$HOME/.local/bin':/root/.local/share/gem/ruby/3.0.0/bin:$HOME/.rbenv/versions/3.0.0/bin/
. "$HOME/.cargo/env"
# Make make go vroom
export GNUMAKEFLAGS=-j12
# For Nix package stuff
export NIX_REMOTE=daemon
# for zluda
export LD_LIBRARY_PATH="/home/terryblejokes/zluda":$LD_LIBRARY_PATH
