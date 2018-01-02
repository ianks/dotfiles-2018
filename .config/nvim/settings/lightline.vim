let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'component_expand': {
      \   'linter_warnings': 'lightline#ale#warnings',
      \   'linter_errors': 'lightline#ale#errors',
      \   'linter_ok': 'lightline#ale#ok',
      \ },
      \ 'component_type': {
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \ },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'fileformat', 'fileencoding', 'filetype' ],
      \              [ 'linter_errors', 'linter_warnings', 'linter_ok' ] ],
      \ },
      \ 'component_function': {
      \   'fugitive': 'fugitive#head',
      \   'readonly': 'MyReadonly',
      \   'filename': 'LightlineFilename',
      \ },
      \ 'separator': { 'right': '', 'left': '' },
      \ 'subseparator': { 'right': '', 'left': '' }
      \ }

function! LightlineFilename()
  let l:displayname = expand('%:p:h:t') . '/' . expand('%:t')
  let l:filename = l:displayname !=# '' ? l:displayname : '[No Name]'
  let l:modified = &modified ? ' +' : ''
  return l:filename . l:modified
endfunction

" Use status bar even with single buffer
set laststatus=2
