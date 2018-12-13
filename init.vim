if has('win32')
        let $VIMHOME = $HOME."/.config/nvim"
else
        let $VIMHOME = $HOME."/.config/nvim"
endif

source $VIMHOME/loadplugins.vim
source $VIMHOME/functions.vim
source $VIMHOME/settings.vim
source $VIMHOME/keys.vim
