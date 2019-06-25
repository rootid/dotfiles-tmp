" json pretty print
function! JSONify()
  %!python -mjson.tool
  set syntax=json
endfunction
command J :call JSONify()
nnoremap <silent> <leader>j <esc>:call JSONify()<cr><esc>

" make inline more readable
function! UnMinify( )
    %s/{\ze[^\r\n]/{\r/g
    %s/){/) {/g
    %s/};\?\ze[^\r\n]/\0\r/g
    %s/;\ze[^\r\n]/;\r/g
    %s/[^\s]\zs[=&|]\+\ze[^\s]/ \0 /g
    normal ggVG=
endfunction
command UnMinify :call UnMinify()
nnoremap <silent> <leader>u <esc>:call UnMinify()<cr><esc>

" remove highlighting
nnoremap <silent> <esc><esc> <esc>:nohlsearch<cr><esc>

" remove trailing white space
command Nows :%s/\s\+$//

" remove blank lines
command Nobl :g/^\s*$/d

" toggle spellcheck
command Spell :setlocal spell! spell?
nnoremap <silent> <leader>s :setlocal spell! spell?

" make current buffer executable
command Chmodx :!chmod a+x %

" fix syntax highlighting
command FixSyntax :syntax sync fromstart

" pseudo tail functionality
command Tail :set autoread | au CursorHold * checktime | call feedkeys(" G")

" zoom
function! Zoom() abort
  if winnr('$') > 1
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
  else
    execute " silent !tmux resize-pane -Z"
  endif
endfunction
command Zoom call s:Zoom()
nnoremap <leader>z :call Zoom()<cr>
inoremap <leader>z <ESC>:call Zoom()<cr>a

" let's make some textmode art!
function! AsciiMode()
  e ++enc=cp850
  set nu!
  set virtualedit=all
  set colorcolumn=80
endfunction
command Ascii :call AsciiMode()


" for when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null

" remove empty lines between the range
" :5,12REL
command -range=% REL :<line1>,<line2>g/^\s*$/d

" format html
command Thtml set ft=html | execute "%!tidy -q -i"

" format xml
" command Txml set ft=xml | execute "%!tidy -q --indent auto --indent-spaces 4"

" use xmllint instead of tidy
let $XMLLINT_INDENT="    "
command Txml set ft=xml | execute "%!xmllint --format --recover - 2>/dev/null"

" format json w/ http://lloyd.github.io/yajl/
command Tjs set ft=json | execute "%!json_reformat"

" keep single blank
command -range=% KSB :<line1>,<line2>s/\n\{3,}/\r\r/e

" Fast formatting pretty print line > 100
nmap ,f1 :g/.\{100,\}/ .!par w100<CR>

" Functions {

  " Use ctrl+l to switch btn reln and noreln
  function! g:TglRelNmMode()
    set rnu!
  endfunction

  nnoremap <silent><C-N> :call g:TglRelNmMode()<cr>

  " Smart search
  function! g:SrchSmart()
    set smartcase
    set ignorecase
  endfunction

  nnoremap ,f :call g:SrchSmart()<cr>

  " Strip whitespace {
"  function! StripTrailingWhitespace()
"    " Preparation: save last search, and cursor position.
"    let _s=@/
"    let l = line(".")
"    let c = col(".")
"    " do the business:
"    %s/\s\+$//e
"    " clean up: restore previous search history, and cursor position
"    let @/=_s
"    call cursor(l, c)
"  endfunction
  " }

  " set zj and zk go to find open folds {
  function! GoToOpenFold(direction)
    if (a:direction == "next")
      normal zj
      let start = line('.')
      while foldclosed(start) != -1
        let start = start + 1
      endwhile
    else
      normal zk
      let start = line('.')
      while foldclosed(start) != -1
        let start = start - 1
      endwhile
    endif
    call cursor(start, 0)
  endfunction
  " }

  " Session {

     " Creates a session {
      function! MakeSession()
        let b:sessiondir = $HOME . "/.vim_sessions" . getcwd()
        if (filewritable(b:sessiondir) != 2)
          exe 'silent !mkdir -p ' b:sessiondir
          redraw!
        endif
        let b:filename = b:sessiondir . '/session.vim'
        exe "mksession! " . b:filename
      endfunction
      " }

      " Updates a session, BUT ONLY IF IT ALREADY EXISTS {
      function! UpdateSession()
        let b:sessiondir = $HOME . "/.vim_session" . getcwd()
        let b:sessionfile = b:sessiondir . "session.vim"
        if (filereadable(b:sessionfile))
          exe "mksession! " . b:filename
        endif
      endfunction
      " }

      " Loads a session if it exists {
      function! LoadSession()
        let b:sessiondir = $HOME . "/.vim_sessions" . getcwd()
        let b:sessionfile = b:sessiondir . "/session.vim"
        if (filereadable(b:sessionfile))
          exe 'source ' b:sessionfile
        else
          echo "No session loaded."
        endif
      endfunction
      " }

      " Mapping session {
      "au VimEnter * nested :call LoadSession()
      "Forceful update session automatic
      au VimLeave * :call UpdateSession()
      "Forceful update session manual
      map ,u :call UpdateSession()<CR>
      map ,l :call LoadSession()<CR>
      map ,m :call MakeSession()<CR>
      " }

  " }

  " Marker {
    " Marker generate for the text files
    function! PrependMarker(lvl)
      let l:marker= "--"

      let l:markerspace = l:marker . ' '
      "Add space
      call setline('.', l:markerspace . getline('.'))

      let i = 1
      while i < a:lvl
        let i += 1
        call setline('.', l:marker . getline('.'))
      endwhile

    endfunction

    nnoremap <silent> ,pmr :call PrependMarker(1)<CR>
    nnoremap <silent> ,pmr2 :call PrependMarker(2)<CR>
    nnoremap <silent> ,pmr3 :call PrependMarker(3)<CR>
    nnoremap <silent> ,pmr4 :call PrependMarker(4)<CR>
  " }

" }
