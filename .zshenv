#プロンプト
autoload colors
colors

PROMPT="
 %{${fg[yellow]}%}%~%{${reset_color}%} 
 [%n]$ "

 PROMPT2='[%n]> '

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

alias ls="ls -v"
alias p="python"
alias ip="ipython"
alias sl="subl"

export LANG=ja_JP.UTF-8
export DYLD_LIBRARY_PATH=/opt/lib/vtk-6.1
export PATH=/usr/local/bin:/usr/local/lib:/usr/local/opt:/usr/bin:$PATH
export PATH=/Applications/gnuplot.app:/Applications/gnuplot.app/bin:$PATH
export PATH=/opt/local/bin:/usr/local/share/python:/opt/local/sbin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/x11/bin:/Applications/eclipse/android/platform-tools:$PATH
export PYTHONPATH=/Library/Python/2.7/site-packages:$PYTHONPATH
export PYTHONPATH=$PYTHONPATH:$HOME/VTK6.1.0/Wrapping/Python
export PYTHONPATH=$PYTHONPATH:$HOME/VTK6.1.0/lib
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export PYTHONPATH=/usr/local/Cellar/opencv/2.4.9/lib/python2.7/site-packages/:$PYTHONPATH
export PYTHONPATH=$VTKPATH/VTK/build/Wrapping/Python:$VTKPATH/VTK/build/bin

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

#color
export CLICOLOR=1
export LSCOLORS=GxFxCxDxfxegedabagaced
