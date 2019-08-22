syn on
colorscheme delek
set hidden
set directory=$HOME/.vim/swap/
set autoindent expandtab tabstop=4 shiftwidth=4
set mouse=a
"set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set makeprg=make\ -C\ build\ -j4 
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
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/.vim/global_extra_conf.py'

