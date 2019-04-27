" -----------------------------------------------------------------------------
" [> PLUGINS
" -----------------------------------------------------------------------------

" Keep this secton at the top to load plugins and colorschemes
" Plugin manager used -> github.com/junegunn/vim-plug
" Follow the github page instructions to install it
call plug#begin('~/.config/nvim/plugged')
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

" Trailing whitespace highlighting & automatic fixing
Plug 'ntpeters/vim-better-whitespace'

" auto-close plugin
Plug 'jiangmiao/auto-pairs'

" Improved motion in Vim
Plug 'easymotion/vim-easymotion'

" Intellisense Engine
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" Tmux/Neovim movement integration
Plug 'christoomey/vim-tmux-navigator'

" Denite - Fuzzy finding, buffer management
Plug 'Shougo/denite.nvim'

" Snippet support
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Print function signatures in echo area
Plug 'Shougo/echodoc.vim'

" Enable git changes to be shown in sign column
Plug 'mhinz/vim-signify'
" Plug 'airblade/vim-gitgutter'

" The one and only
Plug 'tpope/vim-fugitive'

" Git commit browser
Plug 'junegunn/gv.vim'

" Typescript syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'

" ReactJS JSX syntax highlighting
Plug 'mxw/vim-jsx'

" Generate JSDoc commands based on function signature
Plug 'heavenshell/vim-jsdoc'

" Asynchronous completion framework
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

" Syntax highlighting for nginx
Plug 'chr4/nginx.vim'

" Syntax highlighting for javascript libraries
Plug 'othree/javascript-libraries-syntax.vim'

" Improved syntax highlighting and indentation
Plug 'othree/yajs.vim'

" File explorers
Plug 'tpope/vim-vinegar'

" Colorscheme
Plug 'xero/sourcerer.vim'

" Customized vim status line
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'manuraj17/vim-tinyline'

" Editorconfig
Plug 'editorconfig/editorconfig-vim'

" Run rspec from vim
Plug 'thoughtbot/vim-rspec'

" Vim undo
Plug 'simnalamburt/vim-mundo'

" Auto close def end for ruby
Plug 'tpope/vim-endwise'

" Vim elixir
Plug 'elixir-editors/vim-elixir'

" Slim template support
Plug 'slim-template/vim-slim'

" Dash integration
Plug 'rizzatti/dash.vim'

" Self vim wiki
Plug 'vimwiki/vimwiki'

" Syntax linting and LSP integration
" Plug 'w0rp/ale'

" Vim Session
" TODO: Configure properly
Plug 'tpope/vim-obsession'

" Line indendation
Plug 'Yggdroot/indentLine'

" Rust vim integration
Plug 'rust-lang/rust.vim'

" FZF!
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Initialize plugin system
call plug#end()
