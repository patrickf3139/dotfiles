#!/usr/bin/env fish

echo "Configuring GUI apps"
# Point iterm2, Dash, and Alfred to settings stored in Dropbox
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "$HOME/Dropbox/Settings"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
defaults write com.kapeli.dashdoc syncFolderPath -string "$HOME/Dropbox/Settings"
defaults write com.runningwithcrayons.Alfred-Preferences syncfolder -string "$HOME/Dropbox/Settings"

# Disable checking if keyboard shortcuts are on in Mailplane
defaults write com.mailplaneapp.Mailplane3 DisableCheckKeyboardShortcuts -bool true

# Configure Postico
defaults write at.eggerapps.Postico AlternatingRows -bool true
defaults write at.eggerapps.Postico IndentWithSpaces -bool true
defaults write at.eggerapps.Postico QueryViewFontSize -int 14
defaults write at.eggerapps.Postico TableViewFontSize -int 14
defaults write at.eggerapps.Postico TableViewRowsPerPage -int 200

echo "Installing VSCode extensions"
cat vsc_extensions.txt | xargs -L 1 code --install-extension
