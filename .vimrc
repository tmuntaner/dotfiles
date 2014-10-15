if !1 | finish | endif

if has('vim_starting')
    set nocompatible " Be iMproved

    " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'mileszs/ack.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'wycats/nerdtree'
NeoBundle 'ddollar/nerdcommenter'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'anyakichi/vim-surround'
NeoBundle 'kien/ctrlp.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

syntax enable
set background=light
colors github
set history=700
filetype plugin on
filetype indent on
set autoread

" Files and backups
set nobackup
set nowb
set noswapfile

" Tabs
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set pastetoggle=<F2>
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" ui
set wildmenu
set ruler
set cmdheight=2
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set number

" Nerdtree
" autocmd vimenter * NERDTree

" Fuzzy Finder
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Splitting
noremap <C-W>v :Vsplit
noremap <C-W>s :split
" nmap <silent> <A-Left> :wincmd h<CR>
" nmap <silent> <A-Right> :wincmd l<CR>

" Tabularize
let mapleader=','
if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
endif
