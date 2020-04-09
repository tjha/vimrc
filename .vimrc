set nocompatible 
" be iMproved, required filetype off
" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim' 
Plugin 'derekwyatt/vim-fswitch'
" Plugin 'davidhalter/jedi-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ycm-core/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()       
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help :PluginList       - lists configured plugins :PluginInstall    -
" installs plugins; append `!` to update or just :PluginUpdate :PluginSearch foo
" - searches for foo; append `!` to refresh local cache :PluginClean      -
"   confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ Put your non-Plugin stuff after
" this line


" keep statusline
set laststatus=2


execute pathogen#infect() 
call pathogen#helptags()

set number 
set background=dark 
colorscheme palenight 
hi Normal guibg=NONE ctermbg=NONE 
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1 
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 <
"https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) <
"https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd > <
"https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors")) 
  set termguicolors 
endif
" Italics for my favorite color scheme
let g:palenight_terminal_italics=1 
let g:lightline = { 'colorscheme':'palenight',  'subseparator': { 'right': '' } }
nmap <F6> :NERDTreeToggle<CR>
set expandtab 
set tabstop=2
set shiftwidth=2
map <F2> :retab
set colorcolumn=80 
map <F3> :highlight ColorColumn ctermbg=blue guibg=pink
"set textwidth=80

map <F4> :set tabstop=3 shiftwidth=3 
