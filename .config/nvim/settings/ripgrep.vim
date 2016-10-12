command! -bang -nargs=* Rg call fzf#vim#grep('rg --vimgrep --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" '.shellescape(<q-args>), 1, <bang>0)
