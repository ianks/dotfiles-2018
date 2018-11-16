# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
for config_file ($HOME/.yadr/cli/zsh/*.zsh) source $config_file

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# === zgen ==== #
[ ! -d  "${HOME}/.zgen" ] && git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"

source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved; then
  # specify plugins here
  zgen load uvaes/fzf-marks

  # generate the init script from plugins above
  zgen save
fi


# added by travis gem
[ -f /home/ianks/.travis/travis.sh ] && source /home/ianks/.travis/travis.sh

export PATH="$PATH:/home/ianks/.cargo/bin"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/ianks/.nvm/versions/node/v9.3.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/ianks/.nvm/versions/node/v9.3.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/ianks/.nvm/versions/node/v9.3.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /home/ianks/.nvm/versions/node/v9.3.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
neofetch
# added by tile
[ -f /home/ianks/.tile/completions/completions.zsh ] && source /home/ianks/.tile/completions/completions.zsh
# end tile
