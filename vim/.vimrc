set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set laststatus=2
set foldmethod=syntax
set foldlevel=2

set autoindent
set smartindent

" IndentLine {{
let g:indentLine_char = '>'
let g:indentLine_first_char = '>'
let g:indentLine_showFirstIndentLevel = 1
" }}

set nocompatible
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'junegunn/fzf'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Raimondi/delimitMate'
Plugin 'junegunn/fzf.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'ap/vim-css-color'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Yggdroot/indentLine'
call vundle#end()
filetype plugin indent on

let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }
set t_Co=256
set background=dark
syntax on
colorscheme PaperColor

hi! Normal guibg=NONE ctermbg=NONE


map <C-n> :NERDTreeToggle<CR>
map <C-f> :FZF<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
let mapleadere = ","
