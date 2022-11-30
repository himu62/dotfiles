#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update

brew install git
brew install git-secrets
brew install coreutils
brew install findutils
brew install awscli
brew install openssl
brew install fish
brew install go
brew install php
brew install ruby
brew install perl
brew install python
brew install node
brew install direnv
brew install binutils
brew install findutils
brew install gawk
brew install gnu-sed
brew install gnu-tar
brew install gnu-which
brew install grep
brew install protobuf
brew install jq
brew install nkf
brew install ghq
brew install peco
brew install aws-vault

brew tap neovim/neovim
brew install neovim

brew install google-chrome
brew install google-japanese-ime
brew install slack
brew install alfred
brew install iterm2
brew install visual-studio-code
brew install jetbrains-toolbox
brew install 1password
brew install google-cloud-sdk

ln -f ~/src/github.com/himu62/dotfiles/files/.config/fish/config.fish ~/.config/fish/config.fish
ln -f ~/src/github.com/himu62/dotfiles/files/.editorconfig ~/.editorconfig
ln -f ~/src/github.com/himu62/dotfiles/files/.gitignore ~/.gitignore
ln -f ~/src/github.com/himu62/dotfiles/files/.gitconfig ~/.gitconfig
