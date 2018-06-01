filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Norm
vnoremap <C-n> :norm 

" Matching paren highlighted gray
highlight MatchParen ctermbg=Gray

" Add cursorline when in insert mode
" hi CursorLine cterm=NONE ctermbg=Gray
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

" Show linenumbers
set number
set number relativenumber
" auto toggle line numbers
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :nohlsearch<CR><CR>

" Change cursor shape based on mode?
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>[6 q\<Esc>\\"
    " let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>[4 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>[2 q\<Esc>\\"
else
    let &t_SI = "\<Esc>[6 q"
    " let &t_SR = "\<Esc>[4 q"
    let &t_EI = "\<Esc>[2 q"
endif

" File picker for buffer
:nnoremap <F5> :buffers<CR>:buffer<Space>

" Pathogen
execute pathogen#infect()

