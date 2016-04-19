 "----------------------------
 "All Required
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

"----------------scheme------------------------
let g:molokai_original = 1


"Base Setting
set nobackup
set nocompatible
set encoding=utf-8

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

set statusline=%{GitBranchInfoString()}%<%f\ %m%=\ %h%r\ %-19([%p%%]\ %3l,%02c%03V%)%y   "設定狀態列
highlight StatusLine term=bold,reverse cterm=bold,reverse    "設定狀態列

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

" 存檔時移除多的空白區塊
autocmd BufWritePre * :%s/\s\+$//e

"------------------------------------

if(has("win32") || has("win95") || has("win64") || has("win16"))
  source $vim/vimrcs/tool-vimrc
  source $vim/vimrcs/map-vimrc
elseif (has("unix") || has("macunix"))
  source ~/.vim/vimrcs/tool-vimrc
  source ~/.vim/vimrcs/map-vimrc
endif


 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck


"php.vim highlight setting
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END