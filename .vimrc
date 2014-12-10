set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'pangloss/vim-javascript'
Plugin 'davidhalter/jedi-vim'
Plugin 'fatih/vim-go'

call vundle#end()            " required
filetype plugin indent on    " required

set background=dark
"colorscheme solarized

"------  Visual Options  ------"
"
syntax enable                       " enable syntax highlighting
"set number                          " enable line numbers
set nowrap                          " disable word wrap
set vb                              " visual bell
set showmatch                       " show matching bracket
set lazyredraw                      " Don't actively redraw
set ttyfast                         " Force vim into fast mode
set laststatus=2                    " always use a status line
set t_Co=256

"------  Behavior  ------"
"
set backspace=indent,eol,start      " normal backspace behavior
set history=1000                    " 1000 item history
set undolevels=1000                 " 1000 item undo buffer
set title                           " update the terminals title
set tabstop=4                       " tab = 4 spaces
set shiftwidth=4                    " indent to 4 spaces
set softtabstop=4                   " Number of spaces that a <Tab> counts for
set expandtab                       " use spaces instead of tabs
set autoindent                      " auto indent
set smartindent                     " use vim smart indenting
set showcmd
set mouse=
set noeb vb t_vb=

filetype indent on
filetype plugin on

set encoding=utf-8

"------  Searching  ------"
"
set incsearch                       " Search while typing
set ignorecase                      " Case insensitive searching
set smartcase                       " lowercase = case insensitive, any uppercase = case sensitive
set hlsearch                        " highlight all search results

"------  Text Width Stuff  ------"
"
"set tw=80
"set fo-=c
"set fo-=t
"set modeline
"set modelines=3
"set sr
"set whichwrap+=<,>,h,l,[,]

"------  Vim Airline ------"
let g:airline_powerline_fonts = 1

"------ NERDTree -----"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>
