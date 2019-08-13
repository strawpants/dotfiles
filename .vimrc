syn on
colorscheme delek
set hidden
set directory=$HOME/.vim/swap/
set autoindent expandtab tabstop=4 shiftwidth=4
set mouse=a
"set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
"map F5 key to running make in the build directory
nnoremap <F5>   :!make -C build <CR>
let g:instant_markdown_slow = 1
filetype plugin on
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" pluggins using vim-plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdcommenter'
Plug 'suan/vim-instant-markdown'
Plug 'tpope/vim-sleuth'
Plug 'cpiger/NeoDebug'
Plug 'ycm-core/YouCompleteMe'
call plug#end()
