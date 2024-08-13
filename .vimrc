""" Vim settings
set hidden
set confirm
set expandtab
set tabstop=4
set shiftwidth=4
set hlsearch
set incsearch
set number
set colorcolumn=80
set mouse=a
set clipboard=unnamedplus
set visualbell
set t_vb=

""" Fold method
set foldmethod=indent

""" Remaps
nnoremap <silent> <C-L> :nohlsearch<CR>
nnoremap <C-P> :set paste!<CR>

""" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'preservim/nerdtree'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'dikiaap/minimalist'
call vundle#end()
filetype plugin indent on

""" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

""" Colors 
set t_Co=256
syntax on
colorscheme minimalist
