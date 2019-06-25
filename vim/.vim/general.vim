" use vim settings, rather than vi settings
" must be first, because it changes other options as a side effect
set nocompatible

"vim -u NONE -N > blnk vm
"vim -u rules.vim > opn w/ rls stngs
"vim -u NONE -c "helptags vim-obsession/doc" -c q


" security
" set modelines=0

" hide buffers, not close them
set hidden

" maintain undo history between sessions
set undofile
set undodir=~/.vim/undo
set noswapfile

" do not cross the line
set colorcolumn=200

" fuzzy find
set path+=**
" lazy file name tab completion
set wildmode=longest,list,full
set wildmenu
set wildignorecase
" ignore files vim doesnt use
set wildignore+=.git,.hg,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=*.swp,.lock,.DS_Store,._*

" case insensitive search
set ignorecase
set smartcase
set infercase
set incsearch   " Find as you type search
hi Search cterm=NONE ctermfg=DarkMagenta ctermbg=white "set hlt color for fg and bg

" the /g flag on :s substitutions by default
"set gdefault <<--- need to break this habit

" make backspace behave in a sane manner
set backspace=indent,eol,start

" searching
set hlsearch
set incsearch
if has("nvim")
  set inccommand=split
endif

" tabs are tabs
" set noexpandtab

" enable auto indentation
set autoindent

" remove trailing whitespaces and ^M chars
augroup ws
  au!
  autocmd FileType c,cpp,java,php,js,json,css,scss,sass,py,rb,coffee,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
augroup end

" set leader key to comma
let mapleader=","

" coffee pasta
set clipboard^=unnamedplus

" status line

" ruler
if has('cmdline_info')
  set ruler                   " Show the ruler
  set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
  set showcmd                 " Show partial commands in status line and
                                " Selected characters/lines in visual mode
endif

" status
if has('statusline')
  set laststatus=2

  " Broken down into easily includeable segments
  set statusline=%<%f\                     " Filename
  set statusline+=%w%h%m%r                 " Options
  set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''} " Git Hotness
  set statusline+=\ [%{&ff}/%Y]            " Filetype
  set statusline+=\ [%{getcwd()}]          " Current dir
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

" basic mapping
imap jk <Esc>

" Folding {
autocmd BufRead *.vim,.*vimrc set foldenable foldmethod=marker foldlevel=0
set foldmethod=syntax
set foldmarker={,}
" }


"Invoke StripTrailingWhitespace for all below files types
"autocmd FileType c,cpp,java,go,javascript,python,rst,ruby,rust,yml,perl autocmd BufWritePre <buffer> call StripTrailingWhitespace()

autocmd FileType haskell,python,ruby,yml setlocal expandtab shiftwidth=2 softtabstop=2

set splitright           " Puts new vsplit windows to the right of the current
set splitbelow           " Puts new split windows to the bottom of the current
set matchpairs+=<:>,`:'  " Match, to be used with %
