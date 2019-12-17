" encodings
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,sjis
set fileformats=unix,dos,mac
set termencoding=utf-8

" files
set nobackup
set noswapfile
set autoread
set hidden

set foldmethod=indent  "折りたたみ範囲の判断基準（デフォルト: manual）
set foldlevel=0        "ファイルを開いたときにデフォルトで折りたたむレベル
set foldcolumn=3       "左端に折りたたみ状態を表示する領域を追加する

set viminfo='100,n$HOME/.vim/files/info/viminfo

" visuals
set number
set ruler
set nowrap
set cursorline
set laststatus=2
set showmatch
set matchtime=3
set wildmode=list:longest
set virtualedit=onemore
set expandtab
set autoindent
set tabstop=2
set shiftwidth=2
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set showcmd

"searches
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

" key mapping
inoremap jj <Esc>
nnoremap nm 10j
nnoremap mn 10k
nnoremap Y y$
nnoremap <silent> <ESC><ESC> :nohlsearch<CR> 
nnoremap <silent> // "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>

" devices
set backspace=indent,eol,start
set mouse=a
set whichwrap =b,s,h,l,<,>,[,]
set clipboard=unnamed,autoselect

" window operation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" vimdiff
hi DiffAdd    ctermfg=black ctermbg=2
hi DiffChange ctermfg=black ctermbg=3
hi DiffDelete ctermfg=black ctermbg=6
hi DiffText   ctermfg=black ctermbg=7

if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Shougo packages
  call dein#add('~/.cache/dein')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/unite.vim')

  " call dein#add('Shougo/vimfiler.vim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/defx.nvim')
  call dein#add('Shougo/deoplete.nvim')

  call dein#add('cocopon/vaffle.vim')
  call dein#add('mhinz/vim-startify')
  
  " colorscheme 
  call dein#add('tomasr/molokai')
  call dein#add('nanotech/jellybeans.vim')

  " vim visual
  call dein#add('itchyny/lightline.vim')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('tpope/vim-fugitive')
  call dein#add('scrooloose/nerdtree')

  " coding support & syntax
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('ekalinin/Dockerfile.vim')
  call dein#add('fatih/vim-go')
  call dein#add('leafgarland/typescript-vim')
  call dein#add('dag/vim-fish')
  call dein#add('Yggdroot/indentLine')
  call dein#add('scrooloose/syntastic')
  call dein#add('hashivim/vim-terraform')

  let g:deoplete#enable_at_startup = 1
  let g:terraform_fmt_on_save = 1

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

" syntax
filetype plugin indent on
autocmd ColorScheme * highlight Comment term=reverse ctermfg=193 ctermbg=16
"colorscheme molokai
colorscheme jellybeans
syntax enable

" vim-go
autocmd FileType go nmap <Space>gr <Plug>(go-run)
autocmd FileType go nmap <Space>gb <Plug>(go-build)
autocmd FileType go nmap <Space>gt <Plug>(go-test)
autocmd FileType go nmap <Space>gc <Plug>(go-coverage)
autocmd FileType go nmap <Space>gd <Plug>(go-doc)
autocmd FileType go nmap <Space>gi <Plug>(go-import)
autocmd FileType go nmap <Space>gm <Plug>(go-implements)

let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_functions = 1
let g:go_highlight_build_constraints = 1

" vim-gitgutter
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '->'
let g:gitgutter_sign_removed = '-'

" lightline.vim
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'mode_map': {'c': 'NORMAL'},
      \ 'active': {
      \   'left': [
      \     ['mode', 'paste'],
      \     ['gitgutter', 'filename'],
      \   ],
      \   'right': [
      \     ['lineinfo', 'syntastic'],
      \     ['percent'],
      \     ['charcode', 'fileformat', 'fileencoding', 'filetype'],
      \   ]
      \ },
      \ 'component_function': {
      \   'gitgutter': 'MyGitGutter',
      \ },
      \}

" python linter
let g:syntastic_python_checkers = ['pyflakes', 'pep8']

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
map <C-n> :NERDTreeToggle<CR>

" startify
let g:startify_skiplist = [
      \ '.cache/.*', 
      \ ]
let g:startify_bookmarks = [ 
      \ '~/.vimrc', 
      \ '~/.aws/credentials', 
      \ '~/.aws/config' 
      \ ]
let g:startify_lists = [
      \ { 'header': ['   Bookmarks'],      'type': 'bookmarks' },
      \ { 'header': ['   MRU'],            'type': 'files' },
      \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
      \ { 'header': ['   Sessions'],       'type': 'sessions' },
      \ ]

function! MyGitGutter()
  if ! exists('*GitGutterGetHunkSummary')
        \ || ! get(g:, 'gitgutter_enabled', 0)
        \ || winwidth('.') <= 90
    return '---'
  endif
  let symbols = [
        \ g:gitgutter_sign_added . ' ',
        \ g:gitgutter_sign_modified . ' ',
        \ g:gitgutter_sign_removed . ' '
        \ ]
  let hunks = GitGutterGetHunkSummary()
  let ret = []
  for i in [0, 1, 2]
    if hunks[i] > 0
      call add(ret, symbols[i] . hunks[i])
    endif
  endfor
  return join(ret, ' ')
endfunction


