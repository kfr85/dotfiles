dotfiles
=========

## Installation

- setup

```bash
mkdir -p ~/.cache/dein
cd ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

mkdir -p ~/dev/src/github.com/rusagedougawa/dotfiles
git clone https://github.com/rusagedougawa/dotfiles ~/dev/src/github.com/rusagedougawa/dotfiles
ln -s ~/dev/src/github.com/rusagedougawa/dotfiles/.vimrc ~/.vimrc
ln -s ~/dev/src/github.com/rusagedougawa/dotfiles/.vim ~/.vim
ln -s ~/dev/src/github.com/rusagedougawa/dotfiles/.tigrc ~/.tigrc
ln -s ~/dev/src/github.com/rusagedougawa/dotfiles/.editorconfig ~/.editorconfig
ln -s ~/dev/src/github.com/rusagedougawa/dotfiles/config.fish ~/.config/fish/config.fish

ln -s ~/dev/src/github.com/rusagedougawa/dotfiles/settings.json ~/Library/Application\ Support/Code/User/settings.json
```
