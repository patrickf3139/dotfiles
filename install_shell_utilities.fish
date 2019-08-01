#!/usr/bin/env fish

# make fish the default shell
set -l path_to_shell (which fish)
if not grep -q "$path_to_shell" /etc/shells
    echo "Setting default shell to $path_to_shell"
    echo "$path_to_shell" | sudo tee -a /etc/shells > /dev/null
    chsh -s "$path_to_shell"
end

# install vim-plug for neovim
if not test -f ~/.local/share/nvim/site/autoload/plug.vim
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
end

# install git completion for bash
if not test -f ~/.git-completion.bash
    echo "Installing the latest git-completion Bash script."
    curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
end

# install docker completions for fish
if not test -e ~/.config/fish/completions/docker.fish
    echo "Installing the latest docker fish completions"
    command -v docker; and curl https://raw.githubusercontent.com/docker/cli/master/contrib/completion/fish/docker.fish -o ~/.config/fish/completions/docker.fish
end

# install fisher framework
if not type -q fisher
    echo "Installing fisher and fisher plugins"
    curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
    fish -c fisher
end