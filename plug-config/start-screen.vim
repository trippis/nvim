let g:startify_session_dir = '~/AppData/Local/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Recent Files']             },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()]  },
          \ { 'type': 'sessions',  'header': ['   Sessions']        },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']       },
          \ ]

let g:startify_bookmarks = [
          \ { 'i': '~/AppData/Local/nvim/init.vim' },
          \ { 'n': '~/AppData/Local/nvim' },
          \ { 'r': '~/AppData/Loca/nvim/repos' }
          \ ]

let g:startify_session_autoload = 1

let g:startify_session_delete_buffers = 1

let g:startify_change_to_vcs_root = 1

let g:startify_fortune_use_unicode = 1

let g:startify_session_persistence = 1

let g:startify_enable_special = 0

let g:startify_custom_header = [
         \  '  _____ _             _      _____                          ',
         \  ' / ____| |           | |    / ____|                         ',
         \  '| (___ | |_ __ _ _ __| |_  | |___   ___ _ __ ___  ___ _ __  ',
         \  ' \___ \| __/ _  |  __| __|  \___ \ / __|  __/ _ \/ _ \  _ \ ',
         \  ' ____) | || |_| | |  | |_   ____| | |__| | |  __/  __/ | | |',
         \  '|_____/ \__\__,_|_|   \__| |_____/ \___|_|  \___|\___|_| |_|',
         \]


