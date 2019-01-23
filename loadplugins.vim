" Plugins
call plug#begin()
" Color scheme stuff
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'
Plug 'morhetz/gruvbox'

" Semantic highlighting
Plug 'jaxbot/semantic-highlight.vim'

" Cool status line
" Plug 'vim-airline/vim-airline' IN JAIL FOR SUSPECTED CRASHING VIM

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
" Sensible defaults, replacing a lot of my settings
Plug 'tpope/vim-sensible'

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Repeat f and f over lines
Plug 'rhysd/clever-f.vim'
" Interactivity with search and replace
Plug 'osyo-manga/vim-over'

" Completion
Plug 'ajh17/VimCompletesMe'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Diff swap files
Plug 'chrisbra/Recover.vim'

" Swap splits without thinking about layout
Plug 'wesQ3/vim-windowswap'

" Plug 'elmcast/elm-vim'
" Plug 'OmniSharp/omnisharp-vim'
" Plug 'w0rp/ale'
" Plug 'carlitux/deoplete-ternjs', {'do': 'npm install -g tern'} "Would use Flow but it doesn't work on 32bit systems, which my VM is. Tern asks to be globally installed and is no longer maintained, which isn't too nice.
call plug#end()
