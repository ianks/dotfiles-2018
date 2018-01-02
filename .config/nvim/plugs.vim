" ========================================
" Vim plugin configuration
" ========================================

if has("autocmd")
  filetype indent plugin on
endif

call plug#begin('~/.config/nvim/plugged')

runtime plugs/plugs.vim

call plug#end()

augroup lazy_load_ultisnips
  autocmd!
  autocmd InsertEnter * call plug#load('ultisnips') | autocmd! lazy_load_ultisnips
augroup END
