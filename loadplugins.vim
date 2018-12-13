" Plugins
call plug#begin()
" Nova color scheme stuff
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'

" Semantic highlighting
Plug 'jaxbot/semantic-highlight.vim'

" Cool status line
Plug 'vim-airline/vim-airline'

""""" TPOPE stuff
" Async dispatch from vim 7.x
Plug 'tpope/vim-dispatch'
" Make netrw a little nicer
Plug 'tpope/vim-vinegar'
" More functionality for changing text surrounded by stuff
Plug 'tpope/vim-surround'
" Doing git stuff from vim
Plug 'tpope/vim-fugitive'
" Make <C-a> and <C-x> work better with dates
Plug 'tpope/vim-speeddating'
" Make . work for some plugin action too (by default surround, speeddating, unimpaired, easyclip)
Plug 'tpope/vim-repeat'
" Expand the mappings for [] movements 
Plug 'tpope/vim-unimpaired'

" Compatibility with vim-dispatch for nvim
Plug 'radenling/vim-dispatch-neovim'

"""""" Shougo stuff
" Improved autocomlete
if has('nvim')
    " Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
    Plug 'Shougo/denite.nvim', {'do': ':UpdateRemotePlugins'}
else " In vim8 we need to do more stuff to have remote plugins
    " Plug 'Shougo/deoplete.nvim'
    Plug 'Shougo/denite.nvim'
    " Plug 'roxma/nvim-yarp'
    " Plug 'roxma/vim-hug-neovim-rpc'
endif
" let g:deoplete#enable_at_startup = 1
 " Snippets
" Plug 'Shougo/neosnippet.vim'
" Default snippets
" Plug 'Shougo/neosnippet-snippets'


" Stuff to replace with shougo
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'

" Plug 'elmcast/elm-vim'
" Plug 'OmniSharp/omnisharp-vim'
" Plug 'w0rp/ale'
" Plug 'carlitux/deoplete-ternjs', {'do': 'npm install -g tern'} "Would use Flow but it doesn't work on 32bit systems, which my VM is. Tern asks to be globally installed and is no longer maintained, which isn't too nice.
call plug#end()
