winpos 30 30
set lines=36 columns=160
colorscheme molokai
set nu
set go=
set backspace=indent,eol,start
set guifont=Courier_new:h10
syntax on
set clipboard+=unnamed
set cmdheight=2
set formatoptions=tcrqn
set cindent

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
