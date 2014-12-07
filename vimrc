" ----------------------------------------------------------------------------
"  Vundle setup
" ----------------------------------------------------------------------------
filetype off 			" Required for Vundle

set rtp+=~/.vim/bundle/vundle/	" Add vundle to the RuntimePath
call vundle#rc()


" Let Vundle manage Vundle. Required!
Bundle 'gmarik/vundle'
  " :BundleInstall        -> install all Bundle vom vimrc
  " :BundleInstall <TAB>  -> displays known scripts
  " :BundleSearch

" Language-specific syntax files
Bundle 'vim-ruby/vim-ruby'
Bundle 'elzr/vim-json'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-git'
Bundle "tpope/vim-rails"
" Bundle "tpope/vim-rake"
Bundle "kchmck/vim-coffee-script"
Bundle "othree/html5.vim"
Bundle "tpope/vim-liquid"
Bundle 'derekwyatt/vim-scala'
Bundle 'slim-template/vim-slim'
Bundle 'honza/dockerfile.vim'
Bundle 'stefanoverna/vim-i18n'
Bundle 'exu/pgsql.vim'
" extract text from ruby views into config/locales
Bundle 'Glench/Vim-Jinja2-Syntax'
Bundle 'chase/vim-ansible-yaml'
Bundle 'stephpy/vim-yaml'



Bundle 'elixir-lang/vim-elixir'


" Javascript
Bundle "othree/javascript-libraries-syntax.vim"
Bundle 'pangloss/vim-javascript'
Bundle 'digitaltoad/vim-jade'

" Clojure
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'
Bundle 'guns/vim-clojure-static'


Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
" dar -> ir, ar -> ruby blocks
Bundle 'camelcasemotion'
" vi,w
Bundle 'kana/vim-textobj-indent'
" dai  -> i and I as Text objects for marking same indented lines
Bundle 'kana/vim-textobj-syntax'
" day  -> y and Y: same syntax colored things
Bundle 'kana/vim-textobj-line'
" dal, dil -> line
Bundle 'thinca/vim-textobj-between'
" af<char>

" Windows Powershell
" Bundle 'dougireton/vim-ps1'

Bundle 'tpope/vim-vinegar'
" Press - in any buffer to hop up to the directory listing and seek to the file you just came from. Keep bouncing to go up, up, up. Having rapid directory access available changes everything.
" All that annoying crap at the top is turned off, leaving you with nothing but a list of files. This is surprisingly disorienting, but ultimately very liberating. Press I to toggle until you adapt.
" The oddly C-biased default sort order and file hiding is replaced with a sensible application of 'suffixes' and 'wildignore'.
" Press . on a file to pre-populate it at the end of a : command line. This is great, for example, to quickly initiate a :grep of the file or directory under the cursor. There's also !, which starts the line off with a bang. Type !chmod +x and get :!chmod +x path/to/file.
" Press cd or cl to :cd or :lcd to the currently edited directory.
" Press ~ to go home.


Bundle 'tommcdo/vim-exchange'
" cx  On the first use, define the first {motion} to exchange. On the second use, define the second {motion} and perform the exchange.
" cxx Like cx, but use the current line.
" X   Like cx, but for Visual mode.
" cxc Clear any {motion} pending for exchange.

" Comment plugin
Bundle 'tpope/vim-commentary'
    " gc<MOVE>  or gcc , repeat with .

" Syntax check on buffer save
Bundle 'scrooloose/syntastic'

" Git plugins
Bundle 'tpope/vim-fugitive'
    " Gdiff, Gedit Gstatus Gcommit Gremove Gmove Gread Ggrep
Bundle 'gregsexton/gitv'
    " :Gitv  Mini-Git browser
Bundle 'tmatilai/gitolite.vim'


" Lightweight support for Ruby's Bundler
Bundle 'tpope/vim-bundler'
    " :Bundle, which wraps bundle.
    " An internalized version of bundle open: :Bopen (and :Bsplit, :Btabedit, etc.).
    " 'path' and 'tags' are automatically altered to include all gems from your bundle. (Generate those tags with gem-ctags!)
    " Highlight Bundler keywords in Gemfile.
    " Support for gf in Gemfile.lock, plus syntax highlighting that distinguishes between installed and missing gems.


" Various editing plugins
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
   " Parentheses, html tags surround:
   "  * visual select:  S followed by on char or html tag
" Bundle 'skammer/vim-css-color'
Bundle 'luochen1990/rainbow'
Bundle 'chriskempson/base16-vim'
   " Parenthese highlightings

Bundle 'tpope/vim-unimpaired'
Bundle 'nelstrom/vim-visual-star-search'
Bundle 'file-line'
Bundle 'ZoomWin'
    " Press <c-w>o : the current window zooms into a full screen
    " Press <c-w>o again: the previous set of windows is restored
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-endwise'
Bundle 'godlygeek/tabular'
    " Align Text with:
    " :Tabularize /,

" File managers/explorers
Bundle 'kien/ctrlp.vim'
Bundle 'JazzCore/ctrlp-cmatcher'
Bundle 'mileszs/ack.vim'
Bundle 'rking/ag.vim'
Bundle "tpope/vim-eunuch"
    " :Unlink: Delete a buffer and the file on disk simultaneously.
    " :Remove: Like :Unlink, but doesn't require a neckbeard.
    " :Move: Rename a buffer and the file on disk simultaneously.
    " :Chmod: Change the permissions of the current file.
    " :Find: Run find and load the results into the quickfix list.
    " :Locate: Run locate and load the results into the quickfix list.
    " :SudoWrite: Write a privileged file with sudo.
    " :W: Write every open window. Handy for kicking off tools like guard.

" Snippets and Dependencies
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"

" F2 -> Save last macro,  F3 load last macro
" let marvim_store = '//.vim/marvim'
" Bundle "marvim"

" Colorschemes
Bundle "junegunn/seoul256.vim"
Bundle 'altercation/vim-colors-solarized'
Bundle 'cocopon/iceberg.vim'
Bundle 'cocopon/svss.vim'
Bundle 'jonathanfilip/vim-lucius'
Bundle 'daddye/soda.vim'
Bundle 'ciaranm/inkpot'
Bundle 'vim-scripts/summerfruit256.vim'
Bundle 'abra/vim-abra'
Bundle 'john2x/flatui.vim'
Bundle "MaxSt/FlatColor"
Bundle 'jnurmine/Zenburn'
Bundle 'tomasr/molokai'

Bundle 'junegunn/goyo.vim'
Bundle 'junegunn/limelight.vim'
" Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" set rtp+={path}/powerline/bindings/vim
Bundle "bling/vim-airline"

" Bundle 'rainerborene/vim-timetap'


" Inline GIT Stuff in number list, like modified lines ~ slow
" Bundle 'airblade/vim-gitgutter'

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
" colorscheme seoul256
colorscheme Tomorrow-Night
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
set clipboard=unnamed	" Yank to the system clipboard by default

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
au BufNewFile,BufRead *.sql setf pgsql


" ----------------------------------------------------------------------------
" Allow overriding these settings
" ----------------------------------------------------------------------------
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
 " Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
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


