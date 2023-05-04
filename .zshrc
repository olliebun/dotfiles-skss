# ~/.zshrc
# Created 2023-04-23.
# For skss.
# PATH

export PATH=$PATH:$HOME/bin

# DOTFILES
alias dgit='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# SHELL ALIASES
alias vim="nvim"

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

## AWS
export AWS_DEFAULT_REGION=ap-southeast-2

## GO
export PATH=$PATH:$HOME/go/bin

## FLIP
if [ -f ~/src/flip/gomi/ollie/flip.sh ]; then
  source ~/src/flip/gomi/ollie/flip.sh
fi

## NODE and NPM
export npm_config_prefix=$HOME/.npm
export PATH=$PATH:$npm_config_prefix/bin

## HOMEBREW
eval "$(/usr/local/bin/brew shellenv)"
