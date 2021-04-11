" -----------------------------------------------------
"  LANGUAGE / FRAMEWORK Support
" -----------------------------------------------------

" Plug 'vim-ruby/vim-ruby'
Plug 'elzr/vim-json'
" Lightweight support for Ruby's Plugr
Plug 'tpope/vim-bundler'
    " :Plug, which wraps bundle.
    " An internalized version of bundle open: :Bopen (and :Bsplit, :Btabedit, etc.).
    " 'path' and 'tags' are automatically altered to include all gems from your bundle. (Generate those tags with gem-ctags!)
    " Highlight Plugr keywords in Gemfile.
    " Support for gf in Gemfile.lock, plus syntax highlighting that distinguishes between installed and missing gems.
" Plug 'tpope/vim-markdown'
" let g:markdown_fenced_languages = ['ruby', 'html', 'javascript', 'css', 'erb=eruby.html', 'bash=sh']

" Moving to the parent node ( :YamlGoToParent ),
" Getting the full path to the current element ( :YamlGetFullPath ),
" Moving to an element, given the path ( :YamlGoToKey )
Plug 'lmeijvogel/vim-yaml-helper'
let g:vim_yaml_helper#always_get_root = 0
let g:vim_yaml_helper#auto_display_path = 0
" nmap <C-g> :YamlGoToParent<CR>

hi IndentGuidesOdd  ctermbg=236
hi IndentGuidesEven  ctermbg=234
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 0
autocmd FileType slim IndentGuidesEnable
autocmd FileType haml IndentGuidesEnable
autocmd FileType yaml IndentGuidesEnable
autocmd FileType sass IndentGuidesEnable
autocmd FileType coffee IndentGuidesEnable
autocmd FileType ruby IndentGuidesDisable
autocmd FileType javascript IndentGuidesDisable
Plug 'nathanaelkane/vim-indent-guides'

Plug 'tpope/vim-rails'
Plug 'exu/pgsql.vim'
Plug 'avakhov/vim-yaml'
Plug 'ecomba/vim-ruby-refactoring'
" Typescript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'pearofducks/ansible-vim'

let g:polyglot_disabled = ['slim', 'yaml', 'vue', 'typescript', 'svelte', 'ruby', 'jina', 'j2', 'jinja2']
Plug 'sheerun/vim-polyglot'


let g:ruby_heredoc_syntax_filetypes = {
      \ "graphql" : {
      \   "start" : "GQL",
      \},
      \ "javascript" : {
      \   "start" : "JS",
      \},
      \ "sql" : {
      \   "start" : "SQL",
      \},
      \ "html" : {
      \   "start" : "HTML",
      \},
      \ "xml" : {
      \   "start" : "XML",
      \},
      \}

" and this one
let g:context_filetype#filetypes = {
\ 'ruby' : [
\   {
\     'start' : '\%(\%(class\s*\|\%([]})".]\|::\)\)\_s*\|\w\)\@<!<<[-~]\=\zsJS',
\     'end' : '^\s*\zsJS$',
\     'filetype' : 'javascript',
\   },
\   {
\     'start' : '\%(\%(class\s*\|\%([]})".]\|::\)\)\_s*\|\w\)\@<!<<[-~]\=\zsHTML',
\     'end' : '^\s*\zsHTML$',
\     'filetype' : 'html',
\   },
\   {
\     'start' : '\%(\%(class\s*\|\%([]})".]\|::\)\)\_s*\|\w\)\@<!<<[-~]\=\zsXML',
\     'end' : '^\s*\zsXML$',
\     'filetype' : 'xml',
\   },
\   {
\     'start' : '\%(\%(class\s*\|\%([]})".]\|::\)\)\_s*\|\w\)\@<!<<[-~]\=\zsSQL',
\     'end' : '^\s*\zsSQL$',
\     'filetype' : 'sql',
\   },
\   {
\     'start' : '\%(\%(class\s*\|\%([]})".]\|::\)\)\_s*\|\w\)\@<!<<[-~]\=\zsGQL',
\     'end' : '^\s*\zsGQL$',
\     'filetype' : 'graphql',
\   },
\ ]
\}

Plug 'joker1007/vim-ruby-heredoc-syntax'
" Plug 'pangloss/vim-javascript'
Plug 'hsanson/vim-android'
Plug 'posva/vim-vue'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'hail2u/vim-css3-syntax'

" Windows Powershell
" Plug 'dougireton/vim-ps1'

Plug 'vim-scripts/SyntaxRange'
Plug 'slim-template/vim-slim'
" Plug 'zealot128-os/vim-slim', { 'branch': 'filters' }

Plug 'vim-scripts/plist.vim'
" Plug 'skammer/vim-css-color'

Plug 'gisraptor/vim-lilypond-integrator'
au BufRead lilypond set makeprg=lilypond\ -s\ %
au BufWritePost *.ly make
