set nocompatible            " required
filetype off                " required
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'tmhedberg/SimpylFold'
Plugin 'arcticicestudio/nord-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Fuzy finder map
map ; :Files<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>


au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=100 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

colorscheme nord

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
