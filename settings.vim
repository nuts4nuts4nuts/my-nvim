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
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" Line highlights
" Finished
au BufRead,BufNewFile *.txt   syntax match FinishedMatch "\v\+\+.*"
hi def  FinishedColor   ctermbg=darkgreen ctermfg=white    guibg=darkgreen guifg=lightgreen
hi link FinishedMatch FinishedColor

" Started
au BufRead,BufNewFile *.txt   syntax match StrikeoutMatch "\v\~\~.*"
hi def  StrikeoutColor   ctermbg=yellow ctermfg=white    guibg=#cc6600 guifg=pink
hi link StrikeoutMatch StrikeoutColor

" Title
au BufRead,BufNewFile *.txt   syntax match TitleMatch "\v__.*"
hi def  TitleColor   ctermbg=white ctermfg=black    guibg=white guifg=black
hi link TitleMatch TitleColor
