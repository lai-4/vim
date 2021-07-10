# Config NeoVim

<br/>
<p align='right'><em>Đặng Quốc Lai</em></p>

> https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/
> https://www.chrisatmachine.com/Neovim/02-vim-general-settings/

## Install with PlugInstall
- Install xsel (suport for clipboard): `sudo apt install xsel`
- Add `export PATH=$HOME/config/bin:$PATH` to `bash_profile`
- Download vundle and setting: 
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
git clone https://github.com/danglai/vim ~/.config/nvim
```
- Open README.md with nvim, `:PluginInstall` 


