" hidoos config
" =============
 set nocompatible               " be iMproved
 filetype off                   " required!
 set vb t_vb=
 set rtp+=$VIM/vimfiles/bundle/vundle/ " 
 call vundle#rc('$VIM/vimfiles/bundle')

 " let Vundle manage Vundle
 " required! 
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 Bundle 'gmarik/vundle'
 Bundle 'FencView.vim'
 Bundle 'scrooloose/nerdtree'
 Bundle 'mattn/emmet-vim'
 Bundle 'bufexplorer.zip'

 " 查找buffer里面的文件 //nice~
 Bundle 'kien/ctrlp.vim' 
 " 自动补全
 Bundle 'Shougo/neocomplcache.vim' 
 " 多光标多行编辑
 Bundle 'terryma/vim-multiple-cursors' 
 " 注释
 Bundle 'tpope/vim-commentary' 
 autocmd FileType apache set commentstring=#\ %s
 " js smartauto
 Bundle 'maksimr/vim-jsbeautify'
 Bundle 'einars/js-beautify'
 Bundle 'editorconfig/editorconfig-vim'

  map <c-f> :call JsBeautify()<cr>
  " or
  autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
  " for html
  autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
  " for css or scss
  autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

 Bundle "MarcWeber/vim-addon-mw-utils"
 Bundle "tomtom/tlib_vim"
 Bundle "garbas/vim-snipmate" 
 Bundle "honza/vim-snippets"

 " vim markdown for git markdown-systax
 Bundle 'jtratner/vim-flavored-markdown'
 augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
 augroup END
 filetype plugin indent on     " required!

" =====================
" 环境配置
" =====================
set helplang=cn " 行控制
set linebreak " 英文单词在换行时不被截断
set wrap " 设置自动折行
" 标签页
set tabpagemax=15 " 最多15个标签
set number " 行号
set hlsearch  " 高亮显示搜索的内容
set noincsearch " 关闭显示查找匹配过程
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
set foldmethod=indent "代码折叠

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
set ignorecase " 搜索时无视大小写

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

au GUIEnter * simalt ~x
source $VIMRUNTIME/delmenu.vim  
source $VIMRUNTIME/menu.vim  
language messages zh_CN.utf-8  
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

" 关闭VIM的时候保存会话，按F122读取会话
set sessionoptions=buffers,sesdir,help,tabpages,winsize
au VimLeave * mks! ~/Session.vim
nmap <F7> :so ~/Session.vim<CR>

" =====================
" 快捷键
" =====================
inoremap <C-A> <Home>
inoremap <C-E> <End>
inoremap <C-F> <Right>
inoremap <C-B> <Left>

"设置','为leader快捷键
let mapleader = ","
let g:mapleader = ","

"设置快速保存和退出
nmap <leader>s :w!<cr>
nmap <leader>w :wq!<cr>
nmap <leader>q :q!<cr>

nmap bw <C-w>w <cr>
nmap bn :bn<cr>
nmap bp :bp<cr>

" 插件快捷键
nmap <leader>d :NERDTree<cr>
nmap <C-e> :BufExplorer<cr>
nmap <f2>  :BufExplorer<cr>

nmap mm :%s/\r//g<cr> "删除 \r

" 按下 Q 不进入 Ex 模式，而是退出
nmap Q :x<cr>

"Use spacebar toggle fold
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

"关闭自动检测编码用F6控制(fencview.vim)
let g:fencview_autodetect=0
map <F6> :FencView<cr>
map <c-d> :NERDTree <cr>

" vim: set et sw=4 ts=4 sts=4 fdm=marker ft=vim ff=unix fenc=utf8:
