if g:os == "Windows"
    let $plugpath = '~/AppData/Local/nvim/plugged'
else
    let $plugpath = '~/.config/nvim/plugged'
endif

call plug#begin($plugpath)

    if exists('g:vscode')
        " Easy motion for VSCode
        Plug 'asvetliakov/vim-easymotion'
        Plug 'machakann/vim-highlightedyank'
    else
        " Better syntax support
        Plug 'sheerun/vim-polyglot'
        " Better comments
        Plug 'tpope/vim-commentary'
        " File Explorer and icons
        Plug 'preservim/nerdtree' |
                    \ Plug 'Xuyuanp/nerdtree-git-plugin' |
                    \ Plug 'ryanoasis/vim-devicons' |
                    \ Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
        " Status lines
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        " Themes
        Plug 'arcticicestudio/nord-vim'
        Plug 'arzg/vim-colors-xcode'
        Plug 'joshdick/onedark.vim'
        Plug 'mhartington/oceanic-next'
        " Brackets - pairs and colours
        Plug 'jiangmiao/auto-pairs'
        Plug 'junegunn/rainbow_parentheses.vim'
        Plug 'tpope/vim-surround'
        "Git integration
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'mhinz/vim-signify'
        Plug 'tpope/vim-fugitive'
        Plug 'tpope/vim-rhubarb'
        Plug 'junegunn/gv.vim'
        " See what keys do like in emacs
        Plug 'liuchengxu/vim-which-key'
        " Snippets
        Plug 'honza/vim-snippets'
        Plug 'mattn/emmet-vim'
        " Fuzzy finder
        Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
        Plug 'junegunn/fzf.vim'
        Plug 'airblade/vim-rooter'
        " C# development
        Plug 'OmniSharp/omnisharp-vim'
        Plug 'nickspoons/vim-sharpenup'
        " Databases
        Plug 'tpope/vim-dadbod'
        Plug 'kristijanhusak/vim-dadbod-ui'
        " Ag powered code search/view tool
        Plug 'dyng/ctrlsf.vim'
        " Start screen
        Plug 'mhinz/vim-startify'

    endif
call plug#end()

" automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
