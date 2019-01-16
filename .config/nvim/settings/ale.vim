let g:ale_linters = {
\   'typescript': ['tslint', 'tsserver'],
\   'javascript': [],
\   'scss': ['stylelint'],
\   'terraform': ['tflint'],
\   'cpp': ['clang']
\}

let g:ale_fixers = {
\   'typescript': ['prettier'],
\   'javascript': ['prettier'],
\   'ruby': ['rubocop'],
\   'scss': ['prettier'],
\   'markdown': ['prettier'],
\   'terraform': ['terraform']
\}

let g:ale_fix_on_save = 1
let g:ale_ruby_rubocop_executable = "bundle"
