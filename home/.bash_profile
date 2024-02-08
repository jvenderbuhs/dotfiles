function parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\W\$(parse_git_branch) $ "

alias tm="tmux -2"
alias vi="nvim"
alias vim="nvim"
alias vir="nvim -R"
alias vimr="nvim -R"
alias nvimr="nvim -R"
alias cleanup='git branch --merged | egrep -v "(^\*|master)" | xargs git branch -d'
alias reset='git reset $(git merge-base master $(git rev-parse --abbrev-ref HEAD))'

cd ~/Development
