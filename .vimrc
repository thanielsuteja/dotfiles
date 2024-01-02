" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin()

Plug 'junegunn/vim-peekaboo'
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-highlightedyank'
Plug 'easymotion/vim-easymotion'
Plug 'unblevable/quick-scope'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'
Plug 'vim-scripts/argtextobj.vim'
Plug 'tommcdo/vim-exchange'

call plug#end()

packadd! matchit

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

set number
set relativenumber
set hidden
set nocp
set hlsearch
set incsearch
set ignorecase smartcase
set cursorline
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set scrolloff=3
set wildmenu
set wildmode=list:longest

set tabstop=4
set shiftwidth=4
set expandtab

set bg=dark

nnoremap <esc><esc> :noh<return><esc>
nnoremap Y y$

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <c-up> <c-w>+
nnoremap <c-down> <c-w>-
nnoremap <c-left> <c-w>>
nnoremap <c-right> <c-w><

nnoremap <F3> :NERDTreeToggle<cr>

nnoremap <space> "+
vnoremap <space> "+

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding
" Use the marker method of folding.
augroup fold_config_files
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType sh setlocal foldmethod=marker
augroup END

autocmd FileType java nnoremap <buffer> ]] ]m
autocmd FileType java nnoremap <buffer> [[ [m

augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline
    autocmd WinEnter * set cursorline
augroup END

let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
" set statusline=

" Status line left side.
" set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
" set statusline+=%=

" Status line right side.
" set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
" set laststatus=2

" }}}


filetype on
filetype plugin on
filetype indent on
syntax on

colorscheme gruvbox
