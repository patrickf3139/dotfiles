#!/usr/bin/env bash
echo "Installing files for current user."
echo "Interactively symlinking the dot files into the home directory."

REPO_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

for dotfile in $REPO_DIR/.{aliases,bashrc,bash_profile,gitconfig,gitignore_global,functions}; do
    ln -i -s $dotfile ~
done

echo "Downloading the latest git-completion Bash script."
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

echo "Iteractively symlinking Sublime Text 3 settings into their home."
SUBLIME_PREFERENCES_HOME="$HOME/Library/Application Support/Sublime Text 3/Packages/User/"
for sublimeSettingsFile in "$REPO_DIR/Settings/Sublime Text 3/"*; do
    ln -i -s "$sublimeSettingsFile" "$SUBLIME_PREFERENCES_HOME"
done

echo "Interactively symlinking Fish config into its home."
FISH_CONFIG_HOME="$HOME/.config/fish"
mkdir -p $FISH_CONFIG_HOME
ln -i -s "$REPO_DIR/Settings/config.fish" $FISH_CONFIG_HOME

sh $REPO_DIR/osx.sh
echo "Done. You must restart terminal or source the dot files before the changes will take effect."

