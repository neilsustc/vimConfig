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
" GUI

winpos 30 30
set lines=35 columns=120
colorscheme molokai
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
set cursorline
set nu
set go=
set backspace=indent,eol,start
set guifont=Courier_new:h10
syntax on
set clipboard+=unnamed
"set cmdheight=2
set formatoptions=tcrqn
set cindent
set hlsearch

" Add a bit extra margin to the left
set foldcolumn=1

" ===================================================================================
" Map leader

let mapleader = ","
let g:mapleader = ","
" (,c) back to normal mode
imap <leader>c <esc>
" Fast saving
nmap <leader>w :w<cr>
" Fast editing of .vrc (,ev)
nmap <silent> <leader>ev :e $MYVIMRC<cr>
" Fast reloading of the .vimrc (,sv)
nmap <silent> <leader>sv :so $MYVIMRC<cr>
" When .vimrc is edited, reload it
"-autocmd! bufwritepost $MYVIMRC source $MYVIMRC
" Disable highlight when <leader><cr> is pressed
nmap <silent> <leader><cr> :noh<cr>
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

" ===================================================================================
" Move around

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" ===================================================================================
" Editing mappings

" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
