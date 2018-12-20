" Cool colors
colorscheme nova
" Search all lower = insensitive, any upper = sensitive
set ignorecase
set smartcase
" show list of options when autocompleting in cmds
set wildmenu
" Show these whitespace characters. :set list! to toggle
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list
" Keep the cursor away from the edges
set scrolloff=1
set sidescrolloff=3
" Use filetype specific indentation
set expandtab
set shiftwidth=4
set tabstop=4
filetype plugin indent on
" gvim settings to remove menu bar and toolbar
set guioptions-=m
set guioptions-=T
" set gvim font
set guifont=Source\ Code\ Pro\ 13,Consolas:h14:cANSI

" incremental search
set incsearch
" let backspace remove everything
set backspace=indent,eol,start
" line and column number in the bottom right
set ruler
set number
" hide buffers that are unsaved
set hidden
" disable annoying sticky comments
autocmd BufNewFile,BufRead * setlocal formatoptions-=ro
" Use non-gui tabline
set guioptions-=e

" associate .p8 files with the lua filetype
au BufNewFile,BufRead *.p8 setlocal ft=lua

" Line highlights
" Finished
au BufRead,BufNewFile *.txt   syntax match FinishedMatch "\v\+\+.*"
hi def  FinishedColor   ctermbg=darkgreen ctermfg=white    guibg=darkgreen guifg=lightgreen
hi link FinishedMatch FinishedColor

" NotDoing
au BufRead,BufNewFile *.txt   syntax match NotDoingMatch "\v--.*"
hi def  NotDoingColor   ctermbg=darkred ctermfg=white    guibg=darkred guifg=lightred
hi link NotDoingMatch NotDoingColor

" Started
au BufRead,BufNewFile *.txt   syntax match StrikeoutMatch "\v\~\~.*"
hi def  StrikeoutColor   ctermbg=yellow ctermfg=white    guibg=#cc6600 guifg=pink
hi link StrikeoutMatch StrikeoutColor

" Title
au BufRead,BufNewFile *.txt   syntax match TitleMatch "\v__.*"
hi def  TitleColor   ctermbg=white ctermfg=black    guibg=white guifg=black
hi link TitleMatch TitleColor

" Deoplete stuff
let g:deoplete#enable_at_startup = 1

" Auto format elm code
let g:elm_format_autosave = 1

" Omnisharp business
filetype plugin on
" Use fzf with OmniSharp
let g:OmniSharp_selector_ui = 'fzf'

if has('win32')
    colorscheme desert
endif

" Git branch in airline
let g:airline#extensions#branch#enabled = 1

" Quick Scope settings
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline

" Use eslint through ale
let g:ale_fixers = {
    \ 'javascript': ['eslint']
    \ }
