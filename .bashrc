#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# config pro flatpak não ter que reiniciar toda vez que instalar um app
export XDG_DATA_DIRS="$HOME/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:$XDG_DATA_DIRS"

# carregar automaticamente todos os arquivos do diretório de bash global
# esses arquivos geralmente são aliases, que precisam ser carregados toda vez que o bash abre
BASH_GLOBAL="/mnt/seagate/bash/global"
for file in $BASH_GLOBAL/*.sh; do source "$file"; done

# carregar scripts chamáveis e integra-los ao sistema
export PATH="$PATH:/mnt/seagate/bash/scripts"