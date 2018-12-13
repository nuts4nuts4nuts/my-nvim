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
noremap  <M-A> <Esc>A
noremap! <M-A> <Esc>A

inoremap  <C-w> <Esc><C-w>

" Window controls
nnoremap <Leader>h :vsp<Cr>
nnoremap <Leader>j :sp<Cr><C-w><C-j>
nnoremap <Leader>k :sp<Cr>
nnoremap <Leader>l :vsp<Cr><C-w><C-l>

" toggle semantic highlighting
nnoremap <Leader>s :SemanticHighlightToggle<Cr>

" Bring Y in line with D and C
nnoremap Y y$

" Make indenting in visual mode more fun
vnoremap > >gv
vnoremap < <gv

" Denite fuzzy find files
nnoremap <Leader>e :Denite file_rec<Cr>
" Denite fuzzy buffers
nnoremap <Leader>b :Denite buffer<Cr>
" Denite fuzzy tags
nnoremap <Leader>/ :Denite tag<Cr>
" Denite ag search
nnoremap <leader>f :DeniteBufferDir -buffer-name=grep -default-action=quickfix grep:::!<CR>

" Toggle between header and source
nnoremap <Leader>o :call ToggleHCPP()<Cr>

" make working directory the directory of the current file
nnoremap <Leader>% :cd %:p:h<Cr>

" Bloomberg stuff from Josh
nnoremap <Leader>^ :0r !/home/djohnston72/bin/cprt %<Cr>

" Cut, copy, and paste from the clipboard more easily
nnoremap <Leader>d "+d
nnoremap <Leader>y "+y
nnoremap <Leader>p "+p

" swap gj j, gk k
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k

" neosnippet stuff
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
