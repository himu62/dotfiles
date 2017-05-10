#!/bin/sh

# git

git config --global --edit

# fish

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
fisher install barnybug/docker-fish-completion

# apm install

apm install atom-typescript
apm install editorconfig
apm install emmet
apm install go-plus
apm install highlight-selected
apm install linter
apm install linter-ui-default

# go get

go get -v github.com/golang/dep/...

# iterm dracula
