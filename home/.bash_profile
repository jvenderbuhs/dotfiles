export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.rancher"
export PATH="$PATH:$HOME/.helpers"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="JVM @ \W\$(parse_git_branch) $ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
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

cd ~/.ssh
ssh-add bitbucket
ssh-add build
ssh-add github
ssh-add gitlab
ssh-add id_rsa
cd ~/Development
clear
