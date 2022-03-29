set nocompatible
set backspace=indent,eol,start
set ts=4 sw=4
set expandtab
filetype off

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'vim-airline/vim-airline'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'jeaye/color_coded'
"Plugin 'vim-syntastic/syntastic'
Plugin 'preservim/tagbar'
Plugin 'udalov/kotlin-vim'
call vundle#end()

filetype plugin indent on

" papercolor-theme
set t_Co=256
set background=dark
colorscheme PaperColor
syntax on

set number
set laststatus=2
set textwidth=80

set tabstop=2
set shiftwidth=2

" set global
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/.ycm_extra_conf.py"
let g:ycm_show_diagnostics_ui = 0

" termdebug
packadd termdebug
let g:termdebug_wide = 1

" Toggle Tagbar
nmap <F8> :TagbarToggle<CR>
