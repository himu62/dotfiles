#!/bin/sh

git config --global --edit
git secrets --register-aws --global

# aws configure
# gcloud auth login

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
fisher install barnybug/docker-fish-completion

go get -v github.com/golang/dep/cmd/dep

# iterm dracula
