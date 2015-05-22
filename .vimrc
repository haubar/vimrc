 "----------------------------
 "All Required
 if has('vim_starting')
   set nocompatible               " Be iMproved
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 NeoBundleFetch 'Shougo/neobundle.vim'

 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!
 NeoBundle 'Shougo/vimproc'

"Language Syntax
NeoBundle 'StanAngeloff/php.vim'
NeoBundle 'arnaud-lb/vim-php-namespace'
NeoBundle 'elzr/vim-json'

"Complection
NeoBundle 'Shougo/neocomplcache'

"Snippet
NeoBundle 'Shougo/neosnippet'

"Tool Package
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'vasconcelloslf/vim-foldfocus'
NeoBundle 'ScrollColors'
NeoBundle 'bling/vim-airline'



"--------------plug setting----------------------"

"php.vim
let g:php_syntax_extensions_enabled

"vim-json
let g:indentLine_noConcealCursor=""

"neocomplcache.vim
let g:neocomplcache_enable_at_startup = 1

"neosnippet.vim
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet'

"vim-indent-guides
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4


"vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


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
set cmdheight=5
set backspace=2
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab



set guifont=Consolas:h14  " 設定字體樣式及大小。

colorscheme torte

set statusline=%{GitBranchInfoString()}%<%f\ %m%=\ %h%r\ %-19([%p%%]\ %3l,%02c%03V%)%y   "設定狀態列
highlight StatusLine term=bold,reverse cterm=bold,reverse    "設定狀態列

"------------------------------------



" 存檔時移除多的空白區塊
autocmd BufWritePre * :%s/\s\+$//e

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

"php.vim highlight setting
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END