if exists("b:current_syntax")
  finish
endif

syntax keyword arcBoolean true false
syntax keyword arcHttpKeyword method src
syntax keyword arcHttpVerb get post patch put delete options head any
syntax keyword arcAwsKeyword apigateway architecture region runtime storage
syntax keyword arcScheduledKeyword cron rate
syntax keyword arcProxyKeyword testing staging production
syntax keyword arcStaticKeyword compression fingerprint folder ignore prefix prune spa

syntax match arcComment "\v#.*$"
syntax match arcAwsKeyword "\v<base-runtime>"
syntax match arcPragma "@.*$"
" syntax match arcPragma  "@\%(\h\|[^\x00-\x7F]\)\%(\w\|[^\x00-\x7F]\)*"
" syntax match arcPragma  "@\%(\h\|[^\x00-\x7F]\)\%(\w\|[^\x00-\x7F]\)*"
" syntax match arcNumber "\%(\%(\w\|[^\x00-\x7F]\|[]})\"']\s*\)\@<!-\)\=\<\%(0[dD]\)\=\%(0\|[1-9]\d*\%(_\d\+\)*\)r\=i\=\>"  display
syntax match arcNumber "\v%(%(w|[^x00-x7F]|[]})"']s*)@<!-)=<%(0[dD])=%(0|[1-9]d*%(_d+)*)r=i=>" display

" syntax match arcAwsKeyword "\v(-.*)@<!policies"	" "policies" which is not after "-"
" syntax match arcAwsKeyword "\v<policies>(-)@!"		" any "policies" not followed by "-"
"
" Ignore these keywords in any kebab-case word
syntax match arcAwsKeyword "\v<bucket>(-)@!&(-.*)@<!bucket"
syntax match arcAwsKeyword "\v<layers>(-)@!&(-.*)@<!layers"
syntax match arcAwsKeyword "\v<policies>(-)@!&(-.*)@<!policies"
syntax match arcAwsKeyword "\v<profile>(-)@!&(-.*)@<!profile"

highlight link arcBoolean Boolean
highlight link arcComment Comment
highlight link arcHttpVerb String
highlight link arcNumber Number
highlight link arcPragma Include
highlight link arcHttpKeyword SpecialChar
highlight link arcAwsKeyword Keyword
highlight link arcScheduledKeyword SpecialChar
highlight link arcStaticKeyword Keyword
highlight link arcProxyKeyword Keyword

let b:current_syntax = "arc"

" syntax match arcBoolean "\%#=1\<\%(true\|false\)\>[?!]\@!"
" syntax match arcComment "\v#.*$"
" syntax match arcHttpKeyword "\v<method>"
" syntax match arcHttpKeyword "\v<src>"
" syntax match arcHttpVerb "\v<get>"
" syntax match arcHttpVerb "\v<post>"
" syntax match arcHttpVerb "\v<patch>"
" syntax match arcHttpVerb "\v<put>"
" syntax match arcHttpVerb "\v<delete>"
" syntax match arcHttpVerb "\v<options>"
" syntax match arcHttpVerb "\v<head>"
" syntax match arcHttpVerb "\v<any>"
" syntax match arcKeyword "\v<apigateway>"
" syntax match arcKeyword "\v<architecture>"
" syntax match arcKeyword "\v<base-runtime>"
" syntax match arcKeyword "\v<bucket>"
" syntax match arcKeyword "\v<layers>"
" syntax match arcKeyword "\v<policies>"
" syntax match arcKeyword "\v<production>"
" syntax match arcKeyword "\v<profile>"
" syntax match arcKeyword "\v<region>"
" syntax match arcKeyword "\v<runtime>"
" syntax match arcKeyword "\v<staging>"
" syntax match arcKeyword "\v<storage>"
" syntax match arcKeyword "\v<testing>"
" syntax match arcPragma  "@\%(\h\|[^\x00-\x7F]\)\%(\w\|[^\x00-\x7F]\)*"
" syntax match arcScheduledKeyword "\v<rate>"
" syntax match arcScheduledKeyword "\v<cron>"
" syntax match arcStaticKeyword "\v<compression>"
" syntax match arcStaticKeyword "\v<fingerprint>"
" syntax match arcStaticKeyword "\v<folder>"
" syntax match arcStaticKeyword "\v<ignore>"
" syntax match arcStaticKeyword "\v<prune>"
" syntax match arcStaticKeyword "\v<prefix>"
" syntax match arcStaticKeyword "\v<spa>"
