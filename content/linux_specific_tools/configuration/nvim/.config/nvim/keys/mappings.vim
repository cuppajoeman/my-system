let mapleader = " "
" edit the config quickly
map <leader>ve :tabnew ~/.config/nvim/init.vim<CR>
map <leader>vr :source ~/.config/nvim/init.vim<CR>


" Quick Buffer list
nnoremap <leader>b :ls<cr>:b<space>

" Replace the word under cursor
nnoremap <Leader>r :%s/\<<C-r><C-w>\>/

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Copying to clipboard quickly
nnoremap <leader>y "+y

" Copy whole file to clipboard
nnoremap <leader>c :%y+<CR>

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Don't break your fingers on regex

" Non greedy version of .*
cmap <c-o> .\{-}

" Operate on visual selection
cmap <c-v> \%V
" Groups
cmap <c-g> \(\)<left><left>
cmap <c-h> <left>
cmap <c-l> <right>

" clear search
map <leader><space> :let @/=''<cr> 

" Remap help key.
map <F1> :tab help<CR>

" custom text objects 
" In Line: entire line sans white-space
xnoremap <silent> il :<c-u>normal! g_v^<cr>
onoremap <silent> il :<c-u>normal! g_v^<cr>

map <leader>h :tab help 

nnoremap <leader>f :! blacktex -i "%:p"<cr>
