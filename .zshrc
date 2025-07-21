# #########################################################
# Base                                                    #
# #########################################################

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# #########################################################
# Plugins                                                 #
# #########################################################

plugins=(
    aws
    brew
    colorize
    docker
    docker-compose
    git
    kubectl
    minikube
    npm
    pipenv
    ssh
)

# #########################################################
# ZSH                                                     #
# #########################################################

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="alanpeabody"
source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# #########################################################
# pnpm                                                    #
# #########################################################

export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# #########################################################
# PATH                                                    #
# #########################################################

export PATH=$HOME/bin:$HOME/Library/Python/3.11/bin:/usr/local/bin:$HOME/.local/bin:/opt/homebrew/opt/libpq/bin:$PATH
