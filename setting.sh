#!/bin/bash
ln -nsf $(pwd)/gitconfig ~/.gitconfig
ln -nsf $(pwd)/gitignore_global ~/.gitignore_global
ln -nsf $(pwd)/template_bashrc.txt ~/.bashrc
ln -nsf $(pwd)/vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# git config --global user.name "First-name Family-name"
# git config --global user.email "username@example.com"
# git config --global color.diff auto
# git config --global color.status auto
# git config --global color.branch auto
# git config --global tool vimdiff
# git config --global prompt false
