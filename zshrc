# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export PATH=/usr/local/bin:$PATH

ZSH_THEME="agnoster"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh
# [[ -s $HOME/.gvm/scripts/gvm ]] && . $HOME/.gvm/scripts/gvm

# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

if [ -f ~/.gnupg/.gpg-agent-info ] && [ -n "$(pgrep gpg-agent)" ]; then
  source ~/.gnupg/.gpg-agent-info
  export GPG_AGENT_INFO
else
  eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
fi
