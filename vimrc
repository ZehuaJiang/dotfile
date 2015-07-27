"""设置编辑
set backspace=2
set encoding=utf-8
set autoread                 "reload files when changed on disk

"""快捷键
let mapleader="'"
nnoremap q :q<CR>
noremap <leader>a <C-w>h
noremap <leader>s <C-w>j
noremap <leader>w <C-w>k
noremap <leader>d <C-w>l
nnoremap nt :NERDTree<CR>
nnoremap <Leader>v :vsplit<CR>

""" 颜色配置
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termtrans  = 1
let g:solarized_termcolors = 256
let g:solarized_contrast   = "high"
let g:solarized_visibility = "high"

""" 配置tab键
set tabstop=4        "number of visual spaces per TAB
set softtabstop=4    "number of spaces in TAB when editing
set expandtab        "TABS are spaces
set shiftwidth=4     "使用每层缩进的空格数

"""UI设置
set laststatus=2     "Always show status line 
"set number          "show line number
set cursorline      "highlight the current line
set wildmenu         "visual autocomplete for command menu
set lazyredraw       "redraw only whn we need to
set showmatch        "highlight macthing [{()}]
"set numberwidth=3   "行号栏的宽度
filetype indent on   "load filetype-specific indent file.


""" 搜索设置
set ignorecase   "搜索时忽略大小写
set incsearch    "search as characters are entered
set hlsearch     "highlight mathes ":nohlsearch stop highlight searching

""" 折叠设置
set foldenable         
set foldmethod=indent 
set foldlevel=10                         "折叠层数

"""浏览文件
nnoremap mr :MR<CR>
let NERDTreeIgnore=['\.pyc$', '\~$', '\.$']

"""YouCompleteMe
let g:ycm_cache_omnifunc=0                                                         " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_complete_in_strings = 1                                                  " 在字符串输入中也能补全
let g:ycm_complete_in_comments = 1                                                 " 在注释输入中也能补全
let g:ycm_seed_identifiers_with_syntax=1                                           " 语法关键字补全
let g:ycm_min_num_of_chars_for_completion=3                                        " 从第2个键入字符就开始罗列匹配项
let g:ycm_collect_identifiers_from_tags_files=1                                    " 开启 YCM 基于标签引擎
autocmd InsertLeave * if pumvisible() == 0|pclose|endif                            " 离开插入模式后自动关闭预览窗口
let g:ycm_collect_identifiers_from_comments_and_strings = 0                        " 注释和字符串中的文字也会被收入补全
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

"""Utilsnipt
let g:UltiSnipsExpandTrigger="<CR>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-j>"

"""Easymotion
map s <Plug>(easymotion-prefix)
nmap r <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

""" 安装并配置Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'


""" 安装自己的插件
Plugin 'easymotion/vim-easymotion'
Bundle 'Auto-Pairs'
Plugin 'UltiSnips'
Plugin 'honza/vim-snippets'
Plugin 'ShowTrailingWhitespace'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'uguu-org/vim-matrix-screensaver'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'tomtom/tcomment_vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'Lokaltog/vim-powerline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mru.vim'

""" 结束Vundle配置
call vundle#end()          
filetype plugin indent on

