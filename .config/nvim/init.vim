let mapleader="\<space>"

"//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"/// VIM_PLUG BEGIN
"//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
call plug#begin()

" Language Server Protocal
" Plug 'neovim/nvim-lspconfig'

" fzf
" Plug 'junegunn/fzf.vim'

" rust vim
" Plug 'rust-lang/rust.vim'

" seoul256 color scheme
Plug 'junegunn/seoul256.vim'

" paper color scheme
Plug 'NLKNguyen/papercolor-theme'

call plug#end()


"//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"/// VIM CONFIG
"//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
syntax on

" BUFFER
set hidden

" STATUS LINE
set laststatus=2

" TEXT EDITOR
set encoding=utf-8
set fileencoding=utf-8
set backspace=2
set title
set nu              " number
"set rnu            " relativenumber
set ru              " ruler
set ts=4            " tabstop
set sw=4            " shiftwidth
set et              " expandtab
set sc              " showcmd
set hls             " hlsearch
set is              " incsearch

" DISABLE AUTO COMMENT
au FileType * set fo-=r fo-=c fo-=o     " formatoptions

" FOLD
"set foldmethod=indent
"set foldlevel=99

" Flexible Cursor
nnoremap j gj
nnoremap k gk

" WINDOW NAVIATION
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Switch Between Previous Buffer
nnoremap <leader><leader> <C-^>

nnoremap <leader>n :set nu!<CR>
nnoremap <leader>r :set rnu!<CR>

"nnoremap <leader>[ :bprevious<CR>
"nnoremap <leader>] :bnext<CR>
"nnoremap <leader>q :bd<CR>
"nnoremap <leader>wq :w<CR> :bd<CR>

" PANE SPLIT (MORE NATURAL WAY)
set splitbelow
set splitright

" SWAP FILES & BACKUP
set nobackup
" set directory=

" TIMEOUT (Shift o delay)
set timeout timeoutlen=3000 ttimeoutlen=100


"//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
"/// PLUG-IN CONFIG BEGIN
"//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
" fzf
set rtp+=/opt/homebrew/opt/fzf
nnoremap <leader>, :Files<CR>
nnoremap <leader>. :Buffers<CR>

" seoul256 color scheme
let g:seoul256_background = 255
color seoul256

" paper color scheme
" color PaperColor
