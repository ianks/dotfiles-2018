# Jruby
export JRUBY_OPTS='--dev'

# Other
alias cdd='cd $HOME/Dropbox/Development'

# Dircolors for termite
[ "$TERM" = "xterm-termite" ] && eval $(dircolors $HOME/.dircolors)

# Use nvim
alias vim='nvim'

# NVM
[ -f "/usr/share/nvm/init-nvm.sh" ] && source /usr/share/nvm/init-nvm.sh

# FZF
export PATH="$HOME/.fzf/bin:$HOME/.luarocks/bin:$PATH"
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden --follow --glob "!.git/*" --threads 4'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

jtail() {
  journalctl --user --follow --output cat -n 100 -u "$1".service
}
