 if has('vim_starting')
   set nocompatible
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'tomasr/molokai'
colorscheme molokai

call neobundle#end()

set nobackup
set nocompatible
set encoding=utf-8

syntax on
set ffs=unix,dos,mac
set cursorline
set nu
set ru
set ic
set ai
set si
set wrap
set ruler
set paste
set mouse=a
set hlsearch
set smartindent
set history=50
set showcmd
set showmatch
set cmdheight=2
set backspace=2
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

set guifont=Monaco:h14

set statusline=%{GitBranchInfoString()}%<%f\ %m%=\ %h%r\ %-19([%p%%]\ %3l,%02c%03V%)%y
highlight StatusLine term=bold,reverse cterm=bold,reverse

autocmd BufWritePre * :%s/\s\+$//e

filetype plugin indent on

if(has("win32") || has("win95") || has("win64") || has("win16"))
  source $vim/vimrcs/tool-vimrc
  source $vim/vimrcs/map-vimrc
elseif (has("unix") || has("macunix"))
  source ~/.vim/vimrcs/tool-vimrc
  source ~/.vim/vimrcs/map-vimrc
endif