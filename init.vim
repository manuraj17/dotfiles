"
" Neovim config file
" github.com/manuraj17
"
"

" plugins {{{

  " Keep this secton at the top to load plugins and colorschemes
  " Plugin manager used -> github.com/junegunn/vim-plug
  " Follow the github page instructions to install it 
  call plug#begin('~/.config/nvim/plugged')
    function! DoRemote(arg)
      UpdateRemotePlugins
    endfunction

    " Make sure you use single quotes
    
    " Plug 'junegunn/seoul256.vim'
    Plug 'junegunn/vim-easy-align'
    " Plug 'jistr/vim-nerdtree-tabs'
    " Limelight
    " Plug 'junegunn/limelight.vim'
    
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Plug 'Valloric/YouCompleteMe'
    
    " The git plugin
    Plug 'tpope/vim-fugitive'
    " The git gutter status 
    Plug 'airblade/vim-gitgutter'
    " Plug 'vim-scripts/AutoClose'
    
    " Autolclose
    Plug 'Raimondi/delimitMate'
    " The powerline plugin and powerline for buffer plugin
    " Plug 'itchyny/lightline.vim'
    " Plug 'taohex/lightline-buffer'
    " Colorscheme
    " Plug 'romainl/Apprentice'
    Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
    " nerdtree-git
    Plug 'Xuyuanp/nerdtree-git-plugin'
    " File browser plugin
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    " Go Plugin
    " Plug 'fatih/vim-go'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    " Saving session state
    Plug 'tpope/vim-obsession'
    " Syste clipboard copy
    Plug 'christoomey/vim-system-copy'
    " Editorconfig
    Plug 'editorconfig/editorconfig-vim'
    " The undo plugin
    Plug 'simnalamburt/vim-mundo'
    
    " The Autotag plugin 
    Plug 'ludovicchabant/vim-gutentags'

    " The material theme plugin 
    " Plug 'kristijanhusak/vim-hybrid-material'
    
    " Rails plugins - not being used for the time being  
    " Plug 'tpope/vim-rails'

    " Adding end to blocks for ruby
    Plug 'tpope/vim-endwise'
    
    " Tagbar
    Plug 'majutsushi/tagbar'
   
    " Syntax checker
    " Plug 'scrooloose/syntastic'
    " Glyphicons for vim
    " Plug 'ryanoasis/vim-devicons'
    " Plug 'neomake/neomake'
   
    " Smooth scroll 
    " Plug 'terryma/vim-smooth-scroll'

    " Move lines 
    Plug 'matze/vim-move'

    Plug 'mattn/emmet-vim' 
   
    " Rust 
    Plug 'rust-lang/rust.vim'

    " Plug 'sheerun/vim-polyglot'
    " Enable any of the following colorschemes  to install them 

    " Predawn - theme 
    " Plug 'juanedi/predawn.vim'
    
    " happy hacking color scheme
    " Plug 'YorickPeterse/happy_hacking.vim'
    
    " wombat color theme
    " Plug 'sheerun/vim-wombat-scheme'
    
    " Truecolor - color theme 
    " Plug 'rakr/vim-two-firewatch'
    
    " Duotone for neovim
    " Plug 'atelierbram/Base2Tone-vim'
    
    " emacs ported colorscheme
    " Plug 'mswift42/vim-themes'
    
    " Alduin colorscheme
    " Plug 'AlessandroYorba/Alduin'

    " Vim multiple-line edit
    " Plug 'terryma/vim-multiple-cursors'
    
    " gruvbox
    Plug 'morhetz/gruvbox'

    " badwolf colorscheme
    " Plug 'sjl/badwolf'
    
    " gruvbox theme for lightline 
    " Plug 'shinchu/lightline-gruvbox.vim'

    " Plug 'kristijanhusak/vim-hybrid-material'
  call plug#end()
" }}}

" folding {{{

  set foldenable          " enable folding 
  set foldlevelstart=10   " open most folds by default
  set foldnestmax=10      " 10 nested fold max
  set foldmethod=marker
  set foldlevel=0
  " To be revisited
  " set foldmethod=indent   " fold based on indent level<Paste>

" }}}

