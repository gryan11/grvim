#!/bin/bash

mv ~/.vim ~/.vim.bak
mv ~/.vimrc ~/.vimrc.bak

ln -s `pwd`/vim ~/.vim
ln -s `pwd`/vimrc ~/.vimrc
