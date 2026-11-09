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
" pinned: Vundle can't check out coc's prebuilt 'release' branch, so it's cloned by hand (see README)
Plugin 'neoclide/coc.nvim', {'pinned': 1}

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

" coc.nvim (code navigation via language servers) """"""""""""""""""""""""
" Language extensions installed automatically on first start: Go (gopls), C/C++ (clangd).
let g:coc_global_extensions = ['coc-go', 'coc-clangd']
set updatetime=300
set signcolumn=yes

" Go to definition in the current window / in a new tab
nmap <silent> gd <Plug>(coc-definition)
nnoremap <silent> <leader>d :call CocAction('jumpDefinition', 'tabe')<CR>
" List every place the symbol under the cursor is used
nmap <silent> gr <Plug>(coc-references)
" Show the type and doc comment of the symbol under the cursor
nnoremap <silent> K :call CocActionAsync('doHover')<CR>
" Rename the symbol under the cursor across the project
nmap <leader>rn <Plug>(coc-rename)
" Jump between errors and warnings
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" Completion menu: Tab / Shift-Tab to move, Ctrl-y to accept (Enter is left to auto-pairs)
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <silent><expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
