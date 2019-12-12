let g:python_highlight_all = 1
let g:polyglot_disabled = ['vue']

autocmd FileType scss set iskeyword+=-

highlight link scssSelectorName String


"======== Plug POLYGLOT typescript ========="

hi link typescriptParens netrwHide
hi link typescriptBraces String
hi link typescriptVariable SpellLocal
hi link typescriptIdentifier Type

"hi link typescriptImport DraculaPurpleItalic
"hi link typescriptBinaryOp DraculaPinkItalic
"hi link typescriptAssign DraculaOrange
"hi link typescriptClassHeritage DraculaOrangeBold
"hi link typescriptClassExtends DraculaPinkItalic

hi link typescriptInterfaceName SpellLocal
hi link typescriptClassName SpellLocal
hi link typescriptAbstract airline_tabmod
