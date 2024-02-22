eval "$(rbenv init -)"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@13/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/opt/redis@6.2/bin:$PATH"
export PATH="/opt/homebrew/opt/imagemagick@6/bin:$PATH"

function parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

setopt PROMPT_SUBST
PROMPT='%1d$(parse_git_branch) $ '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export NPM_TOKEN={{FILTERED}}
export DEPENDENCIES_NEXT=1

alias aws-staging="aws sso login --profile nonprod"
alias ssh-staging="AWS_PROFILE=nonprod ./script/remote-exec.sh stg /bin/bash"
alias aws-production="aws sso login --profile prod"
alias ssh-production="AWS_PROFILE=prod ./script/remote-exec.sh prod /bin/bash"

ssh-add ~/.ssh/jane
