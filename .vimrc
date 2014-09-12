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
"----------------------------
"NeoBundle 'Shougo/vimproc'




"Language Syntax
NeoBundle 'StanAngeloff/php.vim'
NeoBundle 'arnaud-lb/vim-php-namespace'
NeoBundle 'elzr/vim-json'


"Complection
NeoBundle 'Shougo/neocomplcache'
"Snippet
NeoBundle 'Shougo/neosnippet'


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


NeoBundle 'scrooloose/nerdtree'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'vasconcelloslf/vim-foldfocus'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nnoremap <F1> :NERDTreeToggle<CR>

let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

let g:indent_guides_enable_on_vim_startup = 0

hi IndentGuidesOdd  guibg=red   ctermbg=236
hi IndentGuidesEven guibg=green ctermbg=236

let g:indentLine_color_term = 239
let g:indentLine_char = '｜'

nnoremap <F2> :CurrentLineWhitespaceOn<CR>

nmap <F3> :call FoldFocus('e')<CR>
nmap <Leader><F3> :call FoldFocus('vnew')<CR>

"--------------------------------------------------

NeoBundle 'ScrollColors'

" keybinding: ,cn - Scroll next colorscheme
nmap <C-n> :NEXTCOLOR<CR>

" keybinding: ,cp - Scroll previous colorscheme
nmap <C-p> :PREVCOLOR<CR>

"---------------------------------------------------


 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
