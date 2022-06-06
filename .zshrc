# Default prompt
PS1="%1~ >>> "

# git Configuration

## Adds tab-completion library
autoload -Uz compinit && compinit

## Adds vcs_info to right side of prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT='${vcs_info_msg_0_}'
# PROMPT='${vcs_info_msg_0_}%# '
zstyle ':vcs_info:git:*' formats '%b'
