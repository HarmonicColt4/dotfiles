#! /bin/bash

# Install zsh
echo "Installing zsh"
sudo apt install zsh

# Install oh-my-zsh
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Creating symlinks"
echo ".zshrc"
rm ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc

echo ".gitconfig"
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

echo "Install brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"