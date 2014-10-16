if !1 | finish | endif

if has('vim_starting')
    set nocompatible " Be iMproved
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

 NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'tpope/vim-sensible'
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
NeoBundle 'StanAngeloff/php.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'bling/vim-airline'

call neobundle#end()

NeoBundleCheck

syntax enable

set background=light
colorscheme solarized

" Files and backups
set nobackup
set nowb
set noswapfile

" Tabs
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent

" Linebreak on 500 characters
set lbr
set tw=500

set pastetoggle=<F2>
set wrap "Wrap lines

" ui
set cmdheight=2
set smartcase
set hlsearch
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

" PHP Overrides
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

" Airline
let g:airline_theme='solarized'
