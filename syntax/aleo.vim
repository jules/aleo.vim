" Language:     Aleo instructions
" Description:  Vim syntax file for Aleo instructions
" Maintainer:   Jules de Smit <jules@aleo.org>
" Last Change:  September 19, 2022
" For bugs, patches and license go to https://github.com/julesdesmit/aleo.vim

" Match TODO comments
syn keyword aleoTodos TODO XXX FIXME NOTE

" Match language specific keywords
syn keyword aleoKeywords
      \ as
      \ into
      \ finalize
      \ function
      \ closure
      \ abs.w
      \ abs
      \ add.w
      \ add
      \ and
      \ assert.eq
      \ assert.neq
      \ call
      \ cast
      \ commit.bhp256
      \ commit.bhp512
      \ commit.bhp768
      \ commit.bhp1024
      \ commit.ped64
      \ commit.ped128
      \ div.w
      \ div
      \ double
      \ gt
      \ gte
      \ hash.bhp256
      \ hash.bhp512
      \ hash.bhp768
      \ hash.bhp1024
      \ hash.ped64
      \ hash.ped128
      \ hash.psd2
      \ hash.psd4
      \ hash.psd8
      \ inv
      \ input
      \ is.eq
      \ is.neq
      \ lt
      \ lte
      \ key
      \ mod
      \ mul.w
      \ mul
      \ nand
      \ neg
      \ nor
      \ not
      \ or
      \ output
      \ pow.w
      \ pow
      \ rem.w
      \ rem
      \ shl.w
      \ shl
      \ shr.w
      \ shr
      \ sqrt
      \ sub.w
      \ sub
      \ square
      \ ternary
      \ value
      \ xor

syn keyword aleoStructure record mapping interface program
syn keyword aleoType key value
syn keyword aleoVisibility constant public private aleo increment decrement
syn keyword aleoImports import

syn match aleoNumber "\v<\d+>"
syn match aleoNumber "\v<\d+\.\d+>"
syn match aleoNumber "\v<\d*\.?\d+([Ee]-?)?\d+>"
syn match aleoNumber "\v<0x\x+([Pp]-?)?\x+>"
syn match aleoNumber "\v<0b[01]+>"
syn match aleoNumber "\v<0o\o+>"

syn keyword aleoBoolean true false

syn region aleoCommentLine start="//" end="$"
syn region aleoCommentBlock start="/\*" end="\*/"

" Set highlights
hi def link aleoTodos Todo
hi def link aleoCommentLine Comment
hi def link aleoCommentBlock Comment

hi def link aleoString String
hi def link aleoNumber Number
hi def link aleoBoolean Boolean

hi def link aleoKeywords Keyword
hi def link aleoStructure Structure
hi def link aleoType Type
hi def link aleoImports Include
