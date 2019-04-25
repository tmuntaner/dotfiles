#!/bin/bash

# git
ln -sf ~/dotfiles/git/.gitignore_global ~/.gitignore_global
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig

# gpg
ln -sf ~/dotfiles/gnupg/gpg.conf ~/.gnupg/gpg.conf

# vim
ln -sf ~/dotfiles/vim/.vimrc ~/.vimrc

echo "Done"
