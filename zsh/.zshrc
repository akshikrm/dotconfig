SAVEHIST=1000
HISTSIZE=999

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Custom alias
alias conf='cd ~/.config/'
alias dev='cd ~/Developer/'

export NVM_DIR="$HOME/.nvm"
	[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
	[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" 

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/gitstatus/gitstatus.prompt.zsh

NEWLINE=$'\n' 
PS1='%~ $ '
RPROMPT=' ${GITSTATUS_PROMPT} [ %n:%* ]'


export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

export FZF_DEFAULT_COMMAND="fzf --height 40% --tmux bottom,40% --border top --layout reverse --preview 'head {+}' --color='preview-border:-1' --highlight-line --preview-label='preview'"
# GO
export GOBIN=$HOME/go/bin
export PATH=$PATH:$GOBIN
