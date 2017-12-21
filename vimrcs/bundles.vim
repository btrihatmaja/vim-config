call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

" Interface
Plug 'scrooloose/nerdtree'
Plug 'Shougo/unite.vim'
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'szw/vim-ctrlspace'
Plug 'majutsushi/tagbar'
" Plug 'lilydjwg/colorizer'
Plug 'Yggdroot/indentLine'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'Lokaltog/vim-easymotion'


" Code
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
" Plug 'kchmck/vim-coffee-script'
Plug 'ervandew/supertab'
"Plug 'justmao945/vim-clang'
" Plug 'Valloric/YouCompleteMe'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
" Plug 'tpope/vim-haml'
" Plug 'vim-ruby/vim-ruby'
" Plug 'ap/vim-css-color'
Plug 'svermeulen/vim-easyclip'
Plug 'mhinz/vim-startify'
" Plug 'chrisbra/csv.vim'
Plug 'scrooloose/syntastic'
" Plug 'ekalinin/Dockerfile.vim'
" Plug 'ngmy/vim-rubocop'
" Plug 'mxw/vim-jsx'
" Plug 'gavocanov/vim-js-indent'
Plug 'Raimondi/delimitMate'
" Plug 'ternjs/tern_for_vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
"vim-scripts/vim-auto-save'


" Search
Plug 'kien/ctrlp.vim'

" Tmux
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'christoomey/vim-tmux-navigator'


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

" Set bookmark startify
let g:startify_bookmarks = [ {'v': '~/.vimrc'}, '~/data/Projects/rhsystem-docker' ]
