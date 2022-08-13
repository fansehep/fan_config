syntax on
set nocompatible
syntax enable

"
set autoindent
set smartindent
set cin
set ts=2
set sw=2
set et


set guifont=sourcecodepro\ 13
set nu
set tabstop=2

set expandtab

set showmatch
" 高亮当前行
" set cursorline
set hlsearch

" 高亮光标所在行
" highlight Cursor
set ignorecase

set noswapfile

set showmode

set mouse=a

set encoding=utf-8

set t_Co=256


set wrap

set laststatus=2
set background=dark
call plug#begin('~/.vim/plugged')

"Vim plugin for selectively illuminating other uses of the current word under the cursor
"https://github.com/RRethy/vim-illuminate
Plug 'RRethy/vim-illuminate'
" onedark 我最喜欢的主题
Plug 'https://github.com/joshdick/onedark.vim.git'
" 文件树
Plug 'git@github.com:preservim/nerdtree.git'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/vim-airline/vim-airline'
" vim 下面的状态条主题
Plug 'vim-airline/vim-airline-themes'
" 为 vim 增加图标
Plug 'ryanoasis/vim-devicons'

" git plugin
Plug 'tpope/vim-fugitive'
" 自动补全括号
Plug 'jiangmiao/auto-pairs'
Plug 'flazz/vim-colorschemes'
Plug 'joshdick/onedark.vim'
Plug 'kien/rainbow_parentheses.vim'
" 彩虹括号
Plug 'luochen1990/rainbow'
Plug 'fatih/vim-go'
" 高亮文件
Plug 'sheerun/vim-polyglot'
" 高亮 nerdtree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" 快速注释
Plug 'scrooloose/nerdcommenter'
" 保存nerdtree 的状态
" Initialize plugin system
" 好用的补全插件
Plug 'valloric/youcompleteme'

" nerd git 插件
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" markdown 预览插件
" 迅速预览, 在浏览器中打开一个预览
" 只有打开一个*.md 才会启用
" 好用的插件！必须安装 node.js 
" sudo apm -g install instant-markdown-d
Plug 'suan/vim-instant-markdown'

call plug#end()



" file exploer

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-w>k :NERDTreeToggle<CR>
noremap <C-w>- :split<cr>
noremap <C-w>\| :vsplit<cr>

let g:rainbow_active = 1


let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:indent_guides_enable_on_vim_startup = 1

" 缩进颜色设置
" hi IndentGuidesEven ctermbg=lightgrey



"
" 自动缩进
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>0
" i like use atom theme
:colorscheme atom 

let g:rainbow_active=1

let g:rainbow_conf = {
      \	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
      \	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
      \	'operators': '_,_',
      \	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
      \	'separately': {
      \		'*': {},
      \		'tex': {
      \			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
      \		},
      \		'lisp': {
      \			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
      \		},
      \		'vim': {
      \			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
      \		},
      \		'html': {
      \			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
      \		},
      \		'css': 0,
      \	}
      \}

" autocmd vimenter * NERDTree

let g:airline_powerline_fonts = 1

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 29

" nerdtree windows size
let g:NERDTreeWinSize=40

" 当 nerdtree 是最后一个窗口, 会自动关闭
" 防止其他窗口替换 nerdtree
" If another buffer tries to replace NERDTree, put it in the other window, and
" bring back NERDTree.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" 快速注释加空格
let g:NERDSpaceDelims=1
let g:NERDCompactSexyComs=1
let g:NERDAltDelims_java = 1
let g:NERDToggleCheckAllLinex = 1
" 注释默认前缀 = ,
let mapleader=","
" ,cc 注释当前行
" ,cs 优雅注释
" ,cu 取消注释
" I nerdtree 打开隐藏文件


filetype plugin on

let g:webdevicons_enable_nerdtree = 1



:set showtabline=2
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_buffers=0

let g:airline_powerline_fonts = 1
let g:airline_section_b = '%{getcwd()}'

let g:airline#extensions#tabline#enabled = 1                                                                      
let g:airline#extensions#tabline#show_close_button = 0                                             
let g:airline#extensions#tabline#tabs_label = ''       
let g:airline#extensions#tabline#buffers_label = ''          
let g:airline#extensions#tabline#fnamemod = ':t'                                                           
let g:airline#extensions#tabline#show_tab_count = 0                                                               
let g:airline#extensions#tabline#show_buffers = 0                                                       
let g:airline#extensions#tabline#tab_min_count = 2                                       
let g:airline#extensions#tabline#show_splits = 0                      
let g:airline#extensions#tabline#show_tab_nr = 0                                                                     
let g:airline#extensions#tabline#show_tab_type = 0



" vim tabline config 舒服
" shift + <- or -> 快速左右跳转
map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>
" 开启 zsh support
set wildmenu
set wildmode=full

" 自动关闭 nerdtree windows
let g:nerdtree_tabs_autoclose=1
" let g:nerdtree_tabs_open_on_console_startup=1
" nerdtree-git 插件
let g:NERDTreeGitStatusIndicatorMapCustom = {
      \ 'Modified'  :'✹',
      \ 'Staged'    :'✚',
      \ 'Untracked' :'✭',
      \ 'Renamed'   :'➜',
      \ 'Unmerged'  :'═',
      \ 'Deleted'   :'✖',
      \ 'Dirty'     :'✗',
      \ 'Ignored'   :'☒',
      \ 'Clean'     :'✔︎',
      \ 'Unknown'   :'?',
      \ }
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusShowIgnored = 1


" Function to open the file or NERDTree or netrw.
"   Returns: 1 if either file explorer was opened; otherwise, 0.
function! s:OpenFileOrExplorer(...)
    if a:0 == 0 || a:1 == ''
        NERDTree
    elseif filereadable(a:1)
        execute 'edit '.a:1
        return 0
    elseif a:1 =~? '^\(scp\|ftp\)://' " Add other protocols as needed.
        execute 'Vexplore '.a:1
    elseif isdirectory(a:1)
        execute 'NERDTree '.a:1
    endif
    return 1
endfunction

" Auto commands to handle OS commandline arguments
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc()==1 && !exists('s:std_in') | if <SID>OpenFileOrExplorer(argv()[0]) | wincmd p | enew | wincmd p | endif | endif

" Command to call the OpenFileOrExplorer function.
command! -n=? -complete=file -bar Edit :call <SID>OpenFileOrExplorer('<args>')

" Command-mode abbreviation to replace the :edit Vim command.
cnoreabbrev e Edit


filetype plugin on



