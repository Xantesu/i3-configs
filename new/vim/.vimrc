set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set laststatus=2
set foldmethod=syntax
set foldlevel=99

set autoindent
set smartindent


" IndentLine {{
let g:indentLine_char = '┆'
let g:indentLine_first_char = '┆'
let g:indentLine_showFirstIndentLevel = 1
" }}

set nocompatible
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
Plugin 'Valloric/YouCompleteMe'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'morhetz/gruvbox'
Plugin 'sheerun/vim-polyglot'
call vundle#end()
filetype plugin indent on

"let g:PaperColor_Theme_Options = {
  "\   'theme': {
  "\     'default': {
  "\       'transparent_background': 1
  "\     }
  "\   }
  "\ }
syntax on
set t_Co=256
set background=dark
"colorscheme PaperColor
"hi! Normal guibg=NONE ctermbg=NONE
"
colorscheme gruvbox

"set term=screen-256color
"set t_8f=^[[38;2;%lu;%lu;%lum
"set t_8b=^[[48;2;%lu;%lu;%lum
"colorscheme focuspoint
"set termguicolors
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"if has("termguicolors")
    "set termguicolors
"endif

inoremap <S-Tab> <C-d>

"map <C-f> :FZF<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
let mapleader = ","

" Vim Auto Save settings
let g:auto_save = 1
let g:auto_save_no_updatetime = 1

" Stop delay when switching to normal mode
set timeoutlen=1000 ttimeoutlen=0

" Change cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

 " optional reset cursor on start:
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END


" to change theme in shell
"if filereadable(expand("~/.vimrc_background"))
      "let base16colorspace=256
        "source ~/.vimrc_background
    "endif

"autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
"set title




highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
