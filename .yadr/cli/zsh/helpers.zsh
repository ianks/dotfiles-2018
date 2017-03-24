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
  aws ec2 describe-instances --region us-west-1 --instance-ids $1 \
    | grep PublicIpAddress \
    | awk -F ":" '{print $2}' \
    | sed 's/[",]//g' \
    | sed 's/^ //g'
}
