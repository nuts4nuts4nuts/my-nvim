" Plugins
call plug#begin()
Plug 'tpope/vim-surround'
Plug 'elmcast/elm-vim'
Plug 'OmniSharp/omnisharp-vim'
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'
Plug 'w0rp/ale'
" Fugitive for doing git stuff from vim
Plug 'tpope/vim-fugitive'
" Nova color scheme stuff
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'
" Stuff to replace with shougo
" Some completion thing like YCM
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Shougo stuff
Plug 'Shougo/denite.nvim'
call plug#end()
