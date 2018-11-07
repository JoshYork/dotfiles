export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="miloshadzic"
DEFAULT_USER="$USER"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"

source $ZSH/oh-my-zsh.sh

function killPort {
    kill $(lsof -ti tcp:$1)
}

function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code" "."
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# z file jumping
. $HOME/z.sh
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
