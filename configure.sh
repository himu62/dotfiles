#!/bin/sh

# fish

fisher install barnybug/docker-fish-completion

# git

git config --global --edit

# apm install

apm install atom-typescript
apm install editorconfig
apm install linter
apm install linter-ui-default
apm install emmet
apm install go-plus
apm install highlight-selected

# go get

go get -v github.com/golang/dep/...

# iterm dracula
