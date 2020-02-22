" By yongcong.wang @ 2019-12-05

" ========== Functions
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

" ========== vim config
set nu! " set num

syntax enable "highlight syntax

syntax on

set t_Co=256

set showmatch " set match mode

set smartindent " set auto align

set ai! " set auto indent

set ambiwidth=double " set chinese support

set guifont=consolas:h12 " set font and size

set mouse=a " use mouse

set noundofile " no undo file

set clipboard+=unnamed " share clipboard with windows

set colorcolumn=81 "81 charactor

set tabstop=2 " tab = 2 spaces

set shiftwidth=2 " auto ai 2 space

set expandtab " replace tab by space

set nofoldenable " no fold code

set hlsearch " highlight search
