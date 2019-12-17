function fish_greeting
end

function fish_prompt
  set_color green
  echo -n "~"
  set_color normal
  echo -n "> "
end

set -g fish_color_command normal

set -g fish_user_paths /usr/local/bin $fish_user_paths
set -g fish_user_paths /usr/local/sbin $fish_user_paths

set -g fish_user_paths /usr/local/opt/coreutils/libexec/gnubin $fish_user_paths
set -x MANPATH /usr/local/opt/coreutils/libexec/gnuman $MANPATH

set -g fish_user_paths ~/bin $fish_user_paths

set -x GOPATH ~

abbr -a gb "git branch"
abbr -a gbd "git branch -d (git branch | grep -v 'master\$' | sed -e 's/ //g')"
abbr -a gst "git status"
abbr -a gco "git checkout"
abbr -a ga "git add"
abbr -a gau "git add -u"
abbr -a gci "git commit -m"
abbr -a glog "git log --oneline --graph"
abbr -a gd "git diff"
abbr -a gpl "git pull origin (git symbolic-ref --short HEAD)"
abbr -a gps "git push origin (git symbolic-ref --short HEAD)"
abbr -a gf "git fetch origin -p"

abbr -a update "brew update; brew upgrade; gcloud components update"

# direnv hook fish
function __direnv_export_eval --on-event fish_prompt;
  eval (direnv export fish);
end
