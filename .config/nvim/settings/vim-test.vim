let g:test#strategy = 'neovim'
let g:test#javascript#mocha#file_pattern = '\v.*(Test|\.spec)\.(ts|tsx|js|jsx|coffee)$'

let test#javascript#mocha#options = {
  \ 'nearest': '--reporter spec',
  \ 'file':    '--reporter spec',
  \ 'suite':   '--reporter dot test/**/*Test.*',
  \}

" let test#ruby#rspec#options = {
"   \ 'file':    '--options /dev/null --color --require spec_helper --require acceptance_helper',
"   \}
let $MINITEST_REPORTER = 'ProgressReporter'

nnoremap <silent> <leader>tn :TestNearest<CR>
nnoremap <silent> <leader>tf :TestFile<CR>
nnoremap <silent> <leader>ta :TestSuite<CR>
nnoremap <silent> <leader>tl :TestLast<CR>
nnoremap <silent> <leader>tv :TestVisit<CR>
