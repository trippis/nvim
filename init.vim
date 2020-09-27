" set a global variable to detect windows or linux
if !exists("g:os")
    if has("Win64") || has("Win32") || has("Win16")
        let g:os = "Windows"
        let $TMP = "/tmp" " needed for the bash function to work with temp files
    else
        let g:os = substitute(system('uname'), '\n', '', '')
    endif
endif

let $nvimpath = stdpath("config")

"General settings
if !exists('g:vscode')
    source $nvimpath/plug-config/polyglot.vim
endif

source $nvimpath/vim-plug/plugins.vim
source $nvimpath/general/settings.vim
source $nvimpath/general/functions.vim
source $nvimpath/keys/mappings.vim

if exists('g:vscode')

    " VS Code extension
    source $nvimpath/vscode/settings.vim
    source $nvimpath/plug-config/easymotion.vim
    source $nvimpath/plug-config/highlightyank.vim
else

    " Plugin configuration
    source $nvimpath/plug-config/coc.vim
    source $nvimpath/plug-config/nerdtree.vim
    source $nvimpath/plug-config/omnisharp.vim
    source $nvimpath/plug-config/sharpenup.vim
    source $nvimpath/plug-config/ctrlsf.vim
    source $nvimpath/plug-config/signify.vim
    source $nvimpath/plug-config/start-screen.vim
    source $nvimpath/plug-config/fzf.vim

    "Themes
    source $nvimpath/plug-config/airline.vim
    source $nvimpath/themes/nord.vim
endif

