if exists("g:loaded_ruby") || &cp
  finish
endif
let g:loaded_ruby = 1

if executable('ripper-tags')
  let g:easytags_languages = {'ruby': {'cmd': 'ripper-tags'}}
else
  echoe 'CTags: ripper-tags not installed. `gem install ripper-tags`'
endif
