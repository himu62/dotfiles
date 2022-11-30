#!/usr/local/bin/fish

git config --global --edit
git secrets --register-aws --global

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install barnybug/docker-fish-completion
fisher install halostatue/fish-docker

@echo run "aws-vault add <profile>" and "gcloud auth login"
