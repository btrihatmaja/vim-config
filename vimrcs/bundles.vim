call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'bling/vim-airline'
Plug 'morhetz/gruvbox'

" Interface
" Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/unite.vim'
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'szw/vim-ctrlspace'
Plug 'majutsushi/tagbar'
Plug 'lilydjwg/colorizer'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'Lokaltog/vim-easymotion'

" Rails
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'

" Code
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'kchmck/vim-coffee-script'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-haml'
Plug 'vim-ruby/vim-ruby'
Plug 'ap/vim-css-color'
Plug 'majutsushi/tagbar'
Plug 'svermeulen/vim-easyclip'
Plug 'mhinz/vim-startify'
Plug 'chrisbra/csv.vim'
Plug 'scrooloose/syntastic'
" Plug 'vim-scripts/vim-auto-save'

" DB
Plug 'ivalkeen/vim-simpledb'

" Search
Plug 'kien/ctrlp.vim'



call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"let g:lightline = {
  "\ 'colorscheme': 'default',
  "\ 'mode_map': { 'c': 'NORMAL' },
  "\ 'active': {
  "\ 'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
  "\ },
  "\ 'component_function': {
  "\   'modified': 'MyModified',
  "\   'readonly': 'MyReadonly',
  "\   'fugitive': 'MyFugitive',
  "\   'filename': 'MyFilename',
  "\   'fileformat': 'MyFileformat',
  "\   'filetype': 'MyFiletype',
  "\   'fileencoding': 'MyFileencoding',
  "\   'mode': 'MyMode',
  "\ },
  "\ 'separator': { 'left': '', 'right': '' },
  "\ 'subseparator': { 'left': '', 'right': '' }
  "\ }

function! MyModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '⭤' : ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
  return &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head') && strlen(fugitive#head()) ? ' '.fugitive#head() : ''
endfunction

function! MyFileformat()
  return winwidth('.') > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
  return winwidth('.') > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
  return winwidth('.') > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
  return winwidth('.') > 60 ? lightline#mode() : ''
endfunction


"let g:EasyClipUsePasteToggleDefaults = 0
"let g:EasyClipUseSubstituteDefaults = 0

"let g:EasyClipAlwaysMoveCursorToEndOfPaste = 1
"let g:EasyClipAutoFormat = 1
"let g:EasyClipDoSystemSync = 1
"let g:EasyClipUsePasteToggleDefaults = 0

nmap m <Plug>MoveMotionPlug
xmap m <Plug>MoveMotionXPlug
nmap mm <Plug>MoveMotionLinePlug

nmap pf <plug>EasyClipSwapPasteForward
nmap pb <plug>EasyClipSwapPasteBackwards



let g:startify_skiplist = [
      \ 'COMMIT_EDITMSG',
      \ $VIMRUNTIME .'/doc',
      \ 'bundle/.*/doc',
      \ '\.DS_Store'
      \ ]


let g:startify_custom_footer =
      \ ['', "   Vim is charityware. Please read ':help uganda'.", '']

" let g:startify_custom_header =
"       \ map(split(system('tips | cowsay -f apt'), '\n'), '"   ". v:val') + ['']
