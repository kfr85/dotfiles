#プロンプト
autoload colors
colors

PROMPT="
 %{${fg[yellow]}%}%~%{${reset_color}%} 
 [`uname`|%n]$ "

 PROMPT2="[`uname`|%n]> "

bindkey -v

# OS依存設定を読み込む
[ -f ${HOME}/.zsh.d/.zshenv_`uname` ] && . ${HOME}/.zsh.d/.zshenv_`uname`

#履歴を保存するファイル指定
HISTFILE="$HOME/.zsh_history"
#履歴件数
HISTSIZE=100000
SAVEHIST=100000
#重複しない
setopt hist_ignore_dups
#cdナシで移動
setopt auto_cd

export LANG=ja_JP.UTF-8

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#color
export CLICOLOR=1
export LSCOLORS=GxFxCxDxfxegedabagaced

alias ls='ls --color'
alias la='ls -a'
alias ll='ls -l'
alias grep='grep --color'

alias vf='vim -c VimFilerExplorer'

if [ ! -d ~/.config/vim ]
then
    mkdir -p ~/.config/vim
fi

if [ ! -d ~/.vim/dein/repos/github.com/Shougo/dein.vim ]
then
    mkdir ~/.vim/dein/repos/github.com/Shougo/dein.vim
    git clone https://github.com/Shougo/dein.vim.git \
    ~/.vim/dein/repos/github.com/Shougo/dein.vim
fi
