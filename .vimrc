
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
nnoremap <Leader>e :vsplit<CR>
nnoremap <Leader>r :split<CR>
nnoremap <Leader>t :Tagbar<CR>

""" 颜色配置
syntax enable
" set background=dark
" colorscheme solarized
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
"set cursorcolumn     "高亮当前的列
set numberwidth=3   "行号栏的宽度
filetype indent on   "load filetype-specific indent file.


""" 搜索设置
"set ignorecase   "搜索时忽略大小写
set incsearch    "search as characters are entered
set hlsearch     "highlight mathes ":nohlsearch stop highlight searching
set showmatch        "highlight macthing [{()}]

""" 折叠设置
set foldenable
set foldmethod=indent
set foldlevel=10                         "折叠层数

"""浏览文件
nnoremap mr :MR<CR>
let NERDTreeIgnore=['\.pyc$', '\~$', '\.$']

""" 配置tagbar
let g:tagbar_ctags_bin='/usr/local/bin/ctags'

""" 配置 youcompleteme
"let g:ycm_collect_identifiers_from_comments_and_strings = 1

" "GOTO Subcommands"
" These commands are useful for jumping around and exploring code.
" When moving the cursor, the subcommands add entries to Vim's jumplist
" so you can use "CTRL-O" to jump back to where you where before
" invoking the command (and "CTRL-I" to jump forward; see :h jumplist for details)

" This command tries to perform the "most sensible" GoTo operation it can.
" Currently, this means that it tries to look up the symbol under the cursor
" and jumps to its definition if possible; if the definition is not accessible
" from the current translation unit, jumps to the symbol's declaration
nnoremap <leader>g :YcmCompleter GoTo<CR>

" This command attempts to find all of the references within the project to
" the identifier under the cursor and populates the quickfix list with those locations
"nnoremap <leader>f :YcmCompleter GoToReferences<CR>

" This option controls the key mapping used to
" invoke the completion menu for semantic completion
let g:ycm_key_invoke_completion = "<C-Space>"

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
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" YCM will use the value of this option as the symbol
" for errors in the Vim gutter
let g:ycm_error_symbol = 'xx'

" YCM will use the value of this option as the symbol
" for warnings in the Vim gutter
let g:ycm_warning_symbol = '!!'

" This option controls the key mappings used to
" select the first completion string
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']

" This option controls the key mappings used to
"  select the previous completion string
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']

"""  配置checklist
" dis­able timestamps, add this to your .vimrc:
let g:checklist_use_timestamps = 0

""" 配置ctrpl
"use ag as the ctrlp command
let g:ctrlp_user_command = 'ag %s -l --nocolor --nogroup --hidden
			\ --ignore .git
			\ --ignore out
			\ --ignore .svn
			\ --ignore .hg
			\ --ignore .DS_Store
			\ -g ""'

""" 配置easymotioon
" 忽略大小写
let g:EasyMotion_smartcase = 0

" 映射反斜杠为easymotion全局搜索
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" n, N 向前、向后跳转
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)

" 映射搜索两个字符的快捷键
nmap s <Plug>(easymotion-s2)   " 全局搜索
nmap t <Plug>(easymotion-t2)   " 向下搜索

""" 安装并配置Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'


""" 安装自己的插件
Plugin 'easymotion/vim-easymotion'
Plugin 'mattn/emmet-vim'
Bundle 'Auto-Pairs'
Plugin 'UltiSnips'
Plugin 'honza/vim-snippets'
Plugin 'gregsexton/MatchTag'
Plugin 'ShowTrailingWhitespace'
Plugin 'scrooloose/syntastic'
Plugin 'uguu-org/vim-matrix-screensaver'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'tomtom/tcomment_vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-markdown'
Plugin 'Lokaltog/vim-powerline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mru.vim'
Plugin 'checklist.vim'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'rdnetto/YCM-Generator'
Bundle 'chase/vim-ansible-yaml'
Plugin 'fatih/vim-go'

""" 结束Vundle配置
call vundle#end()
filetype plugin indent on
