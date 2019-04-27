" -----------------------------------------------------------------------------
" [> PLUGIN CONFIGURATIONS
" -----------------------------------------------------------------------------

" ==[> ntpeters/vim-better-whitespace
let g:strip_whitelines_at_eof=1
let g:show_spaces_that_precede_tabs=1

" ==[> thoughtbot/vim-rspec
" let g:rspec_command = \"!bundle exec rspec {spec}"

" ==[> airblade/vim-gitgutter
" -----------------------------------------------------------------------------
let g:gitgutter_override_sign_column_highlight = 0
highlight GitGutterAdd    ctermfg=2 ctermbg=0
highlight GitGutterChange ctermfg=3 ctermbg=0
highlight GitGutterDelete ctermfg=1 ctermbg=0

" ==[> neoclide/vim-easygit
" -----------------------------------------------------------------------------
let g:easygit_enable_command = 1

" ==[> Shougo/denite.nvim
" -----------------------------------------------------------------------------
" reset 50% winheight on window resize
augroup deniteresize
  autocmd!
  autocmd VimResized,VimEnter * call denite#custom#option('default',
        \'winheight', winheight(0) / 2)
augroup end

" Denite setup
" Use ripgrep for searching current directory for files
" By default, ripgrep will respect rules in .gitignore
"   --files: Print each file that would be searched (but don't search)
"   --glob:  Include or exclues files for searching that match the given glob
"            (aka ignore .git files)
"
call denite#custom#var(
  \ 'file/rec', 'command', ['rg', '--files', '--glob', '!.git']
  \ )

" Use ripgrep in place of "grep"
call denite#custom#var('grep', 'command', ['rg'])

" Custom options for ripgrep
"   --vimgrep:  Show results with every match on it's own line
"   --hidden:   Search hidden directories and files
"   --heading:  Show the file name above clusters of matches from each file
"   --S:        Search case insensitively if the pattern is all lowercase
call denite#custom#var(
  \'grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S']
  \ )

" Recommended defaults for ripgrep via Denite docs
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" Remove date from buffer list
call denite#custom#var('buffer', 'date_format', '')

" Custom options
" prompt - Customize denite prompt
call denite#custom#option('default', { 'prompt': '❯' })

" auto_resize - Auto resize the Denite window height automatically.
call denite#custom#option('default', { 'auto_resize': 1 })

" direction - Specify Denite window direction as directly
call denite#custom#option('default', { 'direction': 'rightbelow' })

" winminheight- Specify min height for Denite window
call denite#custom#option('default', { 'winminheight': '10' })

" highlight_mode_insert - Specify h1-CursorLine in insert mode
call denite#custom#option('default', { 'highlight_mode_insert': 'Visual' })
call denite#custom#option('default', { 'highlight_mode_normal': 'Visual' })

"   prompt_highlight - Specify color of prompt
call denite#custom#option('default', { 'prompt_highlight': 'Function' })

"   highlight_matched_char - Matched characters highlight
call denite#custom#option('default', { 'highlight_matched_char': 'Function' })

"   highlight_matched_range - matched range highlight
call denite#custom#option('default', { 'highlight_matched_range': 'Normal' })

" Enter NORMAL mode on pressing ESC
call denite#custom#map('insert', '<Esc>', '<denite:enter_mode:normal>',
      \'noremap')

" Don't do anything when pressing ESC in NORMAL mode
call denite#custom#map('normal', '<Esc>', '<NOP>', 'noremap')

" Split vertically with the highlighted file using CTRL+V
call denite#custom#map('insert', '<C-v>', '<denite:do_action:vsplit>',
      \'noremap')
call denite#custom#map('normal', '<C-v>', '<denite:do_action:vsplit>',
      \'noremap')

" Delete the word after caret in the search area
call denite#custom#map('normal', 'dw', '<denite:delete_word_after_caret>',
      \'noremap')

hi link deniteMatchedChar Special

"Close preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" ==[> editorconfig/editorconfig-vim
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" ==[> autozimu/LanguageClient-neovim
" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

nnoremap <F6> :call LanguageClient_contextMenu()<CR>

" ==[> Shougo/echodoc.vim
set cmdheight=2
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'signature'
