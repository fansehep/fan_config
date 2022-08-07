
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

set hlsearch

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
let g:NERDTreeWinSize = 25

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
