#!/bin/bash

sudo apt-get install -y golang vim-syntax-go

# thanks to http://collectingknowledge.blogspot.com/2013/02/using-go-in-ubuntu-1204.html
mkdir -p ~/.vim
mkdir -p ~/.vim/syntax
mkdir -p ~/.vim/ftdetect
cp /usr/share/vim/addons/syntax/go*.vim ~/.vim/syntax
echo "au BufRead,BufNewFile *.go set filetype=go" > ~/.vim/ftdetect/go.vim
