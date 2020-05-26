#!/bin/bash
# git,bashrc,vimなどの設定を常に更新するためのシェルスクリプト
ln -nsf $(pwd)/git/gitconfig ~/.gitconfig
ln -nsf $(pwd)/git/gitignore_global ~/.gitignore_global
ln -nsf $(pwd)/bash/bashrc.txt ~/.bashrc
ln -nsf $(pwd)/vim/vimrc ~/.vimrc
[ ! -e ~/.vim/autoload/ ] && curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim