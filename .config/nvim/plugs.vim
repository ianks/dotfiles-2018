" ========================================
" Vim plugin configuration
" ========================================

if has("autocmd")
  filetype indent plugin on
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-git'
Plug 'tpope/vim-markdown'
Plug 'justinmk/vim-syntax-extra'
Plug 'mattn/emmet-vim'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neoclide/coc-solargraph'
" Plug 'neoclide/coc-tsserver'
" Plug 'neoclide/coc-json'
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'ElmCast/elm-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jparise/vim-graphql'
Plug 'robbles/logstash.vim'
Plug 'cespare/vim-toml'
Plug 'xolox/vim-misc'
Plug 'tpope/vim-bundler', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-rake', { 'for': 'ruby' }
Plug 'tpope/vim-rbenv', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'bootleq/vim-textobj-rubysymbol', { 'for': 'ruby' }
Plug 'coderifous/textobj-word-column.vim'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }
Plug 'ntpeters/vim-better-whitespace'
Plug 'Shougo/neopairs.vim'
Plug 'godlygeek/tabular'
Plug 'mattn/webapi-vim'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-repeat'
if !has('nvim')
  Plug 'tpope/vim-sensible'
endif
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-rsi'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'bkad/CamelCaseMotion'
Plug 'vim-scripts/lastpos.vim'
Plug 'xolox/vim-easytags'
Plug 'editorconfig/editorconfig-vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', { 'do' : 'make' }
Plug 'Shougo/neomru.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'zhaocai/GoldenView.Vim'
Plug 'osyo-manga/unite-quickfix'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'junegunn/fzf.vim'
Plug 'kassio/neoterm'
Plug 'tpope/vim-jdaddy'
Plug 'mhinz/vim-startify'
Plug 'janko-m/vim-test'
Plug 'machakann/vim-highlightedyank'
Plug 'skywind3000/asyncrun.vim'
Plug 'wfleming/vim-codeclimate'
Plug 'hashivim/vim-terraform'
Plug 'hjson/vim-hjson'
Plug 'ianks/vim-ruby-heredoc-syntax'

call plug#end()
