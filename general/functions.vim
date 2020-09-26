" auto source when writing to init.vm alternatively you can run :source $MYVIMRC"
au! BufWritePost $MYVIMRC source %

" auto save on exit or tabbing to another app
au FocusLost * :wa

" Deal with unwanted white spaces (show them in red)
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" NOTE: this convolted if statemnt tries to cover all my use cases for
" terminal on Windows Terminal, Git bash & iTerm2.

if g:os == "Windows" && $TERM == 'xterm-256color'

    " this is for Git bash on Windows Terminal
    let &shell='bash.exe'
    let &shellcmdflag = '-c'
    let &shellredir = '>%s 2>&1'
    set shellquote= shellxescape=
    set shellxquote=
    let &shellpipe='2>&1| tee'

elseif g:os == "Windows" && $TERM == 'vtpcon'

    " uses powershell on windows terminal
    function! OpenTerminal()
        vsplit term://powershell
    endfunction

    nnoremap <c-a> :call OpenTerminal()<CR>clear<CR>
else

    " uses bash on mac/linux
    function! OpenTerminal()
        split term://bash
        resize 10
    endfunction

    nnoremap <c-a> :call OpenTerminal()<CR>
endif


