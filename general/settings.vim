" required as NVIM 0.4.4+ on windows can't see the python3.8 path
if g:os == "Windows"
    let g:python3_host_prog = 'c:\python38\python.exe'
endif

" set the default gui font for vim/nvim
" set guifont=mononoki\ Nerd\ Font

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

" Syntax settings
syntax on
syntax enable

filetype plugin indent on

"Disable unsafe commands since we are allowing project specific .vimrc file execution
set secure

" Copy paste between vim and everything else
set clipboard=unnamedplus

" open new split panes to right and below
set splitright
set splitbelow

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

