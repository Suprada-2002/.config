call plug#begin('~/.vim/autoload/plugged')

    Plug 'cheap-glitch/vim-v', { 'for': 'v' }
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'ajh17/VimCompletesMe'
    Plug 'junegunn/rainbow_parentheses.vim',  
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'morhetz/gruvbox'
    Plug 'scrooloose/NERDTree', { 'on':  'NERDTreeToggle' }
    Plug 'mattn/emmet-vim'
    Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript','toml','sql' ,'css','scss', 'json', 'svelte', 'markdown', 'html'] }

call plug#end()

let g:v_warnings=1
" Rainbow Parentasis
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['{', '}'],['[',']'],['(',')']]
let g:rainbow#blacklist = [233, 234]

" NerdTree
let g:NERDTreeShowHidden=1

" Coc
let g:coc_disable_startup_warning = 1 
autocmd FileType scss setl iskeyword+=@-@
let g:coc_start_at_startup=0

" Emmet
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key=','
autocmd FileType md,html,css,scss,svelte EmmetInstall
