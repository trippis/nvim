" required as NVIM 0.4.4 on windows can't see the python3.8 path
let g:python3_host_prog = 'c:\python38\python.exe'

" set the default gui font for vim/nvim
set guifont=mononoki\ Nerd\ Font

"Allow project specific .vimrc execution
set exrc

"no backup files
set nobackup

"only in case you don't want a backup file while editing
set nowritebackup

"no swap files
set noswapfile

" No wrapping
set nowrap

" tame search/moving
set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch
set gdefault

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" all utf-8
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

" enable backspace...
set bs=2

"show line numbers
set relativenumber number

" show cursorline
set cursorline

"don't beep
set belloff=all

" Show white spaces a
set listchars=tab:>·,trail:~,extends:>,precedes:<,space:·
set list

" 4 spaces indentation
set tabstop=4 softtabstop=0 expandtab shiftwidth=4

" Deal with unwanted white spaces (show them in red)
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Syntax settings
syntax on
syntax enable

filetype plugin indent on

" auto source when writing to init.vm alternatively you can run :source $MYVIMRC"
au! BufWritePost $MYVIMRC source %

" auto save on exit or tabbing to another app
au FocusLost * :wa

"Disable unsafe commands since we are allowing project specific .vimrc file execution
set secure

" Copy paste between vim and everything else
set clipboard=unnamedplus

" open new split panes to right and below
set splitright
set splitbelow

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
    vsplit term://powershell
endfunction
nnoremap <c-a> :call OpenTerminal()<CR>clear<CR>

