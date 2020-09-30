" remap leader
let mapleader = "\<space>"

" handy key mappings
inoremap jk <ESC>
vnoremap jk <ESC>
inoremap kj <ESC>
vnoremap kj <ESC>
nnoremap <leader><space> :noh<CR>
nnoremap ; :
nnoremap D d$
nnoremap H 0
nnoremap L $

" custom mappings
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>gb :so %<CR>
nnoremap <leader>pi :PlugInstall<cr>
nnoremap <leader>pc :PlugClean<cr>

" easier window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-s> <C-w>s
" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize +2<CR>
nnoremap <M-k>    :resize -2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" habit breaker - stop using the arrow keys
nnoremap <Left> :echo "Use H key for left" <CR>
nnoremap <Right> :echo "Use L key for right" <CR>
nnoremap <Up> :echo "Use K key for up" <CR>
nnoremap <Down> :echo "Use J key for down" <CR>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

