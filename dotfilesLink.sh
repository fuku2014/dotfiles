#! /bin/bash
binary_path=`cd \`dirname $0\`; pwd`
ln -s ${binary_path}/.vimrc ~/.vimrc
ln -s ${binary_path}/.gitconfig ~/.gitconfig
ln -s ${binary_path}/.tmux.conf ~/.tmux.conf
ln -s ${binary_path}/.vim ~/.vim
