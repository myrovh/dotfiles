set nocompatible
  
{%@@ if _dotfile_key == 'd_nvim' @@%}
call plug#begin(stdpath('data') . '/plugged')
{%@@ else @@%}
call plug#begin('~/.vim/plugged')
{%@@ endif @@%}

Plug 'sainnhe/sonokai'

Plug 'sheerun/vim-polyglot'

Plug 'sainnhe/sonokai'
Plug 'vim-airline/vim-airline'

Plug 'junegunn/goyo.vim'
Plug 'justinmk/vim-sneak'

call plug#end()

if has('termguicolors')
  set termguicolors
endif

set noshowmode

let g:sonokai_style = 'shusia'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
colorscheme sonokai

let g:airline_powerline_fonts = 1
let g:airline_theme = 'sonokai'