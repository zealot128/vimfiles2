" ---------------------------
" VIM Grammar
" ---------------------------

Plug 'vim-scripts/LargeFile'
let g:LargeFile= 10

Plug 'kana/vim-textobj-user'
  " provides additional text object separators such as: *, |, =, and _ to name a few.

Plug 'wellle/targets.vim'
  " dar -> ir, ar -> ruby blocks
  " Plug 'nelstrom/vim-textobj-rubyblock'

Plug 'chaoren/vim-wordmotion'
  " w moves in camelcase snakecase
Plug 'kana/vim-textobj-indent'
  " dai  -> i and I as Text objects for marking same indented lines
Plug 'kana/vim-textobj-syntax'
  " day  -> y and Y: same syntax colored things
Plug 'kana/vim-textobj-line'
  " dal, dil -> line
Plug 'thinca/vim-textobj-between'
  " af<char>

Plug 'tommcdo/vim-exchange'
" cx  On the first use, define the first {motion} to exchange. On the second use, define the second {motion} and perform the exchange.
" cxx Like cx, but use the current line.
" X   Like cx, but for Visual mode.
" cxc Clear any {motion} pending for exchange.
"
Plug 'AndrewRadev/sideways.vim'
" perform daa to delete an argument, cia to change an argument, and so on.
" nnoremap <c-h> :SidewaysLeft<cr>
" nnoremap <c-l> :SidewaysRight<cr>
omap aa <Plug>SidewaysArgumentTextobjA
xmap aa <Plug>SidewaysArgumentTextobjA
omap ia <Plug>SidewaysArgumentTextobjI
xmap ia <Plug>SidewaysArgumentTextobjI
nnoremap <c-h> :SidewaysLeft<cr>
nnoremap <c-l> :SidewaysRight<cr>


let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js,*.vue,*.svelte,*.erb,*.yml"
Plug 'alvan/vim-closetag'

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
   " Parentheses, html tags surround:
   "  * visual select:  S followed by on char or html tag
Plug 'tpope/vim-unimpaired'
Plug 'nelstrom/vim-visual-star-search'
Plug 'vim-scripts/file-line'

Plug 'tpope/vim-endwise'
Plug 'godlygeek/tabular'
    " Align Text with:
    " :Tabularize /,
" :Rg <SEARCH>
Plug 'lambdalisue/suda.vim'
Plug 'tpope/vim-eunuch'
    " :Unlink: Delete a buffer and the file on disk simultaneously.
    " :Remove: Like :Unlink, but doesn't require a neckbeard.
    " :Move: Rename a buffer and the file on disk simultaneously.
    " :Chmod: Change the permissions of the current file.
    " :Find: Run find and load the results into the quickfix list.
    " :Locate: Run locate and load the results into the quickfix list.
    " :SudoWrite: Write a privileged file with sudo.
    " :W: Write every open window. Handy for kicking off tools like guard.
