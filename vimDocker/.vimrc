set nocompatible 
syntax enable "colours
filetype plugin on "be clever about file types
set path+=** "path for fuzzy finding
set wildignore+=**/node_modules/**
set wildmenu "proper menu when multiple matches
set ts=4 "tab size
set relativenumber "relativenumbers
set directory=/root/.vim/swapfiles// "move .swp files

"swaps panes for netrw
let g:netrw_altv=1	"vertical
let g:netrw_alto=1	"horizontal

"swap panes for spit
set splitbelow
set splitright

