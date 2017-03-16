" keymappings for Ctrl-P
nnoremap <C-t> :CtrlPMixed<cr>
nnoremap <C-b> :CtrlPBuffer<cr>

let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

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



nnoremap <C-f> :FZF<CR>
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
