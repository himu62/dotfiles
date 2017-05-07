#!/bin/sh

curl -OL https://github.com/himu62/dotfiles/archive/master.zip
unzip master.zip -d ~
rm master.zip
mv ~/dotfiles-master ~/dotfiles
make -C ~/dotfiles
