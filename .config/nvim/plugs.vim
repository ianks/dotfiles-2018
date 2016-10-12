" ========================================
" Vim plugin configuration
" ========================================

if has("autocmd")
  filetype indent plugin on
endif

call plug#begin('~/.config/nvim/plugged')

" YADR's plugs are split up by category into smaller files
" This reduces churn and makes it easier to fork. See
" ~/.vim/plugs/ to edit them:
runtime plugs/git.plug
runtime plugs/appearance.plug
runtime plugs/textobjects.plug
runtime plugs/search.plug
runtime plugs/project.plug
runtime plugs/vim-improvements.plug
runtime plugs/ruby.plug
runtime plugs/languages.plug

call plug#end()

augroup lazy_load_ultisnips
  autocmd!
  autocmd InsertEnter * call plug#load('ultisnips') | autocmd! lazy_load_ultisnips
augroup END
