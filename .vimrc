set nocompatible
filetype off
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab
set encoding=utf-8
set nu
set hls
set wildignore+=*.swp,*.pyc
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

set background=dark

let python_highlight_all=1
let g:ackprg = 'ag --vimgrep'
let g:syntastic_python_flake8_post_args='--ignore=E501'

filetype plugin indent on
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Removes trailing spaces
function TrimWhiteSpace()
   if &ft =~ 'vim'
       return
   endif
   %s/\s*$//
     ''
endfunction

set list listchars=trail:.,extends:>
autocmd FileWritePre * call TrimWhiteSpace()
autocmd FileAppendPre * call TrimWhiteSpace()
autocmd FilterWritePre * call TrimWhiteSpace()
autocmd BufWritePre * call TrimWhiteSpace()
autocmd BufWritePost *.py call flake8#Flake8()
