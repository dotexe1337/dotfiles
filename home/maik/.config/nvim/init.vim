set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'skywind3000/vim-quickui'
call vundle#end()            " required
filetype plugin indent on    " required
set title
set bg=light
set go=a
set mouse=a
set nohlsearch
set clipboard+=unnamedplus
set noruler
set laststatus=0
nnoremap c "_c
syntax on
set nocompatible
set encoding=utf-8
set number
highlight LineNr ctermfg=grey
call quickui#menu#reset()
call quickui#menu#install('&File', [
            \ [ "&New File\tCtrl+n", 'new' ],
            \ [ "&Open File\t(F3)", 'call feedkeys(":edit ")' ],
            \ [ "&Close", 'close' ],
            \ [ "--", '' ],
            \ [ "&Save\tCtrl+s", 'w'],
            \ [ "Save &As", 'call feedkey(":saveas ")' ],
            \ [ "Save All", 'wa' ],
            \ [ "--", '' ],
            \ [ "E&xit\tAlt+x", 'q' ],
            \ ])
call quickui#menu#install('H&elp', [
			\ ["&Cheatsheet", 'help index', ''],
			\ ['T&ips', 'help tips', ''],
			\ ['--',''],
			\ ["&Tutorial", 'help tutor', ''],
			\ ['&Quick Reference', 'help quickref', ''],
			\ ['&Summary', 'help summary', ''],
			\ ['--',''],
			\ ['&Vim Script', 'help eval', ''],
			\ ['&Function List', 'help function-list', ''],
			\ ], 10000)
let g:quickui_show_tip = 1
nnoremap <silent><space><space> :call quickui#menu#open()<cr>
set statusline=FileType:\ %y
set statusline+=\ \|\ 
set statusline+=Path:\ %f
set statusline+=%=
set statusline+=Column:\ %v
set statusline+=\ \|\ 
set statusline+=Row:\ %l
set laststatus=2
