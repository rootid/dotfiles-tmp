" wizard colors https://git.io/vim.sourcerer
"colorscheme sourcerer

" dark wizard colors http://git.io/blaquemagick.vim
"colorscheme blaquemagick

" icy chill
"colorscheme nord

" use your shell colors
"colorscheme noctu

" omnifuncs
"augroup omnifuncs
"  au!
"  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"  autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
"augroup end
"
"" completions
"let b:vcm_tab_complete = 'omni'
"set omnifunc=syntaxcomplete#Complete
"" select the completion with enter
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"" close preview on completion complete
"augroup completionhide
"  au!
"  autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"augroup end
"
if has('nvim')
  let g:deoplete#enable_at_startup = 1
  " let g:deoplete#disable_auto_complete = 1
  let g:deoplete#enable_ignore_case = 1
  if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
  endif
  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
endif

" linting
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = ' '
let g:ale_sign_warning = ' '
"let g:ale_open_list = 1
"let g:ale_lint_on_text_changed = 'never'
highlight ALEErrorSign ctermbg=0 ctermfg=magenta

" file browser
"let NERDTreeShowHidden = 1
"let NERDTreeMinimalUI = 1
"let NERDTreeDirArrows = 1
"let g:webdevicons_enable_nerdtree = 1
"let g:NERDTreeDirArrowExpandable = ''
"let g:NERDTreeDirArrowCollapsible = ''

" disable folding
let g:vim_json_syntax_conceal = 0

" verticle diffs
set diffopt+=vertical

" close if final buffer is netrw or the quickfix
"augroup finalcountdown
"  au!
"  "autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif
"  autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) || &buftype == 'quickfix' | q | endif
"  "nmap - :Lexplore<cr>
"  nmap - :NERDTreeToggle<cr>
"augroup END

" speed optimizations
"let g:gitgutter_realtime = 1
"let g:gitgutter_eager = 1
"let g:gitgutter_max_signs = 1500
"let g:gitgutter_diff_args = '-w'
"" custom symbols
"let g:gitgutter_sign_added = '+'
"let g:gitgutter_sign_modified = '~'
"let g:gitgutter_sign_removed = '-'
"let g:gitgutter_sign_removed_first_line = '^'
"let g:gitgutter_sign_modified_removed = ':'
"" color overrrides
"highlight clear SignColumn
"highlight GitGutterAdd ctermfg=green ctermbg=0
"highlight GitGutterChange ctermfg=yellow ctermbg=0
"highlight GitGutterDelete ctermfg=red ctermbg=0
"highlight GitGutterChangeDelete ctermfg=red ctermbg=0

" use the silver searcher
let g:ag_prg="ag -i --vimgrep"
let g:ag_highlight=1
" map \ to the ag command for quick searching
nnoremap \ :Ag<SPACE>

" use {H,J,K,L} to move lines
let g:move_key_modifier = 'S'
" tmux/vim resize amount
let g:window_resize_count = 2

" limit modelines
set nomodeline
let g:secure_modelines_verbose = 0
let g:secure_modelines_modelines = 15

" distraction free writing mode
"let g:limelight_conceal_ctermfg = 240
"function! s:goyo_enter()
"  Limelight
"  silent !tmux set status off
"  silent !tmux list-panes -F '\#F' | grep -q Z | tmux resize-pane -Z
"  set noshowmode
"  set noshowcmd
"  set wrap
"  set scrolloff=999
"endfunction
"
"function! s:goyo_leave()
"  Limelight!
"  silent !tmux set status on
"  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
"  set showmode
"  set showcmd
"  set nowrap
"  set scrolloff=0
"endfunction
"
"augroup goyoactions
"  au!
"  autocmd! User GoyoEnter nested call <SID>goyo_enter()
"  autocmd! User GoyoLeave nested call <SID>goyo_leave()
"augroup end
"
"
"augroup alestatus
"  au!
"  autocmd User ALELint call lightline#update()
"augroup end
