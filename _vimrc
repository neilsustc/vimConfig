" ===================================================================================
" https://github.com/VundleVim/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
Bundle 'https://github.com/scrooloose/nerdtree.git'
Bundle 'https://github.com/sheerun/vim-polyglot.git'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" -----------------------------------------------------------------------------------
" vim-Powerline
set noshowmode
set laststatus=2
"set encoding=utf-8
set t_Co=256

" ===================================================================================
winpos 30 30
set lines=35 columns=120
colorscheme molokai
set nu
set go=
set backspace=indent,eol,start
set guifont=Courier_new:h10
syntax on
set clipboard+=unnamed
"set cmdheight=2
set formatoptions=tcrqn
set cindent

" ===================================================================================
" tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

set list
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<

" imap for (, [, {, <, ', "
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i

" auto-completion with <Tab>
im <Tab> <C-P>
