current_git_branch() {
  git_exists=`git branch 2>/dev/null | sed -ne'/^\* /s///p'`

  if [[ "$git_exists" != "" ]]; then
    if [[ "$git_exists" == "(no branch)" ]]; then
      git_exists="\e[31m\]$git_exists\e[0m\]"
    fi
    echo "$git_exists "
  fi
  unset git_exists
}

current_git_stash() {
  git_stash=`git stash list 2>/dev/null | /usr/bin/wc -l | sed 's/ *//g'`

  if [[ "$git_stash" != "" && $git_stash > 0 ]]; then
    echo "[$git_stash] "
  fi
  unset git_stash
}

PROMPT_COMMAND='PS1="\t \[\e[32m\]$(current_git_branch)\[\e[0m\]\[\e[35m\]$(current_git_stash)\[\e[0m\]\[\e[33m\]\w\[\e[0m\] \[\e[1m\]\$\[\e[0m\] ";'$PROMPT_COMMAND

function rt {
  if [ "$1" == "" ]; then
    echo Need at least one arg.
    return
  fi

  x=$2
  if [ "$x" == "" ]; then
    x=$(git log -n1 --format=%d --tags=v* | sed "s/.*\(v\([0-9]\+\.*\)\{3\}\).*/\1/")
  fi
  git checkout master
  git pull
  git fetch --tags
  git tag --force $1 $x
  git push --tags --force
  unset x
}
