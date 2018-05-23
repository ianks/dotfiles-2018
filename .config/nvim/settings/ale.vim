let g:ale_fix_on_save = 1

let g:ale_linters = {
\   'typescript': ['tslint', 'tsserver'],
\   'javascript': [],
\   'scss': ['sasslint'],
\}

let g:ale_fixers = {
\   'typescript': ['prettier'],
\   'javascript': ['prettier'],
\   'ruby': ['rubocop'],
\   'scss': ['prettier'],
\}
