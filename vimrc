behave xterm

" variable setup

set nocompatible
set modeline    " read mode line
set expandtab
set shiftwidth=4        " indent 4 spaces
set fdm=manual
set softtabstop=4       " tabstop 4 spaces
set ruler
set textwidth=0
set showmatch
set autoindent
set visualbell
set showfulltag
set hlsearch
set undolevels=1000 "explicitly state default, just in case...


set backspace=indent,eol,start
set updatetime=2000
set ignorecase          " ignore case in search patterns ...
set smartcase           " ... unless pattern contains uppercase
set title titlestring=%F%M%R
set statusline=%F%m%r%h%w%y%=%l,%c%V\ (%3b=0x%02B)\ %P
set scrolloff=2
set incsearch           " do incremental searching
set listchars=tab:^.,trail:�


" keymappings

map Q :nohlsearch<CR>

syntax on

map ,d :!git d % <CR> <CR>
set background=dark
colorscheme desert
if has("mouse")
set mouse=
endif

" If comparing files side-by-side, then ...
if &diff
    " double the width up to a reasonable maximum
    let &columns = ((&columns*2 > 172)? 172: &columns*2)

        " add bottom scrollbar
        set guioptions=agimrb
endif


syntax enable

syn sync fromstart

set helplang=en
set scroll=25
set ttyfast
set ttymouse=xterm2
set novisualbell
set smartindent
set nu
set smarttab
set laststatus=2
set nowrapscan
set nowrap

au BufRead,BufNewFile *.t           set filetype=perl
au BufRead,BufNewFile *.ctp         set filetype=html
au BufRead,BufNewFile *.tal         set filetype=html

set tabstop=8
set shiftround
set matchpairs+=<:>
set term=linux

set novb
set t_Co=32
