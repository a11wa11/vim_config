#!/bin/bash
ln -nsf $(pwd)/gitconfig ~/.gitconfig
ln -nsf $(pwd)/gitignore_global ~/.gitignore_global
ln -nsf $(pwd)/template_bashrc.txt ~/.bashrc
ln -nsf $(pwd)/vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

