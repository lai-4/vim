# Config NeoVim For Windows

<br/>
<p align='right'><em>Đặng Quốc Lai</em></p>


## Install with PlugInstall
- Download NVim
  - [Git](https://github.com/neovim/neovim/releases/tag/nightly)
  - [Nvim 0.6 GG Drive](https://drive.google.com/file/d/14JuitC9dE7uXDbm57sZa8sCAeu7L0QBq)
- Add path to Environment
- Download setting:
```
git clone --single-branch --branch nvim2 https://github.com/danglai/vim ~/AppData/Local/nvim
```
- Open README.md with nvim, `:PlugInstall` 2 times

## Config Python with Coc
- `pip install jedi-language-server`
- `:CocInstall coc-jedi`

## Not Important
- Show config path of nvim: `:echo stdpath('config')`
- Install Npm for Coc
```
curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install nodejs
```
