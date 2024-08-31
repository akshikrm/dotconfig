source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# HISTFILE="$ZDOTDIR/.zhistory"    
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

export NVM_DIR="$HOME/.nvm"
	[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
	[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" 

source $ZDOTDIR/prompt.zsh
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(fzf --zsh)"

# function rave () {
# 	if [[ $1 == '-d' ]]; then
# 		find . -type d | fzf --preview='tree -C {} | head -n 50' --preview-label='[ Directory stats ]'
# 		return 0
# 	fi
# 	if [[ $1 == '-f' ]]; then
# 		find . -type f | fzf --preview='bat --color=always {}' --preview-label='[ File stats ]'
# 		return 0
# 	fi
# 	print "Unknown flag"
# 	return 0
# }
