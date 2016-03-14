set nocompatible
set t_Co=256
syntax on
set background=dark " dark | light "
set backspace=indent,eol,start
set history=50
set ruler
set showcmd
set incsearch
set mouse=
set autoindent
set smartindent
set expandtab
set ts=4
set sw=4
set vb t_vb=
set showmatch
filetype plugin indent on
execute pathogen#infect()
colorscheme solarized

let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
