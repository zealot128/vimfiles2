source ~/.vim/Plugfile
" Inline GIT Stuff in number list, like modified lines ~ slow
" Plug 'airblade/vim-gitgutter'

if has('autocmd')
  filetype plugin indent on	  " Turn on Filetype detection, plugins, and
                              " indent
endif

if has('syntax') && !exists('g:syntax_on')
  syntax enable			" Turn on syntax highlighting
endif

if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim   " use the built-in Matchit pluginm
endif

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


" ----------------------------------------------------------------------------
"  syntax, highlighting and spelling
" ----------------------------------------------------------------------------
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme seoul256
" colorscheme spacegray
" colorscheme lucius

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
set statusline+=%{SyntasticStatuslineFlag()}
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
"  GUI				      " Set these options in .gvimrc
" See help for 'setting-guifont' for tips on how to set guifont on Mac vs Windows
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
"  printing
" ----------------------------------------------------------------------------

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
fixdel

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
map K 5k
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

" Fixing screen Problems
map OH <Home>
map OF <End>

inoremap OH <Home>
inoremap OF <End>
inoremap \fn <C-R>=expand("%")<CR>

" ,rt -> regeneriert tags mit gems
map <leader>rt :!ctags --extra=+f --languages=-javascript --exclude=.git --exclude=log -R * `rvm gemdir`/gems/* `rvm gemdir`/bundler/gems/*<CR><C-M>

map <leader>spec :exe "!bundle exec rspec % -l " . line(".")<CR>

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" http://vim.wikia.com/wiki/Keep_folds_closed_while_inserting_text
" completion beschleunigen
autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

" ----------------------------------------------------------------------------
"  reading and writing files
" ----------------------------------------------------------------------------
set autoread			    " Automatically re-read files changed outside
                      " of Vim
autocmd CmdwinEnter * nnoremap <buffer> <esc> :q<cr>
autocmd BufWritePre * :%s/\s\+$//e

" ----------------------------------------------------------------------------
"  the swap file
" ----------------------------------------------------------------------------

if has("win32") || has("win64")
  set directory=$TEMP
else
  " Vim will try this ordered list of directories for .swp files
  set directory=~/tmp,.,/var/tmp,/tmp
endif

" ----------------------------------------------------------------------------
"  command line editing " ---------------------------------------------------------------------------- set history=200 		" Save more commands in history
                    " See Practical Vim, by Drew Neil, pg 68

set wildmode=list:longest,full

" File tab completion ignores these file patterns
set wildignore+=*.exe,*.swp,.DS_Store,*~,*.o
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*/log/*
set wildignore+=*/coverage/*
set wildignore+=*/public/system/*  " Rails images
set wildmenu

" Add guard around 'wildignorecase' to prevent terminal vim error
if exists('&wildignorecase')
  set wildignorecase
endif

" ----------------------------------------------------------------------------
"  executing external commands
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
"  running make and jumping to errors
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
"  language specific
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
"  multi-byte characters
" ----------------------------------------------------------------------------
set encoding=utf-8

" ----------------------------------------------------------------------------
"  various
" ----------------------------------------------------------------------------
set gdefault                    " For :substitute, use the /g flag by default

" ----------------------------------------------------------------------------
" Autocmds
" ----------------------------------------------------------------------------

" Make gf work on Chef include_recipe lines
" Add all cookbooks/*/recipe dirs to Vim's path variable
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
autocmd User Rails Rnavcommand cell app/cells -glob=**/* -suffix=_cell.rb
autocmd User Rails Rnavcommand dec app/decorators -glob=**/* -suffix=_decorator.rb
autocmd User Rails Rnavcommand concern  app/concerns -glob=**/*
command! Rroutes Rinitializer
" autocmd User Rails Rnavcommand routes config/ -glob=routes.rb -suffix= -default=routes.rb
autocmd User Rails Rnavcommand api lib/empfehlungsbund_api/ -glob=*rb -suffix= -default=api.rb
autocmd BufRead,BufNewFile *.es6 setfiletype javascript
au BufNewFile,BufRead *.sql setf pgsql
augroup plist
  " Delete existing commands (avoid problems if this file is sourced twice)
  autocmd!

  " Set binary mode (needs to be set _before_ reading binary files to avoid
  " breaking lines etc; since setting this for normal plist files doesn't
  " hurt and it's not yet known whether or not the file to be read is stored
  " in binary format, set the option in any case to be sure).
  " Do it before editing a file in a new buffer and before reading a file
  " into in an existing buffer (using ':read foo.plist').
  autocmd BufReadPre,FileReadPre *.plist set binary

  " Define a little function to convert binary files if necessary...
  fun MyBinaryPlistReadPost()
          " Check if the first line just read in indicates a binary plist
          if getline("'[") =~ "^bplist"
                  " Filter lines read into buffer (convert to XML with plutil)
                  '[,']!plutil -convert xml1 /dev/stdin -o /dev/stdout
                  " Many people seem to want to save files originally stored
                  " in binary format as such after editing, so memorize format.
                  let b:saveAsBinaryPlist = 1
          endif
          " Yeah, plain text (finally or all the way through, either way...)!
          set nobinary
          " Trigger file type detection to get syntax coloring etc. according
          " to file contents (alternative: 'setfiletype xml' to force xml).
          filetype detect
  endfun
  " ... and call it just after editing a file in a new buffer...
  autocmd BufReadPost *.plist call MyBinaryPlistReadPost()
  " ... or when reading a file into an existing buffer (in that case, don't
  " save as binary later on).
  autocmd FileReadPost *.plist call MyBinaryPlistReadPost() | let b:saveAsBinaryPlist = 0

  " Define and use functions for conversion back to binary format
  fun MyBinaryPlistWritePre()
          if exists("b:saveAsBinaryPlist") && b:saveAsBinaryPlist
                  " Must set binary mode before conversion (for EOL settings)
                  set binary
                  " Convert buffer lines to be written to binary
                  silent '[,']!plutil -convert binary1 /dev/stdin -o /dev/stdout
                  " If there was a problem, e.g. when the file contains syntax
                  " errors, undo the conversion and go back to nobinary so the
                  " file will be saved in text format.
                  if v:shell_error | undo | set nobinary | endif
          endif
  endfun
  autocmd BufWritePre,FileWritePre *.plist call MyBinaryPlistWritePre()
  fun MyBinaryPlistWritePost()
          " If file was to be written in binary format and there was no error
          " doing the conversion, ...
          if exists("b:saveAsBinaryPlist") && b:saveAsBinaryPlist && !v:shell_error
                  " ... undo the conversion and go back to nobinary so the
                  " lines are shown as text again in vim.
                  undo
                  set nobinary
          endif
  endfun
  autocmd BufWritePost,FileWritePost *.plist call MyBinaryPlistWritePost()
augroup END


" ----------------------------------------------------------------------------
" Allow overriding these settings
" ----------------------------------------------------------------------------
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
 " Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
 " set rtp+={path}/powerline/bindings/vim


if &term =~ '256color'
  " Disable Background Color Erase (BCE) so that color schemes
  " work properly when Vim is used inside tmux and GNU screen.
  " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif


" allow project specific .vimrc, change to secure mode, so that files cannot
"  do harmful stuff
set exrc
set secure


