# load ext
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '*'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:git*' formats "%F{223}on%f %F{208}%b%u%c%f"

precmd() {
    vcs_info
}

# imports
source ~/.aliases
source ~/.functions

# setup history
export HISTSIZE=2000
export HISTFILE=~/.history

# set options
setopt prompt_subst

# setup terminal basics
export PS1=$'\n%F{033}%T%f – %F{075}%d%f ${vcs_info_msg_0_}\n$ '
