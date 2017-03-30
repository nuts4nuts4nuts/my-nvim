" Cool colors
colorscheme desert
" Search all lower = insensitive, any upper = sensitive
set ignorecase
set smartcase
" Show these whitespace characters. :set list! to toggle
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list
" Keep the cursor away from the edges
set scrolloff=4
set sidescrolloff=5
" Pipe cursor in insert mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" Auto format elm code
let g:elm_format_autosave = 1
" Use filetype specific indentation
set expandtab
set shiftwidth=2
set softtabstop=2
filetype plugin indent on
