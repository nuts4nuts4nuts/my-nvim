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
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Shougo stuff
Plug 'Shougo/denite.nvim'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'carlitux/deoplete-ternjs', {'do': 'npm install -g tern'} "Would use Flow but it doesn't work on 32bit systems, which my VM is. Tern asks to be globally installed and is no longer maintained, which isn't too nice.
call plug#end()
