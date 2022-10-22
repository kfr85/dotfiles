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
nnoremap Y y$
nnoremap <silent> <ESC><ESC> :nohlsearch<CR> 
nnoremap <silent> // "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>

" devices
set backspace=indent,eol,start
set mouse=a
set whichwrap =b,s,h,l,<,>,[,]
set clipboard+=unnamedplus

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

  let g:config_dir = '~/.config/nvim'
  let s:toml       = g:config_dir . '/dein.toml'
  let s:lazy_toml  = g:config_dir . '/dein_lazy.toml'

  call dein#load_toml(s:toml,       {'lazy': 0})
  call dein#load_toml(s:lazy_toml,  {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

" syntax
filetype plugin indent on
syntax enable
