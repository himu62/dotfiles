function fish_greeting
end

function fish_prompt
  set_color green
  echo -n "~"
  set_color normal
  echo -n "> "
end

function git_push
  set default_branch (git branch -l master main | sed -E "s/^\*? *//")
  switch (git symbolic-ref --short HEAD)
    case $default_branch
      read -l -P "You are trying to push to $default_branch branch! Are you sure? [Y/n]: " confirm
      switch $confirm
        case y Y
          git push origin (git symbolic-ref --short HEAD)
      end
    case '*'
      git push origin (git symbolic-ref --short HEAD)
  end
end

function git_delete_squash_merged_branches
  for branch in (git for-each-ref refs/heads/ "--format=%(refname:short)")
    set default_branch (git branch -l master main | sed -E "s/^\*? *//")
    if string match -- "-*" (git cherry $default_branch (git commit-tree (git rev-parse $branch^{tree}) -p (git merge-base $default_branch $branch) -m _))
      git branch -D $branch
    end
  end
end

set -g fish_color_command normal

set -x EDITOR nvim
eval (brew shellenv)
eval (direnv hook fish)

set -g fish_user_paths /usr/local/bin $fish_user_paths
set -g fish_user_paths /usr/local/sbin $fish_user_paths

set -g fish_user_paths $HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin $fish_user_paths
set -x MANPATH $HOMEBREW_PREFIX/opt/coreutils/libexec/gnuman $MANPATH

set -g fish_user_paths $HOMEBREW_PREFIX/opt/findutils/libexec/gnubin $fish_user_paths
set -x MANPATH $HOMEBREW_PREFIX/opt/findutils/libexec/gnuman $MANPATH

set -g fish_user_paths $HOMEBREW_PREFIX/opt/python/libexec/bin $fish_user_paths

set -g fish_user_paths $HOMEBREW_PREFIX/opt/openssl/bin $fish_user_paths

set -g fish_user_paths $HOMEBREW_PREFIX/share/git-core/contrib/diff-highlight $fish_user_paths

set -g fish_user_paths ~/bin $fish_user_paths

set -x GOPATH ~
set -x PIPENV_VENV_IN_PROJECT true

abbr -a gb "git branch"
abbr -a gbd "git_delete_squash_merged_branches"
abbr -a gst "git status"
abbr -a gco "git checkout"
abbr -a ga "git add"
abbr -a gau "git add -u"
abbr -a gci "git commit -m"
abbr -a glog "git log --oneline --graph"
abbr -a gd "git diff"
abbr -a gpl "git pull origin (git symbolic-ref --short HEAD)"
abbr -a gps "git_push"
abbr -a gf "git fetch origin -p"

abbr -a update "brew update; brew upgrade; gcloud components update"

abbr -a g "cd (ghq root)/(ghq list | peco)"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "/Users/ca00732/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)