#!/bin/bash

# git
ln -sf ~/dotfiles/git/.gitignore_global ~/.gitignore_global
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig

# gpg
ln -sf ~/dotfiles/gnupg/gpg.conf ~/.gnupg/gpg.conf

# vim
ln -sf ~/vim/.vimrc ~/.vimrc

# vscode
ln -sf ~/dotfiles/vscode/settings.json ~/.config/Code/User/settings.json

echo "Done"
