# function
function fish_user_key_bindings
  bind \cx\cr peco_recentd
end

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

# alias
alias ls='ls -G'
alias la='ls -a'
alias ll='ls -l'
alias ip='ipython'
alias chrome='open "/Applications/Google Chrome.app"'
alias vs='vim -O'
alias vd='vimdiff'
alias vaffle='vim +Vaffle'
alias res='curl -LI $1 -o /dev/null -w "%{http_code}\n" -s'
alias tn='terminal-notifier -message '
alias psh='python -c $1'

# editor
set -x EDITOR vim
set CHEAT_EDITOR vim

# lang
set -x LANG ja_JP.UTF-8
set -x LESSCHARSET utf-8
set -x LC_CTYPE ja_JP.UTF-8

# powerline
set -g theme_powerline_fonts no

# ruby
set PATH $HOME/.rbenv/bin $PATH

# python
set PYENV_ROOT $HOME/.pyenv
set PATH $PYENV_ROOT/bin $PATH

# node
set PATH $HOME/.nodebrew/current/bin $PATH

# rust
set PATH $HOME/.cargo/bin $PATH

# go
set GOPATH $HOME/dev
set GOROOT /usr/local/opt/go/libexec
set PATH $PATH $GOROOT/bin
set PATH $PATH $GOPATH/bin

# bazel
set PATH $PATH $HOME/bin

# init
eval (pyenv init - | source)
eval (pyenv virtualenv-init - | source)
eval (rbenv init - | source)
eval (direnv hook fish | source)
