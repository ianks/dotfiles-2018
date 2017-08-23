if exists("g:loaded_typescript") || &cp
  finish
endif
let g:loaded_typescript= 1

set suffixesadd+=.ts
set suffixesadd+=.tsx

let g:neoformat_typescript_tslint = {
            \ 'exe': 'tslint',
            \ 'args': ['--force', '-s /home/ianks/.nvm/versions/node/v6.9.4/lib/node_modules/tslint-fix-formatter', '-t fix', '%:p'],
            \ 'no_append': 1,
            \ }

let g:neoformat_enabled_typescript = ['prettier']

nnoremap <leader>ff :Neoformat<CR>
autocmd FileType typescript nmap <buffer> <Leader>cr <Plug>(TsuquyomiRenameSymbolC)
