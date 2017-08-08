" Neovim config file 

" plugins {{{

  " Keep this secton at the top to load plugins and colorschemes
  " Plugin manager used -> github.com/junegunn/vim-plug
  " Follow the github page instructions to install it 
  call plug#begin('~/.config/nvim/plugged')
    function! DoRemote(arg)
      UpdateRemotePlugins
    endfunction

    " Make sure you use single quotes
   
    Plug 'Yggdroot/indentLine'
    Plug 'junegunn/seoul256.vim'
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
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    " The git gutter status 
    Plug 'airblade/vim-gitgutter'
    " Plug 'vim-scripts/AutoClose'
    
    " Find and Replace 
    " Plug 'brooth/far.vim'   

    " Multilanguage support plugin 
    Plug 'sheerun/vim-polyglot'
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
    " System clipboard copy
    " Plug 'christoomey/vim-system-copy'
    " Editorconfig
    Plug 'editorconfig/editorconfig-vim'
    " The undo plugin
    Plug 'simnalamburt/vim-mundo'
    
    " The Autotag plugin 
    Plug 'ludovicchabant/vim-gutentags'
    
    Plug 'Shougo/dein.vim'
    Plug 'Shougo/denite.nvim'
    Plug 'Shougo/deol.nvim'

    " Don't think easy tag is required since deoplete is used
    " Plug 'xolox/vim-easytags'
    " Plug 'xolox/vim-misc'

    " The material theme plugin 
    " Plug 'kristijanhusak/vim-hybrid-material'
    
    " Rails plugins - not being used for the time being  
    " Plug 'tpope/vim-rails'

    " Adding end to blocks for ruby
    Plug 'tpope/vim-endwise'
    
    " Tagbar
    " Plug 'majutsushi/tagbar'
   
    " Syntax checker
    " Plug 'scrooloose/syntastic'
    " Glyphicons for vim
    " Plug 'ryanoasis/vim-devicons'
    Plug 'neomake/neomake'
   
    " Smooth scroll 
    " Plug 'terryma/vim-smooth-scroll'

    " Move lines 
    " Plug 'matze/vim-move'
    " Plug 'mattn/emmet-vim' 
   
    " Rust 
    Plug 'rust-lang/rust.vim'

    " Vagrant integration 
    Plug 'hashivim/vim-vagrant'
   
    " Argument wrapping
    " Plug 'FooSoft/vim-argwrap'

    " Rbenv support 
    " Plug 'tpope/vim-rbenv'
    
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
    Plug 'shinchu/lightline-gruvbox.vim'

    " Pylug 'kristijanhusak/vim-hybrid-material'
    
    " Hybrid colorscheme
    " Plug 'w0ng/vim-hybrid'
    
    " Lightline hybrid theme
    " Plug 'cocopon/lightline-hybrid.vim'
    
    "
    Plug 'josuegaleas/jay'
    
    " Previewing RGB 
    Plug 'chrisbra/Colorizer'
  
    " Plug 'xero/blaquemagick.vim'
    " Plug 'davidklsn/vim-sialoquent'
    " Plug 'jacoborus/tender.vim'
    " Plug 'dikiaap/minimalist'

    " Plug 'tomasr/molokai'
    " Plug 'chriskempson/base16-vim'
    " Plug 'owickstrom/vim-colors-paramount'
    Plug 'romainl/Apprentice'

    Plug 'chemzqm/vim-easygit'
    Plug 'chemzqm/denite-git'
    Plug 'chemzqm/denite-extra'



    Plug 'francoiscabrol/ranger.vim'
    Plug 'rbgrouleff/bclose.vim'

    " Asynchronous linting
    " Plug 'w0rp/ale'
    " Ultimate snippets 
    Plug 'SirVer/ultisnips'
    " Asynchronous autocomplete
    Plug 'roxma/nvim-completion-manager'
    Plug 'tpope/vim-vinegar'
    " Plug 'crusoexia/vim-monokai'
    Plug 'danilo-augusto/vim-afterglow'
    Plug 'thoughtbot/vim-rspec'
    " Plug 'jnurmine/Zenburn'
  call plug#end()

" }}}

