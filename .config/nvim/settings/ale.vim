let g:ale_linters = {
\   'typescript': ['tslint', 'tsserver'],
\   'javascript': [],
\   'scss': ['stylelint'],
\   'terraform': ['tflint'],
\   'cpp': ['clang'],
\   'c': ['clang']
\}

let g:ale_fixers = {
\   'typescript': ['prettier'],
\   'rust': ['rustfmt'],
\   'javascript': ['prettier'],
\   'c': ['clangformat'],
\   'ruby': ['rubocop'],
\   'scss': ['prettier'],
\   'markdown': ['prettier'],
\   'terraform': ['terraform']
\}



let g:ale_fix_on_save = 1
let g:ale_ruby_rubocop_executable = "bundle"
let g:ale_c_clang_options = "-I/usr/include/ruby-2.6.0"
let g:ale_c_gcc_options = "-I/usr/include/ruby-2.6.0"
let g:ale_c_clangformat_options = "-I/usr/include/ruby-2.6.0"

