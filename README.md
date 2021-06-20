# Config vim

<br/>
<p align='right'><em>Đặng Quốc Lai</em></p>

> https://tuckerchapman.com/2020/05/09/vimrc_organization/

## Init file organization
- `plugins`	: install plugins and their config
- `general`	: store tab settings, color schemes and other general settings
- `leader`	: shortcut keyboard, key call function
- `functions`	: store custom functions
- `python`	: custom setting for language

## .vimrc

```
" ~/.vimrc

syntax enable
syntax on

source ~/.vim/init/plug.vimrc      " plugin loader
source ~/.vim/init/general.vimrc   " general settings
source ~/.vim/init/leader.vimrc    " leader key settings
source ~/.vim/init/functions.vimrc " custom functions
source ~/.vim/init/plugins.vimrc   " plugin specific settings
source ~/.vim/init/python.vimrc    " config for python
```