" folding {{{

  set foldenable          " enable folding 
  set foldlevelstart=0   " open most folds by default
  set foldnestmax=10      " 10 nested fold max
  set foldmethod=marker
  set foldlevel=0
  " To be revisited
  " set foldmethod=indent   " fold based on indent level<Paste>

" }}}

" editor-settings {{{
"
  set noswapfile
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" }}}

" movement {{{
  
  " highlight last inserted text
  nnoremap gV `[v`]

  " move to beginning/end of line
  nnoremap B ^
  nnoremap E $

  " $/^ doesn't do anything
  " nnoremap $ <nop>
  " nnoremap ^ <nop>

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
  set scrolloff=999       " Number of context lines above and below the cursor
  set termguicolors

  " highlight whitespace
  " highlight ws ctermbg=grey guibg=red
  
  highlight ColorColumn ctermbg=0 guibg=lightgrey
  " Enable bold font 
  let g:enable_bold_font = 0
  set showtabline=2       " always show tabline
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

  syntax on
  " colorscheme afterglow
  " colorscheme monokai
  " colorscheme Base2Tone_ForestDark
  " colorscheme alduin
  colorscheme apprentice
  " colorscheme gruvbox
  " colorscheme zenburn
  " set background=dark
  " let g:gruvboxd_contrast_dark
  " colorscheme seoul256
  " au ColorScheme * hi Normal ctermbg=none guibg=none
  " hi! Normal ctermbg=NONE guibg=NONE
  " hi! NonText ctermbg=NONE guibg=NONE
  " au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red
  " au CursorLineNr ctermbg=none guibg=none
  " highlight clear LineNr
  " highlight clear SignColumn
  " hi Normal ctermbg=none
  " highlight NonText ctermbg=none
  " hi Normal ctermbg=none
  " highlight NonText ctermbg=none
  " hi Normal guibg=none
  " hi NonText ctermbg=none hi Normal guibg=NONE ctermbg=NONE
  " colorscheme apprentice
  " colorscheme gruvbox
  " colorscheme Base2Tone-Earth-dark
  " colorscheme two-firewatch
  " colorscheme hybrid_reverse
 
  " set background=dark
  " syntax enable           " enable syntax processing
  " colorscheme hybrid
  
  " For jay the settings are as below
  " syntax on 
  " set background=dark
  " colorscheme tender
  
  " set t_Co=256
  " syntax on
  " colorscheme minimalist

" }}}

