set nocompatible
  
{%@@ if _dotfile_key == 'd_nvim' @@%}
call plug#begin(stdpath('data') . '/plugged')
{%@@ else @@%}
call plug#begin('~/.vim/plugged')
{%@@ endif @@%}

if exists('g:vscode')
  " VSCode extension
else
  Plug 'sheerun/vim-polyglot'
  Plug 'airblade/vim-gitgutter'

  Plug 'sainnhe/sonokai'
  Plug 'vim-airline/vim-airline'
  Plug 'ntpeters/vim-better-whitespace'

  Plug 'junegunn/goyo.vim'
  Plug 'justinmk/vim-sneak'
  Plug 'git@gitlab.com:HiPhish/info.vim.git'
endif


call plug#end()

if has('termguicolors')
  set termguicolors
endif

set noshowmode

if exists('g:vscode')
  " VSCode extension
else
  let g:sonokai_style = 'shusia'
  let g:sonokai_enable_italic = 1
  let g:sonokai_disable_italic_comment = 1
  colorscheme sonokai

  let g:airline_powerline_fonts = 1
  let g:airline_theme = 'sonokai'
endif