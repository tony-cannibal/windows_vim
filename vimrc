" Regular Options
syntax on
set encoding=utf-8
set number
set nohlsearch
set nocompatible
set nowrap
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set termguicolors
set splitright
set splitbelow
set noswapfile
set hidden
set termwinsize=10x0
set mouse=a
set nobackup
set nowritebackup
set signcolumn=yes
set novisualbell
set list
set scrolloff=8

call plug#begin()

    Plug 'gruvbox-community/gruvbox'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'sheerun/vim-polyglot'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'voldikss/vim-floaterm'
    Plug 'tpope/vim-commentary'
    Plug 'jiangmiao/auto-pairs'
    Plug 'wfxr/minimap.vim'
    Plug 'Yggdroot/indentLine'
    Plug 'dusans/vim-hardmode'

call plug#end()


" Visual Aspect
set background=dark
colorscheme gruvbox
let g:airline#extensions#tabline#enabled = 1


" Mini Map Config
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1

autocmd ColorScheme *
        \ highlight minimapCursor            ctermbg=59  ctermfg=228 guibg=#5F5F5F guifg=#FFFF87 |
        \ highlight minimapRange             ctermbg=242 ctermfg=228 guibg=#4F4F4F guifg=#FFFF87

" Indent line config
let g:indentLine_char = '|'
let g:indentLine_first_char = '|'
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" let g:indentLine_leadingSpaceChar = '•'
let g:indentLine_leadingSpaceChar = '-'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_leadingSpaceEnabled = 1


" Key Bindings
nnoremap <SPACE> <Nop>
let mapleader=" "

nnoremap <silent> <leader>w :w<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>c :bd<CR>
tnoremap <silent> <leader>c :bd<CR>

nnoremap <leader>e :Ex<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>t :term<CR>


nnoremap <C-S-l> :vertical resize +5<CR>
nnoremap <C-S-h> :vertical resize -5<CR>
nnoremap <C-S-j> :resize +5<CR>
nnoremap <C-S-k> :resize -5<CR>

" Move Between Splits
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

tnoremap <C-j> <C-W>j
tnoremap <C-k> <C-W>k
tnoremap <C-h> <C-W>h
tnoremap <C-l> <C-W>l

nnoremap <silent> <S-h> :bp<CR>
nnoremap <silent> <S-l> :bn<CR>

nnoremap <silent> <S-Left> :tabprevious<CR>
nnoremap <silent> <S-Right> :tabnext<CR>

xnoremap <silent> J :move '>+1<CR>gv-gv
xnoremap <silent> K :move '<-2<CR>gv-gv

xnoremap <silent> <A-j> :move '>+1<CR>gv-gv
xnoremap <silent> <A-K> :move '<-2<CR>gv-gv

" Coc Key Maps
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Floaterm Keymaps
" nnoremap   <silent>   <F12>    :FloatermNew<CR>
" tnoremap   <silent>   <F12>    <C-\><C-n>:FloatermNew<CR>
" nnoremap   <silent>   <F8>    :FloatermPrev<CR>
" tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
" nnoremap   <silent>   <F9>    :FloatermNext<CR>
" tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F7>   :FloatermToggle<CR>
tnoremap   <silent>   <F7>   <C-\><C-n>:FloatermToggle<CR>
nnoremap   <F12>    :FloatermKill<CR>

nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>

nnoremap <Right> :echo "No Right for you!"<CR>
vnoremap <Right> :<C-u>echo "No Right for you!"<CR>
inoremap <Right> <C-o>:echo "No Right for you!"<CR>

nnoremap <Up> :echo "No Up for you!"<CR>
vnoremap <Up> :<C-u>echo "No Up for you!"<CR>
inoremap <Up> <C-o>:echo "No Up for you!"<CR>

nnoremap <Down> :echo "No Down for you!"<CR>
vnoremap <Down> :<C-u>echo "No Down for you!"<CR>
inoremap <Down> <C-o>:echo "No Down for you!"<CR>
