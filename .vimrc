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
set tabstop=4
set shiftwidth=2
set softtabstop=2
set autoindent

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
set ttyfast

"" Directories for swp files
set nobackup
set noswapfile

set fileformats=unix,dos,mac
set showcmd
set shell=/bin/sh

set viminfo='20,\"1000
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

set modeline
set modelines=10
set title
set titleold="Terminal"
set titlestring=%F



set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

"Plugins
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'nathanaelkane/vim-indent-guides'  
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'nono/vim-handlebars'
NeoBundle 'vim-jp/vim-go-extra'
NeoBundle 'google/vim-ft-go'
NeoBundle 'millermedeiros/vim-esformatter'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck

map <C-e> :NERDTreeToggle<CR>
let g:indent_guides_auto_colors=0
hi IndentGuidesOdd  ctermbg=235
hi IndentGuidesEven ctermbg=237
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
autocmd BufRead *.php\|*.ctp\|*.tpl :set dictionary=~/.vim/dictionaries/php.dict filetype=php

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_manual_completion_start_length = 0
let g:neocomplcache_caching_percent_in_statusline = 1
let g:neocomplcache_enable_skip_completion = 1
let g:neocomplcache_skip_input_time = '0.5'

au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
autocmd FileType coffee    setlocal sw=2 sts=2 ts=2 et
autocmd QuickFixCmdPost * nested cwindow | redraw! 
nnoremap <silent> <C-C> :CoffeeCompile vert <CR><C-w>h

