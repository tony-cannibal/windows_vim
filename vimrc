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
set hidden


" Visual Aspect
set background=dark
colorscheme gruvbox
let g:airline#extensions#tabline#enabled = 1


" Key Bindings
nnoremap <SPACE> <Nop>
let mapleader=" "

nnoremap <silent> <leader>w :w<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>c :bd<CR>
tnoremap <silent> <leader>c :bd<CR>

nnoremap <leader>e :Explore<CR>
nnoremap <leader>v :Vexplore<CR>
nnoremap <leader>t :term<CR>


nnoremap <C-S-l> :vertical resize +5<CR>
nnoremap <C-S-h> :vertical resize -5<CR>

" Move Between Splits
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

nnoremap <silent> <S-h> :bp<CR>
nnoremap <silent> <S-l> :bn<CR>

nnoremap <silent> <S-Left> :tabprevious<CR>
nnoremap <silent> <S-Right> :tabnext<CR>

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
