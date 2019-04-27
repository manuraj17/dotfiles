" -----------------------------------------------------------------------------
" [> EDITOR SETTINGS
" -----------------------------------------------------------------------------

" Disable line numbers
set nonumber

" Yank and paste with the system clipboard
set clipboard=unnamed

" Hides buffers instead of closing them
set hidden

" === TAB/Space settings === "
" Insert spaces when TAB is pressed.
set expandtab

" Change number of spaces that a <Tab> counts for during editing ops
set softtabstop=2

" Indentation amount for < and > commands.
set shiftwidth=2

" do not wrap long lines by default
set nowrap

" Keep the line number gutter narrow three digits
set numberwidth=2

" Show command in bottom bar/statusline
set showcmd

" load filetype-specific indent files
filetype indent on

" Visual autocomplete for command menu
set wildmenu

" Redraw only when need to
set lazyredraw

" Shows thel ine and column numbers of the cursor
set ruler

" Show matching brackets
set showmatch

" Disable line/column number in status line
" Shows up in preview window when airline is disabled if not
set noruler

" Line length ruler
set colorcolumn=80

" Number of context lines above and below the cursor
set scrolloff=999

" Only one line for command line
set cmdheight=1

" search as characters are entered
set incsearch

" highlight matches
set hlsearch

" Allow buffer switching without saving
set hidden

" Use vim defaults
set nocompatible

" The encoding is displayed
set encoding=utf-8

" Enable true color support
set termguicolors

set previewheight=20

set noswapfile

" Always show tabline
set showtabline=2

" tabstop is the number of spaces a tab counts for. So, when Vim opens a file
" and reads a <TAB> character, it uses that many spaces to visually show the
" <TAB>.
" Number of visual spaces per TAB to be 2
set tabstop=2

" softabstop is the number of spaces a tab counts for when editing. So this
" value is the number of spaces that is inserted when you hit <TAB> and also
" the number of spaces that are removed when you backspace.
" That's it. So <TAB> just becomes a shortcut for \"insert n spaces\".
" Tabs are spaces
set expandtab

" The amount of block indent when using <
set shiftwidth=2

" Causes backspace to delete 2 spaces
set softtabstop=2

" If in Insert, Replace or Visual mode don't put a message on the last line.
set noshowmode

" Uses shiftwidth instead of tabstop at start of lines
set smarttab

" Let's save undo info!
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
    call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
" The vim undo director
set undodir=~/.vim/undo-dir

" Saves the undo history to a file
set undofile

" Set preview window to appear at bottom
set splitbelow

" Ignore case when searching
set ignorecase

" Set default grep command
set grepprg=rg\ --vimgrep

" THEME
set background=dark
syntax enable
colorscheme sourcerer
