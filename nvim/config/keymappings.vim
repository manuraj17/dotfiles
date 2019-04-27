" -----------------------------------------------------------------------------
" [> KEYMAPPINGS
" -----------------------------------------------------------------------------
" Remap leader key to SPACE
let g:mapleader="\<SPACE>"

" Make ; work as :
nnoremap ; :

nnoremap Q @q

" yank whole file
nnoremap <space>yf :%y+<cr>

" Ctrl-f to toggle fuzzysearch
map <silent> <C-f> :FZF<CR>

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
map      <leader>v      :vsplit<CR>

" https://blog.petrzemek.net/2016/04/06/things-about-vim-i-wish-i-knew-earlier/
" Make Ctrl-e jump to the end of the current line in the insert mode. This is
" handy when you are in the middle of a line and would like to go to its end
" without switching to the normal mode.
inoremap <C-e> <C-o>$

" Remove ANSI color escape codes for the edited file. This is handy when
" piping colored text into Vim.
nnoremap <Leader>rac :%s/<C-v><Esc>\[\(\d\{1,2}\(;\d\{1,2}\)\{0,2\}\)\?[m\|K]//g<CR>

" Use the 'black hole register', '_' to really delete something: '_d.
" Use "_dP to paste something and keep it available for further pasting.
nnoremap <leader>d "_d
vnoremap <leader>d "_d
vnoremap <leader>p "_dP

" Escaping out of terminal mode
tnoremap <leader>h <C-\><C-n>

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Denite shorcuts
"   <leader>t - Browse list of files in current directory
"   <leader>g - Search current directory for occurences of given term and
"               close window if no results
"   <leader>j - Search current directory for occurences of word under cursor
"   <leader>b - Browser currently open buffers
nnoremap <leader>t :Denite file/rec -split=floating -winrow=1<CR>
nnoremap <leader>g :<C-u>Denite grep:. -no-empty -mode=normal<CR>
nnoremap <leader>j :<C-u>DeniteCursorWord grep:. -mode=normal<CR>
nnoremap <leader>b :Denite buffer -split=floating -winrow=1<CR>

" [> vim-better-whitespace
" <leader>w - Automatically remove trailing whitespace
nmap <leader>w :StripWhitespace<CR>

" Find and replace
"   <leader>far
map <leader>far :%s///<left><left>

" Search word under curor using with leader key and 8
nnoremap <leader>8 :<C-u>DeniteCursorWord grep:. -mode=normal<CR>

" Search across project using leader and /
nnoremap <leader>/ :<C-u>Denite grep:. -mode=normal<CR>



" Easier navigation across panes
" Use CTRL+h/j/k/l to switch panes
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" highlight last inserted text
nnoremap gV `[v`]

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" dash shortcut
" :nmap <silent> <leader>d <Plug>DashSearch

" ==[> Shougo/neosnippet.vim
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" ==[> thoughtbot/vim-rspec
" <leader> r r to run rspec on the current file
map <Leader>rr :call RunCurrentSpecFile()<CR>

" ==[> Shougo/denite.vim
" Denite shortcuts
" <leader>gs - Git status
" <leader>b - buffers
" <leader>g - Search current directory for occurences of given term and
"             close window if no results
" <leader>j - Search current directory for occurences of word under cursor
nnoremap <leader>gs :<C-u>Denite gitstatus -mode=normal<CR>
nnoremap <leader>b :Denite buffer -split=floating -winrow=1<CR>
nnoremap <leader>g :<C-u>Denite grep:. -no-empty -mode=normal<CR>
nnoremap <leader>j :<C-u>DeniteCursorWord grep:. -mode=normal<CR>
