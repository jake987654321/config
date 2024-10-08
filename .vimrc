

""" Vim settings; try :help options for more info
set nowrap
set hidden
set confirm
set expandtab
set tabstop=4
set shiftwidth=4
set hlsearch
set incsearch
set number
set colorcolumn=80
set ttymouse=sgr
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
Plugin 'morhetz/gruvbox'
call vundle#end()
filetype plugin indent on

""" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

""" Colors 
syntax on
set termguicolors

" set t_Co=256
" colorscheme minimalist
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox
