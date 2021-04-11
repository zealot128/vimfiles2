source ~/.vim/Plugfile

if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-d>"
  nnoremap <silent><nowait><expr> <C-u> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-u>"
  inoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-u> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-d>"
  vnoremap <silent><nowait><expr> <C-u> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-u>"
endif

set background=dark
" colorscheme FukurokujoPro
" colorscheme codedark
" colorscheme seoul256
" colorscheme hybrid
let g:airline_theme = 'onedark'
" colorscheme atom-dark-256
" colorscheme spacegray
" colorscheme fu
colorscheme obsidian
" colorscheme lucius
" colorscheme Monokai
" colorscheme Tomorrow-Night
" colorscheme tender
" colorscheme atom


if has('nvim')
  set t_8f=<t_8f>  " Needed in tmux
  set t_8b=^[[48;2;%lu;%lu;%lum  " Ditto
else
  " let g:solarized_termcolors=256
  " set t_Co=256
endif

" Inline GIT Stuff in number list, like modified lines ~ slow
" Plug 'airblade/vim-gitgutter'

filetype plugin indent on	  " Turn on Filetype detection, plugins, and
" indent

set encoding=utf-8
syntax enable			" Turn on syntax highlighting

" load the man plugin for a nice man viewer
runtime! ftplugin/man.vim

" ----------------------------------------------------------------------------
"  moving around, searching and patterns
" ----------------------------------------------------------------------------
set nostartofline   " keep cursor in same column for long-range motion cmds
set incsearch			  " Highlight pattern matches as you type
set ignorecase			" ignore case when using a search pattern
set smartcase			  " override 'ignorecase' when pattern
                    " has upper case character

" ----------------------------------------------------------------------------
"  tags
" ----------------------------------------------------------------------------

set tags=tags;/     "ctags soll nach "tags" auch rekursiv suchen
set tags+=.tags
set tags+=;

" ----------------------------------------------------------------------------
"  displaying text
" ----------------------------------------------------------------------------
set scrolloff=3       " number of screen lines to show around
                      " the cursor

set linebreak			    " For lines longer than the window,
                      " wrap intelligently. This doesn't
                      " insert hard line breaks.

set showbreak=↪\ \ 		" string to put before wrapped screen
                      " lines

set sidescrolloff=2		" min # of columns to keep left/right of cursor
set display+=lastline " show last line, even if it doesn't fit in the window

"set cmdheight=2 		  " # of lines for the command window
                      " cmdheight=2 helps avoid 'Press ENTER...'
                      " prompts

" Define characters to show when you show formatting
" stolen from https://github.com/tpope/vim-sensible
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
  if &termencoding ==# 'utf-8' || &encoding ==# 'utf-8'
    let &listchars = "tab:\u21e5 ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u26ad"
  endif
endif

" if exists("&relativenumber")
"   set number			      " show line numbers
"   set relativenumber
" endif


"set colorcolumn=80    " display a line in column 80 to show you
                      " when to line break.

" ----------------------------------------------------------------------------
"  multiple windows
" ----------------------------------------------------------------------------
set laststatus=2  		" Show a status line, even if there's only one
                      " Vim window

set hidden		    	  " allow switching away from current buffer w/o
                      " writing

set switchbuf=usetab " Jump to the 1st open window which contains
                      " specified buffer, even if the buffer is in
                      " another tab.
                      " TODO: Add 'split' if you want to split the
                      " current window for a quickfix error window.

set statusline=
set statusline+=b%-1.3n\ >                    " buffer number
set statusline+=\ %{fugitive#statusline()}:
set statusline+=\ %F
set statusline+=\ %M
set statusline+=%R
set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%=
set statusline+=\ %Y
set statusline+=\ <\ %{&fenc}
set statusline+=\ <\ %{&ff}
set statusline+=\ <\ %p%%
set statusline+=\ %l:
set statusline+=%02.3c   	" cursor line/total lines

set helpheight=30         " Set window height when opening Vim help windows

" ----------------------------------------------------------------------------
"  multiple tab pages
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
"  terminal
" ----------------------------------------------------------------------------
set ttyfast			      " this is the 21st century, people

" ----------------------------------------------------------------------------
"  using the mouse
" ----------------------------------------------------------------------------
"some stuff to get the mouse going in term
" set mouse=a
" set ttymouse=xterm2
set mouse=

" ----------------------------------------------------------------------------
"  messages and info
" ----------------------------------------------------------------------------

set showcmd			    " In the status bar, show incomplete commands
                    " as they are typed

set ruler			      " Always display the current cursor position in
                    " the Status Bar

set confirm         " Ask to save buffer instead of failing when executing
                    " commands which close buffers

" ----------------------------------------------------------------------------
"  selecting text
" ----------------------------------------------------------------------------
" set clipboard=unnamed	" Yank to the system clipboard by default

" ----------------------------------------------------------------------------
"  editing text			" TODO: look at these options
" ----------------------------------------------------------------------------
set backspace=indent,eol,start  "backspace over everything
set backspace=2

" Backspace Problem where ^? insertet
set t_kb=
if !has('nvim')
  fixdel
end

if v:version > 7.03 || v:version == 7.03 && has("patch541")
  "set formatoptions+=j 	" delete comment char on second line when
                        " joining two commented lines
endif

set showmatch  			    " when inserting a bracket, briefly jump to its
                        " match
let g:matchparen_insert_timeout=5 " Performance increase for large file

set nojoinspaces	  	  " Use only one space after '.' when joining
                        " lines, instead of two

" set completeopt+=longest 	" better omni-complete menu
set complete=.,w,b,u,t
set completeopt=menuone


set nrformats-=octal      " don't treat numbers with leading zeros as octal
                          " when incrementing/decrementing


" ----------------------------------------------------------------------------
"  tabs and indenting
" ----------------------------------------------------------------------------
set smarttab              " <TAB> in front of line inserts 'shiftwidth' blanks
set shiftround            " round to 'shiftwidth' for "<<" and ">>"
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" ----------------------------------------------------------------------------
"  folding
" ----------------------------------------------------------------------------
" set nofoldenable 		  " When opening files, all folds open by default
if has("folding")
  nnoremap <space> za
  set foldenable
  set foldmethod=syntax
  set foldlevel=6
  set foldnestmax=6
  set foldtext=strpart(getline(v:foldstart),0,50).'\ ...\ '.substitute(getline(v:foldend),'^[\ #]*','','g').'\ '
endif

" ----------------------------------------------------------------------------
"  diff mode
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
"  mapping
" ----------------------------------------------------------------------------
map Q <Nop>
nmap <F1> <Esc>
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <silent> <F6> :%g/^\s*#\\|^$/d<CR>
map <C-Right> gt
map <A-Right> gt
map <C-Left> gT
map <A-Left> gT
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
nnoremap <F3> :nohls<CR>
"fixing the tmux problems
nnoremap [1;5C gt
nnoremap [1;5D gT
nnoremap [H gt
map <F5> :redraw!<CR>


" Fixing screen Problems
map OH <Home>
map OF <End>

" inoremap OH <Home>
" inoremap OF <End>
inoremap \fn <C-R>=expand("%")<CR>


" ,rt -> regeneriert tags mit gems
" map <leader>rt :!ctags --extra=+f --languages=-javascript --exclude=.git --exclude=log -R * `rvm gemdir`/gems/* `rvm gemdir`/bundler/gems/*<CR><C-M>
"
" cnoremap <C-a> <Home>
" cnoremap <C-e> <End>
"
" http://vim.wikia.com/wiki/Keep_folds_closed_while_inserting_text
" completion beschleunigen
" autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
" next line SLOW!!!
" autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

" ----------------------------------------------------------------------------
"  reading and writing files
" ----------------------------------------------------------------------------
set autoread			    " Automatically re-read files changed outside
                      " of Vim
autocmd CmdwinEnter * nnoremap <buffer> <esc> :q<cr>

" Delete every useless whitespace
autocmd BufWritePre * :%s/\s\+$//e
" Save on enter
nnoremap <silent><expr> <CR> &buftype is# '' ? ":w\<CR>" : "\<CR>"

if has("win32") || has("win64")
  set directory=$TEMP
else
  " Vim will try this ordered list of directories for .swp files
  set directory=~/tmp,.,/var/tmp,/tmp
endif
set wildmode=list:longest,full

" File tab completion ignores these file patterns
set wildignore+=*.exe,*.swp,.DS_Store,*~,*.o
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*/log/*
set wildignore+=*/coverage/*
set wildignore+=*/public/system/*  " Rails images
set wildmenu
set wildignorecase
set gdefault                    " For :substitute, use the /g flag by default

" ----------------------------------------------------------------------------
" Autocmds
" ----------------------------------------------------------------------------
autocmd BufRead,BufNewFile */cookbooks/*/recipes/*.rb setlocal path+=recipes;/cookbooks/**1
augroup module
  autocmd BufRead,BufNewFile *.module set filetype=php
  autocmd BufRead,BufNewFile *.install set filetype=php
  autocmd BufRead,BufNewFile *.test set filetype=php
augroup END
autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby
autocmd BufRead,BufNewFile Guardfile set filetype=ruby
autocmd BufRead,BufNewFile vhost.conf set filetype=apache
autocmd BufRead,BufNewFile .bash_aliases set filetype=sh
autocmd BufRead,BufNewFile bash_aliases set filetype=sh
autocmd BufRead,BufNewFile .tmux.conf set filetype=sh
autocmd BufRead,BufNewFile vhost_ssl.conf set filetype=apache
autocmd BufRead,BufNewFile *.arb set filetype=ruby
autocmd BufRead,BufNewFile *.rabl set filetype=ruby
autocmd BufRead,BufNewFile *.prawn set filetype=ruby
autocmd BufRead,BufNewFile *.scss set fdm=indent
autocmd BufNewFile,BufReadPost *.hamlbars set filetype=haml
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent shiftwidth=2 expandtab
au BufNewFile,BufRead /etc/init/*.conf set ft=upstart
au BufNewFile,BufRead /etc/init/*.conf set ft=upstart
augroup yaml
  autocmd Filetype yaml set fdm=indent
  autocmd BufRead,BufNewFile *de.yml silent setl spell spelllang=de
augroup END
" autocmd User Rails Rnavcommand cell app/cells -glob=**/* -suffix=_cell.rb
" autocmd User Rails Rnavcommand dec app/decorators -glob=**/* -suffix=_decorator.rb
" autocmd User Rails Rnavcommand concern  app/concerns -glob=**/*
command! Eroutes Einitializer
command! Rroutes Einitializer
" autocmd User Rails Rnavcommand routes config/ -glob=routes.rb -suffix= -default=routes.rb
autocmd BufRead,BufNewFile *.es6 setfiletype javascript
au BufNewFile,BufRead *.sql setf pgsql

" make gf work great in Webpacker Rails JS files
au BufNewFile,BufRead *app/javascript/*.js
      \ setl path+=app/javascript/,node_modules |
      \ setl isfname+=@-@ |
      \ setl suffixesadd+=.vue,.json,.scss,.svelte
au BufNewFile,BufRead *app/javascript/*.ts
      \ setl path+=app/javascript/,node_modules |
      \ setl isfname+=@-@ |
      \ setl suffixesadd+=.vue,.json,.scss,.svelte
au BufNewFile,BufRead *app/javascript/*.vue
      \ setl path+=app/javascript/,node_modules |
      \ setl isfname+=@-@ |
      \ setl suffixesadd+=.js,.json,.scss
au BufNewFile,BufRead *app/javascript/*.svelte
      \ setl path+=app/javascript/,node_modules |
      \ setl isfname+=@-@ |
      \ setl suffixesadd+=.js,.json,.scss

au BufNewFile,BufRead *app/javascript/*.scss
      \ setl path+=app/javascript/,node_modules |
      \ setl suffixesadd+=.css,.scss,.sass |
      \ setl isfname+=@-@ |
      \ setl inex=substitute(v:fname,'^\\~','','')

if &term =~ '256color'
  " Disable Background Color Erase (BCE) so that color schemes
  " work properly when Vim is used inside tmux and GNU screen.
  " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif


" allow project specific .vimrc, change to secure mode, so that files cannot do harmful stuff
set exrc
set secure

if !empty(glob('~/.vim/custom.vimrc'))
  source ~/.vim/custom.vimrc
endif

