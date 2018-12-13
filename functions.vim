" Toggle header or source
function ToggleHCPP()
    if expand('%:e') == "h"
        :e %<.cpp
    else
        :e %<.h
    endif
endfunction
