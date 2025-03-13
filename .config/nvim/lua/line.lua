vim.cmd [[
    hi User1 guifg=#005F01  guibg=#AFDF01 gui=bold
    hi User2 guifg=#ffffff  guibg=#0087AF
    hi User3 guifg=#87DFFF  guibg=#005F88
    hi User4 guifg=#870000  guibg=#FF8700
    hi User5 guifg=#ffffff  guibg=#303030
    hi User6 guifg=#606060  guibg=#D0D0D0
]]

vim.cmd [[
    set showcmd
    set showcmdloc=statusline
]]

vim.cmd [[
    set statusline=
    set statusline+=%1*\ %n\                                 "buffernr
    set statusline+=%2*\ %<%f\                               "File+path
    set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}\    "Encoding
    set statusline+=%4*%{&modified?'\ +\ ':''}               "Modified?
    set statusline+=%4*%{&readonly?'\ RO\ ':''}              "Readonly?
    set statusline+=%5*\ %=\ %S\                             "see :h showcmdloc
    set statusline+=%5*\ %l/%L\ %c\                          "Rownumber
    set statusline+=%6*\ %3p%%\                              "Percentage (%)
]]