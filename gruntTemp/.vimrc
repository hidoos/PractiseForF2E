set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
syn on                      "语法支持

" 去掉输入错误的提示声音  
set noeb 
set vb t_vb=
"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
set guioptions=
map <silent> <F5> :if &guioptions =~# 'T' <Bar>
    \set guioptions-=T <Bar>
    \set guioptions-=m <bar>
    \else <Bar>
    \set guioptions+=T <Bar>
    \set guioptions+=m <Bar>
    \endif<CR>
set background=dark
au GUIEnter * simalt ~x
colo molokai 
set nobackup

" encoding
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set langmenu=zh_CN.utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_cn.utf-8

"common conf {{             通用配置
set ai                      "自动缩进
set bs=2                    "在insert模式下用退格键删除
set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=4
set tabstop=4
set cursorline              "为光标所在行加下划线
set number                  "显示行号
set autoread                "文件在Vim之外修改过，自动重新读入
set autoindent              "设置缩进
set ignorecase              "检索时忽略大小写
set hls                     "检索时高亮显示匹配项
set helplang=cn             "帮助系统设置为中文
"}}

"powerline{
set nocompatible   " Disable vi-compatibility
set guifont=PowerlineSymbols\ for\ Powerline
set t_Co=256
"}
set guifont=Yahei\ Mono:h11
set foldmethod=indent
nmap mm :%s/\r//g<cr>

" =====================
" 快捷键
" =====================
"设置','为leader快捷键
let mapleader = ","
let g:mapleader = ","

"设置快速保存和退出
"快速保存为,s
"快速退出（保存）为,w
"快速退出（不保存）为,q
nmap <leader>s :w!<cr>
nmap <leader>w :wq!<cr>
nmap <leader>q :q!<cr>

"conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>
nmap <C-p>   :tabprevious<cr>
nmap <C-n>   :tabnext<cr>
nmap <C-k>   :tabclose<cr>
nmap <C-Tab> :tabnext<cr>

" 插件快捷键
nmap <C-d> :NERDTree<cr>
nmap <C-e> :BufExplorer<cr>

" 切换buffer
nmap bn :bn<cr>
nmap bp :bp<cr>

nmap bw <C-w>w
nmap bh <C-w>H
nmap bl <C-w>L
nmap bj <C-w>J
nmap bk <C-w>K

" 按下 Q 不进入 Ex 模式，而是退出
nmap Q :x<cr>

"关闭自动检测编码用F6控制(fencview.vim)
let g:fencview_autodetect=0
map <F6> :FencView<cr>

" 快速修改 vimrc 文件
if has("win32")
    map <silent> <leader>ee :e $VIM/vimfiles/_vimrc<cr>
    map <silent> <leader>rc :source $VIM/vimfiles/_vimrc<cr> " 快速载入 vimrc 文件
else
    map <silent> <leader>ee :e ~/.vim/vimrc<cr>
    map <silent> <leader>rc :source ~/.vim/vimrc<cr> " 快速载入 vimrc 文件
endif

" 关闭VIM的时候保存会话，按F122读取会话
set sessionoptions=buffers,sesdir,help,tabpages,winsize
au VimLeave * mks! ~/Session.vim
nmap <F7> :so ~/Session.vim<CR>

" 此处规定Vundle的路径  
set rtp+=$VIM/vimfiles/bundle/vundle/  
call vundle#rc('$VIM/vimfiles/bundle/')  
filetype plugin indent on  
" original repos on github<br>
Bundle 'gmarik/vundle'
Bundle 'FencView.vim'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'mattn/emmet-vim'

" vim-scripts repos  
Bundle 'bufexplorer.zip'  
Bundle 'The-NERD-Commenter'  
Bundle 'The-NERD-tree'  
Bundle 'Lokaltog/vim-powerline'
Bundle 'jshint.vim'
Bundle 'miripiruni/CSScomb-for-Vim'
Bundle 'css3-syntax-plus'
Bundle 'plasticboy/vim-markdown'

" tagbar
Bundle 'majutsushi/tagbar'
let g:tagbar_ctags_bin = 'd:\VIM\ctags58\ctags.exe'
nmap <F8> :TagbarToggle<CR>

" snipmate config and denpence
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "snipmate-snippets"
Bundle "garbas/vim-snipmate"
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd
filetype plugin indent on     " required!   
Bundle 'AutoComplPop'
