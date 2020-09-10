if [[ "$OSTYPE" == "linux-gnu" ]]; then
    BASHRC="~/.bashrc"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    BASHRC="~/.profile"
fi

EDITOR="vim"
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\e[32m\]\w$\[\e[m\]\[\e[91m\]\$(parse_git_branch)\[\e[00m\] "

alias ls="ls -G"
alias grep="egrep --color"
alias ..="cd .."
alias last="ls -ltr"
alias gdw="cd ~/Downloads"
alias gdo="cd ~/Documents"
alias gde="cd ~/Desktop"
alias gdp="cd ~/Pictures"

alias vimrc="vim ~/.vimrc"
alias bashrc="vim $BASHRC && source $BASHRC"
alias screenrc="vim ~/.screenrc"


bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"
