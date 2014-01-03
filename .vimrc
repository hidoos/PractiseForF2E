" =============================================================================
"  hidoos config
" =============================================================================

" =====================
" 环境配置
" =====================

set nocompatible               " be iMproved
filetype off                   " required!
set wrap
set autowriteall

" 去掉输入错误的提示声音
set noeb
set vb t_vb=

" 设置代码折叠
set foldmethod=indent
" Use spacebar toggle fold
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" 设置删除window下文件转到linux下面多余空格
nmap mm :%s/\r//g<cr>

set linebreak     " 英文单词在换行时不被截断
set wrap          " 设置自动折行

" 标签页
set tabpagemax=15 " 最多15个标签
set number        " 行号
set hlsearch      " 高亮显示搜索的内容
set noincsearch   " 关闭显示查找匹配过程

" 制表符(设置所有的tab和缩进为4个空格)
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " 使用空格来替换tab
set smarttab

" 缩进
set autoindent " 设置自动缩进
set smartindent " 设置智能缩进

" 自动重新读入
set autoread " 当文件在外部被修改，自动更新该文件
set mouse=a "设定在任何模式下鼠标都可用

" 插入模式下使用 <BS>、<Del> <C-W> <C-U>
set backspace=indent,eol,start

" 备份和缓存
set nobackup
set nowb


" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
set ignorecase " 搜索时无视大小写

" Remove trailing whitespace when writing a buffer, but not for diff files.
" From: Vigil
" @see http://blog.bs2.to/post/EdwardLee/17961
function RemoveTrailingWhitespace()
    if &ft != "diff"
        let b:curcol = col(".")
        let b:curline = line(".")
        silent! %s/\s\+$//
        silent! %s/\(\s*\n\)\+\%$//
        call cursor(b:curline, b:curcol)
    endif
endfunction
autocmd BufWritePre * call RemoveTrailingWhitespace()

" =====================
"    默认为 UTF-8 编码
" =====================
if has("multi_byte")
    set encoding=utf-8

    if has('win32')
        language english
        let &termencoding=&encoding " 处理consle输出乱码
    endif

    set fencs=utf-8,gbk,chinese,latin1
    set formatoptions+=mM
    set nobomb " 不使用 Unicode 签名

    if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
        set ambiwidth=double
    endif
else
    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif




" =====================
" 图形界面
" =====================

" 快捷键 <f2> 可以toggle菜单 <F3>控制工具栏
if has('gui_running')
    "set guioptions=mcr " 只显示菜单
    "set guioptions=   " 隐藏全部的gui选项
    "set guioptions+=r " 显示gui右边滚动条
    "Toggle Menu and Toolbar 使用F2隐藏/显示菜单
    set guioptions-=m
    set guioptions-=T
    set guioptions=
    map <silent> <F3> :if &guioptions =~# 'T' <Bar>
                \set guioptions-=T <Bar>
                \set guioptions-=m <bar>
                \else <Bar>
                \set guioptions+=T <Bar>
                \set guioptions+=m <Bar>
                \endif<CR>

    if has("gui_running")
        " Windows 兼容配置
        source $VIMRUNTIME/mswin.vim
        " 字体配置
        set guifont=YaHei\ Consolas\ Hybrid:h11:cANSI
        "set guifont=Yahei\ Mono:h11:cANSI
    endif
endif

" 打开gvim时默认窗口最大化
au GUIEnter * simalt ~x
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8

" =================
" 插件powerline
" =================
set nocompatible   " Disable vi-compatibility
set t_Co=256

" =====================
" 主题配色
" =====================
if has('syntax')
    " 保证语法高亮
    syntax on
    set background=light

    if has('gui_running')
        set background=dark
        colorscheme molokai
        let g:colors_name="molokai"
    endif
endif

"Highlight current
if has("gui_running")
    set cursorline
    "set cursorcolumn
endif

" =====================
" AutoCmd 自动运行
" =====================
if has("autocmd")
    filetype plugin indent on " 打开文件类型检测

    augroup vimrcEx " 记住上次文件位置
        au!
        autocmd FileType text setlocal textwidth=80
        autocmd BufReadPost *
                    \ if line("'\"") > 0 && line("'\"") <= line("$") |
                    \   exe "normal g`\"" |
                    \ endif
    augroup END

    " 将指定文件的换行符转换成 UNIX 格式
    au FileType php,javascript,html,css,python,vim,vimwiki set ff=unix
