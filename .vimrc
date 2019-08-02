if !empty(glob("~/.vim/autoload"))
  execute pathogen#infect()

  if !empty(glob("~/.vim/bundle/ctrlp.vim"))
    " CtrlP
    set runtimepath^=~/.vim/bundle/ctrlp.vim
    map <C-p> :CtrlP<CR>
  endif

  if !empty(glob("~/.vim/bundle/nerdtree"))
    " Nerdtree
    map <Leader><Leader> :NERDTreeToggle<CR>
    let NERDTreeShowHidden=1
  endif

endif

set backspace=indent,eol,start

set nocompatible
syntax on

filetype indent plugin on

" use shift-tab to force tab inset
inoremap <S-Tab> <C-V><Tab>

set ttyfast
let loaded_matchparen = 1

set nu
set nuw=3

set tabstop=2 shiftwidth=2 expandtab

set wildmenu
set noswapfile
set ruler

colorscheme elflord

if !empty(glob("~/.vim/overrides.vim"))
  so ~/.vim/overrides.vim
endif
