set -x LANG ja_JP.UTF-8
set -x LESSCHARSET utf-8
set -x LC_CTYPE ja_JP.UTF-8
set -x GOPATH $HOME/dev
set -x PATH $PATH $GOPATH/bin
set -g theme_powerline_fonts no

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end
direnv hook fish | source
