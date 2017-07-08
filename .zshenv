#プロンプト
autoload colors
colors

PROMPT="
 %{${fg[yellow]}%}%~%{${reset_color}%} 
 [${OSTYPE}|%n]$ "

 PROMPT2="[${OSTYPE}|%n]> "

bindkey -v

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

#color
export CLICOLOR=1
export LSCOLORS=GxFxCxDxfxegedabagaced

alias la='ls -a --color'
alias ll='ls -l --color'
alias vf='vim -c VimFilerExplorer'

if [ ! -d ~/.vim/dein/repos/github.com/Shougo/dein.vim ]
then
    mkdir ~/.vim/dein/repos/github.com/Shougo/dein.vim
    git clone https://github.com/Shougo/dein.vim.git \
    ~/.vim/dein/repos/github.com/Shougo/dein.vim
fi
