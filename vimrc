" By yongcong.wang @ 2019-12-05
" Contents:
"   => General
"   => Colors
"   => Text
"   => Functions
"   => Extend File

" => General 
set history=500 " count of history lines

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

" => Color

syntax enable "highlight syntax

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme desert " colorscheme
catch
endtry

set background=dark 

set colorcolumn=81 " color at 81

set ambiwidth=double " support chinese

set mouse=a " use mouse

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

set lbr " line break on 80 chars
set tw=80

set nu! " show line num

set nofoldenable " no fold code

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
            \."cmake_minimum_required(VERSION 2.8)\n"
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

" => Extend File
let g:cpp_class_scope_highlight = 1

let g:cpp_member_variable_highlight = 1

let g:cpp_class_decl_highlight = 1

let g:cpp_posix_standard = 1

" let g:cpp_experimental_simple_template_highlight = 1

" let g:cpp_experimental_template_highlight = 1

let g:cpp_concepts_highlight = 1

" let g:cpp_no_function_highlight = 1
