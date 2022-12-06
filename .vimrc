call plug#begin()

  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'airblade/vim-gitgutter'
  Plug 'scrooloose/syntastic'
  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-commentary'
  Plug 'morhetz/gruvbox'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'neoclide/coc.nvim'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'frazrepo/vim-rainbow'
  Plug 'rust-lang/rust.vim'

call plug#end()

colorscheme gruvbox

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set tabstop=2
set shiftwidth=2
set expandtab

set bg=dark

let g:coc_disable_startup_warning = 1
