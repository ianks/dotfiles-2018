Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'mattn/gist-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-git'
Plug 'tpope/vim-markdown'
Plug 'w0rp/ale'
Plug 'maximbaz/lightline-ale'
" Plug 'HerringtonDarkholme/yats.vim'
Plug 'justinmk/vim-syntax-extra'
Plug 'mattn/emmet-vim'
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'honza/vim-snippets'
Plug 'ianks/vim-tsx'
if !exists('g:gui_oni')
  " Plug 'mhartington/nvim-typescript', {'for': ['typescript', 'tsx'], 'do': './install.sh' }
end
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'ElmCast/elm-vim'
Plug 'derekwyatt/vim-scala'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jparise/vim-graphql'
Plug 'robbles/logstash.vim'
Plug 'cespare/vim-toml'
Plug 'xolox/vim-misc'
Plug 'Keithbsmiley/rspec.vim', { 'for': 'ruby' }
Plug 'ck3g/vim-change-hash-syntax', { 'for': 'ruby' }
Plug 'ecomba/vim-ruby-refactoring', { 'for': 'ruby' }
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
Plug 'thinca/vim-textobj-function-javascript', { 'for': 'javascript' }
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/neopairs.vim'
Plug 'ervandew/supertab'
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
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'junegunn/fzf.vim'
Plug 'kassio/neoterm'
Plug 'tpope/vim-jdaddy'
Plug 'mhinz/vim-startify'
Plug 'janko-m/vim-test'
Plug 'machakann/vim-highlightedyank'
" Plug 'uplus/deoplete-solargraph'
" Plug '~/Development/nvim/deoplete-solargraph'
Plug 'skywind3000/asyncrun.vim'
Plug 'wfleming/vim-codeclimate'
Plug 'hashivim/vim-terraform'
Plug 'hjson/vim-hjson'
Plug 'ianks/vim-ruby-heredoc-syntax'
