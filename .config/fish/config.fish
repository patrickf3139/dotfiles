if test -e {$HOME}/.iterm2_shell_integration.fish
    source {$HOME}/.iterm2_shell_integration.fish
end

if test -e ~/.fish_secrets
    source ~/.fish_secrets
end

set -xg VISUAL "vim"
set -xg EDITOR "vim"

# aliases
alias clearf="pbpaste | pbcopy"

# visual settings
set -g theme_nerd_fonts yes
set -g theme_color_scheme light
set -g fish_color_command B7D847

# fzf plugin settings
set -g FZF_LEGACY_KEYBINDINGS 0
set -g FZF_FIND_FILE_COMMAND 'rg --files --hidden --follow --no-ignore-vcs -g !.git -g !node_modules -g !.idea 2> /dev/null'
set -g FZF_CD_COMMAND bfs -type d -nohidden | sed s/^\./~/
set -g FZF_CD_WITH_HIDDEN_COMMAND bfs -type d | sed s/^\./~/