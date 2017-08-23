" let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint']
" let g:syntastic_javascript_checkers = ['flow', 'eslint']
" let g:syntastic_ruby_checkers = ['rubocop', 'mri']
" let g:syntastic_yaml_checkers = ['yamllint']
" let g:syntastic_always_populate_loc_list = 1
" let g:elm_syntastic_show_warnings = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_scss_checkers = ['sass', 'sasslint']
" let g:syntastic_scss_sass_lint_post_args = "--config /home/ianks/Dropbox/Development/work/techstars/companies/adhawk/the-power/config/sass-lint.yml"
" let g:syntastic_lua_checkers = ["luac", "luacheck"]
" let g:syntastic_lua_luacheck_args = "--globals ngx --no-unused-args"
" let g:syntastic_ruby_rubocop_args = "--force-exclusion"
" let g:syntastic_sh_shellcheck_args = "-x"
" let g:syntastic_markdown_checkers= ['proselint', 'mdlint']


let g:tslint_errorformat =
  \ '%EERROR: %f[%l\, %c]: %m,' .
  \ '%WWARNING: %f[%l\, %c]: %m,' .
  \ '%E%f[%l\, %c]: %m'

" let g:neomake_open_list = 1
function TslintPostprocess(entry) abort
  call neomake#utils#CompressWhitespace(a:entry)
  if a:entry.text ==# ''
    let a:entry.valid = -1
  endif
endfunction

let g:neomake_typescript_tslint_maker = {
      \ 'args': [
        \ '%:p',
        \ '--project',
        \ neomake#utils#FindGlobFile('tsconfig.json')
      \ ],
        \ 'errorformat': g:tslint_errorformat,
        \ 'postprocess': function('TslintPostprocess')
      \ }

let g:neoformat_enabled_json = ['prettier']
let g:neomake_javascript_enabled_makers = ['flow', 'eslint']
let g:neomake_typescript_enabled_makers = ['tsc', 'tslint']
let g:neomake_ruby_enabled_makers = ['rubocop', 'mri']
let g:neomake_yaml_enabled_makers = ['yamllint']
let g:neomake_scss_enabled_makers = ['sass', 'sass_lint']
let g:neomake_lua_enabled_makers = ['luac', 'luacheck']
let g:neomake_ruby_luacheck_maker = {
      \ 'args': ['--globals ngx', '--no-unused-args', '--no-color', '--formatter=plain', '--codes', '--filename', '%:p']
      \ }
let g:neomake_markdown_enabled_makers= ['proselint', 'mdlint']

autocmd! BufWritePost * Neomake
