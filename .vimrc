execute pathogen#infect()

set nocompatible
syntax on

filetype indent plugin on

set ttyfast
let loaded_matchparen = 1

set nu
set nuw=3

set tabstop=2 shiftwidth=2 expandtab

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
