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

" Leader stuff
nnoremap <Space> <Nop>
let mapleader=" "
" Save easily
nnoremap <Leader>w :w<Cr>
nnoremap <Leader><SPACE> :w<Cr>
" Quit easily
nnoremap <Leader>q :q<Cr>
" Get rid of highlights from search
nnoremap <Leader>hl :nohl<Cr>
" Highlight the whole buffer
nnoremap <Leader>a ggVG
" Open this file
nnoremap <Leader>vim :e $MYVIMRC<Cr>

" Esc map to kj
inoremap kj <Esc>

" Bring Y in line with D and C
nnoremap Y y$

" Make indenting in visual mode more fun
vnoremap > >gv
vnoremap < <gv

" Plugins
call plug#begin()
Plug 'lukaszkorecki/workflowish'
Plug 'tpope/vim-surround'
call plug#end()
