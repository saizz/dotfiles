#!/bin/bash

set -xe

cd
ln -si ~/.ghq/github.com/saizz/dotfiles/.direnvrc .direnvrc
ln -si ~/.ghq/github.com/saizz/dotfiles/.spacemacs .spacemacs

cd ~/.conf/fish
ln -si ~/.ghq/github.com/saizz/dotfiles/.conf/fish/fishfile fishfile
ln -si ~/.ghq/github.com/saizz/dotfiles/.conf/fish/config.fish config.fish

