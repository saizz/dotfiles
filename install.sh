#!/bin/bash

set -xe

pip install powerline-shell

cd
ln -si ~/.ghq/github.com/saizz/dotfiles/.direnvrc .direnvrc
ln -si ~/.ghq/github.com/saizz/dotfiles/.spacemacs .spacemacs

cd ~/.config/fish
ln -si ~/.ghq/github.com/saizz/dotfiles/.config/fish/fishfile fishfile
ln -si ~/.ghq/github.com/saizz/dotfiles/.config/fish/config.fish config.fish

