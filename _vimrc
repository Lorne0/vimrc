" 文件編碼格式
set encoding=utf-8
set fileencodings=utf-8,big5 " encoding priority when open file
set fileencoding=utf-8 " default encoding

" 主控台編碼格式
language messages zh_TW.utf-8

" pathogen
source ~/.vim/bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

" visual
syntax on " highlight
set nu " line num
set wrap linebreak
set t_Co=256

" edit
set nocompatible " VIM 不使用和 VI 相容的模式
filetype plugin on " 判斷類型
set foldmethod=syntax
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab    " replace tab by space
set smartindent
set viminfo=     " do not use viminfo

set ruler        " Top/Bot/All/%
set hlsearch     " set the search result highlighted
set incsearch    " 在關鍵字還沒完全輸入完畢前就顯示結果
set confirm      " 操作過程有衝突時，以明確的文字來詢問
set history=100

" hotkeys
map <F2> <ESC>:NERDTreeToggle<CR>
autocmd FileType c map <F9> <ESC>:w<CR>:!gcc % -o %<<CR>
autocmd FileType cpp map <F9> <ESC>:w<CR>:!g++ % -o %<<CR>
autocmd FileType c,cpp map <F5> <ESC>:!./%<<CR>
autocmd FileType c,cpp map <c-F5> <ESC>:!./%< <%<.in<CR>

" commands
com INPUT sp %<.in

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
set wmw=0 wmh=0
