"""""""""""""""""""""""""""""""""""""""
" <leader>f
" File mappings

" File search
nnoremap <leader>fs :Files<CR>

" Tag search
nnoremap <leader>ft :Tags<CR>

" File explore
nnoremap <leader>fe :<C-u>VimFilerSplit -force-quit<CR>

" Files changed
nnoremap <leader>fc :OpenChangedFiles<CR>

" File grep
nnoremap <leader>fg :Rg<CR>

" Go to file in a vertical split
nnoremap <leader>fo :vertical botright wincmd F<CR>
