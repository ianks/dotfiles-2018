let g:test#strategy = 'neovim'
let g:test#javascript#mocha#file_pattern = '\vtests?/.*\.(ts|tsx|js|jsx|coffee)$'

let test#javascript#mocha#options = {
  \ 'nearest': '--reporter spec',
  \ 'file':    '--reporter spec',
  \ 'suite':   '--reporter dot test/**/*Test.*',
  \}

nnoremap <silent> <leader>tn :TestNearest<CR>
nnoremap <silent> <leader>tf :TestFile<CR>
nnoremap <silent> <leader>ta :TestSuite<CR>
nnoremap <silent> <leader>tl :TestLast<CR>
nnoremap <silent> <leader>tv :TestVisit<CR>
