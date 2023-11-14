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

call plug#end()

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
nnoremap <space> :
nnoremap Y y$

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

nnoremap <F3> :NERDTreeToggle<cr>

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

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
