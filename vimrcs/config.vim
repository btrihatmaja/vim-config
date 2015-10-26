set timeout timeoutlen=300 ttimeoutlen=10

set scrolloff=7
set history=256
set smartcase
set incsearch


set relativenumber

" Backspace and delete problem
" http://vim.wikia.com/wiki/Backspace_and_delete_problems
set backspace=2

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
colorscheme desert

" Lightline
set laststatus=2
set encoding=utf-8
scriptencoding utf-8

" Pasting option
nnoremap <leader><leader>p :set invpaste paste?<CR>
set pastetoggle=<leader><leader>p 
set showmode
set clipboard=unnamed

" CtrlSpace
set nocompatible
set hidden
