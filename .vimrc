set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
Plugin 'altercation/vim-colors-solarized'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" completion for python
Plugin 'davidhalter/jedi-vim'

" python folding
Plugin 'tmhedberg/SimpylFold'

" syntax highlighting, ale works async so should be faster
" Plugin 'vim-syntastic/syntastic'
Plugin 'w0rp/ale'

" fuzzy file searching
Plugin 'wincent/command-t'

" tag bar, needs ruby compiled in vim
" Plugin 'majutsushi/tagbar'

" light status bar for vim
" Plugin 'bling/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
Plugin 'lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'

" send to maya plugin
Plugin 'yamahigashi/sendtomaya.vim'

" goyo distraction free programming
Plugin 'junegunn/goyo.vim'

" async code running
Plugin 'skywind3000/asyncrun.vim'

" python IDE features
" Plugin 'klen/python-mode'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
"
" Put your non-Plugin stuff after this line

" enable syntax highlighting
syntax enable
set background=light
" set colors
let g:solarized_termcolors=256
colorscheme solarized

if has('gui_running')
    set background=dark
else
    set background=dark
endif

let g:airline_solarized_bg='dark'

" encoding for python
set encoding=utf-8

set modeline
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

" enable folding update
set foldmethod=indent
set foldlevel=99
" add line numbers
set number


" send to maya setup
let g:send_to_maya_host="localhost"
let g:send_to_maya_port=12345

let g:send_to_maya_prefer_language = 'python'
nmap <silent><Leader>mayaa :SendToMaya<CR>

" turn off bell
set visualbell

" color fix for gnome terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif    

" NERDTree ignore .pyc files
let NERDTreeIgnore = ['\.pyc$']

" code formatter yapf
autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>

" isort
autocmd FileType python nnoremap <LocalLeader>i :0,$!isort % -d<CR><CR>

" set local map leader to comma
let mapleader=","
let maplocalleader=","

" disable rope from python-mode
let g:pymode_rope = 0

