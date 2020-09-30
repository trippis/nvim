let g:coc_global_extensions=[ 'coc-json', 'coc-sql', 'coc-eslint', 'coc-html', 'coc-db', 'coc-snippets',
      \ 'coc-prettier', 'coc-emmet'
      \]

" NOTE: For XAML files, in vim you can run :setf xml
" and this will treat it as an xml file and will show coloring which makes it easier to read."

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if exists('*complete_info')
      inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
      inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
