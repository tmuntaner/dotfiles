if !1 | finish | endif

if has('vim_starting')
    set nocompatible " Be iMproved
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'anyakichi/vim-surround'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'ervandew/supertab'
NeoBundle 'fatih/vim-go'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'godlygeek/tabular'
NeoBundle 'groenewege/vim-less'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'nosami/Omnisharp'
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-haml'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'vim-ruby/vim-ruby'

call neobundle#end()

NeoBundleCheck

syntax enable

" Color Scheme
set t_CO=256
set term=screen-256color

set background=dark
colorscheme solarized

" Leader for DE Keyboard
let mapleader = ','

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
set nofoldenable

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

" Strip Whitespace on Save
autocmd BufWritePre * StripWhitespace

" Airline
let g:airline_theme='solarized'

" Ctrl-P ignore
set wildignore+=*/tmp/*,*/bin/*,*/out/*,*/build/*,*.so,*.swp,*.zip,*.meta

" Reformat Page
map <F7> mzgg=G`z<CR>