" movement {{{
  
  " highlight last inserted text
  nnoremap gV `[v`]
  " move to beginning/end of line
  nnoremap B ^
  nnoremap E $
  " $/^ doesn't do anything
  nnoremap $ <nop>
  nnoremap ^ <nop>

" }}}

" searching {{{

  set incsearch           " search as characters are entered
  set hlsearch            " highlight matches

" }}}

" ui {{{

  set number              " show line numbers
  set relativenumber      " set relativenumber
  set numberwidth=2       " Keep the line number gutter narrow three digits 
  set showcmd             " show command in bottom bar/statusline
  set cursorline          " highlight current line
  filetype indent on      " load filetype-specific indent files
  set wildmenu            " visual autocomplete for command menu
  set lazyredraw          " redraw only when we need to.
  set showmatch           " highlight matching [{()}]i
  set ruler               " shows the line and the column numbers of the cursor  
  set showmatch           " Show matching brackets.
  set colorcolumn=80
  highlight ColorColumn ctermbg=0 guibg=lightgrey
  " Enable bold font 
  let g:enable_bold_font = 0

" }}}

" spaces-and-tabs {{{

  " tabstop is the number of spaces a tab counts for. So, when Vim opens a file 
  " and reads a <TAB> character, it uses that many spaces to visually show the 
  " <TAB>.
  set tabstop=2       " number of visual spaces per TAB

  " softabstop is the number of spaces a tab counts for when editing. So this 
  " value is the number of spaces that is inserted when you hit <TAB> and also 
  " the number of spaces that are removed when you backspace.
  set softtabstop=4   " number of spaces in tab when editing

  " expandtab turns <TAB>s into spaces. That's it. So <TAB> 
  " just becomes a shortcut for \"insert four spaces\".
  set expandtab       " tabs are spaces
  set shiftwidth=2
  set softtabstop=2
  set noshowmode
  set smarttab

" }}}

" undo {{{

  set undofile
  set undodir=~/.vim/undo

" }}}

" Colorscheme {{{

  " colorscheme seoul256
  " colorscheme apprentice
  colorscheme gruvbox
  " colorscheme Base2Tone-Earth-dark
  " colorscheme two-firewatch
  " colorscheme hybrid_reverse
  set background=dark
  syntax enable           " enable syntax processing

" }}}

" editor-settings {{{
"
  set noswapfile

" }}}

" custom-keymaps {{{
 
  imap ;; <esc>
  
  nnoremap ; :
  nnoremap Q @q  

  " noremap l l   " Right
  " noremap h k   " Up
  " noremap j j   " Down
  " noremap k h   " Left 

  " yank file
  nnoremap <space>yf :%y+<cr>
  " smoothscroll 
  " noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
  " noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
  " noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
  " noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

  " move
  let g:move_key_modifier = 'A'


  " Ctrl-f to toggle fuzzysearch
  map <silent> <C-f> :FZF<CR>
  
  " Ctrl-p for next buffer
  map <silent> <C-p> :bn<CR>
  " Ctrl-o for the previous buffer
  map <silent> <C-o> :bp<CR>
  " Ctrl-k to kill the current buffer
  " map <silent> <C-k> :bw<CR>
  
  " Use CTRL-S for saving, also in Insert mode
  noremap  <C-S> :update<CR>
  vnoremap <C-S> <C-C>:update<CR>
  inoremap <C-S> <C-O>:update<CR>
  
  " Install exuberent-ctags to make use of this 
  " sudo apt-get install exuberant-ctags
  nmap <silent> <C-t> :TagbarToggle<CR>

  " Ctrl-n to toggle nerdtree
  map <silent> <C-n> :NERDTreeToggle<CR>

  let mapleader="\<SPACE>"
  
  " fugitive git key bindings
  nnoremap <space>ga :Git add %:p<CR><CR>
  nnoremap <space>gs :Gstatus<CR>
  nnoremap <space>gc :Gcommit -v -q<CR>
  nnoremap <space>gt :Gcommit -v -q %:p<CR>
  nnoremap <space>gd :Gvdiff<CR>
  " nnoremap <space>gd :Gdiff<CR>
  nnoremap <space>ge :Gedit<CR>
  nnoremap <space>gr :Gread<CR>
  nnoremap <space>gw :Gwrite<CR><CR>
  nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
  nnoremap <space>gp :Ggrep<Space>
  nnoremap <space>gm :Gmove<Space>
  nnoremap <space>gb :Git branch<Space>
  nnoremap <space>go :Git checkout<Space>
  nnoremap <space>gps :Dispatch! git push<CR>
  nnoremap <space>gpl :Dispatch! git pull<CR>

  " <Ctrl-l> redraws the screen and removes any search highlighting.
  nnoremap <silent> <C-l> :nohl<CR><C-l>

  " Custom colorschemes for different modes - to be tested
  " au InsertLeave * colorscheme apprentice
  " au InsertEnter * colorscheme seoul256 