" custom-keymaps {{{
  
  let mapleader="\<SPACE>"
  imap ;; <esc>
  
  nnoremap ; :
  nnoremap Q @q  

  " indent the whole file 
  " map <space>gf :gg=G<CR>

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
  " let g:move_key_modifier = 'A'

  " Ctrl-f to toggle fuzzysearch
  map <silent> <C-f> :FZF<CR>
  
  " Ctrl-p for next buffer
  " map <silent> <C-p> :bn<CR>
  " Ctrl-o for the previous buffer
  " map <silent> <C-o> :bp<CR>
  " Ctrl-k to kill the current buffer
  " map <silent> <C-k> :bw<CR>
  
  " Use CTRL-S for saving, also in Insert mode
  " noremap  <C-S> :update<CR>
  " vnoremap <C-S> <C-C>:update<CR>
  " inoremap <C-S> <C-O>:update<CR>
  
  " Install exuberent-ctags to make use of this - Don't. 
  " Use universal ctags
  nmap <space>t :TagbarToggle<CR>

  " Space-n to toggle nerdtree
  map <space>n :NERDTreeToggle<CR>


  
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
  " nnoremap <silent> <C-l> :nohl<CR><C-l>
  
  " highlighting white spaces
  " "<leader> wn to turn it on
  " "<leader> wf to turn it off
  " The below mapping shows all whitepsaces
  " nnoremap <Leader>wn :match ExtraWhitespace /^\s* \s*\<Bar>\s\+$/<CR>
  " nnoremap <Leader>wf :match<CR>
  " Show only trailing whitespace
  " nnoremap <Leader>wn :match ExtraWhitespace /\s\+$/<CR>
  " `nnoremap <Leader>wf :match<CR>

  " Custom colorschemes for different modes - to be tested
  " au InsertLeave * colorscheme apprentice
  " au InsertEnter * colorscheme seoul256

  map <leader>v :vsplit<CR>
  
  " nnoremap <leader>t :Files<cr>
  " nnoremap <leader>b :Buffers<cr>

  " nmap <leader><tab> <plug>(fzf-maps-n)
  " xmap <leader><tab> <plug>(fzf-maps-x)
  " omap <leader><tab> <plug>(fzf-maps-o)

  " https://blog.petrzemek.net/2016/04/06/things-about-vim-i-wish-i-knew-earlier/
  " Make Ctrl-e jump to the end of the current line in the insert mode. This is
  " handy when you are in the middle of a line and would like to go to its end
  " without switching to the normal mode.
  " inoremap <C-e> <C-o>$

  " In command mode (i.e. after pressing ':'), expand %% to the path of the current
  " buffer. This allows you to easily open files from the same directory as the
  " currently opened file.
  " cnoremap <expr> %% getcmdtype() == ';' ? expand('%:h').'/' : '%%'

  " Allows you to easily replace the current word and all its occurrences.
  nnoremap <Leader>rc :%s/\<<C-r><C-w>\>/
  vnoremap <Leader>rc y:%s/<C-r>"/

  " Allows you to easily change the current word and all occurrences to something
  " else. The difference between this and the previous mapping is that the mapping
  " below pre-fills the current word for you to change.
  nnoremap <Leader>cc :%s/\<<C-r><C-w>\>/<C-r><C-w>
  vnoremap <Leader>cc y:%s/<C-r>"/<C-r>"

  " Remove ANSI color escape codes for the edited file. This is handy when
  " piping colored text into Vim.
  nnoremap <Leader>rac :%s/<C-v><Esc>\[\(\d\{1,2}\(;\d\{1,2}\)\{0,2\}\)\?[m\|K]//g<CR>

  " Argument wrap - Requires plugin
  " nnoremap <silent> <leader>a :ArgWrap<CR>

  " Use the "black hole register", "_ to really delete something: "_d.
  " Use "_dP to paste something and keep it available for further pasting.
  nnoremap <leader>d "_d
  vnoremap <leader>d "_d
  vnoremap <leader>p "_dP

  " Escaping out of terminal mode 
  tnoremap <leader>h <C-\><C-n>

  "Remove all trailing whitespace by pressing F5
  nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" }}}

" other-configs {{{

  set hidden              " allow buffer switching without saving
  
  set nocompatible        " use vim defaults
  " let g:python_host_prog='/usr/bin/python2'
  " set clipboard+=unnamedplus "Enabling clipboard
  set clipboard=unnamed
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

  " neomake - trying ale
  let g:neomake_ruby_enabled_makers = ['rubocop']

  filetype plugin indent on

  " Rust 
  let g:rustfmt_autosave = 1

  " FZF
  " TODO: Change the below to :ag and then to ignore git files and show dot
  " files 
  " let $FZF_DEFAULT_COMMAND = " find -L "
" }}}

" airline settings {{{

  " Moving to lightline now 
  
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  let g:airline_powerline_fonts = 1
  " the theme
  " let g:airline_theme = 'zenburn'
  let g:airline_theme = 'apprentice'

  let g:airline#extensions#tabline#enabled = 1

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_left_sep = ''
  let g:airline_right_sep = '«' 
  let g:airline_right_sep = '◀'
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

" gitgutter-settings {{{
  let g:gitgutter_override_sign_column_highlight = 0
  highlight clear SignColumn
  highlight SignColumn ctermbg=none  
  highlight GitGutterAdd          ctermbg=none
  highlight GitGutterChange       ctermbg=none
  highlight GitGutterDelete       ctermbg=none
  highlight GitGutterChangeDelete ctermbg=none
" }}}

" lightline-settings {{{

  " The following lightline settings are commented out because currently airline
  " is being used. Lightline is meant to be much lighter in weight. It has to be 
  " customised manually a bit more as it does not comes configured out of the
  " box compared to airline. Keeping the settings for now for future reference.

  " let g:lightline = {
  "     \ 'active': {
  "     \   'left': [ [ 'mode', 'paste' ],
  "     \             [ 'fugitive', 'readonly', 'filename' ] ],
  "     \   'right': [ [ 'percent', 'lineinfo' ],
  "     \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
  "     \ },
  "     \ 'colorscheme': 'gruvbox',
  "     \ 'subseparator': { 'left': '', 'right': ''},
  "     \ 'separator': { 'left': '' , 'right': '' }, 
  "     \ 'tabline' : {
  "     \ 'left': [ [ 'bufferinfo' ], [ 'bufferbefore', 'buffercurrent', 'bufferafter' ], ],
  "     \ 'right': [ [ 'close' ], ],
  "     \ },
  "     \ 'component_expand': {
  "     \ 'buffercurrent': 'lightline#buffer#buffercurrent2',
  "     \ },
  "     \ 'componenty_type' : {
 	"    \    'buffercurrent': 'tabsel',  
  "     \ },
  "     \ 'component_function': {
  "     \   'fugitive'     : 'LightLineFugitive',
  "     \   'bufferbefore' : 'lightline#buffer#bufferbefore',
  "     \   'bufferafter'  : 'lightline#buffer#bufferafter',
  "     \   'bufferinfo'   : 'lightline#buffer#bufferinfo',
  "     \   'gitgutter'    : 'LightLineGitGutter',
  "     \   'readonly'     : 'LightLineReadonly',
  "     \   'filename'     : 'LightLineFilename',
  "     \  }
  "     \ }

   " let g:lightline_hybrid_style = 'plain'

   " Reference texts:
   "    \ 'subseparator': { 'left': '', 'right': ''},
   "    \ 'separator': { 'left': '' , 'right': '' },
   "    \ 'subseparator': { 'left': '', 'right': '' },
   "    \ 'separator': { 'left': '', 'right': '' }, 
   "    \ 'subseparator': { 'left': '', 'right': '' },
   "    \ 'separator': { 'left': '', 'right': '' }, 
   " component_function: {

   " Methods required for lightline, uncomment them when lightline is being
   " used
   " function! LightLineModified()
   "  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
   " endfunction

   "  function! LightLineReadonly()
   "   return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '' : ''
   "  endfunction
   "  function! LightLineFilename()
   "   return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
   "        \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
   "        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
   "  endfunction

   "  function! LightLineFilename()
   "   return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
   "         \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
   "         \  &ft == 'unite' ? unite#get_status_string() :
   "         \  &ft == 'vimshell' ? vimshell#get_status_string() :
   "         \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
   "         \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
   "  endfunction

   "  let g:lightline.enable = {
   "   \'statusline' : 1,
   "   \'tabline'    : 1
   "  \} 

   "  function! LightLineFugitive()
   "   if exists("*fugitive#head")
   "     let mark = " "   " ⎇''   edit here for cool mark

   "     let branch = fugitive#head()
 " "      return branch !=# '' ? ' '.branch : ''
   "      return branch !=# '' ? mark.branch : ''
   "   endif
   "   return ''
   "  endfunction

   "  function! LightLineFugitive()
   "    if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
   "     let mark = " "   " ⎇''   edit here for cool mark
   "     " let mark = '⎇'' '  " edit here for cool mark
   "     let branch = fugitive#head()
   "     return branch !=# '' ? mark.branch : ''
   "   endif
   "   return ''
   "  endfunction

   "  function! LightLineFileformat()
   "   return winwidth(0) > 70 ? &fileformat : ''
   "  endfunction

   "  function! LightLineFiletype()
   "   return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
   "  endfunction

   "  function! LightLineFileencoding()
   "   return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
   "  endfunction

   "  function! LightLineMode()
   "   return winwidth(0) > 60 ? lightline#mode() : ''
   " endfunction

   " Devicons config for lightline 
   " function! MyFiletype()
     "return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
   " endfunction

   " function! MyFileformat()
     "return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
   " endfunction

   " Buffer settings for lightline, uncomment them when lightline is being
   " used
   " lightline-buffer settings
   " let g:lightline_buffer_logo = '☯ '
   " let g:lightline_buffer_readonly_icon = ''
   " let g:lightline_buffer_modified_icon = '✭'
   " let g:lightline_buffer_git_icon = ' '
   " let g:lightline_buffer_ellipsis_icon = '..'
   " let g:lightline_buffer_expand_left_icon = '<'
   " let g:lightline_buffer_expand_right_icon = '>'
   " let g:lightline_buffer_active_buffer_left_icon = '['
   " let g:lightline_buffer_active_buffer_right_icon = ']'
   " let g:lightline_buffer_separator_icon = ''
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


  " Copy Open a new buffer
  " function! Copen
	" 	echom 'hola' 
  " endfunction

	" :lua print(1+1)
	" vnoremap <C-s> :call !Copen()
  " vnoremap <C-s> :'<,'>!Copen()
  " vnoremap <C-s> y:! <C-r>0<Home><right>
  " vnoremap <C-s> y:! :vnew 
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
"}}}

" easygit {{{
      let g:easygit_enable_command = 1
" }}}

" denite {{{
    " reset 50% winheight on window resize
    augroup deniteresize
      autocmd!
      autocmd VimResized,VimEnter * call denite#custom#option('default',
            \'winheight', winheight(0) / 2)
    augroup end
    
    call denite#custom#option('default', {
          \ 'prompt': '❯'
          \ })
    
    call denite#custom#var('file_rec', 'command',
          \ ['rg', '--files', '--glob', '!.git', ''])
    call denite#custom#var('grep', 'command', ['rg'])
    call denite#custom#var('grep', 'default_opts',
          \ ['--hidden', '--vimgrep', '--no-heading', '-S'])
    call denite#custom#var('grep', 'recursive_opts', [])
    call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
    call denite#custom#var('grep', 'separator', ['--'])
    call denite#custom#var('grep', 'final_opts', [])
    call denite#custom#map('insert', '<Esc>', '<denite:enter_mode:normal>',
          \'noremap')
    call denite#custom#map('normal', '<Esc>', '<NOP>',
          \'noremap')
    call denite#custom#map('insert', '<C-v>', '<denite:do_action:vsplit>',
          \'noremap')
    call denite#custom#map('normal', '<C-v>', '<denite:do_action:vsplit>',
          \'noremap')
    call denite#custom#map('normal', 'dw', '<denite:delete_word_after_caret>',
          \'noremap')
    
    nnoremap <C-f> :<C-u>Denite file_rec<CR>
    nnoremap <leader>b :<C-u>Denite buffer<CR>
    nnoremap <leader><Space>s :<C-u>DeniteBufferDir buffer<CR>
    nnoremap <leader>8 :<C-u>DeniteCursorWord grep:. -mode=normal<CR>
    nnoremap <leader>/ :<C-u>Denite grep:. -mode=normal<CR>
    nnoremap <leader><Space>/ :<C-u>DeniteBufferDir grep:. -mode=normal<CR>
    nnoremap <C-l> :<C-u>DeniteBufferDir file_rec<CR>
    
    hi link deniteMatchedChar Special  

    nnoremap <leader>g :<C-u>Denite gitstatus -mode=normal<CR>
    call denite#custom#map('normal', 'a', '<denite:do_action:add>',
          \ 'noremap')
    call denite#custom#map('normal', 'd', '<denite:do_action:delete>',
          \ 'noremap')
    call denite#custom#map('normal', 'r', '<denite:do_action:reset>',
          \ 'noremap')
" }}}

" denite-extra {{{
    nnoremap <leader>o :<C-u>Denite location_list -mode=normal -no-empty<CR>
    nnoremap <leader>hs :<C-u>Denite history:search -mode=normal<CR>
    nnoremap <leader>hc :<C-u>Denite history:cmd -mode=normal<CR>
" }}}

" ranger {{{
    let g:ranger_map_keys = 0
    " map <leader>f :Ranger<CR>.
    map <leader>f :RangerWorkingDirectoryNewTab<CR>
" }}}

" deoplete {{{
    let g:deoplete#enable_at_startup = 1
" }}}

" rspec-vim {{{
  map <Leader>t :call RunCurrentSpecFile()<CR>
  map <Leader>s :call RunNearestSpec()<CR>
  map <Leader>l :call RunLastSpec()<CR>
  map <Leader>a :call RunAllSpecs()<CR>
" }}}

