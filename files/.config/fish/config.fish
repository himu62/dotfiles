function fish_prompt
  set_color green
  echo -n "~"
  set_color normal
  echo -n "> "
end

set -U fish_user_paths /usr/local/bin
set -U fish_user_paths /usr/local/sbin $fish_user_paths
set -U fish_user_paths /usr/local/opt/coreutils/libexec/gnubin $fish_user_paths
set -x MANPATH /usr/local/opt/coreutils/libexec/gnuman $MANPATH

set -U fish_user_paths /usr/local/opt/libressl/bin $fish_user_paths
set -U fish_user_paths ~/bin $fish_user_paths
set -U fish_user_paths ~/.nodebrew/current/bin $fish_user_paths

set -x GOPATH ~

alias gst="git status"
alias gci="git commit -m"
alias glog="git log --oneline --graph"
alias gdf="git diff HEAD"
alias ll="ls -hl"
alias la="ls -ahl"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/h-kobayashi/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/h-kobayashi/google-cloud-sdk/path.fish.inc'; else; . '/Users/h-kobayashi/google-cloud-sdk/path.fish.inc'; end; end

# rbenv init - | source
set -U fish_user_paths ~/.rbenv/shims $fish_user_paths
