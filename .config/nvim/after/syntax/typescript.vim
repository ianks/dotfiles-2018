if exists('b:current_syntax')
  let s:current_syntax=b:current_syntax
  unlet b:current_syntax
endif

syn include @XMLSyntax syntax/xml.vim
unlet b:current_syntax

syn include @GQLSyntax syntax/graphql.vim
unlet b:current_syntax

if exists('s:current_syntax')
  let b:current_syntax=s:current_syntax
endif

syn region xmlTemplateTag
      \ contains=@XMLSyntax
      \ start=+xml`+
      \ end=+`+
      \ extend

syn region gqlTemplateTag
      \ contains=@GQLSyntax
      \ start=+gql`+
      \ end=+`+
      \ extend