" }}}

" other-configs {{{

  set nocompatible        " use vim defaults
  " let g:python_host_prog='/usr/bin/python2'
  set clipboard+=unnamedplus "Enabling clipboard
  let g:deoplete#enable_at_startup = 1
  let g:airline_powerline_fonts = 1
  set encoding=utf-8

  " NERDTress File highlighting
  function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
  endfunction

  " Editorconfig settings 
  let g:EditorConfig_exclude_patterns = ['fugitive://.*']

  " limelight
  let g:limelight_default_coefficient = 0.3
  let g:limelight_conceal_ctermfg = 'DarkGray'
  let g:limelight_conceal_guifg =  '#777777'
  
  " Below needs to be fixed
  " Beginning/end of paragraph
  " When there's no empty line between the paragraphs
  " and each paragraph starts with indentation
  let g:limelight_bop = '^\s'
  let g:limelight_eop = '\ze\n^\s'
  " Highlighting priority (default: 10)
  " Set it to -1 not to overrule hlsearch
  let g:limelight_priority = -1

  " neomake
  let g:neomake_ruby_enabled_makers = ['rubocop']

  filetype plugin indent on

  " Rust 
  let g:rustfmt_autosave = 1
" }}}

" airline settings {{{

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  let g:airline_powerline_fonts = 1
  " the theme
  let g:airline_theme = 'gruvbox'

  let g:airline#extensions#tabline#enabled = 1

  " unicode symbols
  let g:airline_left_sep = '»'
  " let g:airline_left_sep = '▶'
  let g:airline_left_sep = ''
  let g:airline_right_sep = '«' 
  " let g:airline_right_sep = '◀'
  let g:airline_right_sep = ''
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.whitespace = 'Ξ'

" }}}

" NerdTee-settings {{{

  let g:NERDTreeIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ 'Ignored'   : '☒',
      \ "Unknown"   : "?"
      \ }

" }}}

