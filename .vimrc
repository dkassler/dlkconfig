filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Show linenumbers
set number

" Norm
vnoremap <C-n> :norm 

" Matching paren highlighted gray
highlight MatchParen ctermbg=Gray

" Add cursorline when in insert mode
" hi CursorLine cterm=NONE ctermbg=Gray
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

