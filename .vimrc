"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"" Fix backspace indent
set backspace=indent,eol,start

"" Allow plugins by file type
filetype on
filetype plugin on

"" Tabs. May be overriten by autocmd rules
set tabstop=2
set shiftwidth=2
set expandtab

"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan

"" Encoding
set bomb
set ttyfast

"" Directories for swp files
set nobackup
set noswapfile

set fileformats=unix,dos,mac
set showcmd
set shell=/bin/sh


"*****************************************************************************
"" Visual Settigns
"*****************************************************************************
syntax on

set ruler
set number
set display=lastline

let no_buffers_menu=1
highlight BadWhitespace ctermbg=red guibg=red
colorscheme elflord

set mousemodel=popup
set t_Co=256
set nocursorline
set guioptions=egmrti
set gfn=Monospace\ 8

if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    set guifont=Menlo:h12
    set transparency=7
  endif
else
  let g:CSApprox_loaded = 1

  if $COLORTERM == 'gnome-terminal'
    set term=gnome-256color
  else
    if $TERM == 'xterm'
      set term=xterm-256color
    endif
  endif
endif

set backspace=indent,eol,start
set modeline
set modelines=10
set title
set titleold="Terminal"
set titlestring=%F

"*****************************************************************************
"" Functions
"*****************************************************************************
function s:setupWrapping()
  set wrap
  set wm=2
  set textwidth=79
endfunction

function TrimWhiteSpace()
  let @*=line(".")
  %s/\s*$//e
  ''
endfunction
