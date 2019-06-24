" Section: basic {

set nocompatible
filetype plugin on

if !exists("g:syntax_on")
    syntax enable
endif

set number
set showmatch     " Show matching brackets/parenthesis
set showcmd       " Show (partial) command in the last line of the screen
set incsearch     " Find as you type search
set hlsearch      " Highlight search terms
hi Search cterm=NONE ctermfg=DarkMagenta ctermbg=white "set hlt color for fg and bg

"set global leader ,overwrt w/ maplocalleader
let mapleader = ","



" Section: colors  {
"colorscheme murphy "For vimdiff
if &diff
  colorscheme evening
endif

colorscheme desert

highlight clear SignColumn      " SignColumn should match background
highlight clear LineNr          " Current line number row will have same background color in relative mode
highlight clear CursorLineNr    " Remove highlight color from current line number

set backgro
Plug 'tpope/vim-fugitive' "Git
Plug 'tpope/vim-abolish'
Plug 'nathanaelkane/vim-indent-guides' "indent
Plug 'Yggdroot/indentLine' "indent
Plug 'mattn/emmet-vim' "HTML
Plug 'christoomey/vim-system-copy'
Plug 'christoomey/vim-sort-motion'
Plug 'godlygeek/tabular'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
"Plug 'inkarkat/vim-SpellCheck'
"Plug 'b4b4r07/vim-sqlfmt'
"Plug 'mattn/vim-sqlfmt'

"Plug 'honza/vim-snippets'
"Plug 'SirVer/ultisnips'  "vim-snippets must install to ultisnips work
call plug#end()
" }

" Section: plugin config {
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
""" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsSnippetsDir = "~/.vim/plugged/vim-snippets/UltiSnips"
"let g:UltiSnipsSnippetDirectories=['UltiSnips']

 " Fugitive shortcuts {
 if isdirectory(expand("~/.vim/plugged/vim-fugitive/"))
   set diffopt+=vertical
   nnoremap <silent> <leader>gs :Gstatus<CR>
   nnoremap <silent> <leader>gd :Gdiff<CR>
   nnoremap <silent> <leader>gc :Gcommit<CR>
   nnoremap <silent> <leader>gb :Gblame<CR>
   nnoremap <silent> <leader>gl :Glog<CR>
   nnoremap <silent> <leader>gp :Git push<CR>
   nnoremap <silent> <leader>gr :Gread<CR>
   nnoremap <silent> <leader>gw :Gwrite<CR>
   nnoremap <silent> <leader>ge :Gedit<CR>
   " Mnemonic _i_nteractive
   nnoremap <silent> <leader>gi :Git add -p %<CR>
   nnoremap <silent> <leader>gg :SignifyToggle<CR>
 endif
 "}
" }


" Section:  {

" }

" Section: flds {
autocmd BufRead *.vim,.*vimrc set foldenable foldmethod=marker foldlevel=0
set foldmethod=syntax
set foldmarker={,}
" }
"


" Formatting {

"code review with blind eye for vertical distance
"%s/\w/X/g



"TODO: Fix jcommentter 
"autocmd FileType java source $HOME/v2.config/vim/.vim/vim.addons/jcommenter.vim
"source $HOME/v2.config/vim/.vim/vim.addons/newline_after_given_patterns.vim


" }

" pth fndg {
set wildmenu
set wildmode=longest:list,full
"set wildmenu=list:full
"}
"netrw configuration {

let g:netrw_banner = 0 "Remove top banner
let g:netrw_liststyle = 3 "tree view
let g:netrw_list_hide = &wildignore
let g:netrw_altv = 1

"let g:netrw_winsize = 25
"let g:netrw_browse_split = 4

"}
"
if has('python3')
  silent! python3 1
endif

"folding
let g:xml_syntax_folding=1

" vim: set et tw=79 foldmarker={,} foldlevel=0 foldmethod=marker spell:
