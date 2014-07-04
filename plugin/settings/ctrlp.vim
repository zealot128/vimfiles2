" keymappings for Ctrl-P
nnoremap <leader>cf :CtrlP<cr>
nnoremap <leader>cb :CtrlPBuffer<cr>
nnoremap <leader>cm :CtrlPMRU<cr>
nnoremap <C-t> :CtrlPMixed<cr>
nnoremap <C-b> :CtrlPBuffer<cr>

" tags = ct
" directory = cd
" line = cl
" changes = cc

" registers = cr
" marks = c'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$|vendor\/gems|.\/cookbooks|.*_site\/.*'


" let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
