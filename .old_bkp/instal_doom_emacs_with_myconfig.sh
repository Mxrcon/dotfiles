#!/usr/bin/env bash

set -e

 
sudo apt-get install --yes \
     emacs27 \
#    ripgrep \
#    find \
#    fd-find

git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

# use my on config

git clone --depth 1 https://github.com/Mxrcon/dotfiles 
cp dotfiles/.doom.d/* ~.doom.d/
~/.emacs.d/bin/doom sync
