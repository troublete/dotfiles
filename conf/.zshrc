# setup antigen and install relevant plugins
source ~/antigen.zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

# load extension for git prompt
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '*'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:git*' formats "%F{007}on%f %F{124}%b%u%c%f"

precmd() {
    vcs_info
}

# imports
source ~/.aliases

# set options to have zsh to well behave and support
# the input given
setopt prompt_subst

# setup terminal basic
export PS1=$'\n|| %F{010}%D{%A}%f %F{154}%D{%R}%f\n|| %F{083}%d%f ${vcs_info_msg_0_}\n\n|| %B%n »%b '
export PATH=$PATH:~/bin

source ~/.nvm/nvm.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

source ~/google-cloud-sdk/completion.zsh.inc 
source ~/google-cloud-sdk/path.zsh.inc


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
