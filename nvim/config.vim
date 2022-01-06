set updatetime=800

vnoremap <silent><Leader>y "yy <Bar> :call system('xclip', @y)<CR>
autocmd BufNewFile,BufRead *.svelte set syntax=html

" Omin functions
autocmd FileType svelte set omnifunc=csscomplete#CompleteCSS
" autocmd BufWritePost *.scss !sass <afile> style.css

" Searching
nnoremap / /
vnoremap / /

set nohlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
