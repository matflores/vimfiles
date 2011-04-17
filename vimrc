" File: .vimrc
" Author: Matías Flores
" Description: My personal configuration for vim
" Last Modified: october 06, 2010

" Disable backups & swap files
set nobackup
set nowritebackup
set noswapfile

set backspace=indent,eol,start " Backspace over anything
set nowrap                 " Disable word-wrapping
set encoding=utf-8         " Enable unicode support

set autowrite              " Writes on make/shell commands

set timeoutlen=250          " lower timeout for two-key mappings

" ruler
set ruler
set rulerformat=%l:%c ruler " Display current column/line in bottom right

" Load matchit
runtime! macros/matchit.vim

set nonumber

" We're running Vim, not Vi
set nocompatible

if has('gui_running')
    "  set guicursor=a:blinkon0   " Disable blinking cursor
  set guioptions=haMR        " Hide most gui elements (menus, toolbars, scrollbars)
  set columns=170
  set lines=42
  winpos 0 25
endif

" Indentation
filetype plugin indent on
set tabstop=2              " Tabs are 2 spaces
set shiftwidth=2           " Number of spaces used when indenting
set expandtab              " Always insert spaces instead of Tab
set autoindent
set cindent
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case

" Autocompletion
set completeopt=menu       " Don't show extra info on completions
set wildmenu               " Enable menu for tab completion
set wildmode=full          " Enable command-line tab completion

" Theme
set t_Co=16                " Enable 16 colors in Terminal
syntax on                  " Enable syntax highlighting

color railscasts

" Searching
set incsearch   " enable incremental search
set hlsearch    " highlight search terms
set ignorecase  " Ignore case when searching
set smartcase   " unless search terms has uppercase chars
set gdefault    " Assume /g flag on :s searches

" Folding
set foldmethod=indent      " fold based on indent
set nofoldenable           " Disable folding by default

let g:snips_author = 'Matías Flores'

" Mappings

" Copy text to system clipboard
noremap gy "+y

" Paste yanked text from system clipboard
noremap gp "+p
noremap gP "+P

" Increment/decrement numbers
nnoremap + <c-a>
nnoremap - <c-x>

" Visual mode
" m selects until the end of line (but not including the newline char)
xnoremap m $h
" v brings you out of visual mode
xnoremap v <esc>

" Use jj instead of escape
inoremap jj <esc>

map # gc    " comment
map ## gC   " uncomment

map <F3> gL " toggle filepane
map <F4> gl " toggle bufpane

" Open wiki
map <F10> <Leader>ww
imap <F10> <ESC><Leader>ww

" Toggle search highlight
map <F11> :set hlsearch!<CR>
imap <F11> <ESC>:set hlsearch!<CR>a

" Break the undo chain on every Space
imap <Space> <Space><C-g>u

let g:browser = 'firefox -new-tab '
" Open the Ruby ApiDock page for the word under cursor, in a new Firefox tab
function! OpenRubyDoc(keyword)
  let url = 'http://apidock.com/ruby/'.a:keyword
  exec '!'.g:browser.' '.url.' &'
endfunction
noremap RB :call OpenRubyDoc(expand('<cword>'))<CR>

" Open the Rails ApiDock page for the word under cursos, in a new Firefox tab
function! OpenRailsDoc(keyword)
  let url = 'http://apidock.com/rails/'.a:keyword
  exec '!'.g:browser.' '.url.' &'
endfunction
noremap RR :call OpenRailsDoc(expand('<cword>'))<CR>

" Open Rubular in a new Firefox tab
function! OpenRubular()
  let url = 'http://rubular.com'
  exec '!'.g:browser.' '.url.' &'
endfunction
noremap RU :call OpenRubular()<CR>
