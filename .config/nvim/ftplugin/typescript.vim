if exists("g:loaded_typescript") || &cp
  finish
endif
let g:loaded_typescript= 1

set suffixesadd+=.ts
set suffixesadd+=.tsx

function! typescript#tsfmt_handle_exit(channel, output) abort
  exec SyntasticReset()
  checktime
  echo 'tsfmt finished'
endfunction

function! typescript#tsfmt()
  let s:callbacks = { 'on_exit': function('typescript#tsfmt_handle_exit') }
  let job = jobstart(['tsfmt', '-r', expand('%')], s:callbacks)
endfunction

command! -nargs=* -bang -complete=shellcmd
      \ TsFmt call typescript#tsfmt()

nnoremap <leader>ff :TsFmt<CR>
autocmd FileType typescript nmap <buffer> <Leader>cr <Plug>(TsuquyomiRenameSymbolC)
