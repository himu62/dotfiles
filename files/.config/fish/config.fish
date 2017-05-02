function fish_prompt
  set_color green
  echo -n "~"
  set_color normal
  echo -n ">"
end

set -x PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
set -x MANPATH /usr/local/opt/coreutils/libexec/gnuman $MANPATH

set -x PATH /usr/local/opt/libressl/bin $PATH

set -x PATH ~/bin $PATH
