" QoL
"
"set incsearch
"set laststatus=2
"set ruler
"set tabstop=4
"set shiftwidth=4
"set nowrap
"set mouse=a
"set hlsearch
"set number
"set colorcolumn=80
"set clipboard=unnamedplus
"
"" Use <C-L> to clear the highlighting of :set hlsearch.
"if maparg('<C-L>', 'n') ==# ''
"    nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
"endif
"
"if !&scrolloff
"        set scrolloff=1
"endif
"
"" Buffers
"set hidden
"set confirm
":nnoremap <F5> :buffers<CR>:buffer<Space>
"
"" Folds
"" augroup AutoSaveFolds
""     autocmd!
""     autocmd BufWinLeave * mkview
""     autocmd BufwinEnter * silent loadview
"" augroup END
"set foldmethod=syntax
"
"set t_vb=
"
"
"" NERDTree
"map <C-m> :NERDTreeToggle<CR>
"
"" Color stuff
""colorscheme darkblue
"set term=screen-256color
"set t_ut=
"set background=dark
"colorscheme solarized8_flat

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
