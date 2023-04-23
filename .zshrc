# DOTFILES
alias dgit='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

## GIT
gbd() {
  GIT_UPSTREAM_REMOTE=${GIT_UPSTREAM_REMOTE:-origin}
  GIT_UPSTREAM_HEAD=${GIT_UPSTREAM_HEAD:-main}

  git remote update -p

  merge_ref="${GIT_UPSTREAM_REMOTE}/${GIT_UPSTREAM_HEAD}"
  git branch --format '%(refname:short)' --merged ${merge_ref} \
    | xargs git branch -d
}

## ASDF
source ~/.asdf/asdf.sh
