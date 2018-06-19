hi IndentGuidesOdd  ctermbg=236
hi IndentGuidesEven  ctermbg=234
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 0

autocmd FileType slim IndentGuidesEnable
autocmd FileType haml IndentGuidesEnable
autocmd FileType yaml IndentGuidesEnable
autocmd FileType sass IndentGuidesEnable
autocmd FileType coffee IndentGuidesEnable
autocmd FileType ruby IndentGuidesDisable
autocmd FileType javascript IndentGuidesDisable
