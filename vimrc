set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set noshowmode
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'itchyny/lightline.vim'
Plugin 'jiangmiao/auto-pairs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

set relativenumber

" Color scheme: wildcharm (built into Vim 9.1), cool and high contrast on a black background.
" The autocmd drops the scheme's own background so the terminal's black shows through.
syntax enable
set background=dark
augroup black_bg
  autocmd!
  autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
        \ | highlight NonText ctermbg=NONE guibg=NONE
        \ | highlight LineNr ctermbg=NONE guibg=NONE
        \ | highlight SignColumn ctermbg=NONE guibg=NONE
augroup END
colorscheme wildcharm

" Light line """""""""""""""""""""""""""""""""""""""
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'helloworld' ] ]
      \ }
      \ }
