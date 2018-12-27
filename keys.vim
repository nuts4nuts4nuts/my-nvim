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
" Close the current tab
nnoremap <Leader>tc :tabc<Cr>
nnoremap <Leader>tk :tabc<Cr>

" Escape with Alt + normal mode key even in gvim
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

" Make indenting in visual mode more fun
vnoremap > >gv
vnoremap < <gv

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
noremap <leader>8f :Ag <C-r><C-w><Cr>
noremap <leader>*f :Ag <C-r><C-w><Cr>

" Make working directory the directory of the current file
nnoremap <Leader>5 :cd %:p:h<Cr>
nnoremap <Leader>% :cd %:p:h<Cr>

" swap gj j, gk k
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k

" Snippet mapping
let g:UltiSnipsExpandTrigger="<C-k>"
let g:UltiSnipsJumpForwardTrigger="<C-n>"
let g:UltiSnipsJumpBackwardTrigger="<C-p>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
