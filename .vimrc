
 if has('vim_starting')
   set nocompatible               " Be iMproved
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

"Scheme
NeoBundle 'tomasr/molokai'

call neobundle#end()

if(has("win32") || has("win95") || has("win64") || has("win16"))
  source $vim/vimrcs/tool-vimrc
  source $vim/vimrcs/map-vimrc
elseif (has("unix") || has("macunix"))
  source ~/.vim/vimrcs/tool-vimrc
  source ~/.vim/vimrcs/map-vimrc
endif

"Base Setting
set nobackup
set nocompatible
set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8

"View Setting
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
set incsearch
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

set guifont=Monaco:h14  " 設定字體樣式及大小。

colorscheme molokai

let g:molokai_original = 1

set statusline=laststatus
set laststatus=2
set guifont=Inconsolata\ for\ Powerline:h14


" 存檔時移除多的空白區塊
autocmd BufWritePre * :%s/\s\+$//e

"------------------------------------




filetype plugin indent on

NeoBundleCheck

"------------------------------------