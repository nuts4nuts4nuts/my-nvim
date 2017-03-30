" Leader stuff
nnoremap <Space> <Nop>
let mapleader=" "
" Save easily
nnoremap <Leader>w :w<Cr>
nnoremap <Leader>wa :wa<Cr>
nnoremap <Leader>wq :wq<Cr>
nnoremap <Leader><SPACE> :w<Cr>
" Quit easily
nnoremap <Leader>q :q<Cr>
" Get rid of highlights from search
nnoremap <Leader>hl :nohl<Cr>
" Highlight the whole buffer
nnoremap <Leader>a ggVG
" Open the vimrc
nnoremap <Leader>vim :e $MYVIMRC<Cr>
" Open a new tab
nnoremap <Leader>te :tabe<Cr>
" Close the current tab
nnoremap <Leader>tc :tabc<Cr>

" Bring Y in line with D and C
nnoremap Y y$

" Make indenting in visual mode more fun
vnoremap > >gv
vnoremap < <gv

" Highlight lines
nnoremap <Leader>hu :s/++//ge:s/\~\~//ge:s/__//ge :nohl<Cr>
nnoremap <Leader>hf :s/++//ge:s/\~\~//ge:s/__//ge I++ :nohl<Cr>
nnoremap <Leader>hs :s/++//ge:s/\~\~//ge:s/__//ge I~~ :nohl<Cr>
nnoremap <Leader>ht :s/++//ge:s/\~\~//ge:s/__//ge I__ :nohl<Cr>
