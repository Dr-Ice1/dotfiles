#!/bin/bash

# Check if Homebrew is installed
if ! command -v brew &>/dev/null; then
    echo "Homebrew is not installed. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Update Homebrew
echo "Updating Homebrew..."
brew update

# Install necessary programs using Homebrew
echo "Installing necessary programs..."
brew install zsh neovim git stow curl kitty

# Install Oh My Zsh if not already installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "Oh My Zsh is already installed."
fi

# Check if Stow is installed via Homebrew
if ! command -v stow &>/dev/null; then
    echo "Stow is not installed. Installing it via Homebrew..."
    brew install stow
else
    echo "Stow is already installed."
fi

# Set Zsh as default shell if it's not already
if [ "$SHELL" != "$(which zsh)" ]; then
    echo "Changing default shell to Zsh..."
    chsh -s "$(which zsh)"
else
    echo "Zsh is already the default shell."
fi

# Create symlinks using Stow
echo "Creating symlinks using Stow..."
cd ~/dotfiles || exit
stow .

# Install Neovim plugins (assuming vim-plug is used)
if [ ! -d "$HOME/.local/share/nvim/site/autoload/plug.vim" ]; then
    echo "Installing Neovim plugins..."
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    nvim +PlugInstall +qall
fi

# Final Message
echo "Bootstrap complete. You may need to restart your terminal or your machine for all changes to take effect."

