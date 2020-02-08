"                                  _
"  _______  ______  ____  ____ _  (_)___  ___  ____ ___  ____ _____
" / ___/ / / / __ \/ __ \/ __ `/ / / __ \/ _ \/ __ `__ \/ __ `/ __ \
"/ /__/ /_/ / /_/ / /_/ / /_/ / / / /_/ /  __/ / / / / / /_/ / / / /
"\___/\__,_/ .___/ .___/\__,_/_/ /\____/\___/_/ /_/ /_/\__,_/_/ /_/
"         /_/   /_/         /___/

" Automatic vim-plug installation
	if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif


" Plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'ajh17/VimCompletesMe'
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'takac/vim-hardtime'
call plug#end()


".▄▄ · ▄▄▄ .▄▄▄▄▄▄▄▄▄▄▪   ▐ ▄  ▄▄ • .▄▄ ·
"▐█ ▀. ▀▄.▀·•██  •██  ██ •█▌▐█▐█ ▀ ▪▐█ ▀.
"▄▀▀▀█▄▐▀▀▪▄ ▐█.▪ ▐█.▪▐█·▐█▐▐▌▄█ ▀█▄▄▀▀▀█▄
"▐█▄▪▐█▐█▄▄▌ ▐█▌· ▐█▌·▐█▌██▐█▌▐█▄▪▐█▐█▄▪▐█
" ▀▀▀▀  ▀▀▀  ▀▀▀  ▀▀▀ ▀▀▀▀▀ █▪·▀▀▀▀  ▀▀▀▀

" Leader
	let mapleader =" "

" Enable autocompletion:
	set wildmode=longest,list,full

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Open this file easily
    map <leader>ve :vs ~/.vimrc<CR>
    map <leader>vr :source ~/.vimrc<CR>

" Goyo for more readable text
    map <leader>g :Goyo \| set linebreak<CR>
    set nocompatible
    set number
    set relativenumber

" Code
	syntax on
	" Verilog
	autocmd BufNewFile,BufRead *.v,*.vs set syntax=verilog

" Hardmode
	let g:hardtime_default_on = 1

" Persistent Undo
	set noswapfile
	set undofile " Maintain undo history between sessions
	set undodir=~/.vim/undodir

" Splits open at the bottom and right
    set splitbelow
    set splitright

" Shortcutting split navigation, saving a keypress:
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

" Search settings
    set incsearch
    set nowrapscan

" Indentataion
    set autoindent
    " size of a hard tabstop
    set tabstop=4

    " size of an "indent"
    set shiftwidth=4

" colorscheme 
	set background=dark
	colorscheme gruvbox

" Bar
	let g:airline_section_b = '%{strftime("%H:%M")}'

" Vimcompletesme selection
	inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" openframeworks compile
	" autocmd  BufRead,BufNewFile  *.cpp let &makeprg = 'if [ -f Makefile ]; then make Release && make RunRelease; else make Release -C .. && make RunRelease -C ..; fi'
" middle of line command
	map <leader>m :call cursor(0, virtcol('$')/2)<CR>

" Open bottom terminal
	map <leader>bt :new +resize10 term://bash<CR>

