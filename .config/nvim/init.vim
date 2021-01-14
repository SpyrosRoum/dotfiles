call plug#begin(system('echo -n "$HOME/.config/nvim/plugged"'))
    Plug 'scrooloose/nerdtree'
    Plug 'itchyny/lightline.vim'
    Plug 'ap/vim-css-color'
    Plug 'ap/vim-buftabline'
    Plug 'doums/coBra'

    Plug 'sickill/vim-monokai'
    Plug 'dracula/vim',{'as':'dracula'}


    Plug 'dense-analysis/ale'

    Plug 'ryanoasis/vim-devicons'
call plug#end()

colorscheme dracula

set nocompatible              " be iMproved, required 
filetype off                  " required

set encoding=utf-8
set t_Co=256
set nu
syntax enable
set hidden
set shell=/bin/zsh
set ruler
set ttyfast

set ignorecase

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent

set cursorline
set showmatch
set scrolloff=20

set clipboard=unnamed
set mouse=a

set exrc
set secure

set incsearch
set hlsearch


nmap <F9> :bprev!<CR>
nmap <F10> :bnext!<CR>
nmap <C-s> :w<CR>

nmap <F2> :ALEToggle<CR>

nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>
nnoremap <C-h> <C-W><C-h>



" ----
" NERRTREE "
" ----
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']
let NERDTreeWinSize=40
nmap <C-n> :NERDTreeToggle<CR>

" ----
" ALE
" ----
let g:ale_set_highlights = 0
