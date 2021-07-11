# Config NeoVim

<br/>
<p align='right'><em>Đặng Quốc Lai</em></p>

> https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/
> https://www.chrisatmachine.com/Neovim/02-vim-general-settings/

## Install with PlugInstall
- Install xsel (suport for clipboard): `sudo apt install xsel`
- Add `export PATH=$HOME/config/bin:$PATH` to `bash_profile`
- Download setting: 
```
git clone https://github.com/danglai/vim ~/.config/nvim
```
- Open README.md with nvim, `:PlugInstall` 

## Config Python with Coc
- Install Npm first 
```
curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install nodejs
```
- `pip install jedi-language-server`
- Run `:PlugInstall` 2 times
- `:CocInstall coc-jedi`
