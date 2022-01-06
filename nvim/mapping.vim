let mapleader = "\\"

" NORMAL MODE 
nnoremap ; :

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

nnoremap <Tab>n :NERDTreeToggle <CR>
nnoremap <Tab>r :source ~/.config/nvim/init.vim<CR> 
nnoremap <Tab>p :PrettierAsync <CR>
nnoremap <Tab>c :let @/=''<cr>
nnoremap <Tab>s :vsplit <cr>
nnoremap <Tab>f :FZF <cr>
nnoremap <Tab>h :set hlsearch!<cr>

" moving through screens
nnoremap <Tab><left>  <C-W>h
nnoremap <Tab><down>  <C-W>j
nnoremap <Tab><up>  <C-W>k
nnoremap <Tab><right>  <C-W>l

" VISUAL MODE

" copying & pasting 
vnoremap d "+d
vnoremap y "+y
vnoremap p "+p

" INSERT MODE
inoremap <leader><leader> <C-x><C-o>
inoremap <leader><cr> <C-o>o
inoremap <leader>o <C-x><C-o>
inoremap <leader>f <C-x><C-f>


function! MapBoth(keys, rhs)
    execute 'noremap' a:keys a:rhs
    execute 'inoremap' a:keys a:rhs
    execute 'cnoremap' a:keys a:rhs
endfunction

call MapBoth('<leader>`', '~')
call MapBoth('<leader>0',')' )
call MapBoth('<leader>1','!')
call MapBoth('<leader>2','@')
call MapBoth('<leader>3','#')
call MapBoth('<leader>4','$')
call MapBoth('<leader>5','%')
call MapBoth('<leader>6','^')
call MapBoth('<leader>7','&')
call MapBoth('<leader>8','*')

call MapBoth('<leader>]','}')
call MapBoth('<leader>;',':')
call MapBoth('<leader>.','>')
call MapBoth('<leader>,','<')
call MapBoth('<leader>=','+')
call MapBoth('<leader>-','_')
call MapBoth('<leader>`','~')
call MapBoth('<leader>/','?')
call MapBoth('<leader>`','~')

call MapBoth('<leader>[','{}<Left>')
call MapBoth('<leader>9','()<Left>')

noremap <leader>' "
inoremap <leader>' "
cnoremap <leader>' "
