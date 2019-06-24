" show matching brackets/parenthesis
set showmatch

" disable startup message
set shortmess+=I

" hide mode display
"set noshowmode

" syntax highlighting
syntax on
set synmaxcol=512
filetype plugin on

" stop unnecessary rendering
"set lazyredraw

" show line numbers
set number

" no line wrapping
set nowrap

let g:netrw_banner = 0 "Remove top banner
let g:netrw_liststyle = 3 "tree view
"let g:netrw_list_hide = &wildignore
let g:netrw_altv = 1

" clear change
map ,cc :colorscheme mac_classic<CR>
