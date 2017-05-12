function fish_prompt
  set_color green
  echo -n "~"
  set_color normal
  echo -n "> "
end

set -U fish_user_paths /usr/local/bin
set -U fish_user_paths /usr/local/opt/coreutils/libexec/gnubin $fish_user_paths
set -x MANPATH /usr/local/opt/coreutils/libexec/gnuman $MANPATH

set -U fish_user_paths /usr/local/opt/libressl/bin $fish_user_paths

set -U fish_user_paths ~/bin $fish_user_paths

set -x GOPATH ~

alias gst="git status"
alias gci="git commit -m"
alias glog="git log --oneline --graph"
alias gdf="git diff HEAD"