" lightline-settings {{{

  " The following lightline settings are commented out because currently airline
  " is being used. Lightline is meant to be much lighter in weight. It has to be 
  " customised manually a bit more as it does not comes configured out of the
  " box compared to airline. Keeping the settings for now for future reference.

  " let g:lightline = {
  "    \ 'colorscheme': 'gruvbox',
  "     \ 'active': {
  "     \   'left': [ [ 'mode', 'paste' ],
  "     \             [ 'fugitive', 'readonly', 'filename' ] ],
  "     \   'right': [ [ 'percent', 'lineinfo' ],
  "     \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
  "     \ },
  "     \ 'subseparator': { 'left': '', 'right': '' },
  "     \ 'separator': { 'left': '', 'right': '' }, 
  "     \ 'tabline' : {
  "       \ 'left': [ [ 'bufferinfo' ], [ 'bufferbefore', 'buffercurrent', 'bufferafter' ], ],
  "       \ 'right': [ [ 'close' ], ],
  "      \ },
  "   \ 'component_expand': {
  "      \ 'buffercurrent': 'lightline#buffer#buffercurrent2',
  "       \   'syntastic': 'SyntasticStatuslineFlag',
  "       \ },
  "   \ 'componenty_type' : {
  "     \   'syntastic': 'error',
  "  \ },
  "   \ 'component_function': {
  "       \ 'fugitive': 'LightLineFugitive',
  "       \ 'gitgutter': 'LightLineGitGutter',
  "       \ 'readonly': 'LightLineReadonly',
  "       \ 'syntastic': 'SyntasticStatuslineFlag',
  "       \   'filename': 'LightLineFilename',
  "       \ 'bufferbefore': 'lightline#buffer#bufferbefore',
  "       \ 'bufferafter': 'lightline#buffer#bufferafter',
  "       \ 'bufferinfo': 'lightline#buffer#bufferinfo',
  "       \ }
  "     \ }
  "      \ 'subseparator': { 'left': '', 'right': '' },
  "      \ 'separator': { 'left': '', 'right': '' }, 

  " function! LightLineModified()
  "  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
  " endfunction

  " function! LightLineReadonly()
  "  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '' : ''
  " endfunction

  " function! LightLineFilename()
  "  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
  "       \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
  "       \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
  " endfunction

  " function! LightLineFilename()
  "  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
  "        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
  "        \  &ft == 'unite' ? unite#get_status_string() :
  "        \  &ft == 'vimshell' ? vimshell#get_status_string() :
  "        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
  "        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
  " endfunction

  " let g:lightline.enable = {
  "  \'statusline' : 1,
  " \'tabline'    : 1
  " \} 

  " function! LightLineFugitive()
  "  if exists("*fugitive#head")
  "    let branch = fugitive#head()
  "    return branch !=# '' ? ' '.branch : ''
  "  endif
  "  return ''
  " endfunction

  " function! LightLineFugitive()
  "   if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
  "    let branch = fugitive#head()
  "    return branch !=# '' ? ' '.branch : ''
  "  endif
  "  return ''
  " endfunction

  " function! LightLineFileformat()
  "  return winwidth(0) > 70 ? &fileformat : ''
  " endfunction

  " function! LightLineFiletype()
  "  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
  " endfunction

  " function! LightLineFileencoding()
  "  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
  " endfunction

  " function! LightLineMode()
  "  return winwidth(0) > 60 ? lightline#mode() : ''
  "endfunction

  " Devicons config for lightline 
  " function! MyFiletype()
    "return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
  " endfunction

  " function! MyFileformat()
    "return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
  " endfunction

  " lightline-buffer settings
  " let g:lightline_buffer_logo = '☯ '
  " let g:lightline_buffer_readonly_icon = ''
  " let g:lightline_buffer_modified_icon = '✭'
  " let g:lightline_buffer_git_icon = ' '
  " let g:lightline_buffer_ellipsis_icon = '..'
  " let g:lightline_buffer_expand_left_icon = ' '
  " let g:lightline_buffer_expand_right_icon = ' '
  " let g:lightline_buffer_active_buffer_left_icon = ''
  " let g:lightline_buffer_active_buffer_right_icon = ''
  " let g:lightline_buffer_separator_icon = ' '
  " 
  " let g:lightline_buffer_show_bufnr = 1
  " let g:lightline_buffer_rotate = 0
  " let g:lightline_buffer_fname_mod = ':t'
  " let g:lightline_buffer_excludes = ['vimfiler']
  " 
  " let g:lightline_buffer_maxflen = 30
  " let g:lightline_buffer_maxfextlen = 3
  " let g:lightline_buffer_minflen = 16
  " let g:lightline_buffer_minfextlen = 3
  " let g:lightline_buffer_reservelen = 20

" }}}

" custom-methods {{{

  " Relative numbering
  function! NumberToggle()
    if(&relativenumber == 1)
      set nornu
      set number
    else
      set rnu
    endif
  endfunc

  " Toggle between normal and relative numbering.
  nnoremap <leader>r :call NumberToggle()<cr>

" }}}

" misc {{{

  " For reference
  " :bf            # Go to first file.
  " :bl            # Go to last file
  " :bn            # Go to next file.
  " :bp            # Go to previous file.
  " :bw            # Close file.

  " To be revisited 
  " if has("autocmd") && exists("+omnifunc")
  "   autocmd Filetype *
  " 	  \	if &omnifunc == "" |
  " 		\		setlocal omnifunc=syntaxcomplete#Complete |
  " 		\	endif
  " endif

" }}}







