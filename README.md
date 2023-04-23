# dotfiles-skss
Dotfiles for my 16" Intel MBP running MacOS.

```
git clone --bare git@github.com:olliebun/dotfiles-skss.git ~/.dotfiles
alias dgit='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dgit config status.showUntrackedFiles no
```
