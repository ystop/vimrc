set nu
set mouse=a
set fileencodings=utf-8,gb2312,usc-bom,cp936,euc-cn
set termencoding=utf-8
set encoding=utf-8
set hlsearch " Highlight the search result
set incsearch " Real-time search
set cursorline
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darked  guifg=white
set ts=4
set tabstop=4 
"默认缩进4个空格大小 
set shiftwidth=4
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q!<CR>

set nocompatible 
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/scrooloose/nerdtree.git'
set autochdir
autocmd vimenter * NERDTree
map <C-e> :NERDTreeToggle<CR>
Plugin 'vim-airline/vim-airline'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
wincmd w
autocmd VimEnter * wincmd w
let NERDTreeWinSize=30
nnoremap <Leader>e <C-w>w

Plugin 'tpope/vim-commentary'

Plugin 'tpope/vim-fugitive'

Plugin 'vim-scripts/taglist.vim'
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=dark
colorscheme solarized
	
