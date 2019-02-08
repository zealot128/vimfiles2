let g:picker_find_executable = 'rg'
let g:picker_find_flags = '--color never --files'

let machine = system('uname -s', '\n')[:-2]
let g:picker_selector_executable = expand('~/.vim/bin/fzy-'.machine)

Plug 'srstevenson/vim-picker'

nnoremap <silent> <C-t> :PickerEdit<cr>
nnoremap <silent> <C-p> :PickerEdit<cr>
nnoremap <silent> <C-f> :PickerEdit<cr>
nnoremap <silent> <C-b> :PickerBuffer<cr>

""// nnoremap <silent> <leader>e :call Fzf_dev()<CR>
"nnoremap <silent> <C-t> :call Fzf_dev()<cr>
"nnoremap <silent> <C-p> :call Fzf_dev()<cr>