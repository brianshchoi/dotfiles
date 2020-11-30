set nocompatible              

syntax enable

set number
set tabstop=2
set expandtab
set autoindent

filetype off

" Plugins
call plug#begin('~/vim/plugged')
Plug 'fatih/vim-go'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'jparise/vim-graphql'
call plug#end()

" fzf
map <space> <leader>
nnoremap <leader>p :Files<space><cr>
set rtp+=/usr/local/opt/fzf
let g:fzf_layout = { 'window': { 'width': 0.92, 'height': 0.92 } }

map <C-n> :NERDTreeToggle<CR>

set ttimeoutlen=100
