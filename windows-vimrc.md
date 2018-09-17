

Download curl, extract binaries to C:\ProgramFiles\curl, add `curl\bin` to path. https://curl.haxx.se/download.html

gVIM installed in `C:\Users\<username>\`

Create file `_vimrc`and folder `vimfiles` in `C:\Users\<username>\Vim\`.

Install Vundle inside `vimfiles` using `git clone` (as per instructions)


## .vimrc additions for windows

```
set shell=C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe
set guifont=Meslo_LG_M:h10:cANSI:qDRAFT
colorscheme desert

...

set rtp+=$HOME/Vim/vimfiles/bundle/Vundle.vim/
call vundle#begin('$HOME/Vim/vimfiles/bundle/')
...
```
