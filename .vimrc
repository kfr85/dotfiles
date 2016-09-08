set encoding=utf-8 "文字コードをutf8にする
""set termencoding=euc-jp
set fileencodings=utf-8,iso-2022-jp,sjis
set fileformats=unix,dos,mac
set termencoding=utf-8
set hlsearch
set smartcase
set ruler
set expandtab
set backspace=indent,eol,start
set mouse=a
set cursorline

""set autoread
set cindent        "C言語のインデントに従って自動インデント
set shiftwidth=4 "行頭のtab数
set tabstop=4
set softtabstop=4
set backspace =indent,eol,start
set whichwrap =b,s,h,l,<,>,[,]
set clipboard=unnamed,autoselect

""挿入モード用
inoremap <c-d> <delete>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-h> <left>
inoremap <c-l> <right>
"autocmd ColorScheme * highlight Comment ctermfg=11 guifg=#008800
set nohlsearch "検索ワード強調しない
set number    "行番号の表示
set title     "ファイル名の表示
set showcmd   "入力中のコマンドを表示
set showmatch "閉じカッコの対応を表示
set matchtime=3 "shoematchの表示時間
set laststatus =2 "ステータスLINEを常に表示


set nocompatible
filetype off

if has('vim_starting')   
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#begin(expand('~/.vim/bundle'))
endif

" 読み込むプラグインの指定
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'git://github.com/kana/vim-fakeclip.git'
NeoBundle 'thinca/vim-ref'
NeoBundle 'derekwyatt/vim-scala'
"NeoBundle 'Flake8-vim'
"NeoBundle 'hynek/vim-python-pep8-indent'
"color-scheme
NeoBundle 'croaker/mustang-vim'
NeoBundle 'jeffreyiacono/vim-colors-wombat'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'vim-scripts/Lucius'
NeoBundle 'vim-scripts/Zenburn'
NeoBundle 'mrkn/mrkn256.vim'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'therubymug/vim-pyte'
NeoBundle 'tomasr/molokai'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'fatih/vim-go'
call neobundle#end()

syntax enable
set background=dark
colorscheme jellybeans
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"set cursorline "現在位置強調
filetype plugin indent on
filetype indent on
"highlight clear Cursorline
highlight CursorLineNr term=bold   cterm=NONE ctermfg=228 ctermbg=NONE
"highlight StatusLine term=none cterm=none ctermfg=black ctermbg=grey
"highlight CursorLine term=none cterm=none ctermfg=none ctermbg=darkgray

