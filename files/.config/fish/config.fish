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

abbr -a gst "git status"
abbr -a gci "git commit -m"
abbr -a glog "git log --oneline --graph"
abbr -a gdf "git diff"
abbr -a gpl "git pull origin (git symbolic-ref --short HEAD)"
abbr -a gps "git push origin (git symbolic-ref --short HEAD)"

abbr -a update "brew update; brew upgrade; gcloud components update"
abbr -a prune "brew prune; brew cleanup"

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/h-kobayashi/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/h-kobayashi/google-cloud-sdk/path.fish.inc'; else; . '/Users/h-kobayashi/google-cloud-sdk/path.fish.inc'; end; end

# direnv hook fish
function __direnv_export_eval --on-event fish_prompt;
        eval (direnv export fish);
end
