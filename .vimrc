syntax on
set nu
"不备份了
set nobackup
set relativenumber
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
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white  
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white  
" highlight CursorColumn cterm=NONE ctermbg=None ctermfg=white  guibg=NONE guifg=NONE
"默认缩进4个空格大小 
set shiftwidth=4
let mapleader = "\<Space>"
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
nnoremap <C-w> :Tlist<CR> 
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
set tags+=./../tags,./../../tags,./../../../tags


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

"set background=dark
"olorscheme solarized
colorscheme Tomorrow-Night
"colorscheme desert

"括号亮
Plugin 'git@github.com:luochen1990/rainbow.git'
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
"设置跳出自动补全的括号
func SkipPair()  
    if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'  
        return "\<ESC>la"  
    else  
        return "\t"  
    endif  
endfunc  
" 将tab键绑定为跳出括号  
inoremap <TAB> <c-r>=SkipPair()<CR>
"设置自动缩进
set ai! 
"list选项，来显示非可见字符
set list

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
Plugin 'git@github.com:vim-syntastic/syntastic.git'

let g:syntastic_php_checkers = ['php']
let g:syntastic_php_phpcs_args = "--standard=PSR2"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_loc_list_height = 3


Bundle 'Yggdroot/indentLine' 
"indentLine 代码缩进线标志线
let g:indentLine_char = '¦' 
let g:indentLine_color_term = 245
"映射到ctrl+i键 
map <C-i> :IndentLinesToggle<CR> 

"搜索
Plugin 'git@github.com:kien/ctrlp.vim.git'

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


