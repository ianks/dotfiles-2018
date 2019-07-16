#
# Helper functions for zsh
#

tarball() {
  tar cvzf "$1".tar.gz "$1"
}

replace() {

  if (( ! $+commands[rg] )); then
    echo "Error: rg executable not found"
    return 1
  fi

  find_this=$1
  shift
  replace_with=$1
  shift

  rg -l $find_this $* | xargs perl -pi -E "s/$find_this/$replace_with/g"
}

killonport() {
  lsof -i TCP:$1 | grep LISTEN | awk '{print $2}' | xargs kill -9
}

bak() {
  cp -R "$1"{,.bak}
}

mkcd() {
  mkdir -p "$1" && cd $_
}

dotfeh() {
  dot $1 -Tpng | feh --scale-down - &
}

instanceip() {
  instance_id="$1"

  if ! [[ "$instance_id" =~ "^i-.*" ]]; then
    instance_id="i-$instance_id"
  fi

  aws ec2 describe-instances --region us-west-1 --instance-ids "$instance_id" \
    | grep PublicIpAddress \
    | awk -F ":" '{print $2}' \
    | sed 's/[",]//g' \
    | sed 's/^ //g'
}

ssh-instance () {
  ssh -i ~/.ssh/aws-eb ec2-user@$(instanceip "$1")
}

rg-github() {
  local repodir
  repo_dir="/tmp/rg-github/$2"
  mkdir -p "$repo_dir"
  pushd "$repo_dir"
  git clone "$2" || true
  rg "$1"
  popd
}
