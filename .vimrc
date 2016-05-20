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
set history=100
" set nowrap			" 禁止r行
set encoding=utf-8

" 將制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 把连续数量空格视为制表符
set softtabstop=4

" 基于缩进或语法进行代码折叠
" set foldmethod=indent
set foldmethod=syntax
" 启动vim时关闭折叠代码
set nofoldenable

" 设置gui字体
"set guifont = DejaVu\ Sans\ Mono\ for\ Powerline\ 14
" for mac
set guifont=Meslo\ LG\ S\ for\ Powerline:h14	
" for linux
"set guifont=Meslo\ LG\ S\ for\ Powerline\ 14	

" 主题配色
set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized 

let g:molokai_original=1
colorscheme molokai

set incsearch       " 开启实时搜索
set ignorecase      " 搜索大小写不敏感
set hlsearch		" 高亮显示搜说结果
set wildmenu		" vim命令行模式只能不全
let mapleader = ";" " 设置leader键
	
" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" insert mode shortcut
"inoremap <C-h> <Left>
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
"inoremap <C-l> <Right>
"inoremap <C-d> <DELETE>

" plugin manage------------------------------------------------------------
if &compatible
	set nocompatible
end

filetype off				  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'scrooloose/nerdtree'
Plugin 'qpkorr/vim-bufkill'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'taglist.vim'
Plugin 'auto-pairs'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" -----------------------------------------------------------------------------

" Setting for taglist
let Tlist_Use_Right_Window = 1 			"让taglist窗口出现在Vim的右边
let Tlist_File_Fold_Auto_Close = 1 		"当同时显示多个文件中的tag时，设置为1，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来。
let Tlist_Show_One_File = 1 			"只显示一个文件中的tag，默认为显示多个
let Tlist_Sort_Type ='name' 			"Tag的排序规则，以名字排序。默认是以在文件中出现的顺序排序
let Tlist_GainFocus_On_ToggleOpen = 1 	"Taglist窗口打开时，立刻切换为有焦点状态
let Tlist_Exit_OnlyWindow = 1 			"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_WinWidth = 32 				"设置窗体宽度为32
let Tlist_Ctags_Cmd ='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
nnoremap <leader>t :TlistToggle<CR>

" 配置air-line
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>

" Setting for syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Setting for YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" Setting for Nerdtree
nnoremap <leader>n :NERDTreeToggle<CR>
