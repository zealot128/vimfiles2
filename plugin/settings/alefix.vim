let g:ale_sign_column_always = 1
let g:ale_ruby_rubocop_options = '--except Lint/Debugger -D'
let g:ale_lint_delay = 500
let g:ale_lint_on_text_changed='normal'
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\}
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

nmap <F7> <Plug>(ale_fix)
