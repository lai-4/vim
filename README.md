# Config NeoVim

<br/>
<p align='right'><em>Đặng Quốc Lai</em></p>

> https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/
> https://www.chrisatmachine.com/Neovim/02-vim-general-settings/

## Install with PlugInstall
- Download NVim
  - [Git] (https://github.com/neovim/neovim/releases/tag/nightly)
  - [Nvim 0.6 GG Drive] (https://drive.google.com/file/d/14JuitC9dE7uXDbm57sZa8sCAeu7L0QBq)
- Show config path of nvim: `:echo stdpath('config')`
- Install xsel (suport for clipboard): `sudo apt install xsel`
- Add `export PATH=$HOME/config/bin:$PATH` to `bash_profile`
- Download setting: 
  - Ubuntu:
```
git clone --single-branch --branch nvim2 https://github.com/danglai/vim ~/.config/nvim
```
  - Window:
```
git clone --single-branch --branch nvim2 https://github.com/danglai/vim ~/AppData/Local/nvim
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
