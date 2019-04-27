" -----------------------------------------------------------------------------
" [> MISC & CUSTOM
" -----------------------------------------------------------------------------

" pastebin
command! -range=% CL <line1>,<line2>w
      \ !curl -F 'clbin=<-' https://clbin.com | tr -d '\n' | pbcopy

" FIND command with fzf and grep using rg
" --column        : Show column number
" --line-number   : Show line number
" --no-heading    : Do not show file headings in results
" --fixed-strings : Search term as a literal string
" --ignore-case   : Case insensitive search
" --no-ignore     : Do not respect .gitignore, etc...
" --hidden        : Search hidden files and folders
" --follow        : Follow symlinks
" --glob          : Additional conditions for search (in this case ignore everything
"                    in the .git/ folder)
" --color         : Search color options
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(
  \       <q-args>
  \    ),
  \    1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0
  \ )

" Word wrap for markdown files only
au BufRead,BufNewFile *.md setlocal textwidth=80
autocmd BufRead,BufNewFile *.md set filetype=markdown

" Navigate popup menu using tab
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
