" The following are selected sections from 
" an example for a vimrc file taken from:
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2016 Mar 25


" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif


" always set autoindenting on
set autoindent




" Alex's personal additions 
set number
set shiftwidth=4
set expandtab
autocmd FileType make setlocal noexpandtab
set backupdir^=~/.backup
set dir^=~/.backup//
set ignorecase
