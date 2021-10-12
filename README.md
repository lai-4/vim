# Config NeoVim For Windows

<br/>
<p align='right'><em>Đặng Quốc Lai</em></p>

## Phím tắt
- Terminal:
  - `,` `vsp`: mở cmd bên trái
  - `,` `sp`: mở cmd bên dưới
  - Trong chế độ terminal, jj để về normal mode
- [Split Window](https://gist.github.com/Starefossen/5957088):
  - Nhân đôi 1 cửa sổ: Ctrl-W v
  - Đảo vị trí 2 cửa số: Ctrl-Wrr
  - Đóng tất cả các cửa số khác: Ctrl-W o
- `,` `f` (leader): format file 
- `,` `s` (start): go to start line = `0`
- `,` `e` (end): go to end line = `$` 
- `:e *`: nhấn tab để tìm kiếm 1 file
- `<C-o>`: đi tới vị trí trước đó
- `<C-i>`: đi tới vị trí sau đó
- Di chuyển giữa các tab
    ```vim
    :bf                     |" Go to first file.<br/>
    :bl                     |" Go to last file<br/>
    :bn                     |" Go to next file.<br/>
    :bp                     |" Go to previous file.<br/>
    :b number               |" Go to n'th file (E.g :b 2)<br/>
    :bw                     |" Close current file.<br/>
    ```
- Xem đường dẫn của file đang mở
    ```vim
    :echo @%                |" directory/name of file
    :echo expand('%:t')     |" name of file ('tail')
    :echo expand('%:p')     |" full path
    :echo expand('%:p:h')   |" directory containing file ('head')
    ```
## Install with PlugInstall
- Download NVim
  - [Git](https://github.com/neovim/neovim/releases/tag/nightly)
  - [Nvim 0.6 GG Drive](https://drive.google.com/file/d/14JuitC9dE7uXDbm57sZa8sCAeu7L0QBq)
- Add path to Environment
- Download setting:
```
git clone --single-branch --branch nvim1 https://github.com/danglai/vim ~/AppData/Local/nvim
```
- Open README.md with nvim, `:PlugInstall` 2 times

## Config Python with Coc
- `pip install jedi-language-server`
- `:CocInstall coc-jedi`
- `:CocInstall coc-pyright` (Cài [autopep8](https://pypi.org/project/autopep8/) trong command trước `pip install --upgrade autopep8`)

## Not Important
- Show config path of nvim: `:echo stdpath('config')`
- Install Npm for Coc
```
curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install nodejs
```
