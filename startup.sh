#!/bin/sh

curl -OfsSL https://github.com/himu62/dotfiles/archive/master.zip
unzip master.zip -d ~
rm master.zip
mkdir -p ~/src/github.com/himu62
mv ~/dotfiles-master ~/src/github.com/himu62/dotfiles
make -C ~/src/github.com/himu62/dotfiles
