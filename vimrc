" By yongcong.wang @ 2019-12-05
" Contents:
"   => General
"   => Color
"   => Text
"   => Functions

" => General 
set history=5000 " count of history lines

filetype plugin on " enable filetype plugins
filetype indent on

set autoread " auto reload if a file changed outside
au FocusGained,BufEnter * checktime

" set so=7 " roll the screen at so num lines from bottom

set wildignore=*.o,*~,*.pyc,*/.git/*,*/.vscode/* " ignore files

set ruler " show current position

set cmdheight=1 " command bar height

set backspace=eol,start,indent " backspace act like an editor
set whichwrap+=<,>,h,l

set smartcase " smart

set hlsearch " hl search result

set showmatch " show matching brackets for 2s
set mat=2

set noerrorbells " no error bells
set novisualbell
set t_vb=
set tm=500

set nobackup " no backup
set nowb
set swapfile

" finding files
"set path+=** " search into subfolders & provide tab-completion
"set wildmenu " display all matching files when tab complete

" tag jump
command! MakeTags !ctags -R .
set tags=./tags,**5/tags,tags;~
"                          ^ in working dir, or parents until home
"                   ^ in any subfolder of working dir, depth is 5
"           ^ sibling of open file

" file browsing
" let g:netrw_banner=0 " disable banner
" let g:netrw_browse_split=4 " open in prior window
" let g:netrw_altv=1 " open split to the right
" let g:netrw_liststyle=3 " tree view
" let g:netrw_winsize=25 " 25% of current window
" let g:netrw_list_hide=netrw_gitignore#Hide() " ignore files in gitignore
" let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+' " hide some folder

" => Color

syntax enable "highlight syntax

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

colorscheme pablo " colorscheme

set background=dark 

set colorcolumn=81 " color at 81

set ambiwidth=double " support chinese

set mouse=a " use mouse in all mode, a for all mode

set noundofile " no undo file

set clipboard+=unnamed " share clipboard with windows

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

highlight LineNr ctermbg=black " line num background color
highlight ColorColumn ctermbg=0 guibg=lightgrey " 81 char color

" => Text
set encoding=utf8 " encode

set ffs=unix,dos,mac " unix as format

set expandtab " use space instead of tabs
set smarttab

set shiftwidth=2 " 1 tab = 2 spaces
set tabstop=2

set ai " auto indent
set si " smart indent
set wrap " wrap lines

" set lbr " line break on 80 chars
" set tw=80

set nu " show line num

set foldenable " no fold code
set laststatus=2
set statusline=%F
set statusline+=%=
set foldlevel=9999

" highlight files
au BufRead,BufNewFile *.launch set filetype=xml
au BufRead,BufNewFile *.dag set filetype=python
au BufRead,BufNewFile *.pb.txt set filetype=proto

" zoom
set foldmethod=indent " use fold indent
let g:markdown_folding=1 " markdown zoom

" => Functions
" cpp header
function AddTemplate_cpp()
	let infor = "// By yongcong.wang @ ".strftime("%d/%m/%Y")."\n"
	silent put! = infor
endfunction

autocmd BufNewFile *.cc call AddTemplate_cpp()
autocmd BufNewFile *.cpp call AddTemplate_cpp()
autocmd BufNewFile *.h call AddTemplate_cpp()

" python header
function AddTemplate_py()
	let infor = "#!/usr/bin/env python3\n"
	\."# -*- coding: utf-8 -*-\n"
	\."# By yongcong.wang @ ".strftime("%d/%m/%Y")."\n"
	silent put! = infor
endfunction

autocmd BufNewFile *.py call AddTemplate_py()

" shell header
function AddTemplate_sh()
	let infor = "#!/bin/bash\n"
	\."# By yongcong.wang @ ".strftime("%d/%m/%Y")."\n"
	silent put! = infor
endfunction

autocmd BufNewFile *.sh call AddTemplate_sh()

" yaml header
function AddTemplate_yaml()
	let infor = "# By yongcong.wang @ ".strftime("%d/%m/%Y")."\n"
	silent put! = infor
endfunction

autocmd BufNewFile *.yaml call AddTemplate_yaml()

" cmakelists header
function AddTemplate_camkelists()
	let infor = "# By yongcong.wang @ ".strftime("%d/%m/%Y")."\n"
            \."cmake_minimum_required(VERSION 3.10)\n"
            \."project(todo)\n\n"
            \."set(CMAKE_CXX_STANDARD 11)\n"
	silent put! = infor
endfunction

autocmd BufNewFile CMakeLists.txt call AddTemplate_camkelists()

" vim header
function AddTemplate_vim()
	let infor = "\" By yongcong.wang @ ".strftime("%d/%m/%Y")."\n"
	silent put! = infor
endfunction

autocmd BufNewFile *.vim call AddTemplate_vim()

" cpp function coments
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

let cpp_function = "  /**\n"
                 \."  * @brief \n"
                 \."  * @param \n"
                 \."  * @return \n"
                 \."  */\n"
command! InsertCppFunction put! = cpp_function
