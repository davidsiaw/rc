alias cb='git checkout'
alias br='git branch'

# git tools
alias grs='git rebase --skip'
alias grc='git rebase --continue'
alias gco='git checkout --ours'
alias gct='git checkout --theirs'

# branch point of [branch]
alias bpo='~/rc.d/bpo'

# revert to branchpoint
alias rtb='~/rc.d/rtb'

alias gsu='git pull && git submodule update'

function gl() {
  ARGS="$@"
  docker run --rm -ti -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:`pwd` --entrypoint= gitlab/gitlab-runner:alpine sh -c "cd `pwd`; /usr/bin/gitlab-runner $ARGS"
}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
