" ---------------------------------------------
" IDE Extensions
" ---------------------------------------------

" Plug 'wfxr/minimap.vim'


" Project wide sarch&replace with gui
" :Far ../group_vars/pubkeys.yml ../global/pubkeys.yml **/*.yml --source=rg
"   -> oeffnet Fenster
" :Farp  -> interaktiv
" :Fardo -> ersetzt
Plug 'brooth/far.vim'
let g:far#source = 'rgnvim'

Plug 'tpope/vim-vinegar'
" Press - in any buffer to hop up to the directory listing and seek to the file you just came from. Keep bouncing to go up, up, up. Having rapid directory access available changes everything.
" All that annoying crap at the top is turned off, leaving you with nothing but a list of files. This is surprisingly disorienting, but ultimately very liberating. Press I to toggle until you adapt.
" The oddly C-biased default sort order and file hiding is replaced with a sensible application of 'suffixes' and 'wildignore'.
" Press . on a file to pre-populate it at the end of a : command line. This is great, for example, to quickly initiate a :grep of the file or directory under the cursor. There's also !, which starts the line off with a bang. Type !chmod +x and get :!chmod +x path/to/file.
" Press cd or cl to :cd or :lcd to the currently edited directory.
" Press ~ to go home.

Plug 'scrooloose/nerdtree'

" Comment plugin
Plug 'tpope/vim-commentary'
    " gc<MOVE>  or gcc , repeat with .

" Syntax check on buffer save
if has('nvim')
  " Plug 'benekastah/neomake'
  let g:ale_sign_error = '☞ '
  let g:ale_sign_warning = '☞ '
  let g:ale_sign_column_always = 1
  let g:ale_ruby_rubocop_options = '--except Lint/Debugger -D'
  let g:ale_lint_delay = 1000
  let g:ale_lint_on_text_changed='normal'

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

  Plug 'w0rp/ale'
end

" ---------------------------------------------
"  GIT Plugins
" ---------------------------------------------

Plug 'tpope/vim-fugitive'
" Fugitive key mappings
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gl :Glog
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>gd :Gdiff
    " Gdiff, Gedit Gstatus Gcommit Gremove Gmove Gread Ggrep
Plug 'gregsexton/gitv'
    " :Gitv  Mini-Git browser
Plug 'tmatilai/gitolite.vim'
Plug 'tpope/vim-git'
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
Plug 'airblade/vim-gitgutter'



let g:user_emmet_install_global = 0
autocmd FileType html,css,html.handlebars EmmetInstall
Plug 'mattn/emmet-vim'
" HTML Zen mode, html:5 [C-y] + [,]
"   <c-y>a  -> Aus einer URL einen <a href machen

Plug 'rking/ag.vim'
" :Ag <SEARCH>
let g:rg_command = 'rg --no-messages --vimgrep'
Plug 'jremmen/vim-ripgrep'

let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
" Airline slow
let g:airline_extensions = []
if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'luochen1990/rainbow'
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

let g:rainbow_active = 1

" Plug 'majutsushi/tagbar'
" nmap <F8> :TagbarToggle<CR>

" Tmux :TYank -> Copy to tmux, :TPut -> Paste from tmux
Plug 'tpope/vim-tbone'

" :TableModeToggle
Plug 'dhruvasagar/vim-table-mode'

let g:coc_explorer_global_presets = {
\  'right': {
\     'position': 'right',
\    'toggle': v:false,
\    'focus': v:false,
\    'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1][modified][readonly] [linkIcon & 1][link growRight 1 omitCenter 5][git | 2]',
\  }
\}
nnoremap <silent> <C-e> :CocCommand explorer --preset right<CR>

function! s:enter_explorer()
  if &filetype != 'coc-explorer'
    CocCommand explorer --preset right<CR>
    " statusline
    setl statusline=coc-explorer
  endif
endfunction

" autocmd BufEnter * if (winnr("$") == 1 && &filetype != 'coc-explorer') | exe ':CocCommand explorer --preset right' | endif
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
