PS1='
`date +"%A, %H:%M"` – `pwd`
pid:$$ `whoami`@`tput bold``hostname``tput sgr0`$ '
PS2=…

export PATH=$PATH:~/bin
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

alias l="ls -la | awk 'NR > 1 { print "\$9", "\$1" }' | pr -l1 -2"
alias c=clear
