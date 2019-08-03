#!/usr/bin/env bash
alias ls="ls -Gh"
alias mkdir="mkdir -p"
alias grep="grep --color=auto"
alias history="history | tail -r | less"
alias ..="cd .."
alias vim="nvim"

alias clearf="pbpaste | pbcopy"

# Recursively delete `.DS_Store` files
# alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Show/hide hidden files in Finder
alias showhidden="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Merge PDF files
# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'