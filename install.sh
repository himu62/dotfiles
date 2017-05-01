#!/bin/sh

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update

brew install git
brew install coreutils
brew install awscli
brew install libressl
brew install fish
brew install tmux
brew install yarn
brew install go

brew tap neovim/neovim
brew install neovim

brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install docker
brew cask install virtualbox
brew cask install vagrant
brew cask install slack
brew cask install alfred
brew cask install iterm2
brew cask install atom

ln -snf ~/dotfiles/files/.config ~/.config
ln -snf ~/dotfiles/files/.tmux.conf ~/.tmux.conf
