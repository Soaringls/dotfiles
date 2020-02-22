" By yongcong.wang @ 03/12/2019
" *Comment

" *Constant
" String
" Character
" Number
" Boolean
" Float

" *Identifier
" Function
syntax match   cpp_custom_scope "::"
syntax match   cpp_custom_class "\w\+\s*::" contains=cpp_custom_scope
syntax match   cpp_custom_paren "(" contains=cParen contains=cCppParen
syntax match   cpp_custom_functions "\w\+\s*(\@="

" *Statement
" Conditional
" Repeat
" Label
" Operator
" Keyword
" Exception

" *PreProc
" Include
" Define
" Macro
" PreCondit

" *Type
" StorageClass
" Structure
" Typedef

" *Special
" SpecialChar
" Tag
" Delimiter
" SpecialComment
" Debug

" *Underlined
" *Ignore
" *Error
" *Todo

" define hilight
" hi def link cpp_custom_class Special
hi def link cpp_custom_class Type
hi def link cpp_custom_functions Function
