"""设置编辑
set backspace=2
set encoding=utf-8
set enc=utf8
set autoread                 "reload files when changed on disk

"""快捷键
let mapleader="'"
nnoremap q :close<CR>
nnoremap nt :NERDTree<CR>
nnoremap vs :vsplit<CR>
nnoremap sp :split<CR>

nnoremap tg :Tagbar<CR>
nnoremap tt :tabnew<CR>
nnoremap tn :tabnext<CR>
nnoremap tp :tabprevious<CR>

nnoremap <leader>a <C-w>h
nnoremap <leader>s <C-w>j
nnoremap <leader>w <C-w>k
nnoremap <leader>d <C-w>l
nnoremap <Leader>f <C-]>
nnoremap <Leader>b <C-T>


""" 颜色配置
syntax enable
"  set background=dark
colorscheme molokai
" let g:solarized_termtrans  = 1
" let g:solarized_termcolors = 256
" let g:solarized_contrast   = "high"
" let g:solarized_visibility = "high"


""" 配置tab键
set tabstop=4        "number of visual spaces per TAB
set softtabstop=4    "number of spaces in TAB when editing
set expandtab        "TABS are spaces
set shiftwidth=4     "使用每层缩进的空格数
set autoindent

"""UI设置
set laststatus=2     "Always show status line
set number           "show line number
set cursorline       "highlight the current line
set wildmenu         "visual autocomplete for command menu
set lazyredraw       "redraw only whn we need to
set ruler            "显示光标当前位置
set cursorcolumn     "高亮当前的列
set numberwidth=1   "行号栏的宽度
filetype indent on   "load filetype-specific indent file.


""" 搜索设置
set ignorecase   "搜索时忽略大小写
set incsearch    "search as characters are entered
set hlsearch     "highlight mathes ":nohlsearch stop highlight searching
set showmatch        "highlight macthing [{()}]

""" 折叠设置 set foldenable
set foldmethod=indent
set foldlevel=10                         "折叠层数

""" 配置ale, 需要安装flake8,yapf,isort命令
let g:ale_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 1
" let g:ale_fix_on_save = 1

let g:ale_fixers = {
\   'python': ['remove_trailing_lines', 'black'],
\}

let g:ale_linters = {
\   'python': ['flake8'],
\}


"""浏览文件
nnoremap mr :MR<CR>
let NERDTreeIgnore=['\.pyc$', '\~$', '\.$']

""" 配置tagbar
let g:tagbar_ctags_bin='/usr/bin/ctags'

""" config jedi
let g:jedi#goto_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>g"
" let g:jedi#goto_assignments_command = "<leader>f"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
" let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"



""" 配置 youcompleteme

"""
" set ycm log
let g:ycm_keep_logfiles = 1

" "GOTO Subcommands"
" These commands are useful for jumping around and exploring code.
" When moving the cursor, the subcommands add entries to Vim's jumplist
" so you can use "CTRL-O" to jump back to where you where before
" invoking the command (and "CTRL-I" to jump forward; see :h jumplist for details)
" This command tries to perform the "most sensible" GoTo operation it can.
" Currently, this means that it tries to look up the symbol under the cursor
" and jumps to its definition if possible; if the definition is not accessible
" from the current translation unit, jumps to the symbol's declaration
" nnoremap <leader>f :YcmCompleter GoTo<CR>
" nnoremap <leader>g :YcmCompleter GoTo<CR>

" This command attempts to find all of the references within the project to
" the identifier under the cursor and populates the quickfix list with those locations
"nnoremap <leader>f :YcmCompleter GoToReferences<CR>

" This option controls the key mapping used to
" invoke the completion menu for semantic completion
let g:ycm_key_invoke_completion = '<TAB>'

"for which Vim filetypes (see :h filetype) should YCM be turned off
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}

" This option controls the number of characters the user needs to
" type before identifier-based completion suggestions are triggered
let g:ycm_min_num_of_chars_for_completion = 3

"Normally, YCM searches for a .ycm_extra_conf.py file for compilation flags
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf_c.py"

" YCM will use the value of this option as the symbol
" for errors in the Vim gutter
let g:ycm_error_symbol = 'x'

" YCM will use the value of this option as the symbol
" for warnings in the Vim gutter
let g:ycm_warning_symbol = '!'

" This option controls the key mappings used to
" select the first completion string
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']

" This option controls the key mappings used to
"  select the previous completion string
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']

let g:ycm_show_diagnostics_ui = 1

"""  配置checklist
" dis­able timestamps, add this to your .vimrc:
let g:checklist_use_timestamps = 0

""" 配置ctrpl
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
  \}

""" 配置easymotioon
let g:EasyMotion_do_mapping = 0 " Disable default mappings
 
" 搜索两个字符
nmap s <Plug>(easymotion-overwin-f2)

" 忽略大小写
let g:EasyMotion_smartcase = 0

" 映射反斜杠为easymotion全局搜索
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

""" 配置indentLine
let g:indentLine_enabled = 1 "默认开启

""" 配置airline
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

""" 安装并配置Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
""" 安装自己的插件

" 快速移动神器和模糊搜索
Plugin 'easymotion/vim-easymotion'

" 目录显示
Plugin 'scrooloose/nerdtree'

" vim solarized主题
Plugin 'altercation/vim-colors-solarized'

" 漂亮的vim状态栏
Plugin 'vim-airline/vim-airline'

" 支持模糊搜索文件和目录
Plugin 'kien/ctrlp.vim'

" 在插入模式下使用tab进行补全
Plugin 'ervandew/supertab'

" 史上最好用的补全插件
Plugin 'Valloric/YouCompleteMe'

" 使用'.'重复上一次命令
Plugin 'tpope/vim-repeat'

" 根据文件类型快速注释
Plugin 'tomtom/tcomment_vim'

" 垂直显示对齐条
Plugin 'yggdroot/indentline'

" 满屏幕的黑客帝国
Plugin 'uguu-org/vim-matrix-screensaver'

" 显示代码outline
Plugin 'majutsushi/tagbar'

" 显示最近使用过的文件
Plugin 'mru.vim'

" 强大的文件搜索
Plugin 'rking/ag.vim'

" 支持dash查询
Plugin 'rizzatti/dash.vim'

" 多行编辑
Plugin 'terryma/vim-multiple-cursors'

" 自动补全括号
Plugin 'jiangmiao/auto-pairs'

" vim git集成工具
Plugin 'tpope/vim-fugitive.git'

"python 自动缩进
Plugin 'vim-scripts/indentpython.vim'

"异步语法检查
Plugin 'w0rp/ale'

" html movation
Plugin 'mattn/emmet-vim'

" python 自动补全插件
Plugin 'davidhalter/jedi-vim'

" For vue
Plugin 'posva/vim-vue'


""" 结束Vundle配置
call vundle#end()
filetype plugin indent on
