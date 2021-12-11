# Config vim

<br/>
<p align='right'><em>Đặng Quốc Lai</em></p>

> https://tuckerchapman.com/2020/05/09/vimrc_organization/

## Thông tin các nhánh
- Nhánh cho window:
  - [nvim0.6](https://github.com/danglai/vim/tree/nvim0.6): Nhánh mới nhất nvim 0.6 with packer (COC suggestion and Language Server Protocol in comment)
- Nhánh cho linux:
- 
## .vimrc

```
" ~/.vimrc

syntax enable
syntax on

source ~/.vim/init/plugins.vimrc   " plugin specific settings
source ~/.vim/init/general.vimrc   " general settings
source ~/.vim/init/leader.vimrc    " leader key settings
source ~/.vim/init/functions.vimrc " custom functions
source ~/.vim/init/python.vimrc    " config for python

```

## Init file organization
- `plugins`   : install plugins and their config
- `general`	  : store tab settings, color and other general settings
- `leader`	  : shortcut keyboard, key call function
- `functions` : store custom functions
- `python`    : custom setting for language

## Install with PlugInstall
- `vim x`
- `:PlugInstall`
