set number
set relativenumber
set hidden
set nocp
set history=100
set hls
set incsearch

" Plug
call plug#begin()

Plug 'junegunn/vim-peekaboo'
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-highlightedyank'
" Plug 'unblevable/quick-scope'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'

call plug#end()

nnoremap <esc><esc> :noh<return><esc>
