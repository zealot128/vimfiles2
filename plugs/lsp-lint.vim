Plug 'w0rp/ale'
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
      \   'dart': ['dartfmt'],
      \   'svelte': ['eslint', 'prettier'],
      \}
let g:ale_linters = {
      \   'ruby': ['brakeman', 'ruby', 'solargraph', 'rubocop'],
      \   'terraform': ['terraform'],
      \   'javascript': ['eslint'],
      \   'svelte': ['eslint', 'prettier'],
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


" Autocomplete all the things
Plug 'neoclide/coc.nvim', {'do': 'yarn install'}
Plug 'neoclide/coc-tsserver'

set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" let g:UltiSnipsExpandTrigger="<c-t>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" autocmd CursorHold * silent call CocActionAsync('highlight')
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

noremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>"  :
      \ coc#expandableOrJumpable() ? coc#rpc#request('doKeymap', ['snippets-expand-jump','']) :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<tab>'

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
" //autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)

command! -nargs=0 Format :call CocAction('format')
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

