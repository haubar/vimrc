 "----------------------------
 "All Required
 if has('vim_starting')
   set nocompatible               " Be iMproved
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 NeoBundleFetch 'Shougo/neobundle.vim'

"----------------------------
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'Shougo/vimproc'

"------------------------------------

"Base Setting
set nobackup
set nocompatible
set encoding=utf-8


"View Setting
colorscheme default
set cursorline
syntax on
set nu
set ruler
set mouse=a

set backspace=2
set tabstop=2
set shiftwidth=2
set ai
set smarttab
set si
set expandtab

"------------------------------------


"判定目前系統類型, 決定載入的檔案方式
if(has("win32") || has("win95") || has("win64") || has("win16"))
  source $vim/vimrcs/tool-vimrc
  source $vim/vimrcs/map-vimrc
elseif (has("unix") || has("mac"))
  source ~/.vim/vimrcs/tool-vimrc
  source ~/.vim/vimrcs/map-vimrc
endif


 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
