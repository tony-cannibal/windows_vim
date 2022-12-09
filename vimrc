" Plugin Manager
execute pathogen#infect()

" Regular Options
syntax on
set encoding=utf-8
set number
set nohlsearch
set nocompatible
set nowrap
set tabstop=4 softtabstop=4
set expandtab     
set termguicolors
set splitright
set splitbelow
set noswapfile


" Visual Aspect
set background=dark
colorscheme gruvbox
let g:airline#extensions#tabline#enabled = 1


" Key Bindings
nnoremap <SPACE> <Nop>
let mapleader=" "

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