endif

" 自动载入VIM配置文件
autocmd! bufwritepost vimrc source $MYVIMRC


" 关闭VIM的时候保存会话，按F7读取会话
set sessionoptions=buffers,sesdir,help,tabpages,winsize
au VimLeave * mks! ~/Session.vim
nmap <F7> :so ~/Session.vim<CR>

" =====================
" 快捷键
" =====================
"设置','为leader快捷键
let mapleader = ","
let g:mapleader = ","

"设置快速保存和退出
nmap <leader>s :w!<cr>
nmap <leader>w :wq!<cr>
nmap <leader>q :q!<cr>

"设置gj移动10行
nmap gj 10j <cr>
nmap gk 10k <cr>


" 切换缓冲区文件
nmap bw <C-w>w <cr>
nmap bn :bn<cr>
nmap bp :bp<cr>

"conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>
nmap <C-p>   :tabprevious<cr>
nmap <C-n>   :tabnext<cr>
nmap <C-k>   :tabclose<cr>
nmap <C-Tab> :tabnext<cr>

" 插件快捷键
nmap <leader>d :NERDTree<cr>
nmap <C-e> :BufExplorer<cr>
nmap <C-d> :NERDTree<cr>


" 切换buffer
nmap bn :bn<cr>
nmap bp :bp<cr>

nmap bw <C-w>w
nmap bh <C-w>H
nmap bl <C-w>L
nmap bj <C-w>J
nmap bk <C-w>K

" Normal Mode, Visual Mode, and Select Mode,
" use <Tab> and <Shift-Tab> to indent
" @see http://c9s.blogspot.com/2007/10/vim-tips.html
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv

"关闭自动检测编码用F6控制(fencview.vim)
let g:fencview_autodetect=0
map <F6> :FencView<cr>

" 按下 Q 不进入 Ex 模式，而是退出
nmap Q :x<cr>


" 快速修改 vimrc 文件
if has("win32")
    map <silent> <leader>ee :e $VIM/_vimrc<cr>
    map <silent> <leader>rc :source $VIM/_vimrc<cr> " 快速载入 vimrc 文件
else
    map <silent> <leader>ee :e ~/.vim/vimrc<cr>
    map <silent> <leader>rc :source ~/.vim/vimrc<cr> " 快速载入 vimrc 文件
endif


" =====================
" Bundle
" =====================
" 此处规定Vundle的路径
set rtp+=$VIM/vimfiles/bundle/vundle/
call vundle#rc('$VIM/vimfiles/bundle/')
filetype plugin indent on

" let Vundle manage Vundle
" required!
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'gmarik/vundle'

" eidtor 2014-1-3
Bundle 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign with a Vim movement
nmap <Leader>a <Plug>(EasyAlign)

Bundle 'vimtips.zip'

" 美化状态栏
Bundle 'Lokaltog/vim-powerline'

" 前端插件
Bundle 'mattn/emmet-vim'
Bundle 'jshint.vim'
Bundle 'miripiruni/CSScomb-for-Vim'
" keyword
map <C-s> :CSScomb <cr>
Bundle 'css3-syntax-plus'

Bundle 'neocomplcache'
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'


" vim snipmate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
" Optional:
Bundle "honza/vim-snippets"

" js butify
Bundle 'maksimr/vim-jsbeautify'
Bundle 'einars/js-beautify'
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd FileType scss noremap <buffer> <c-f> :call CSSBeautify()<cr>

"工具类插件
Bundle 'FencView.vim'
" 识别编码
Bundle 'scrooloose/nerdtree'
" 目录树插件
Bundle 'bufexplorer.zip'
" 缓冲区文件查看
Bundle 'kien/ctrlp.vim'
" 快速搜索文件插件
Bundle 'terryma/vim-multiple-cursors'
" 多光标多行编辑

" 统一编码风格的插件
Bundle 'editorconfig/editorconfig-vim'

" 注释插件
Bundle 'tpope/vim-commentary'
autocmd FileType apache set commentstring=#\ %s

" 识别markdown语法插件
Bundle 'plasticboy/vim-markdown'


" tagbar
Bundle 'majutsushi/tagbar'
let g:tagbar_ctags_bin = '$VIM\ctags58\ctags.exe'
nmap <F8> :TagbarToggle<CR>

au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd
filetype plugin indent on     " required!
