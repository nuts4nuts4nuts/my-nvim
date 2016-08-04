if has('win32') || has('win32')
        let $VIMHOME = $HOME."/AppData/Local/nvim"
else
        let $VIMHOME = $HOME."/.config/nvim"
endif

source $VIMHOME/loadplugins.vim
source $VIMHOME/settings.vim
source $VIMHOME/keys.vim
