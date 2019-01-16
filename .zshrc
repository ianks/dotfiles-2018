# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
for config_file ($HOME/.yadr/cli/zsh/*.zsh) source $config_file

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# added by travis gem
[ -f /home/ianks/.travis/travis.sh ] && source /home/ianks/.travis/travis.sh

export PATH="$PATH:/home/ianks/.cargo/bin"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/ianks/.nvm/versions/node/v9.3.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/ianks/.nvm/versions/node/v9.3.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/ianks/.nvm/versions/node/v9.3.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /home/ianks/.nvm/versions/node/v9.3.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
bindkey -M vicmd v edit-command-line
# added by tile
[ -f /home/ianks/.tile/completions/completions.zsh ] && source /home/ianks/.tile/completions/completions.zsh
# end tile
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/ianks/google-cloud-sdk/path.zsh.inc' ]; then . '/home/ianks/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/ianks/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/ianks/google-cloud-sdk/completion.zsh.inc'; fi
