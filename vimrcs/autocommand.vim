
augroup configgroup
  " Toggle number style
  autocmd InsertEnter * set number norelativenumber
  autocmd InsertLeave * set nonumber relativenumber

  " Auto save
 " autocmd InsertLeave * call AutoSave()
 " autocmd BufLeave * call AutoSave()
 " autocmd CursorHold * call AutoSave()
augroup END

augroup omnigroup
  autocmd FileType c,cpp setlocal omnifunc=ccomplete#Complete
  autocmd FileType css,less,stylus,sass setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript,jsx  setlocal omnifunc=jscomplete#CompleteJS
  autocmd FileType python set omnifunc=pythoncomplete#Complete
  autocmd FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete
augroup END
