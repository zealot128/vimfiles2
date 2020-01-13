let g:ale_sign_error = '☞ '
let g:ale_sign_warning = '☞ '
let g:ale_sign_column_always = 1
let g:ale_ruby_rubocop_options = '--except Lint/Debugger -D'
let g:ale_lint_delay = 1000
let g:ale_lint_on_text_changed='normal'
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'ruby': ['rubocop'],
\   'terraform': ['terraform'],
\   'vue': ['eslint', 'prettier'],
\}
let g:ale_linters = {
\   'terraform': ['terraform'],
\   'javascript': ['eslint'],
\   'html': [],
\}

nmap <F7> <Plug>(ale_fix)
" hi link ALEErrorSign    Error
" hi link ALEWarningSign  Warning

" hi Error   cterm=bold gui=bold
" hi Warning cterm=bold gui=bold

" let g:ale_set_highlights = 0
let g:ale_set_baloons = 1

let g:ale_sign_error = "◉"
let g:ale_sign_warning = "◉"
highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight ALEWarning ctermbg=DarkGray

nmap ]w <Plug>(ale_next_wrap)
nmap [w <Plug>(ale_previous_wrap)

