set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab
set encoding=utf-8
set nu
set hls
set wildignore+=*.swp,*.pyc
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
 endfunction

set statusline=
set statusline+=%{StatuslineGit()}
set statusline+=\ %F
set statusline+=%m\ 
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %l:%c
set statusline+=\ 
set laststatus=2

syntax on
set background=dark
colorscheme solarized

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'

call vundle#end()

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
