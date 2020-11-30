set nocompatible              

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
  set termguicolors
endif

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
Plug 'glepnir/oceanic-material'
Plug 'arcticicestudio/nord-vim'
call plug#end()


set background=dark
colorscheme oceanic_material
" colorscheme nord 

" fzf
map <space> <leader>
nnoremap <leader>p :Files<space><cr>
set rtp+=/usr/local/opt/fzf
let g:fzf_layout = { 'window': { 'width': 0.92, 'height': 0.92 } }

map <C-n> :NERDTreeToggle<CR>

set ttimeoutlen=100
