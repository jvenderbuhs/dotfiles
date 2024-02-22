alias tm="tmux -2"
alias vi="nvim"
alias vim="nvim"
alias vir="nvim -R"
alias vimr="nvim -R"
alias nvimr="nvim -R"

alias cleanup='git branch --merged | egrep -v "(^\*|master)" | xargs git branch -d'
alias reset='git reset $(git merge-base master $(git rev-parse --abbrev-ref HEAD))'
