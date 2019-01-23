" Leader stuff
nnoremap <Space> <Nop>
let mapleader=" "

" Open the vimrc
nnoremap <Leader>vim :e $MYVIMRC<Cr>

" Get rid of highlights from search
nnoremap <Leader>hl :nohl<Cr>
" Highlight the whole buffer
nnoremap <Leader>a ggVG
" Open a new tab
nnoremap <Leader>te :tab split<Cr>
nnoremap <Leader>gt :tab split<Cr>
" Close the current tab
nnoremap <Leader>tc :tabc<Cr>
nnoremap <Leader>tk :tabc<Cr>

" Open a terminal in the current split
nnoremap <Leader><Cr> :ter ++curwin<Cr>

" Escape with Alt + normal mode key in gvim
if has("gui_running")
    noremap  <M-j> <Esc>j
    noremap! <M-j> <Esc>j
    noremap  <M-k> <Esc>k
    noremap! <M-k> <Esc>k
    noremap  <M-h> <Esc>h
    noremap! <M-h> <Esc>h
    noremap  <M-l> <Esc>l
    noremap! <M-l> <Esc>l
    noremap  <M-o> <Esc>o
    noremap! <M-o> <Esc>o
    noremap  <M-O> <Esc>O
    noremap! <M-O> <Esc>O
    noremap  <M-w> <Esc>w
    noremap! <M-w> <Esc>w
    noremap  <M-e> <Esc>e
    noremap! <M-e> <Esc>e
    noremap  <M-b> <Esc>b
    noremap! <M-b> <Esc>b
    noremap  <M-a> <Esc>A
    noremap! <M-a> <Esc>A
    noremap  <M-i> <Esc>I
    noremap! <M-i> <Esc>I
endif

" Terminal mappings
tnoremap <C-n> <C-\><C-n>

" Split controls
nnoremap <Leader>h :vsp<Cr>
nnoremap <Leader>j :sp<Cr><C-w><C-j>
nnoremap <Leader>k :sp<Cr>
nnoremap <Leader>l :vsp<Cr><C-w><C-l>

" Faster split movement
nnoremap  <C-h> <C-w>h
nnoremap  <C-j> <C-w>j
nnoremap  <C-k> <C-w>k
nnoremap  <C-l> <C-w>l
inoremap  <C-h> <Esc><C-w>h
inoremap  <C-j> <Esc><C-w>j
inoremap  <C-k> <Esc><C-w>k
inoremap  <C-l> <Esc><C-w>l

" toggle semantic highlighting
nnoremap <Leader>s :SemanticHighlightToggle<Cr>

" Bring Y in line with D and C
nnoremap Y y$

" Fuzzy finding
" Files
nnoremap <Leader>e :Files<Cr>
" Buffers
nnoremap <Leader>b :Buffers<Cr>
" Tags
nnoremap <Leader>/ :Tags<Cr>
" Ag cwd
nnoremap <leader>f :Ag<Cr>

" Toggle between header and source
nnoremap <Leader>o :call ToggleHCPP()<Cr>

" Cut, copy, and paste from the clipboard more easily
nnoremap <Leader>d "+d
nnoremap <Leader>D "+D
nnoremap <Leader>y "+y
nnoremap <Leader>Y "+Y
nnoremap <Leader>p "+p

" Map OverCommandLine for substitute previewing
nnoremap s :OverCommandLine<Cr>%s/
vnoremap s :OverCommandLine<Cr>s/

" For doing stuff with what's under the cursor
nnoremap <leader>8f :Ag <C-r><C-w><Cr>
nnoremap <leader>*f :Ag <C-r><C-w><Cr>
vnoremap <leader>f y:Ag <C-r>"<Cr>

" CD COMMANDS
" Make working directory the directory of the current file
nnoremap cdh  :cd %:p:h<Cr>
nnoremap cd.. :cd ..<Cr>
nnoremap cd-  :cd -<Cr>
nnoremap cdp  :cd %:p:h/..<Cr>
nnoremap cd<Space> :cd 

" swap gj j, gk k
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k

" Snippet mapping
let g:UltiSnipsExpandTrigger="<C-k>"
let g:UltiSnipsJumpForwardTrigger="<C-n>"
let g:UltiSnipsJumpBackwardTrigger="<C-p>"

" Shorten window swapping command
let g:windowswap_map_keys = 0 " prevent default bindings
nnoremap <silent> <leader>w :call WindowSwap#EasyWindowSwap()<CR>

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
