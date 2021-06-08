function fish_greeting
end

function fish_prompt
  set_color green
  echo -n "~"
  set_color normal
  echo -n "> "
end

function git_push
  switch (git symbolic-ref --short HEAD)
    case master
      read -l -P 'You are trying to push to master branch! Are you sure? [Y/n]: ' confirm
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
    #set default_branch (git remote show origin | grep "HEAD branch" | sed "s/.*: //")
    if string match -- "-*" (git cherry master (git commit-tree (git rev-parse $branch^{tree}) -p (git merge-base master $branch) -m _))
      git branch -D $branch
    end
  end
end

set -g fish_color_command normal

set -g fish_user_paths /usr/local/bin $fish_user_paths
set -g fish_user_paths /usr/local/sbin $fish_user_paths

set -g fish_user_paths /usr/local/opt/coreutils/libexec/gnubin $fish_user_paths
set -x MANPATH /usr/local/opt/coreutils/libexec/gnuman $MANPATH

set -g fish_user_paths /usr/local/opt/findutils/libexec/gnubin $fish_user_paths
set -x MANPATH /usr/local/opt/findutils/libexec/gnuman $MANPATH

set -g fish_user_paths /usr/local/opt/python/libexec/bin $fish_user_paths

set -g fish_user_paths /usr/local/opt/openssl@1.1/bin $fish_user_paths

set -g fish_user_paths ~/bin $fish_user_paths
set -g fish_user_paths ~/.poetry/bin $fish_user_paths

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

set -x EDITOR nvim
eval (direnv hook fish)
