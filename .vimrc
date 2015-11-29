execute pathogen#infect()

set nocompatible
syntax on

filetype indent plugin on

set ttyfast

set nu
set nuw=3

set shiftwidth=2
set tabstop=2
set expandtab

set wildmenu
set noswapfile

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
map <C-p> :CtrlP<CR>

" Nerdtree
map <Leader><Leader> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Molokai Theme
set t_Co=256
let g:rehash256 = 1
colorscheme molokai
