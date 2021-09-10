export BASH_SILENCE_DEPRECATION_WARNING=1
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.rancher"
export PATH="$PATH:$HOME/.helpers"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\W\$(parse_git_branch) $ "

function agr { ag -0 -l "$1" | xargs -0 perl -pi.bak -e "s/$1/$2/g"; }
export -f agr

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
alias r="~/tools/r/r.sh"
alias githead='git log | head -n 1'
alias rps="rancher ps"
alias tm="tmux -2"
alias rit='rancher exec -it'
alias vi="nvim"
alias vim="nvim"
alias rmbak="find . -name \"*.bak\" -type f -delete"
alias dsf="diff-so-fancy"

cd ~/.ssh
ssh-add id_rsa
cd ~/Development
clear
