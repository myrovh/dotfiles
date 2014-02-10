" {{{ Plugin Settings 
  " {{{ NeoBundle Config 
    if has('vim_starting')
        set nocompatible " Be iMproved
        set runtimepath+=~/.vim/bundle/neobundle.vim/
    endif

    call neobundle#rc(expand('~/.vim/bundle/'))
    
    NeoBundleFetch 'Shougo/neobundle.vim' " Let NeoBundle manage NeoBundle

    NeoBundle 'Shougo/vimproc', {
    \ 'build' : {
    \     'windows' : 'make -f make_mingw32.mak',
    \     'cygwin' : 'make -f make_cygwin.mak',
    \     'mac' : 'make -f make_mac.mak',
    \     'unix' : 'make -f make_unix.mak',
    \    },
    \ }
    NeoBundle 'vim-scripts/utl.vim' " Universal Text Linking - Execute URLs, footnotes, open emails, organize ideas
    NeoBundle 'mattn/calendar-vim' " Creates a calendar window for entering dates
    NeoBundle 'tpope/vim-speeddating' " use CTRL-A/CTRL-X to increment dates, times, and more
    NeoBundle 'Shougo/unite.vim' " Complicated buffer creation from any source

    NeoBundle 'chriskempson/base16-vim' " Colour Schemes
    NeoBundle 'bling/vim-airline' " Fancy Statusbar
    NeoBundle 'jeffkreeftmeijer/vim-numbertoggle' " Toggles between relative and absolute line numbers automatically

    NeoBundle 'fmoralesc/vim-pad' " Notational Velocity functionality in Vim
    NeoBundle 'jceb/vim-orgmode' " Orgmode implementation in Vim

    NeoBundle 'majutsushi/tagbar' " Displays tags in a window, ordered by class etc.
    NeoBundle 'tpope/vim-fugitive' " Git wrapper for vim
    NeoBundle 'Shougo/vimshell.vim' " Shell inside vim
    NeoBundle 'Shougo/neocomplete' " Code completion and auto completion
    NeoBundle 'Shougo/neosnippet' " Plug-in for inserting snippets (integrates with neocomplete)
    NeoBundle 'Shougo/neosnippet-snippets' " Default repository for neosnippet snippets (need to fork own copy one day)

    NeoBundle 'tpope/vim-markdown' " Syntax highlighting for markdown
    NeoBundle 'jtratner/vim-flavored-markdown' " Addon to vim-markdown that adds support for git flavoured markdown
  " }}}

  " {{{ Vim-pad Settings 
    let g:pad_dir = "~/Documents/note_database/vim-pad/" " Sets the path where notes are saved
    " let g:pad_open_in_split = 0 " When notes are opened they will open in the main window
    let g:pad_default_format = "org"
    let g:pad_dindow_height = 25
  " }}}

  " {{{ Airline Settings 
    let g:airline#extensions#tabline#enabled = 1 " Automatically displays all buffers when only one tab open.
    let g:airline_powerline_fonts = 1
  " }}}

  " {{{ Vim Orgmode Settings 
    let g:org_heading_highlight_colors = ['Character', 'Boolean', 'Label', 'String', 'Special', 'Include', 'Structure', 'Delimiter'] " This is configured for base16 might need to be changed for a different colour scheme
    let g:org_heading_highlight_levels = 100
  " }}}

  " {{{ Tagbar Settings
    let g:tagbar_show_visibility = 0 " show visibility symbols (public/protected/private)
    let g:tagbar_show_linenumbers = -1 " use globar line numbers settings to display line numbers in tagbar window
    let g:tagbar_iconchars = ['▸', '▾'] " Sets icons to use for folding
    noremap <silent> <F9> :TagbarToggle<CR>
  " }}}

" {{{ Vim-Flavored-Markdown Settings
  augroup markdown
      au!
      au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
  augroup END
" }}}
" }}}

" Display Settings {{{
  set nu " Turn line numbers on
  set scrolloff=4 " 4 lines above/below cursor when scrolling
  set showmatch " show matching bracket (briefly jump)
  set laststatus=2 " the statusline is now always shown (for airline)
  set guifont=Inconsolata-dz\ for\ Powerline\ 10 " Sets font and size
  set guicursor+=a:blinkon0 " Cursor doesn't blink
  set guioptions-=T " Removes the toolbar
  set guioptions-=l " Disables Left-hand scrollbar being always present
  set guioptions-=L " Disables Left-hand scrollbar being present when there is a vertically split window
  set guioptions-=r " Disables Right-hand scrollbar always being present
  set guioptions-=R " Disables Right-Hand scrollbar beign present when there is a vertically split window
  set guioptions-=m " Removes the menubar
  set guioptions-=M " Stops menu.vim being sourced (call before setting syntax and filetype recognition)
 
  " {{{ Colour Scheme 
    set background=dark
    let base16colorspace=256  " Access colours present in 256 colorspace
    colorscheme base16-default
  " }}}

" }}}

" {{{ Editor Settings 
  set ignorecase " case insensitive searching
  set smartcase " but become case sensitive if you type uppercase characters
  set autoread " auto read when a file is changed from the outside
  set encoding=utf8 " Sets vim buffer to UTF-8 encoding
  set fileencoding=utf8 " Makes sure files are saved as UTF-8
  set spell spelllang=en_au

" {{{ Wrapping 
  set linebreak
  " set showbreak=¿\ 
  " toggle wrapping
  nmap <silent> <F12> :let &wrap = !&wrap<CR>
" }}}

" {{{ Fold Settings 
  set foldmethod=marker
  set foldcolumn=1 " Width of fold indicator column
  set foldlevel=1 " Every fold below this value will be closed by default
" }}}

" {{{ Tab Settings 
  set expandtab " turn a tab into spaces
  set tabstop=2 " number of spaces a tab counts for
" }}}

" {{{ Indent Settings
  set shiftwidth=2 " spaces for autoindents
" }}}

" {{{ Clipboard Settings
  if has('unnamedplus')
    " By default, Vim will not use the system clipboard when yanking/pasting to
    " the default register. This option makes Vim use the system default
    " clipboard.
    " Note that on X11, there are _two_ system clipboards: the "standard" one, and
    " the selection/mouse-middle-click one. Vim sees the standard one as register
    " '+' (and this option makes Vim use it by default) and the selection one as
    " '*'.
    " See :h 'clipboard' for details.
      set clipboard=unnamedplus,unnamed
  else
    " Vim now also uses the selection system clipboard for default yank/paste.
      set clipboard+=unnamed
  endif
" }}}
" }}}

syntax on
filetype plugin indent on " Enable detection, plugins and indenting
NeoBundleCheck " Installation check
