alias gs="git status"
alias gsu="git status --untracked-files=normal"
alias gl="git -P log | nvim"

alias gb="git -P branch -a | nvim"
function gbn() {
  echo "Name of New Branch: "
  read branchName
  git branch $branchName
  git checkout $branchName
}

function gco() {
  branch=$(git -P branch -a | fzf --prompt "Choose Branch to switch to: ")
  git checkout $branch
}

alias gph="git push"
alias gpp="git pull"

function gac() {
  gf=$(git status -s | awk '{print $2}' | fzf --preview "git diff {}" --prompt "File to Commit: ")
  echo "Commit Message: "
  read msg
  git add -- "$gf"
  git commit "$gf" -m "$msg"
}
