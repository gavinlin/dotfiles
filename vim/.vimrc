set nocompatible

filetype on

filetype plugin on

filetype indent on

syntax on

set number

set shiftwidth=4
set tabstop=4

" Use space characters instead of tabs
set expandtab

set nobackup

set scrolloff=10

set nowrap

" While searching though a file incrementally highlight matching characters as
" you type
set incsearch

" Show matching words during a search
set showmatch

set hlsearch

set history=1000

set ignorecase

set smartcase

" show partial command you type in the last line of the screen
set showcmd

set showmode

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
" set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
" set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')
     Plug 'preservim/nerdtree'
     Plug 'christoomey/vim-tmux-navigator'
     Plug 'joshdick/onedark.vim'
     Plug 'sheerun/vim-polyglot'
call plug#end()

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" mapping syntax:
" map_mode <what_you_type> <what_is_executed>

" map_mode: 
" - nnoremap map keys in normal mode
" - inoremap map keys in insert mode
" - vnoremap map keys in visual mode

" Press the space bar to the command mode
nnoremap <space> :

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" If Vim version is equal to or greater than 7.3, enable undofile.
if version >= 703
    set undodir =~/.vim/backup
    set undofile
    set undoreload=10000
endif

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}
 
colorscheme onedark

