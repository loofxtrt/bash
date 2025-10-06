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

# carregar automaticamente todos os arquivos 
GLOBAL_BASH_DIR="/mnt/seagate/bash/global"

while IFS= read -r file; do
    [ -f "$file" ] && source "$file"
done < <(find $GLOBAL_BASH_DIR -type f -name "*.sh")

export PATH="$PATH:/mnt/seagate/bash/scripts"