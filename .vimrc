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

colorscheme elflord

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
map <C-p> :CtrlP<CR>

" Nerdtree
map <Leader><Leader> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

if !empty(glob("~/.vim/overrides.vim"))
  so ~/.vim/overrides.vim
endif
