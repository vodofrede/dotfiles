" Plugins
call plug#begin("~/.vim/plugins")

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug 'rust-lang/rust.vim'

call plug#end()

" Config
runtime! plugin/sensible.vim

set number
set noshowmode
set mouse=a
syntax enable
filetype plugin indent on
