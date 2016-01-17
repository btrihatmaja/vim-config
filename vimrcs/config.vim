set timeout timeoutlen=300 ttimeoutlen=10

set scrolloff=7
set history=256
set smartcase
set incsearch


set relativenumber

" Backspace and delete problem
" http://vim.wikia.com/wiki/Backspace_and_delete_problems
set backspace=2
set guifont=DejaVu\ Sans:s12

" Formatting
set nowrap
set textwidth=0
set shiftwidth=2
set tabstop=4
set cursorline
set softtabstop=4
set expandtab
set smarttab

set autoindent
set cindent
set t_Co=256


" Airline
set laststatus=2
set encoding=utf-8
scriptencoding utf-8
" air-line
let g:airline_theme = 'luna'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_symbols = get(g:, 'airline_symbols', {})
let g:airline_symbols.space = "\ua0"

" unicode symbols
 let g:airline_left_sep = '»'
 let g:airline_left_sep = '▶'
 let g:airline_right_sep = '«'
 let g:airline_right_sep = '◀'
 let g:airline_symbols.linenr = '␊'
 let g:airline_symbols.linenr = '␤'
 let g:airline_symbols.linenr = '¶'
 let g:airline_symbols.branch = '⎇'
 let g:airline_symbols.paste = 'ρ'
 let g:airline_symbols.paste = 'Þ'
 let g:airline_symbols.paste = '∥'
 let g:airline_symbols.whitespace = 'Ξ'

 " airline symbols
 let g:airline_left_sep = ''
 let g:airline_left_alt_sep = ''
 let g:airline_right_sep = ''
 let g:airline_right_alt_sep = ''
 let g:airline_symbols.branch = ''
 let g:airline_symbols.readonly = ''
 let g:airline_symbols.linenr = ''
"

" Pasting option
nnoremap <leader><leader>p :set invpaste paste?<CR>
set pastetoggle=<leader><leader>p 
set showmode

" CtrlSpace
set nocompatible
set hidden
