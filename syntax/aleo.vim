" Language:     Aleo instructions
" Description:  Vim syntax file for Aleo instructions
" Maintainer:   Jules de Smit <jules@aleo.org>
" Last Change:  September 20, 2022
" For bugs, patches and license go to https://github.com/julesdesmit/aleo.vim

" Match TODO comments
syn keyword aleoTodos TODO XXX FIXME NOTE NB SAFETY

" Match language specific keywords
syn keyword aleoKeywords
      \ as
      \ into
      \ finalize
      \ abs
      \ add
      \ and
      \ assert
      \ eq
      \ neq
      \ cast
      \ commit
      \ bhp256
      \ bhp512
      \ bhp768
      \ bhp1024
      \ ped64
      \ ped128
      \ div
      \ double
      \ gt
      \ gte
      \ hash
      \ psd2
      \ psd4
      \ psd8
      \ inv
      \ input
      \ is
      \ lt
      \ lte
      \ key
      \ mod
      \ mul
      \ nand
      \ neg
      \ nor
      \ not
      \ or
      \ output
      \ pow
      \ rem
      \ shl
      \ shr
      \ sqrt
      \ sub
      \ square
      \ ternary
      \ value
      \ xor
      \ w

syn keyword aleoStructure record mapping interface program function call closure nextgroup=aleoFuncName skipwhite skipempty
syn keyword aleoType key value i8 i16 i32 i64 i128 u8 u16 u32 u64 u128 field group address scalar boolean
syn keyword aleoVisibility constant public private aleo increment decrement
syn keyword aleoImports import

syn match aleoFuncName "\%(r#\)\=\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*" display contained

syn match aleoDecNumber display "\<[0-9][0-9_]*\%(field\|group\|scalar\|boolean\|[iu]\%(8\|16\|32\|64\|128\)\)\="
syn match aleoHexNumber display "\<0x[a-fA-F0-9_]\+\%(field\|group\|address\|scalar\|[iu]\%(8\|16\|32\|64\|128\)\)\="
syn match aleoRegister display "\<r[0-9][0-9_]\="

syn keyword aleoBoolean true false

syn region aleoCommentLine start="//" end="$"
syn region aleoCommentBlock start="/\*" end="\*/"

" Set highlights
hi def link aleoTodos Todo
hi def link aleoCommentLine Comment
hi def link aleoCommentBlock Comment

hi def link aleoString String
hi def link aleoDecNumber Number
hi def link aleoHexNumber Number
hi def link aleoRegister Number
hi def link aleoBoolean Boolean

hi def link aleoKeywords Keyword
hi def link aleoStructure Structure
hi def link aleoType Number
hi def link aleoImports Include
hi def link aleoVisibility PreProc
hi def link aleoFuncName Function
