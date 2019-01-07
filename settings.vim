if has('win32')
    colorscheme desert
endif

" Cool colors
set termguicolors
colorscheme gruvbox
set background=dark

" Search all lower = insensitive, any upper = sensitive
set ignorecase
set smartcase
" Use filetype specific indentation
set expandtab
set shiftwidth=4
set tabstop=4
filetype plugin indent on
" hide buffers that are unsaved
set hidden
" disable annoying sticky comments
autocmd BufNewFile,BufRead * setlocal formatoptions-=ro
" wildmode more like bash (tab keeps completing as long as it's unambiguous)
set wildmode=list,longest
" make the mouse work in console vim
set mouse=a

" Gui options
if has("gui_running")
    " Use non-gui tabline
    set guioptions-=e
    " gvim settings to remove menu bar and toolbar
    set guioptions-=m
    set guioptions-=T
    " gvim remove lefthand scrollbar
    set guioptions-=L
    set guioptions-=r
    " set gvim font
    set guifont=Source\ Code\ Pro\ 13,Consolas:h14:cANSI
endif

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

" Copied from fzf.vim docs
" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

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
