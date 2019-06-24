set runtimepath+=~/.vim/

if empty(glob('~/.vim/autoload/plug.vim'))
  silent call system('mkdir -p ~/.vim/{autoload,bundle,cache,undo,backups,swaps}')
  silent call system('curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
  execute 'source  ~/.vim/autoload/plug.vim'
  augroup plugsetup
    au!
    autocmd VimEnter * PlugInstall
  augroup end
endif

call plug#begin('~/.vim/plugged')

" colors

" programming
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-repeat' "Repeat
Plug 'tpope/vim-obsession' " Session
Plug 'tpope/vim-commentary' " gcc
Plug 'editorconfig/editorconfig-vim' "editorconfig

" stylize
Plug 'powerman/vim-plugin-AnsiEsc'

" features
Plug 'rking/ag.vim'
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'junegunn/limelight.vim', { 'on': 'Goyo' }
Plug 'majutsushi/tagbar', { 'on': 'Tagbar' }
Plug 'junegunn/gv.vim', { 'on': 'GV' }
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" multiplexer integration
"Plug 'roxma/vim-tmux-clipboard'
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'melonmanchan/vim-tmux-resizer'

call plug#end()
