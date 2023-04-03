if exists("b:current_syntax")
  finish
endif

syntax keyword arcBoolean true false
syntax keyword arcHttpVerb get post patch put delete options head any

" syntax match arcAwsKeyword "\v^[A-Za-z-]* @<![A-Za-z-]*"
" syntax match arcAwsKeyword "\v^\a* @<!\w*"
syntax match arcAwsKeyword "\v^[A-Za-z-_/]* @<!\w*"

syntax match arcComment "\v#.*$"
syntax match arcEnvVariable "\v[A-Z_]* &[A-Z]@<![A-Z_]*&[a-z]@<![A-Z_]*"
syntax match arcNumber "\v(\d* )"
syntax match arcNumber "\v( \d*)"
syntax match arcPragma  "\v\@.*$"

syntax match arcTableSpecial "*String"
syntax match arcTableSpecial "*\*String"
syntax match arcTableSpecial "*Number"
syntax match arcTableSpecial "*\*Number"

" " Keywords
" syntax keyword arcArcKeyword env shared views
" syntax keyword arcAwsKeyword apigateway architecture concurrency fifo memory provisionedConcurrency region runtime storage timeout
" syntax keyword arcBoolean true false
" syntax keyword arcCreateKeyword autocreate templates
" syntax keyword arcHttpKeyword method src
" syntax keyword arcHttpVerb get post patch put delete options head any
" syntax keyword arcSandboxKeyword livereload ports useAWS
" syntax keyword arcScheduledKeyword cron rate
" syntax keyword arcStaticKeyword compression fingerprint folder ignore prefix prune spa
" syntax keyword arcTableKeyword encrypt name PointInTimeRecovery projection
"
" " Keywords that are ignored in kebab-case
" syntax match arcAwsKeyword "\v<bucket>(-)@!&(-.*)@<!bucket"
" syntax match arcAwsKeyword "\v<layers>(-)@!&(-.*)@<!layers"
" syntax match arcAwsKeyword "\v<policies>(-)@!&(-.*)@<!policies"
" syntax match arcAwsKeyword "\v<profile>(-)@!&(-.*)@<!profile"
" syntax match arcProxyKeyword "\v<testing>(-)@!&(-.*)@<!testing"
" syntax match arcProxyKeyword "\v<staging>(-)@!&(-.*)@<!staging"
" syntax match arcProxyKeyword "\v<production>(-)@!&(-.*)@<!production"
" syntax match arcTableKeyword "\v<table>(-)@!&(-.*)@<!table"
"
" " Miscallaneous Keywords
" syntax match arcAwsKeyword "\v<base-runtime>"
" syntax match arcEnvVariable "\v[A-Z_]* &[A-Z]@<![A-Z_]*&[a-z]@<![A-Z_]*"
" " syntax match arcScheduledKeyword "\v(/\(\)/\)"
" syntax match arcStaticKeyword "\v<no-hydrate>"
"
" " Special keywords
" syntax match arcTableSpecial "*String"
" syntax match arcTableSpecial "*\*String"
" syntax match arcTableSpecial "*Number"
" syntax match arcTableSpecial "*\*Number"
"
" syntax match arcComment "\v#.*$"
"
" syntax match arcNumber "\v(\d* )"
" syntax match arcNumber "\v( \d*)"
"
" syntax match arcPragma  "\v\@<app>"
" syntax match arcPragma  "\v\@<arc>"
" syntax match arcPragma  "\v\@<aws>"
" syntax match arcPragma  "\v\@<create>"
" syntax match arcPragma  "\v\@<env>"
" syntax match arcPragma  "\v\@<events>"
" syntax match arcPragma  "\v\@<http>"
" syntax match arcPragma  "\v\@<macros>"
" syntax match arcPragma  "\v\@<plugins>"
" syntax match arcPragma  "\v\@<proxy>"
" syntax match arcPragma  "\v\@<queues>"
" syntax match arcPragma  "\v\@<sandbox>"
" syntax match arcPragma  "\v\@<sandbox-startup>"
" syntax match arcPragma  "\v\@<scheduled>"
" syntax match arcPragma  "\v\@<shared>"
" syntax match arcPragma  "\v\@<static>"
" syntax match arcPragma  "\v\@<tables>"
" syntax match arcPragma  "\v\@<tables-indexes>"
" syntax match arcPragma  "\v\@<tables-streams>"
" syntax match arcPragma  "\v\@<views>"
" syntax match arcPragma  "\v\@<ws>"

highlight link arcKeyword Keyword
highlight link arcArcKeyword Keyword
highlight link arcAwsKeyword Keyword
highlight link arcAwsSpecial SpecialChar
highlight link arcCreateKeyword Keyword
highlight link arcBoolean Boolean
highlight link arcComment Comment
highlight link arcEnvVariable Constant
highlight link arcHttpVerb String
highlight link arcNumber Number
highlight link arcPragma Include
highlight link arcHttpKeyword Keyword
highlight link arcSandboxKeyword Keyword
highlight link arcScheduledKeyword Function
highlight link arcStaticKeyword Keyword
highlight link arcProxyKeyword Keyword
highlight link arcTableKeyword Keyword
highlight link arcTableSpecial Type

let b:current_syntax = "arc"
