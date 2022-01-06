source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/config.vim
source $HOME/.config/nvim/mapping.vim
source $HOME/.config/nvim/statusbar.vim

" Don't try to be vi compatible
set nocompatible

" Turn on syntax highlighting
syntax on

" Security
set modelines=0

" Statusline
set laststatus=2
" Show line numbers
set number

" Show file stats
set ruler

" Try to speed up scrolling
set ttyfast

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=18
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Allow hidden buffers
set hidden

" Last line
set showmode
set showcmd

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬

set t_Co=256
set background=dark
colorscheme gruvbox
