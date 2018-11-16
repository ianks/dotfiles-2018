if exists('g:loaded_typescript') || &compatible
  finish
endif
let g:loaded_typescript= 1

set suffixesadd+=.ts
set suffixesadd+=.tsx

" execute 'nnoremap <buffer> <silent> <leader>cr'  ':TSRename<CR>'
" execute 'nnoremap <buffer> <silent> <leader>ch'  ':TSType<CR>'
" execute 'nnoremap <buffer> <silent> <leader>ci'  ':TSImport<CR>'
" execute 'nnoremap <buffer> <silent> K' ':TSDoc<CR>'
" execute 'nnoremap <buffer> <silent> <c-]>' ':TSTypeDef<CR>'

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> <c-]> :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <leader>rn :call LanguageClient#textDocument_rename()<CR>
