"some useful .vimrc things

set nocompatible    "Don't try to be vi compatible (i don't know what this does, but I've seen it in every .vimrc that I've looked into
filetype off

""""""Colors and aesthetics""""""

"colorscheme DevC++ "This is a default color scheme that I like.  I added a plugin
"that has hundreds of colorschemes in it, though

syntax enable 		" enable syntax highlighting

command GVBlock :r ~/.vim/gvsu_block.txt

""""""Spaces and Tabs""""""

set tabstop=4       "number of visual spaces per TAB
set softtabstop=4	"number of spaces in tab when editing
set smarttab
set expandtab		"tabs are spaces
set autoindent      "auto indent
set nowrap          "don't wrap lines
set backspace=indent,eol,start
set expandtab
set shiftwidth=4

set cinoptions=g0
""""""UI Config""""""

set number  		"show line number
set showcmd	    	"show command in bottom bar
set ruler           "show file stats
set guifont=menlo\ for\ powerline:h16       "always show what mode we're currently editing in
set cursorline

set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgrey
filetype indent on  "load filetype specific indent files
"allows loading of language-specific indentation
let g:ale_enabled = 0
set wildmenu        "visual autocomplete for command menu
set lazyredraw      "redraw only when we need to
set showmatch       "highlight matching [{()}]

""""""Searching""""""
set incsearch       "search as characters are entered
set hlsearch        "highlight matches
set ignorecase      "ignores the case
set smartcase

"turn off search highlighting
nnoremap <leader><space> :nohlsearch<CR>   "mapping <space> to unhighlight search results when done

"Python syntax highlighting"
let g:python_highlight_all = 1
let g:python_slow_sync = 0

""""""PLUGINS""""""

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" " call vundle#begin('~/some/path/here')
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-python/python-syntax'
Plugin 'w0rp/ale'

" " All plugins must be added before the following line.
call vundle#end()
filetype plugin indent on

colorscheme torte

