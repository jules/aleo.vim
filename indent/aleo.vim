" Language:     Aleo instructions
" Description:  Vim syntax file for Aleo instructions
" Maintainer:   Jules de Smit <jules@aleo.org>
" Last Change:  September 19, 2022
" For bugs, patches and license go to https://github.com/julesdesmit/aleo.vim

setlocal indentexpr=AleoIndent()

function! AleoIndent()
  let line = getline(v:lnum)
  let previousNum = prevnonblank(v:lnum - 1)
  let previous = getline(previousNum)

  if previous =~ ":"
    return indent(previousNum) + &tabstop
  endif
endfunction
