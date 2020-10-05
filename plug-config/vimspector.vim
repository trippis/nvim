let vimspector_enable_mappings = 'HUMAN'
nmap <leader>dd :call vimspector#launch()<CR>
nmap <leader>dx :call VimspectorReset<CR>
nmap <leader>de :call VimspectorEval
nmap <leader>dw :call VimspectorWatch
nmap <leader>do :call VimspectorShowOutput
" autocmd FileType csharp nmap <leader>dd :CocCommand csharp.debug.vimspector.start<CR>
