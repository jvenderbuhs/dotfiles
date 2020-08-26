export BASH_SILENCE_DEPRECATION_WARNING=1
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.rancher"
export PATH="$PATH:$HOME/.helpers"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\W\$(parse_git_branch) $ "

function agr { ag -0 -l "$1" | xargs -0 perl -pi.bak -e "s/$1/$2/g"; }
export -f agr

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
alias r="~/tools/r/r.sh"
alias githead='git log | head -n 1'
alias rngr='ranger -c'
alias dcup="docker-compose down;rm tmp/pids/server.pid; docker-compose up"
alias dcdown="docker-compose down"
alias dcssh="docker exec -it $( docker ps -q -f name=webapp -l ) bash"
alias dps="docker ps"
alias rps="rancher ps"
alias tm="tmux -2"
alias rit='rancher exec -it'
alias dit='docker exec -it'
alias vi="nvim"
alias vim="nvim"
alias rmbak="find . -name \"*.bak\" -type f -delete"

cd ~/.ssh
ssh-add id_rsa
cd ~/Development
clear
