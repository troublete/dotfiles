PS1='
`date +"%A, %H:%M"` – `pwd`
pid:$$ `whoami`@`tput bold``hostname``tput sgr0`$ '
PS2=…

export PATH=$PATH:~/bin

alias l="ls -la | awk 'NR > 1 { print "\$9", "\$1" }' | pr -l1 -2"
alias c=clear

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/willi/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
