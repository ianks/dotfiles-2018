if exists("g:loaded_ruby") || &cp
  finish
endif
let g:loaded_ruby = 1

" if executable('ripper-tags')
"   let g:easytags_languages = {'ruby': {'cmd': 'ripper-tags'}}
" else
"   echoe 'CTags: ripper-tags not installed. `gem install ripper-tags`'
" endif

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> <c-]> :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <leader>rn :call LanguageClient#textDocument_rename()<CR>
