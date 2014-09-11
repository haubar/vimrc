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
 NeoBundle 'Shougo/vimproc'




NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'StanAngeloff/php.vim'
NeoBundle 'arnaud-lb/vim-php-namespace'
NeoBundle 'elzr/vim-json'

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'




















 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
