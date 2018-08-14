" Cool colors
colorscheme nova
" Search all lower = insensitive, any upper = sensitive
set ignorecase
set smartcase
" Show these whitespace characters. :set list! to toggle
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list
" Keep the cursor away from the edges
set scrolloff=4
set sidescrolloff=5

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
" Use filetype specific indentation
set expandtab
set shiftwidth=4
set softtabstop=4
filetype plugin indent on

" Omnisharp business
filetype plugin on
" Use fzf with OmniSharp
let g:OmniSharp_selector_ui = 'fzf'

" Highlight line when in normal mode
set cul
hi CursorLine cterm=NONE ctermbg=16
autocmd InsertEnter,InsertLeave * set cul!

" Use eslint through ale
let g:ale_fixers = {
    \ 'javascript': ['eslint']
    \ }
