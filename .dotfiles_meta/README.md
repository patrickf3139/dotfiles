# dotfiles
A collection of my configuration and bootstrap files for `bash`, `fish`, `git`, `iTerm2`, `Sublime Text 3`, and even `brew`, `Mac OS settings`, and `Mac OS applications`. Assumes your primary shell is the `fish` shell. Includes scripts to automate installation.
## Installing
```sh
brew bundle
fish install_shell_utilities.fish
fish configure_apps.fish
sh configure_osx.sh
```
Be sure to run the commands in this order, as some commands have dependencies on things installed by earlier commands. After installing, do not change the path of the `dotfiles` repository on your machine  lest symlinks and other references break. If you must move change the path of the `dotfiles` repository, re-run `fish install_configs.fish` after moving and everything should continue to work.

Scratch pad as I need to rewrite the readme
git config --local status.showUntrackedFiles false
echo "gitdir: /Users/patrick.fong/Code/dotfiles/.git" > "$HOME/.git"
git reset --hard to get changes to materialize
make sure can edit dotfiles in ~Code/dotfiles
how to propogate changes after editing dotfiles to ~
warnings about git add -A and deleting untracked files