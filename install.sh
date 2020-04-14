#!/bin/sh

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

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

brew tap neovim/neovim
brew install neovim

brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install docker
brew cask install slack
brew cask install alfred
brew cask install iterm2
brew cask install visual-studio-code
brew cask install jetbrains-toolbox
brew cask install 1password
brew cask install google-cloud-sdk

ln -snf ~/src/github.com/himu62/dotfiles/files/.config ~/.config
ln -snf ~/src/github.com/himu62/dotfiles/files/.editorconfig ~/.editorconfig
ln -snf ~/src/github.com/himu62/dotfiles/files/.gitignore ~/.gitignore
ln -snf ~/src/github.com/himu62/dotfiles/files/.gitconfig ~/.gitconfig
