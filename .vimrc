syntax on
set nu
set list
"不备份了
set nobackup
"set relativenumber
"想直接复制粘贴就不能开这个
""set mouse=a
set fileencodings=utf-8,gb2312,usc-bom,cp936,euc-cn
set termencoding=utf-8
set encoding=utf-8
set hlsearch " Highlight the search result
set incsearch " Real-time search
set tabstop=4 
set cursorline
set cursorcolumn
set ts=4 
"一定要写tab才会是空格
set expandtab
"默认缩进4个空格大小 
set shiftwidth=4
let mapleader = ";"
"nnoremap <Leader>w :w<CR>
"nnoremap <Leader>q :q!<CR>

set nocompatible 
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/scrooloose/nerdtree.git'
"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
set autochdir
let NERDTreeWinSize=25
map <C-e> :NERDTreeToggle<CR>
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
wincmd w
autocmd VimEnter * wincmd w
nnoremap <Leader>e <C-w>w
nmap  w=  :resize +3<CR>
nmap  w-  :resize -3<CR>
nmap  w,  :vertical resize -3<CR>
nmap  w.  :vertical resize +3<CR>

Plugin 'tpope/vim-commentary'
autocmd FileType python,shell,coffee set commentstring=#\ %s
"修改注释风格
autocmd FileType java,c,cpp,php set commentstring=//\ %s

Plugin 'tpope/vim-fugitive'

Plugin 'vim-scripts/taglist.vim'
"自动更新ctag
let Tlist_Auto_Update = 1
let Tlist_Auto_Open=1 
"设置taglist宽度
let Tlist_WinWidth=30   
let Tlist_Show_One_File=0     "不同时显示多个文件的tag，只显示当前文件的    
let Tlist_Ctags_Cmd="/usr/local/bin/ctags" "将taglist与ctags关联
let Tlist_Use_Right_Window=1
 "当taglist是最后一个分割窗口时，自动推出vim
let Tlist_Exit_OnlyWindow=1
"为1则即使标签列表窗口未打开，taglist仍然会在后台处理vim所打开文件的标签
let Tlist_Process_File_Always=1 
let Tlist_Inc_Winwidth=0
" set tags=~/code/safehuntingnet.bak/tags
set tags+=./../tags,./../../tags,./../../../tags,./../../../../tags,./../../../../../tags

" go
" Plugin 'fatih/vim-go'

call vundle#end()            " required
filetype plugin indent on    " required	

let Tlist_Ctags_Cmd='ctags'
let Tlist_Show_One_File=1               "不同时显示多个文件的tag，只显示当前文件的
let Tlist_WinWidt =28                    "设置taglist的宽度
let Tlist_Exit_OnlyWindow=1             "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window=1            "在右侧窗口中显示taglist窗口
"let Tlist_Use_Left_Windo =1                "在左侧窗口中显示taglist窗口phpcomplete

Plugin 'vim-scripts/DoxygenToolkit.vim'

let g:DoxygenToolkit_commentType = "PHP"
let g:DoxygenToolkit_authorName="yangshuai-s@360.cn" 

""set background=dark
""colorscheme solarized
""colorscheme Tomorrow-Night
""colorscheme desert 
"括号亮
Plugin 'https://github.com/luochen1990/rainbow.git'
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\} 
"Plugin 'git@github.com:sheerun/vim-polyglot.git'
"Plugin 'git@github.com:StanAngeloff/php.vim.git'
"g:php_syntax_extensions_enabled

"输入括号时候短暂匹配（时间2)
set showmatch
set matchtime=2



set smartindent
"补全并可以tab跳出
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O
"设置自动缩进
set ai! 
"list选项，来显示非可见字符
" set list

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"折叠 && 颜色
set foldenable
set foldmethod=indent
set foldcolumn=0 
setlocal foldlevel=2 
set foldlevelstart=99  "设置默认不折叠 
hi Folded guibg=black guifg=grey40 ctermfg=grey ctermbg=darkgrey
hi FoldColumn guibg=black guifg=grey20 ctermfg=4 ctermbg=7

"语法检查
"execute pathogen#infect()
Plugin 'https://github.com/vim-syntastic/syntastic.git'

"let g:syntastic_php_checkers = ['phpcs']
let g:syntastic_php_checkers = ['php']
let g:syntastic_php_phpcs_args = "--standard=PSR2"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_loc_list_height = 3


Bundle 'Yggdroot/indentLine' 
"indentLine 代码缩进线标志线
let g:indentLine_char = '¦' 
let g:indentLine_color_term = 245
"映射到ctrl+i键 
"map <C-i> :IndentLinesToggle<CR> 

"搜索
Plugin 'https://github.com/kien/ctrlp.vim.git'

"代码补全
" Track the engine.
Plugin 'SirVer/ultisnips'
"
" " Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

set noswapfile

" Plugin 'Valloric/YouCompleteMe'
" Plugin 'git@github.com:fholgado/minibufexpl.vim.git'





"" hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=darkred guibg=darkred guifg=white
"" hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=darkred guibg=darkred guifg=white
highlight CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=lightgrey ctermfg=black guibg=NONE guifg=NONE
""highlight CursorLine   cterm=NONE ctermbg=lightgrey ctermfg=  guibg=NONE guifg=NONE
""highlight CursorColumn cterm=NONE ctermbg=lightgrey ctermfg=black guibg=NONE guifg=NONE
""hi CursorColumn         ctermfg=White           ctermbg=Grey          
""hi CursorLine           ctermfg=black      ctermbg=Grey


set hidden " 避免必须保存修改才可以跳转buffer
" buffer快速导航
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>d :bd<CR>
" 查看buffers
nnoremap <Leader>l :ls<CR>
" 通过索引快速跳转
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :b 4<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>q :6b<CR>
nnoremap <Leader>w :7b<CR>
nnoremap <Leader>e :8b<CR>
nnoremap <Leader>r :9b<CR>
nnoremap <Leader>t :10b<CR>

nnoremap <Leader>d1 :bd1<CR>
nnoremap <Leader>d2 :bd2<CR>
nnoremap <Leader>d3 :bd3<CR>
nnoremap <Leader>d4 :bd4<CR>
nnoremap <Leader>d5 :bd4<CR>
nnoremap <Leader>dq :bd5<CR>
nnoremap <Leader>dw :bd6<CR>
nnoremap <Leader>de :bd6<CR>
nnoremap <Leader>dr :bd7<CR>
nnoremap <Leader>dt :bd8<CR>

nnoremap <Leader>ps :set paste<CR>
nnoremap <Leader>nps :set paste<CR>


hi comment ctermfg=6 

vnoremap <silent> <C-T> :<C-u>Ydv<CR>
nnoremap <silent> <C-T> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>

"Plugin 'git@github.com:tpope/vim-surround.git'
Plugin 'https://github.com/jiangmiao/auto-pairs.git'




