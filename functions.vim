" Toggle header or source
function ToggleHCPP()
    if expand('%:e') == "h"
        :e %<.cpp
    else
        :e %<.h
    endif
endfunction

" Open the current buffer in a new tab and call git status
function GS()
    :tab split
    :Gstatus
endfunction
command GS :call GS()<Cr>
