"settings
"encodings
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,sjis
set fileformats=unix,dos,mac
set termencoding=utf-8

"files
set nobackup
set noswapfile
set autoread
set hidden

"visuals
set number
set ruler
set cursorline
set statusline+=%w
set statusline+=%=
set statusline+=[ENC=%{&fileencoding}]
set statusline+=[LOW=%l/%L]
set laststatus=2
set showmatch
set matchtime=3
set wildmode=list:longest
set virtualedit=onemore
set expandtab
set tabstop=2
set shiftwidth=2
set list listchars=tab:\▸\-

"searches
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

"devices
set backspace=indent,eol,start
set mouse=a
set whichwrap =b,s,h,l,<,>,[,]
set clipboard=unnamed,autoselect

"vimdiff
hi DiffAdd    ctermfg=black ctermbg=2
hi DiffChange ctermfg=black ctermbg=3
hi DiffDelete ctermfg=black ctermbg=6
hi DiffText   ctermfg=black ctermbg=7

"dein
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(expand('~/.vim/dein'))
  call dein#begin(expand('~/.vim/dein'))

  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})

  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('Shougo/neosnippet')

  call dein#add('tomasr/molokai')
  
  call dein#add('editorconfig/editorconfig-vim')
  
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/vimfiler.vim')
  
  call dein#add('nathanaelkane/vim-indent-guides')  
  
  call dein#end()
  call dein#save_state()
endif

"plugin parameters
let g:vimfiler_as_default_explorer = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

if dein#check_install()
    call dein#install()
endif

"colorscheme
colorscheme molokai
syntax on


