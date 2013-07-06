"文件編碼格式
set encoding=utf-8
set fileencodings=utf-8,big5,latin-1
set fileencoding=utf-8

"主控台編碼格式
language messages zh_TW.utf-8

"定義常數
if has("win32")
  let $VIMFILES = '~/vimfiles'
else
  let $VIMFILES = '~/.vim'
endif

" 套件相關
source $VIMFILES/bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

" 顯示設定
colorscheme anotherdark
set guifont=Monaco:h14:cANSI
set guifont=Monaco\ 14
set t_Co=256 " 256色顯示
syntax on " 語法高亮顯示
set nu " 顯示行號
set guioptions-=m
set guioptions-=T
set guioptions-=L
set guioptions-=r

" 編輯喜好設定
set nocompatible " VIM 不使用和 VI 相容的模式
filetype plugin on " 判斷類型
set ai           " 自動縮排
set shiftwidth=4 " 設定縮排寬度 = 4 
set tabstop=4    " tab 的字元數
set softtabstop=4
set expandtab    " 用 space 代替 tab
set viminfo=     " 關閉viminfo
set foldmethod=syntax "以語法摺疊

set ruler        " 顯示右下角設定值
set backspace=2  " 在 insert 也可用 backspace
set ic           " 設定搜尋忽略大小寫
set ru           " 第幾行第幾個字
set hlsearch     " 設定高亮度顯示搜尋結果
set incsearch    " 在關鍵字還沒完全輸入完畢前就顯示結果
set smartindent  " 設定 smartindent
set confirm      " 操作過程有衝突時，以明確的文字來詢問
set history=100  " 保留 100 個使用過的指令
set cursorline   " 顯示目前的游標位置

" 快捷鍵
" 進入workspace
nmap @ :cd $ws<CR>
" Coding相關
" 縮排
nmap <tab> V>
nmap <s-tab> V<
vmap <tab> >gv
vmap <s-tab> <gv
" 開關NERDTree
map <F2> <ESC>:NERDTreeToggle<CR>
" 使用g++編譯
autocmd FileType cpp map <F9> <ESC>:!g++ % -o %<.exe<CR>
" 執行
autocmd FileType cpp map <F5> <ESC>:!./%<.exe<CR>
" 開啟name.in
com INPUT sp %<.in
" 輸入name.in並執行
autocmd FileType cpp map <c-F5> <ESC>:!./%<.exe <%<.in<CR>

" 切換分割窗
" 移到下面分割窗並放大
map <C-J> <C-W>j<C-W>_ 
" 移到上面分割窗並放大
map <C-K> <C-W>k<C-W>_
" 移到左邊分割窗並放大
nmap <c-h> <c-w>h<c-w><bar>
" 移到右邊分割窗並放大
nmap <c-l> <c-w>l<c-w><bar>
" 將分割窗最小長寬設為0，才能放到最大
set wmw=0
set wmh=0
