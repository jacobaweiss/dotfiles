# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export PATH=$PATH:/usr/local/bin

ZSH_THEME="agnoster"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git emoji rails)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh
eval "$(rbenv init -)"
# [[ -s $HOME/.gvm/scripts/gvm ]] && . $HOME/.gvm/scripts/gvm

PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

if [ -f ~/.gnupg/.gpg-agent-info ] && [ -n "$(pgrep gpg-agent)" ]; then
  source ~/.gnupg/.gpg-agent-info
  export GPG_AGENT_INFO
else
  eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
fi
