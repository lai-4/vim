# Config NeoVim

<br/>
<p align='right'><em>Đặng Quốc Lai</em></p>

> https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/
## Folder Attention
- `share`, `bin`, `lib`: from neovim

## Init file organization
- `plugins`   : install plugins and their config
- `general`	  : store tab settings, color and other general settings
- `leader`	  : shortcut keyboard, key call function
- `functions` : store custom functions
- `python`    : custom setting for language

## Install with PlugInstall
- Create folder `config` in ~, then pull this branch to it
- Add `export PATH=$HOME/config/bin:$PATH` to `bash_profile`
- Download vundle: `git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim`

