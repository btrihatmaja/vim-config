" Reload vim config
noremap <leader>r :source ~/.vimrc<cr>

" Remapping
inoremap jj <esc> 
inoremap <c-d> <esc>ddi

" Toggle NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>

" Split
nnoremap vs :vsplit<cr>
nnoremap hs :split<cr>
nnoremap w= <c-w>+
nnoremap w- <c-w>-
nnoremap w, <c-w><
nnoremap w. <c-w>>

" Vim-fugitive
nnoremap <leader><leader>gs :Gstatus
nnoremap <leader><leader>gc :Gcommit

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Refresh screen
nnoremap rr :redraw!<cr>
