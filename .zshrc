export PATH=$HOME/bin:/usr/local/bin:$PATH

# #########################################################
# ZSH                                                     #
# #########################################################
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="alanpeabody"
source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

plugins=(git poetry)

# #########################################################
# pnpm                                                    #
# #########################################################

export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
