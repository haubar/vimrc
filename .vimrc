
 if has('vim_starting')
   set nocompatible               " Be iMproved
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc.vim', {
 \ 'build' : {
 \    'windows' : 'tools\\update-dll-mingw',
 \    'cygwin' : 'make -f make_cygwin.mak',
 \    'mac' : 'make -f make_mac.mak',
 \    'linux' : 'make',
 \    'unix' : 'gmake',
 \   }
 \ }



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
"set nocompatible
set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8
set fenc=chinese
set langmenu=zh_TW.UTF-8
language messages zh_TW.utf-8

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
set shortmess=filnxtToO


colorscheme molokai
let g:molokai_original = 1

set guifont=Monaco:h14  " 設定字體樣式及大小。
set statusline=laststatus
set laststatus=2


" 存檔時移除多的空白區塊
set statusline=laststatus
set laststatus=2


" 存檔時移除多的空白區塊
autocmd BufWritePre * :%s/\s\+$//e

"------------------------------------




filetype plugin indent on

NeoBundleCheck

"------------------------------------
