autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

RPROMPT='${vcs_info_msg_0_}'
zstyle ':vcs_info:git:*' formats '[%B%F{#4CAF50}%b%f]'

alias ls='ls -G'
PROMPT=$'%F{#546E7A}%1~ %B%F{#64DD17}>%f '
