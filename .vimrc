" Personl configuration for VIM
" By Tejas Jha

"""""""""" Vundle """"""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tomasiser/vim-code-dark'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'ycm-core/YouCompleteMe'
call vundle#end()
filetype plugin indent on

"""""""""" Style """"""""""
set textwidth=80
colorscheme codedark
let g:airline_theme = 'luna'
let g:airline#extensions#branch#enabled=1
set number
set expandtab
set tabstop=2
set shiftwidth=2

"""""""""" Syntastic Setup """"""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_cpp_remove_include_errors = 1
