function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'fileformat', 'fileencoding', 'filetype' ],
      \              [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ],
      \ },
      \ 'component_function': {
      \   'fugitive': 'fugitive#head',
      \   'readonly': 'MyReadonly',
      \   'filename': 'LightlineFilename',
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction',
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
