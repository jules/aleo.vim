# aleo.vim

## Description

This is a Vim plugin that provides [Aleo][a] file detection, syntax highlighting and basic formatting.
It requires Vim 8 or higher for full functionality. Some things may not work on earlier versions. 

## Installation

For activating the full functionality, this plugin requires either the plugin
manager or the `.vimrc` to have the following:

```vim
syntax enable
filetype plugin indent on
```

Most plugin managers don't do this automatically, so these statements are
usually added by users in their `vimrc` _right after_ the plugin manager load
section.

### [Vim8 packages][vim8pack]

```sh
git clone https://github.com/julesdesmit/aleo.vim ~/.vim/pack/plugins/start/aleo.vim
```

### [Vundle][v]

```vim
Plugin 'julesdesmit/aleo.vim'
```

### [Pathogen][p]

```sh
git clone --depth=1 https://github.com/julesdesmit/aleo.vim.git ~/.vim/bundle/aleo.vim
```

### [vim-plug][vp]

```vim
Plug 'julesdesmit/aleo.vim'
```

### [dein.vim][d]

```vim
call dein#add('julesdesmit/aleo.vim')
```

### [NeoBundle][nb]

```vim
NeoBundle 'julesdesmit/aleo.vim'
```

## License

aleo.vim is distributed under the terms of the MIT license. See LICENSE for details.

[a]: https://www.aleo.org
[v]: https://github.com/gmarik/vundle
[p]: https://github.com/tpope/vim-pathogen
[nb]: https://github.com/Shougo/neobundle.vim
[vp]: https://github.com/junegunn/vim-plug
[d]: https://github.com/Shougo/dein.vim
[vim8pack]: http://vimhelp.appspot.com/repeat.txt.html#packages

