set nu
set fileencodings=utf-8,gb2312,usc-bom,cp936,euc-cn
set termencoding=utf-8
set encoding=utf-8
set hlsearch " Highlight the search result
set incsearch " Real-time search
set cursorline
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darked  guifg=white
set ts=4
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
inoremap jj  <esc>

set nocompatible 
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/scrooloose/nerdtree.git'
autocmd vimenter * NERDTree
map <C-e> :NERDTreeToggle<CR>
Plugin 'vim-airline/vim-airline'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=dark
colorscheme solarized
	
