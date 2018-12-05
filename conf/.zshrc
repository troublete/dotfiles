source ~/antigen.zsh

# load ext
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

# setup history
export HISTSIZE=2000
export HISTFILE=~/.history

# set options
setopt prompt_subst

# setup terminal basic
export PS1=$'\n|| %F{010}%D{%A}%f %F{154}%D{%R}%f\n|| %F{083}%d%f ${vcs_info_msg_0_}\n\n|| %B%n »%b '
export GOPATH=$HOME/projects/go1.x
export PATH=$PATH:$(go env GOPATH)/bin
export PATH=$PATH:~/bin
source ~/google-cloud-sdk/completion.zsh.inc 
source ~/google-cloud-sdk/path.zsh.inc

source ~/.nvm/nvm.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# antigen setup
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen apply
