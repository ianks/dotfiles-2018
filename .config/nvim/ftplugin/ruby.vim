if exists("g:loaded_ruby") || &cp
  finish
endif
let g:loaded_ruby = 1

function! ruby#handle_exit(channel, output) abort
  exec SyntasticReset()
  checktime
  echo 'rubocop finished'
endfunction

function! ruby#rubocop_format()
  let s:callbacks = { 'on_exit': function('ruby#handle_exit') }
  let job = jobstart(['rubocop', '-a', expand('%')], s:callbacks)
endfunction

command! -nargs=* -bang -complete=shellcmd
      \ RubocopFormat call ruby#rubocop_format()

nnoremap <leader>ff :RubocopFormat<CR>
