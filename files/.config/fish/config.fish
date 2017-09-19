function fish_prompt
  set_color green
  echo -n "~"
  set_color normal
  echo -n "> "
end

set -x PATH $PATH /usr/local/bin
set -x PATH $PATH /usr/local/sbin
set -x PATH $PATH /usr/local/opt/coreutils/libexec/gnubin
set -x MANPATH /usr/local/opt/coreutils/libexec/gnuman $MANPATH

set -x PATH $PATH /usr/local/opt/libressl/bin
set -x PATH $PATH ~/bin
set -x PATH $PATH ~/.nodebrew/current/bin

set -x PATH $PATH ~/Library/Android/sdk/platform-tools
set -x PATH $PATH ~/Library/Android/sdk/tools
set -x ANDROID_HOME ~/Library/Android/sdk $PATH

set -x GOPATH ~

alias gst="git status"
alias gci="git commit -m"
alias glog="git log --oneline --graph"
alias gdf="git diff HEAD"
alias gpl="git pull origin (~/dotfiles/bin/echo-git-branch)"
alias gps="git push origin (~/dotfiles/bin/echo-git-branch)"
alias ll="ls -hl"
alias la="ls -ahl"

#rbenv init - | source
set -x PATH $PATH ~/.rbenv/shims

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/h-kobayashi/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/h-kobayashi/google-cloud-sdk/path.fish.inc'; else; . '/Users/h-kobayashi/google-cloud-sdk/path.fish.inc'; end; end

#plenv init - | source
set -x PATH $PATH ~/.plenv/shims

set -x PATH $PATH ~/.cargo/bin

# direnv hook fish
function __direnv_export_eval --on-event fish_prompt;
        eval (direnv export fish);
end
