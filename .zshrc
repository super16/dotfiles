# #########################################################
# Plugins                                                 #
# #########################################################

plugins=(git poetry)

# #########################################################
# ZSH                                                     #
# #########################################################

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="alanpeabody"
source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# #########################################################
# Conda                                                   #
# #########################################################

__conda_setup="$('$HOME/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

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
