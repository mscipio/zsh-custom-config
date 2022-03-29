################################ AUTOCOMPLETION
# initialize autocompletion 
#autoload -U compinit && compinit

# history setup
setopt SHARE_HISTORY
HISTFILE=$HOME/.zsh_history
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST

# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

####################################### PLUGINS

source ~/.zsh/plugins/git/git-prompt.sh
source ~/.zsh/plugins/zsh-z/zsh-z.plugin.sh

# git prompt options
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_STATESEPARATOR=' '
GIT_PS1_HIDE_IF_PWD_IGNORED=true
GIT_PS1_COMPRESSSPARSESTATE=true

# zsh-z plugin options
ZSH_CASE=smart # lower case patterns are treated as case insensitive
zstyle ':completion:*' menu select # improve completion menu style

############################## USER PROMPT
  
# enable command-subsitution in PS1
setopt PROMPT_SUBST  
NL=$'\n'
PS1='$NL%B#%n# %F{cyan}%0~%f%b% %F{magenta}$(__git_ps1 "  %s")%f$NL%B%(?.%F{green}.%F{red})%(!.#.>)%f%b '

############################## ALIASES
alias ls='ls -lhtPG'
alias mkdir='mkdir -vp'
alias cp='cp -vi'
