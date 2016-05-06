set nocompatible    " be iMproved, required

syntax enable		" 开启语法高亮
if has("syntax")
    syntax on
endif

set laststatus=2	" 总是显示状态栏
set nu    			" show line number
set ruler 			" show row, column
set showcmd
set go=
set cindent
set ts=4
" set nowrap			" 禁止r行
set encoding=utf-8
colorscheme desert
set incsearch       " 开启实时搜索
set ignorecase      " 搜索大小写不敏感
set hlsearch		" 高亮显示搜说结果
set wildmenu		" vim命令行模式只能不全
let mapleader = "," " 设置leader键
	
" 禁止光标闪烁
set gcr=a:block-blinkkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" insert mode shortcut
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <DELETE>

" plugin manage
if filereadable(expand("~/.vimrc.bundles"))
	source ~/.vimrc.bundles
endif

" Setting for taglist
let Tlist_Use_Right_Window = 1 			"让taglist窗口出现在Vim的右边
let Tlist_File_Fold_Auto_Close = 1 		"当同时显示多个文件中的tag时，设置为1，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来。
let Tlist_Show_One_File = 1 			"只显示一个文件中的tag，默认为显示多个
let Tlist_Sort_Type ='name' 			"Tag的排序规则，以名字排序。默认是以在文件中出现的顺序排序
let Tlist_GainFocus_On_ToggleOpen = 1 	"Taglist窗口打开时，立刻切换为有焦点状态
let Tlist_Exit_OnlyWindow = 1 			"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_WinWidth = 32 				"设置窗体宽度为32
let Tlist_Ctags_Cmd ='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
map t :TlistToggle
