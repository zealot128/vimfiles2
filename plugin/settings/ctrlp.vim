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
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$|vendor\/gems|.\/cookbooks|.*_site\/.*|node_modules'

let g:ctrlp_custom_ignore = '\v[\/](vendor|tmp|_site|node_modules|target|dist|bower_components)|(\.(swp|ico|git|svn))$'

" let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
" let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
let g:ctrlp_max_files = 20000
"
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:40'
